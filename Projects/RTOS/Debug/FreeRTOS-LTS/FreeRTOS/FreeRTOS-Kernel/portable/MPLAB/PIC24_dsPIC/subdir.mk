################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.c 

S_UPPER_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 

S_UPPER_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.d 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/%.o: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/%.S FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC24_dsPIC

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC24_dsPIC:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/port.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC24_dsPIC

