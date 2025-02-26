################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/%.o FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/%.su FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/%.c FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-test-2f-mbedtls_integration

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-test-2f-mbedtls_integration:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.cyclo ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.d ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.o ./FreeRTOS-LTS/FreeRTOS/corePKCS11/test/mbedtls_integration/mbedtls_integration_test.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-corePKCS11-2f-test-2f-mbedtls_integration

