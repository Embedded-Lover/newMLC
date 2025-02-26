################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GUI/analogScreen.c \
../GUI/homeScreen.c \
../GUI/lcd.c \
../GUI/mainScreen.c 

OBJS += \
./GUI/analogScreen.o \
./GUI/homeScreen.o \
./GUI/lcd.o \
./GUI/mainScreen.o 

C_DEPS += \
./GUI/analogScreen.d \
./GUI/homeScreen.d \
./GUI/lcd.d \
./GUI/mainScreen.d 


# Each subdirectory must supply rules for building sources it contributes
GUI/%.o GUI/%.su GUI/%.cyclo: ../GUI/%.c GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-GUI

clean-GUI:
	-$(RM) ./GUI/analogScreen.cyclo ./GUI/analogScreen.d ./GUI/analogScreen.o ./GUI/analogScreen.su ./GUI/homeScreen.cyclo ./GUI/homeScreen.d ./GUI/homeScreen.o ./GUI/homeScreen.su ./GUI/lcd.cyclo ./GUI/lcd.d ./GUI/lcd.o ./GUI/lcd.su ./GUI/mainScreen.cyclo ./GUI/mainScreen.d ./GUI/mainScreen.o ./GUI/mainScreen.su

.PHONY: clean-GUI

