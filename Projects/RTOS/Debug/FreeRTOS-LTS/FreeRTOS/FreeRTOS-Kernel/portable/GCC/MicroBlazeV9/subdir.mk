################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.c 

S_UPPER_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/portasm.S 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/portasm.o 

S_UPPER_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/portasm.d 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/%.o: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/%.S FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-MicroBlazeV9

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-MicroBlazeV9:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/port_exceptions.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/portasm.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/MicroBlazeV9/portasm.o

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-MicroBlazeV9

