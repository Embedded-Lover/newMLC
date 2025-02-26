################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-secure-2f-heap

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-secure-2f-heap:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/ARMv8M/secure/heap/secure_heap.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-secure-2f-heap

