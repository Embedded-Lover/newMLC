################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.c \
../FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.c \
../FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.c \
../FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.o \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.o \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.o \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.d \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.d \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.d \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/%.o FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/%.su FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/%.c FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreSNTP-2f-test-2f-unit-2d-test-2f-CMock-2f-test-2f-c

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreSNTP-2f-test-2f-unit-2d-test-2f-CMock-2f-test-2f-c:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.cyclo ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.d ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.o ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC.su ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.cyclo ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.d ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.o ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic.su ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.cyclo ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.d ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.o ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockCDynamic_Runner.su ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.cyclo ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.d ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.o ./FreeRTOS-LTS/FreeRTOS/coreSNTP/test/unit-test/CMock/test/c/TestCMockC_Runner.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreSNTP-2f-test-2f-unit-2d-test-2f-CMock-2f-test-2f-c

