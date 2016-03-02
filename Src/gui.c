// #TODO EDIT BUTTON SOLDERING PROBLEM

#include "gui.h"
#include "u8g.h"
#include "u8g_arm.h"
#include <stdbool.h>
#include <stdlib.h>

void update_menu(void);
void draw_menu(void);
void main_menu_page(void);
void init_page(void);
void main_page(void);
void edit_start_point_page(void);
void edit_end_point_page(void);
void carriage_docking(void);
// Structures, responsible for sending through queue
enum InputType { BUTTON, ENCODER };
enum ButtonEvent {BUTTON_PRESSED};
enum MotorEventType {
	DOCK_CARRIAGE,
	MOVE,
};
enum {DOCKING_FIRST_STAGE, DOCKING_SECOND_STAGE};

int32_t carriage_position = 0;
bool carriage_docked = false;

// Structures, responsible for hardware interface
struct ButtonState {
	bool is_pressed;
	uint8_t filter_value;
	uint16_t pin;
	GPIO_TypeDef *port;
};

#define BUTTON_TABLE \
		X(START_BTN, START_BTN_Pin, GPIOA)\
		X(MENU_BTN, MENU_BTN_Pin, GPIOA)\
		X(EDIT_BTN, EDIT_BTN_Pin, GPIOA)\
		X(EXIT_BTN, EXIT_BTN_Pin, GPIOA)\
		X(ENCODER_SW_BTN, ENCODER_SW_Pin, GPIOA)

#define X(a, b, c) a,
enum bt {
	BUTTON_TABLE
};
#undef X

#define X(a,b,c) {false, 0, b, c},
struct ButtonState button_states[] =  {
	BUTTON_TABLE
};
#undef X


u8g_t u8g;
extern QueueHandle_t xInputEvents;
extern QueueHandle_t xMotorEvents;

enum GUI_State {
	INIT_PAGE,
	MAIN_PAGE,
	MENU_PAGE,
	START_POSITION_PAGE,
	STOP_POSITION_PAGE
};




enum GUI_State current_state = INIT_PAGE;

void init_page()
{
	int n_wait;
	struct Event buffer_event;
	if ( (n_wait = uxQueueMessagesWaiting(xInputEvents)) != 0 )
	{
		xQueueReceive(xInputEvents, &buffer_event, 0);
		if (buffer_event.input_type == BUTTON)
		{
			struct MotorEvent send_event = {.event_type = DOCK_CARRIAGE };
			xQueueSend(xMotorEvents, &send_event, portMAX_DELAY);
			current_state = MAIN_PAGE;
		}
	}

	u8g_FirstPage(&u8g);
	do
	{
		u8g.font = u8g_font_7x14;
		u8g_DrawStr(&u8g, 17, 45, "Press any key");
		u8g_DrawStr(&u8g, 25, 60, "for init");
	} while (u8g_NextPage(&u8g));
	osDelay(20);
}


void main_page()
{
	const int encoder_division = 4;
	struct Cursor {
		uint8_t cursor_position;
		uint8_t x, y;
		uint8_t width, height;
	};
    static struct Cursor cursor = {.cursor_position = 8, .height = 3, .width = 12, .y = 47};
    const uint8_t cursor_offset = 4;
	cursor.x = cursor_offset + cursor.cursor_position * cursor.width;

	static int32_t time = 0;
	int n_wait;
	struct Event buffer_event;
	char debug_buffer[15] = "";
	char timer_buffer[9] = "";

	uint8_t hh, mm, ss; // Separate values for hh:mm:ss format
	ss = time % 60;
	hh = (time / 3600);
	mm = (time % 3600) / 60;

	if ( (n_wait = uxQueueMessagesWaiting(xInputEvents)) != 0 )
	{
		xQueueReceive(xInputEvents, &buffer_event, 0);
		if (buffer_event.input_type == ENCODER)
		{
			buffer_event.data /= encoder_division;
			switch (cursor.cursor_position)
			{
			case 1:
				time += buffer_event.data * 3600 * 10;
				break;
			case 2:
				time += buffer_event.data * 3600;
				break;
			case 4:
				time += buffer_event.data * 60 * 10;
				break;
			case 5:
				time += buffer_event.data * 60;
				break;
			case 7:
				time += buffer_event.data * 10;
				break;
			case 8:
				time += buffer_event.data;
				break;
			}
			if (time < 0)
			{
				time = 0;
			}
		} else if (buffer_event.input_type == BUTTON)
		{
			switch (buffer_event.id)
			{
			case ENCODER_SW_BTN:
				if (cursor.cursor_position > 1)
					cursor.cursor_position--;
				else
					cursor.cursor_position = 8;
				if (cursor.cursor_position == 6 || cursor.cursor_position == 3)
				{
					cursor.cursor_position--;
				}
				break;
			case MENU_BTN:
				current_state = MENU_PAGE;
				break;
			}
		}
	}

	sprintf(debug_buffer,"%d %d", time, n_wait);
	sprintf(timer_buffer,"%d%d:%d%d:%d%d", hh / 10, hh % 10, mm / 10, mm % 10,
			ss / 10, ss % 10);

	u8g_FirstPage(&u8g);
	do
	{
		u8g.font = u8g_font_profont22;
		u8g_DrawStr(&u8g, 17, 45, timer_buffer);
		u8g.font = u8g_font_7x14;
		u8g_DrawStr(&u8g, 17, 10, "Timer Settings");
		u8g_DrawStr(&u8g, 17, 64, debug_buffer);

		u8g_DrawBox(&u8g, cursor.x, cursor.y, cursor.width, cursor.height);

	} while (u8g_NextPage(&u8g));
	osDelay(20);
}

void main_menu_page()
{
	static int8_t menu_current = 0;
	#define MENU_ITEMS 2
	char *menu_strings[MENU_ITEMS] = { "Edit Start Point", "Edit End Point"};
	const int encoder_division = 4;
	int n_wait = 0;
	struct Event buffer_event;
	static int8_t encoder_rot_buffer = 0;

	if ( (n_wait = uxQueueMessagesWaiting(xInputEvents)) != 0 )
	{
		xQueueReceive(xInputEvents, &buffer_event, 0);
		if (buffer_event.input_type == ENCODER)
		{
			encoder_rot_buffer += buffer_event.data;
			if (encoder_rot_buffer <= -encoder_division){
			      menu_current++;
			      if ( menu_current >= MENU_ITEMS )
			        menu_current = 0;
			      encoder_rot_buffer = 0;
			}
			else if (encoder_rot_buffer >= encoder_division)
			{
				menu_current--;
				if ( menu_current < 0 )
					menu_current = MENU_ITEMS - 1;

				encoder_rot_buffer = 0;
			}
		} else if (buffer_event.input_type == BUTTON)
		{
			switch (buffer_event.id)
			{
			case ENCODER_SW_BTN:
				if (menu_current == 0)
					current_state = START_POSITION_PAGE;
				else if (menu_current == 1)
					current_state = STOP_POSITION_PAGE;
				break;
			case EXIT_BTN:
				current_state = MAIN_PAGE;
				break;
			}
		}
	}


	u8g_FirstPage(&u8g);
	do
	{
		  uint8_t i, h;
		  u8g_uint_t w, d;
		  uint8_t y_offset = 32;
		  u8g_SetFont(&u8g, u8g_font_7x14);

		  h = u8g_GetFontAscent(&u8g)-u8g_GetFontDescent(&u8g);
		  w = u8g_GetWidth(&u8g);
		  for( i = 0; i < MENU_ITEMS; i++ )
		  {
			d = (w-u8g_GetStrWidth(&u8g, menu_strings[i]))/2;
			if ( i == menu_current )
			{
			  u8g_DrawFrame(&u8g, 0, y_offset + i*h + 1, w, h);
			  //u8g_SetColorIndex(&u8g, 0);
			  u8g_DrawStr(&u8g, d, y_offset + (i + 1) * h, menu_strings[i]);
			  //u8g_SetColorIndex(&u8g, 1);
			} else
				u8g_DrawStr(&u8g, d, y_offset + (i + 1) * h, menu_strings[i]);
		  }
		  u8g.font = u8g_font_7x14;
		  u8g_DrawStr(&u8g, 17, 10, "Menu");
	} while (u8g_NextPage(&u8g));

	osDelay(50);

}


void edit_start_point_page()
{
	const int encoder_division = 4;
	static int32_t start_carriage_position = 0;
	static int32_t previous_carriage_position = 0;
	int n_wait;
	struct Event buffer_event;
	char debug_buffer[15] = "";
	char start_position_buffer[9] = "";

	if ( (n_wait = uxQueueMessagesWaiting(xInputEvents)) != 0 )
	{
		xQueueReceive(xInputEvents, &buffer_event, 0);
		if (buffer_event.input_type == ENCODER)
		{
			buffer_event.data /= encoder_division;
			start_carriage_position += buffer_event.data;
			if (start_carriage_position < 0)
			{
				start_carriage_position = 0;
			}
			struct MotorEvent send_event = {.event_type = MOVE,
					.data =  (previous_carriage_position - start_carriage_position)};
			xQueueSend(xMotorEvents, &send_event, portMAX_DELAY);
			previous_carriage_position = start_carriage_position;
		} else if (buffer_event.input_type == BUTTON)
		{
			switch (buffer_event.id)
			{
			case ENCODER_SW_BTN:
				start_carriage_position = 0;
				break;
			case EXIT_BTN:
				current_state = MAIN_PAGE;
				break;
			}
		}
	}

	sprintf(debug_buffer,"%d %d", start_carriage_position, n_wait);
	sprintf(start_position_buffer,"%d", start_carriage_position);

	u8g_FirstPage(&u8g);
	do
	{
		u8g.font = u8g_font_profont22;
		u8g_DrawStr(&u8g, 17, 45, start_position_buffer);
		u8g.font = u8g_font_7x14;
		u8g_DrawStr(&u8g, 17, 10, "Start Position");
		u8g_DrawStr(&u8g, 17, 64, debug_buffer);
	} while (u8g_NextPage(&u8g));
	osDelay(15);
}
void edit_end_point_page()
{
	const int encoder_division = 4;
	const int DEFAULT_END_POSITION = 50;
	static int32_t end_carriage_position = 0;
	int n_wait;
	struct Event buffer_event;
	char debug_buffer[15] = "";
	char end_position_buffer[9] = "";

	if ( (n_wait = uxQueueMessagesWaiting(xInputEvents)) != 0 )
	{
		xQueueReceive(xInputEvents, &buffer_event, 0);
		if (buffer_event.input_type == ENCODER)
		{
			buffer_event.data /= encoder_division;
			end_carriage_position += buffer_event.data;
			if (end_carriage_position < 0)
			{
				end_carriage_position = 0;
			}
		} else if (buffer_event.input_type == BUTTON)
		{
			switch (buffer_event.id)
			{
			case ENCODER_SW_BTN:
				end_carriage_position = DEFAULT_END_POSITION;
				break;
			case EXIT_BTN:
				current_state = MAIN_PAGE;
				break;
			}
		}
	}

	sprintf(debug_buffer,"%d %d", end_carriage_position, n_wait);
	sprintf(end_position_buffer,"%d", end_carriage_position);

	u8g_FirstPage(&u8g);
	do
	{
		u8g.font = u8g_font_profont22;
		u8g_DrawStr(&u8g, 17, 45, end_position_buffer);
		u8g.font = u8g_font_7x14;
		u8g_DrawStr(&u8g, 17, 10, "End Position");
		u8g_DrawStr(&u8g, 17, 64, debug_buffer);
	} while (u8g_NextPage(&u8g));
	osDelay(15);
}



void guiFunc(void const * argument)
{
	u8g_InitComFn(&u8g, &u8g_dev_ssd1306_128x64_hw_spi, u8g_com_hw_spi_fn);
	for(;;)
	{
		switch (current_state)
		{
		case MAIN_PAGE:
			main_page();
			break;
		case MENU_PAGE:
			main_menu_page();
			break;
		case START_POSITION_PAGE:
			edit_start_point_page();
			break;
		case STOP_POSITION_PAGE:
			edit_end_point_page();
			break;
		case INIT_PAGE:
			init_page();
			break;
		}
	}
}

//============ INPUT HANDLING ==============//


void buttonScanFunc(void const * argument)
{
	const uint8_t filter = 3;
	uint16_t encoder_prev_value = TIM1->ARR / 2;
	TIM1->CNT = TIM1->ARR / 2; // Encoder center aligning
	int16_t encoder_change = 0;
	button_states[MENU_BTN].filter_value = 15;
	uint8_t mes_waiting = 0;
	struct Event current_event;
	for(;;)
	{
		mes_waiting = uxQueueMessagesWaiting(xInputEvents);
		// MENU button press event
		if (HAL_GPIO_ReadPin(button_states[MENU_BTN].port, button_states[MENU_BTN].pin)
				== GPIO_PIN_SET)
		{
			button_states[MENU_BTN].filter_value++;
			if (button_states[MENU_BTN].filter_value == filter &&
					!button_states[MENU_BTN].is_pressed)
			{
				button_states[MENU_BTN].is_pressed = true;
				current_event.input_type = BUTTON;
				current_event.id = MENU_BTN;
				current_event.data = BUTTON_PRESSED;
				xQueueSend(xInputEvents, &current_event, portMAX_DELAY);
			}
		} else
		{
			button_states[MENU_BTN].is_pressed = false;
			button_states[MENU_BTN].filter_value = 0;
		}
		// EXIT button press event
		if (HAL_GPIO_ReadPin(button_states[EXIT_BTN].port, button_states[EXIT_BTN].pin)
				== GPIO_PIN_SET)
		{
			button_states[EXIT_BTN].filter_value++;
			if (button_states[EXIT_BTN].filter_value == filter &&
					!button_states[EXIT_BTN].is_pressed)
			{
				button_states[EXIT_BTN].is_pressed = true;
				current_event.input_type = BUTTON;
				current_event.id = EXIT_BTN;
				current_event.data = BUTTON_PRESSED;
				xQueueSend(xInputEvents, &current_event, portMAX_DELAY);
			}
		} else
		{
			button_states[EXIT_BTN].is_pressed = false;
			button_states[EXIT_BTN].filter_value = 0;
		}
		// EDIT button press event
		if (HAL_GPIO_ReadPin(button_states[EDIT_BTN].port, button_states[EDIT_BTN].pin)
				== GPIO_PIN_SET)
		{
			button_states[EDIT_BTN].filter_value++;
			if (button_states[EDIT_BTN].filter_value == filter &&
					!button_states[EDIT_BTN].is_pressed)
			{
				button_states[EDIT_BTN].is_pressed = true;
				current_event.input_type = BUTTON;
				current_event.id = EDIT_BTN;
				current_event.data = BUTTON_PRESSED;
				xQueueSend(xInputEvents, &current_event, portMAX_DELAY);
			}
		} else
		{
			button_states[EDIT_BTN].is_pressed = false;
			button_states[EDIT_BTN].filter_value = 0;
		}
		// START menu button press event
		if (HAL_GPIO_ReadPin(button_states[START_BTN].port, button_states[START_BTN].pin)
				== GPIO_PIN_SET)
		{
			button_states[START_BTN].filter_value++;
			if (button_states[START_BTN].filter_value == filter &&
					!button_states[START_BTN].is_pressed)
			{
				button_states[START_BTN].is_pressed = true;
				current_event.input_type = BUTTON;
				current_event.id = START_BTN;
				current_event.data = BUTTON_PRESSED;
				xQueueSend(xInputEvents, &current_event, portMAX_DELAY);
			}
		} else
		{
			button_states[START_BTN].is_pressed = false;
			button_states[START_BTN].filter_value = 0;
		}
		// Encoder button press event
		if (HAL_GPIO_ReadPin(button_states[ENCODER_SW_BTN].port, button_states[ENCODER_SW_BTN].pin)
				== GPIO_PIN_SET)
		{
			button_states[ENCODER_SW_BTN].filter_value++;
			if (button_states[ENCODER_SW_BTN].filter_value == filter &&
					!button_states[ENCODER_SW_BTN].is_pressed)
			{
				button_states[ENCODER_SW_BTN].is_pressed = true;
				current_event.input_type = BUTTON;
				current_event.id = ENCODER_SW_BTN;
				current_event.data = BUTTON_PRESSED;
				xQueueSend(xInputEvents, &current_event, portMAX_DELAY);
			}
		} else
		{
			button_states[ENCODER_SW_BTN].is_pressed = false;
			button_states[ENCODER_SW_BTN].filter_value = 0;
		}
		// Encoder rotate event
		encoder_change = TIM1->CNT - encoder_prev_value;
		if (encoder_change != 0)
		{
			osDelay(10);
			encoder_change = TIM1->CNT - encoder_prev_value;
			current_event.input_type = ENCODER;
			current_event.id = 0;
			current_event.data = encoder_change;
			TIM1->CNT = TIM1->ARR / 2; // center align encoder again
			xQueueSend(xInputEvents, &current_event, portMAX_DELAY);
		}
		encoder_prev_value = TIM1->CNT;
		osDelay(1);
	}
}


volatile uint32_t position_counter = 0;
volatile uint32_t position_counter_limit = 0;
enum {FORWARD, BACK};
uint8_t direction = FORWARD;
volatile bool motor_enabled = false;



void move_to_start(uint16_t speed_factor, bool is_microstep)
{
	if (is_microstep)
		HAL_GPIO_WritePin(MS2_GPIO_Port, MS2_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(MS2_GPIO_Port, MS2_Pin, GPIO_PIN_RESET);
	TIM2->ARR = speed_factor;
	HAL_GPIO_WritePin(DIR_GPIO_Port, DIR_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(MOTOR_EN_GPIO_Port, MOTOR_EN_Pin, GPIO_PIN_RESET);
	position_counter = 0;
	position_counter_limit = 0xffffffff;
	direction = BACK;
	motor_enabled = true;
	while (motor_enabled)
		osDelay(10);
}


#define MICROSTEP_FACTOR 4
#define MAX_LENGTH 18600
void move(uint16_t speed_factor, bool is_microstep, uint8_t direction, uint32_t distance)
{
	uint8_t mult_coef = 1;
	mult_coef = is_microstep ? MICROSTEP_FACTOR : 1;
	if (direction == FORWARD)
		HAL_GPIO_WritePin(DIR_GPIO_Port, DIR_Pin, GPIO_PIN_RESET);
	else if (direction == BACK)
		HAL_GPIO_WritePin(DIR_GPIO_Port, DIR_Pin, GPIO_PIN_SET);

	if (is_microstep)
		HAL_GPIO_WritePin(MS2_GPIO_Port, MS2_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(MS2_GPIO_Port, MS2_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(MOTOR_EN_GPIO_Port, MOTOR_EN_Pin, GPIO_PIN_RESET);
	TIM2->ARR = speed_factor;
	position_counter = 0;
	position_counter_limit = mult_coef * distance;
	motor_enabled = true;
	while (motor_enabled)
		osDelay(10);
	HAL_GPIO_WritePin(MOTOR_EN_GPIO_Port, MOTOR_EN_Pin, GPIO_PIN_SET);

}

void carriage_docking()
{
	const int speed_factor_1 = 8;
	const int speed_factor_2 = 16;
	if (HAL_GPIO_ReadPin(GPIOA, HALL_OUT_Pin) == GPIO_PIN_SET)
		move_to_start(speed_factor_1, true);
	move(speed_factor_2, true, FORWARD, 500);
	move_to_start(speed_factor_2, true);
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim->Instance == TIM2)
  {
	  if (motor_enabled && (position_counter < position_counter_limit))
	  {
		  HAL_GPIO_TogglePin(GPIOB, STEP_Pin);
		  position_counter++;
	  } else
	  {
		  motor_enabled = false;
	  }
  }
}


void disable_motor()
{
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_SET);
	motor_enabled = false;
}

void enable_motor()
{
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_RESET);
	motor_enabled = true;
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if (GPIO_Pin == HALL_OUT_Pin)
	{
		if (HAL_GPIO_ReadPin(GPIOA, HALL_OUT_Pin) == GPIO_PIN_RESET) {
			disable_motor();
		}
	}
}


void motorFunc(void const * argument)
{
	uint8_t n_wait;
	struct MotorEvent buffer_event;
	for (;;)
	{
		if ( (n_wait = uxQueueMessagesWaiting(xMotorEvents)) != 0 )
			{
				xQueueReceive(xMotorEvents, &buffer_event, 0);
				if (buffer_event.event_type == DOCK_CARRIAGE)
				{
					carriage_docking();
				} else if (buffer_event.event_type == MOVE)
				{
					uint8_t dir = 1;
					dir = (buffer_event.data < 0) ? FORWARD : BACK;
					move(20, true, dir, abs(buffer_event.data)*40);

				}
			}
		osDelay(100);
	}
}


