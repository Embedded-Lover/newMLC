################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/%.o FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/%.su FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/%.c FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-source-2f-portable-2f-os

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-source-2f-portable-2f-os:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.cyclo ./FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.d ./FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.o ./FreeRTOS-LTS/FreeRTOS/corePKCS11/source/portable/os/core_pkcs11_pal_utils.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-source-2f-portable-2f-os

