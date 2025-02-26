################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.c \
../FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.c \
../FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.o \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.o \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.d \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.d \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/%.o FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/%.su FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/%.c FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreJSON-2f-test-2f-unit-2d-test-2f-Unity-2f-test-2f-testdata

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreJSON-2f-test-2f-unit-2d-test-2f-Unity-2f-test-2f-testdata:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.cyclo ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.d ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.o ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGenerator.su ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.cyclo ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.d ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.o ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorSmall.su ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.cyclo ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.d ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.o ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/test/testdata/testRunnerGeneratorWithMocks.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreJSON-2f-test-2f-unit-2d-test-2f-Unity-2f-test-2f-testdata

