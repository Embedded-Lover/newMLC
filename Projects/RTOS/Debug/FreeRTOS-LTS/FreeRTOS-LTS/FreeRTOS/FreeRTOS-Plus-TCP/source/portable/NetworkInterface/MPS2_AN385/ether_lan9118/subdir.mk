################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-MPS2_AN385-2f-ether_lan9118

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-MPS2_AN385-2f-ether_lan9118:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/MPS2_AN385/ether_lan9118/smsc9220_eth_drv.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-MPS2_AN385-2f-ether_lan9118

