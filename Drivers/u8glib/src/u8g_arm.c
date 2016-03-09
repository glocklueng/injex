/*

  u8g_arm.c


  u8g utility procedures for LPC122x

  Universal 8bit Graphics Library

  Copyright (c) 2013, olikraus@gmail.com
  All rights reserved.

  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice, this list
    of conditions and the following disclaimer.

  * Redistributions in binary form must reproduce the above copyright notice, this
    list of conditions and the following disclaimer in the documentation and/or other
    materials provided with the distribution.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
  CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
  INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


  The following delay procedures must be implemented for u8glib. This is done in this file:

  void u8g_Delay(uint16_t val)        Delay by "val" milliseconds
  void u8g_MicroDelay(void)        Delay be one microsecond
  void u8g_10MicroDelay(void)    Delay by 10 microseconds

  Additional requirements:

      SysTick must be enabled, but SysTick IRQ is not required. Any LOAD values are fine,
      it is prefered to have at least 1ms
      Example:
        SysTick->LOAD = (SystemCoreClock/1000UL*(unsigned long)SYS_TICK_PERIOD_IN_MS) - 1;
    SysTick->VAL = 0;
    SysTick->CTRL = 7;   // enable, generate interrupt (SysTick_Handler), do not divide by 2
*/

#include "u8g_arm.h"

/*========================================================================*/
/*
  The following delay procedures must be implemented for u8glib

  void u8g_Delay(uint16_t val)        Delay by "val" milliseconds
  void u8g_MicroDelay(void)        Delay be one microsecond
  void u8g_10MicroDelay(void)    Delay by 10 microseconds

*/

void u8g_Delay(uint16_t val)
{

  HAL_Delay(val);
}

void u8g_MicroDelay(void)
{
  int i;
  for (i = 0; i < 1000; i++);
}

void u8g_10MicroDelay(void)
{
    int i;
    for (i = 0; i < 10000; i++);
}




/*========================================================================*/


uint8_t u8g_com_hw_spi_fn(u8g_t *u8g, uint8_t msg, uint8_t arg_val, void *arg_ptr)
{
  switch(msg)
  {
    case U8G_COM_MSG_STOP:
      break;

    case U8G_COM_MSG_INIT:
      u8g_MicroDelay();
      HAL_Delay(100);
      break;

    case U8G_COM_MSG_ADDRESS:                     /* define cmd (arg_val = 0) or data mode (arg_val = 1) */
      u8g_10MicroDelay();
      HAL_GPIO_WritePin(PORT, DC, arg_val);
      u8g_10MicroDelay();
     break;

    case U8G_COM_MSG_CHIP_SELECT:
      if ( arg_val == 0 )
      {
        /* disable */
    uint8_t i;
    /* this delay is required to avoid that the display is switched off too early --> DOGS102 with LPC1114 */
    for( i = 0; i < 5; i++ )
      u8g_10MicroDelay();
    HAL_GPIO_WritePin(PORT, CS, GPIO_PIN_SET);
      }
      else
      {
        /* enable */
          HAL_GPIO_WritePin(PORT, CS, GPIO_PIN_RESET);
      }
      u8g_MicroDelay();
      break;

    case U8G_COM_MSG_RESET:
      break;

    case U8G_COM_MSG_WRITE_BYTE:
        HAL_SPI_Transmit(&SPI_HANDLER, &arg_val, 1, 10000);
        while(HAL_SPI_GetState(&SPI_HANDLER) != HAL_SPI_STATE_READY);
        u8g_MicroDelay();
        break;

    case U8G_COM_MSG_WRITE_SEQ:
    case U8G_COM_MSG_WRITE_SEQ_P:
      {
        register uint8_t *ptr = arg_ptr;
        while( arg_val > 0 )
        {
            HAL_SPI_Transmit(&SPI_HANDLER, ptr++, 1, 10000);
            while(HAL_SPI_GetState(&SPI_HANDLER) != HAL_SPI_STATE_READY);
            arg_val--;
        }
      }
      break;
  }
  return 1;
}
