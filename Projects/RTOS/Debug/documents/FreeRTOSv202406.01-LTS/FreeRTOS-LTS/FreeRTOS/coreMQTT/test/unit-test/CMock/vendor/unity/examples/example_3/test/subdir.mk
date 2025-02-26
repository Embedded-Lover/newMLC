################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.c 

OBJS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.o 

C_DEPS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.d 


# Each subdirectory must supply rules for building sources it contributes
documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/%.o documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/%.su documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/%.cyclo: ../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/%.c documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_3-2f-test

clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_3-2f-test:
	-$(RM) ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/vendor/unity/examples/example_3/test/TestProductionCode2.su

.PHONY: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_3-2f-test

