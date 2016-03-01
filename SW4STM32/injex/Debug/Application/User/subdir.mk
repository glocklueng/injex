################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/artsin/github/injex/Src/freertos.c \
/home/artsin/github/injex/Src/gui.c \
/home/artsin/github/injex/Src/main.c \
/home/artsin/github/injex/Src/motor_control.c \
/home/artsin/github/injex/Src/stm32f1xx_hal_msp.c \
/home/artsin/github/injex/Src/stm32f1xx_it.c 

OBJS += \
./Application/User/freertos.o \
./Application/User/gui.o \
./Application/User/main.o \
./Application/User/motor_control.o \
./Application/User/stm32f1xx_hal_msp.o \
./Application/User/stm32f1xx_it.o 

C_DEPS += \
./Application/User/freertos.d \
./Application/User/gui.d \
./Application/User/main.d \
./Application/User/motor_control.d \
./Application/User/stm32f1xx_hal_msp.d \
./Application/User/stm32f1xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/freertos.o: /home/artsin/github/injex/Src/freertos.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/github/injex/Inc" -I"/home/artsin/github/injex/Drivers/u8glib/inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/github/injex/Drivers/CMSIS/Include" -I"/home/artsin/github/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gui.o: /home/artsin/github/injex/Src/gui.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/github/injex/Inc" -I"/home/artsin/github/injex/Drivers/u8glib/inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/github/injex/Drivers/CMSIS/Include" -I"/home/artsin/github/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: /home/artsin/github/injex/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/github/injex/Inc" -I"/home/artsin/github/injex/Drivers/u8glib/inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/github/injex/Drivers/CMSIS/Include" -I"/home/artsin/github/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/motor_control.o: /home/artsin/github/injex/Src/motor_control.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/github/injex/Inc" -I"/home/artsin/github/injex/Drivers/u8glib/inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/github/injex/Drivers/CMSIS/Include" -I"/home/artsin/github/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_hal_msp.o: /home/artsin/github/injex/Src/stm32f1xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/github/injex/Inc" -I"/home/artsin/github/injex/Drivers/u8glib/inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/github/injex/Drivers/CMSIS/Include" -I"/home/artsin/github/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_it.o: /home/artsin/github/injex/Src/stm32f1xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/github/injex/Inc" -I"/home/artsin/github/injex/Drivers/u8glib/inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/github/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/github/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/github/injex/Drivers/CMSIS/Include" -I"/home/artsin/github/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


