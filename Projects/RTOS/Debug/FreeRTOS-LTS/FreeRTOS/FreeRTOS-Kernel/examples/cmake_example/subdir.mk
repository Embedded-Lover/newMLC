################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-examples-2f-cmake_example

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-examples-2f-cmake_example:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/examples/cmake_example/main.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-examples-2f-cmake_example

