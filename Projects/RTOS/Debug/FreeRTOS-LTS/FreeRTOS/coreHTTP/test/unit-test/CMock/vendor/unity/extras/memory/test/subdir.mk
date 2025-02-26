################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/%.o FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/%.su FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/%.c FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-extras-2f-memory-2f-test

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-extras-2f-memory-2f-test:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_Test.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_memory_TestRunner.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/extras/memory/test/unity_output_Spy.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-extras-2f-memory-2f-test

