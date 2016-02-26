#include "motor_control.h"

extern bool motor_enabled = false;

void InitMotor()
{
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB, DIR_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB, MS2_Pin, GPIO_PIN_SET);
	HAL_TIM_Base_Start_IT(&htim2);
}

void disable_motor()
{
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_SET);
}

void enable_motor()
{
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_RESET);
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if (GPIO_Pin == HALL_OUT_Pin)
	{
		if (HAL_GPIO_ReadPin(GPIOA, HALL_OUT_Pin) == GPIO_PIN_RESET) {
			disable_motor();
		} else {
			enable_motor();
		}
	}
	else if (GPIO_Pin == START_BTN_Pin)
	{
		int i;
		i++;
	}
	else  if (GPIO_Pin == MENU_BTN_Pin)
	{
		int i;
		i++;
	}
	else if (GPIO_Pin == EDIT_BTN_Pin)
	{
		int i;
		i++;
	}
	else if (GPIO_Pin == EXIT_BTN_Pin)
	{
		int i;
		i++;
	}
	else if (GPIO_Pin == ENCODER_SW_Pin)
	{
		int i;
		i++;
	}
}
/*
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim->Instance == TIM2)
  {
    HAL_GPIO_TogglePin(GPIOB, STEP_Pin);
  }
}*/
