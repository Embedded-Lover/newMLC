################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.c \
../FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.o \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.d \
./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreSNTP/source/%.o FreeRTOS-LTS/FreeRTOS/coreSNTP/source/%.su FreeRTOS-LTS/FreeRTOS/coreSNTP/source/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreSNTP/source/%.c FreeRTOS-LTS/FreeRTOS/coreSNTP/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreSNTP-2f-source

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreSNTP-2f-source:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.cyclo ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.d ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.o ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_client.su ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.cyclo ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.d ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.o ./FreeRTOS-LTS/FreeRTOS/coreSNTP/source/core_sntp_serializer.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreSNTP-2f-source

