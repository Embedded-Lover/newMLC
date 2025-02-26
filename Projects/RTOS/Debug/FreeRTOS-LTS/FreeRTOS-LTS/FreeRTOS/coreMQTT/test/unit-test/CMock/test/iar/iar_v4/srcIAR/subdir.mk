################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-test-2f-iar-2f-iar_v4-2f-srcIAR

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-test-2f-iar-2f-iar_v4-2f-srcIAR:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/unit-test/CMock/test/iar/iar_v4/srcIAR/Cstartup_SAM7.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-unit-2d-test-2f-CMock-2f-test-2f-iar-2f-iar_v4-2f-srcIAR

