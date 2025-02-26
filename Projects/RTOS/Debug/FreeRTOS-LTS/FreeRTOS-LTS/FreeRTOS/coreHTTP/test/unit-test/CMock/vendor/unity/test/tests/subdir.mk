################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-test-2f-tests

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-test-2f-tests:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_arrays.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_core.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_doubles.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_floats.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_integers_64.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_memory.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_parameterized.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/unit-test/CMock/vendor/unity/test/tests/test_unity_strings.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-test-2f-tests

