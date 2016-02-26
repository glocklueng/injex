################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/list.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/queue.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/timers.c 

OBJS += \
./Middlewares/FreeRTOS/cmsis_os.o \
./Middlewares/FreeRTOS/croutine.o \
./Middlewares/FreeRTOS/event_groups.o \
./Middlewares/FreeRTOS/heap_4.o \
./Middlewares/FreeRTOS/list.o \
./Middlewares/FreeRTOS/port.o \
./Middlewares/FreeRTOS/queue.o \
./Middlewares/FreeRTOS/tasks.o \
./Middlewares/FreeRTOS/timers.o 

C_DEPS += \
./Middlewares/FreeRTOS/cmsis_os.d \
./Middlewares/FreeRTOS/croutine.d \
./Middlewares/FreeRTOS/event_groups.d \
./Middlewares/FreeRTOS/heap_4.d \
./Middlewares/FreeRTOS/list.d \
./Middlewares/FreeRTOS/port.d \
./Middlewares/FreeRTOS/queue.d \
./Middlewares/FreeRTOS/tasks.d \
./Middlewares/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/cmsis_os.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/croutine.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/croutine.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/event_groups.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/heap_4.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/list.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/port.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/queue.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/tasks.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/timers.o: /home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


