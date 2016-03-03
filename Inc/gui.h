#ifndef _GUI_H
#define _GUI_H


#include "stm32f1xx_hal.h"
#include "cmsis_os.h"
#include <stdbool.h>


void guiFunc(void const * argument);
void buttonScanFunc(void const * argument);
void motorFunc(void const * argument);
struct Event {
	uint8_t input_type: 4;
	uint8_t id: 4;
	int8_t data;
};

struct MotorEvent {
	uint8_t event_type;
	uint32_t add_data;
	union {
		int32_t data;
		float abs_dist;
	};
};

extern TIM_HandleTypeDef htim2;


#endif
