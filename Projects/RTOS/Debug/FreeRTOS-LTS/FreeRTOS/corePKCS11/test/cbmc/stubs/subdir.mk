################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.c \
../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.c \
../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.c \
../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.o \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.o \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.o \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.d \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.d \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.d \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/%.o FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/%.su FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/%.c FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-test-2f-cbmc-2f-stubs

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-test-2f-cbmc-2f-stubs:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.d ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.o ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pkcs11_pal_stubs.su ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.d ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.o ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/core_pki_utils_stubs.su ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.d ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.o ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/mbedtls_stubs.su ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.d ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.o ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/cbmc/stubs/pkcs11_interface_stubs.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-test-2f-cbmc-2f-stubs

