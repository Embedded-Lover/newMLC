################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-c_exception-2f-test

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-c_exception-2f-test:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/c_exception/test/TestException.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-c_exception-2f-test

