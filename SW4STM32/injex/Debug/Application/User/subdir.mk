################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/artsin/stm32_projects/injex/Src/freertos.c \
/home/artsin/stm32_projects/injex/Src/gui.c \
/home/artsin/stm32_projects/injex/Src/main.c \
/home/artsin/stm32_projects/injex/Src/motor_control.c \
/home/artsin/stm32_projects/injex/Src/stm32f1xx_hal_msp.c \
/home/artsin/stm32_projects/injex/Src/stm32f1xx_hal_timebase_TIM.c \
/home/artsin/stm32_projects/injex/Src/stm32f1xx_it.c 

OBJS += \
./Application/User/freertos.o \
./Application/User/gui.o \
./Application/User/main.o \
./Application/User/motor_control.o \
./Application/User/stm32f1xx_hal_msp.o \
./Application/User/stm32f1xx_hal_timebase_TIM.o \
./Application/User/stm32f1xx_it.o 

C_DEPS += \
./Application/User/freertos.d \
./Application/User/gui.d \
./Application/User/main.d \
./Application/User/motor_control.d \
./Application/User/stm32f1xx_hal_msp.d \
./Application/User/stm32f1xx_hal_timebase_TIM.d \
./Application/User/stm32f1xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/freertos.o: /home/artsin/stm32_projects/injex/Src/freertos.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gui.o: /home/artsin/stm32_projects/injex/Src/gui.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: /home/artsin/stm32_projects/injex/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/motor_control.o: /home/artsin/stm32_projects/injex/Src/motor_control.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_hal_msp.o: /home/artsin/stm32_projects/injex/Src/stm32f1xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_hal_timebase_TIM.o: /home/artsin/stm32_projects/injex/Src/stm32f1xx_hal_timebase_TIM.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_it.o: /home/artsin/stm32_projects/injex/Src/stm32f1xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


