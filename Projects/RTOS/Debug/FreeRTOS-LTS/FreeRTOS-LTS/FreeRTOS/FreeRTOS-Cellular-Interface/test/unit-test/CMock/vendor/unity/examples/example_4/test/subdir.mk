################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/RL78" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_4-2f-test

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_4-2f-test:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/examples/example_4/test/TestProductionCode2.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_4-2f-test

