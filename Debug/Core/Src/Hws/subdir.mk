################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Hws/at24c02.c \
../Core/Src/Hws/w25q16.c 

OBJS += \
./Core/Src/Hws/at24c02.o \
./Core/Src/Hws/w25q16.o 

C_DEPS += \
./Core/Src/Hws/at24c02.d \
./Core/Src/Hws/w25q16.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Hws/%.o Core/Src/Hws/%.su: ../Core/Src/Hws/%.c Core/Src/Hws/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Hws

clean-Core-2f-Src-2f-Hws:
	-$(RM) ./Core/Src/Hws/at24c02.d ./Core/Src/Hws/at24c02.o ./Core/Src/Hws/at24c02.su ./Core/Src/Hws/w25q16.d ./Core/Src/Hws/w25q16.o ./Core/Src/Hws/w25q16.su

.PHONY: clean-Core-2f-Src-2f-Hws

