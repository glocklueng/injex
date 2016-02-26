################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f1xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f1xx.o: /home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


