################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/%.o FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/%.su FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/%.c FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-src

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-src:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.cyclo ./FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.d ./FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.o ./FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/src/cmock.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-src

