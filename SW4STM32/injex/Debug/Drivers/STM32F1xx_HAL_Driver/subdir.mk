################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rtc.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rtc_ex.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c \
/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rtc.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rtc_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_spi.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_spi_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rtc.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rtc_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_spi.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_spi_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rtc.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rtc_ex.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rtc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_spi.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_spi_ex.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.o: /home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/artsin/stm32_projects/injex/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/u8glib/inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/artsin/stm32_projects/injex/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/artsin/stm32_projects/injex/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Include" -I"/home/artsin/stm32_projects/injex/Drivers/CMSIS/Device/ST/STM32F1xx/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


