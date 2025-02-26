################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.c 

OBJS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.o 

C_DEPS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.d 


# Each subdirectory must supply rules for building sources it contributes
documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/%.o documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/%.su documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/%.cyclo: ../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/%.c documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-source

clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-source:
	-$(RM) ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pkcs11.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/corePKCS11/source/core_pki_utils.su

.PHONY: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-source

