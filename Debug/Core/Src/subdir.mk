################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/at24c02.c \
../Core/Src/buzzer.c \
../Core/Src/delay.c \
../Core/Src/dma.c \
../Core/Src/gpio.c \
../Core/Src/iic_dup.c \
../Core/Src/main.c \
../Core/Src/main10ms.c \
../Core/Src/mian1ms.c \
../Core/Src/rx_analysis.c \
../Core/Src/spi.c \
../Core/Src/stm32f1xx_hal_msp.c \
../Core/Src/stm32f1xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f1xx.c \
../Core/Src/tim.c \
../Core/Src/timepiece.c \
../Core/Src/usart.c \
../Core/Src/w25q16.c 

OBJS += \
./Core/Src/at24c02.o \
./Core/Src/buzzer.o \
./Core/Src/delay.o \
./Core/Src/dma.o \
./Core/Src/gpio.o \
./Core/Src/iic_dup.o \
./Core/Src/main.o \
./Core/Src/main10ms.o \
./Core/Src/mian1ms.o \
./Core/Src/rx_analysis.o \
./Core/Src/spi.o \
./Core/Src/stm32f1xx_hal_msp.o \
./Core/Src/stm32f1xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f1xx.o \
./Core/Src/tim.o \
./Core/Src/timepiece.o \
./Core/Src/usart.o \
./Core/Src/w25q16.o 

C_DEPS += \
./Core/Src/at24c02.d \
./Core/Src/buzzer.d \
./Core/Src/delay.d \
./Core/Src/dma.d \
./Core/Src/gpio.d \
./Core/Src/iic_dup.d \
./Core/Src/main.d \
./Core/Src/main10ms.d \
./Core/Src/mian1ms.d \
./Core/Src/rx_analysis.d \
./Core/Src/spi.d \
./Core/Src/stm32f1xx_hal_msp.d \
./Core/Src/stm32f1xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f1xx.d \
./Core/Src/tim.d \
./Core/Src/timepiece.d \
./Core/Src/usart.d \
./Core/Src/w25q16.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

