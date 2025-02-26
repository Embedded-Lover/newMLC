################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Touch/XPT2046_Touchscreen.c 

OBJS += \
./Touch/XPT2046_Touchscreen.o 

C_DEPS += \
./Touch/XPT2046_Touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
Touch/%.o Touch/%.su Touch/%.cyclo: ../Touch/%.c Touch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Touch

clean-Touch:
	-$(RM) ./Touch/XPT2046_Touchscreen.cyclo ./Touch/XPT2046_Touchscreen.d ./Touch/XPT2046_Touchscreen.o ./Touch/XPT2046_Touchscreen.su

.PHONY: clean-Touch

