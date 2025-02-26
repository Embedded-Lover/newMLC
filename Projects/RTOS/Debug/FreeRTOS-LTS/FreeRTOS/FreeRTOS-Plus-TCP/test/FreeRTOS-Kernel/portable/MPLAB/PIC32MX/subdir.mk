################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.c 

S_UPPER_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.S 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.o 

S_UPPER_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.d 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.o: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.S FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MX

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MX:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.o

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MX

