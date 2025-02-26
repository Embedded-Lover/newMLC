################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.c 

OBJS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.o 

C_DEPS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.d 


# Each subdirectory must supply rules for building sources it contributes
documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/%.o documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/%.su documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/%.cyclo: ../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/%.c documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-aws-2f-aws-2d-iot-2d-core-2d-mqtt-2d-file-2d-streams-2d-embedded-2d-c-2f-source

clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-aws-2f-aws-2d-iot-2d-core-2d-mqtt-2d-file-2d-streams-2d-embedded-2d-c-2f-source:
	-$(RM) ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_base64.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/aws-iot-core-mqtt-file-streams-embedded-c/source/MQTTFileDownloader_cbor.su

.PHONY: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-aws-2f-aws-2d-iot-2d-core-2d-mqtt-2d-file-2d-streams-2d-embedded-2d-c-2f-source

