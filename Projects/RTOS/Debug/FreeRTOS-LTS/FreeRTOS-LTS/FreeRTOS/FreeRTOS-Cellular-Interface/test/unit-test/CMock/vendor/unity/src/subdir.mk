################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/RL78" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-src

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-src:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/unit-test/CMock/vendor/unity/src/unity.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-unit-2d-test-2f-CMock-2f-vendor-2f-unity-2f-src

