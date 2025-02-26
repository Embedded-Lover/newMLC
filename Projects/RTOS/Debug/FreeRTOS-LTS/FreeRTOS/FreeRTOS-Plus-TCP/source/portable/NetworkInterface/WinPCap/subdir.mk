################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-WinPCap

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-WinPCap:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/FaultInjection.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/WinPCap/NetworkInterface.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-WinPCap

