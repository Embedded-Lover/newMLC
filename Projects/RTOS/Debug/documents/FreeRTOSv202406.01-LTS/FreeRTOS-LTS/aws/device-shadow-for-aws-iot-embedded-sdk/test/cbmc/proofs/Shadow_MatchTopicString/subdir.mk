################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.c 

OBJS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.o 

C_DEPS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.d 


# Each subdirectory must supply rules for building sources it contributes
documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/%.o documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/%.su documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/%.cyclo: ../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/%.c documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-aws-2f-device-2d-shadow-2d-for-2d-aws-2d-iot-2d-embedded-2d-sdk-2f-test-2f-cbmc-2f-proofs-2f-Shadow_MatchTopicString

clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-aws-2f-device-2d-shadow-2d-for-2d-aws-2d-iot-2d-embedded-2d-sdk-2f-test-2f-cbmc-2f-proofs-2f-Shadow_MatchTopicString:
	-$(RM) ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/aws/device-shadow-for-aws-iot-embedded-sdk/test/cbmc/proofs/Shadow_MatchTopicString/Shadow_MatchTopicString_harness.su

.PHONY: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-aws-2f-device-2d-shadow-2d-for-2d-aws-2d-iot-2d-embedded-2d-sdk-2f-test-2f-cbmc-2f-proofs-2f-Shadow_MatchTopicString

