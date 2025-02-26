################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../External_flash/ospi_w25q64.c 

OBJS += \
./External_flash/ospi_w25q64.o 

C_DEPS += \
./External_flash/ospi_w25q64.d 


# Each subdirectory must supply rules for building sources it contributes
External_flash/%.o External_flash/%.su External_flash/%.cyclo: ../External_flash/%.c External_flash/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-External_flash

clean-External_flash:
	-$(RM) ./External_flash/ospi_w25q64.cyclo ./External_flash/ospi_w25q64.d ./External_flash/ospi_w25q64.o ./External_flash/ospi_w25q64.su

.PHONY: clean-External_flash

