#ifndef _MOTOR_CONTROL_H
#define _MOTOR_CONTROL_H


#include "stm32f1xx_hal.h"
#include <stdbool.h>

extern bool motor_enabled;
extern TIM_HandleTypeDef htim2;

void InitMotor();


#endif