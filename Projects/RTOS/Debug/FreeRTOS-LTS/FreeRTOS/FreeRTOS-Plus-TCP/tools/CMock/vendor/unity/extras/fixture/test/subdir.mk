################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-CMock-2f-vendor-2f-unity-2f-extras-2f-fixture-2f-test

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-CMock-2f-vendor-2f-unity-2f-extras-2f-fixture-2f-test:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/template_fixture_tests.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_Test.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/extras/fixture/test/unity_fixture_TestRunner.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-CMock-2f-vendor-2f-unity-2f-extras-2f-fixture-2f-test

