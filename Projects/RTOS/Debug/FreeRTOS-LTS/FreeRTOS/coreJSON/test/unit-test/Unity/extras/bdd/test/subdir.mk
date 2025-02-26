################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/%.o FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/%.su FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/%.c FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreJSON-2f-test-2f-unit-2d-test-2f-Unity-2f-extras-2f-bdd-2f-test

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreJSON-2f-test-2f-unit-2d-test-2f-Unity-2f-extras-2f-bdd-2f-test:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.cyclo ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.d ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.o ./FreeRTOS-LTS/FreeRTOS/coreJSON/test/unit-test/Unity/extras/bdd/test/test_bdd.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreJSON-2f-test-2f-unit-2d-test-2f-Unity-2f-extras-2f-bdd-2f-test

