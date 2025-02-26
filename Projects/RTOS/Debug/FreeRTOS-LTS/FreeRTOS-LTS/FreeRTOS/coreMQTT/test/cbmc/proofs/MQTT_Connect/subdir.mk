################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-cbmc-2f-proofs-2f-MQTT_Connect

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-cbmc-2f-proofs-2f-MQTT_Connect:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreMQTT/test/cbmc/proofs/MQTT_Connect/MQTT_Connect_harness.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreMQTT-2f-test-2f-cbmc-2f-proofs-2f-MQTT_Connect

