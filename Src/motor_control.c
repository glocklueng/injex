#include "motor_control.h"

void InitMotor()
{
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB, DIR_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB, MS2_Pin, GPIO_PIN_SET);

	HAL_TIM_Base_Start_IT(&htim2);
	/*for (int i = 0; i < 200; i++)
	{
		HAL_GPIO_TogglePin(GPIOB, STEP_Pin);
		HAL_Delay(1);
	}
	HAL_GPIO_WritePin(GPIOB, DIR_Pin, GPIO_PIN_RESET);
	for (int i = 0; i < 200; i++)
	{
		HAL_GPIO_TogglePin(GPIOB, STEP_Pin);
		HAL_Delay(1);
	}*/
	HAL_GPIO_WritePin(GPIOB, MOTOR_EN_Pin, GPIO_PIN_SET);
}




