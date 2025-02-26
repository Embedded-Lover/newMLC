################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-SH2A_FPU

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-SH2A_FPU:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Renesas/SH2A_FPU/port.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-SH2A_FPU

