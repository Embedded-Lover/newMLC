################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/%.o FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/%.su FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/%.c FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_send_utest.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/core_http_utest.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test

