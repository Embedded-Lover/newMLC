################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.c 

OBJS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.o 

C_DEPS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.o documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.su documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.cyclo: ../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.c documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-stubs

clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-stubs:
	-$(RM) ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.su

.PHONY: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-stubs

