################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.c 

OBJS += \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.o 

C_DEPS += \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.d 


# Each subdirectory must supply rules for building sources it contributes
RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/%.o RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/%.su RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/%.cyclo: ../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/%.c RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-RX600v2

clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-RX600v2:
	-$(RM) ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/RX600v2/port.su

.PHONY: clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-RX600v2

