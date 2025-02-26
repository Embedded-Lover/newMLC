################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.c \
../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.o \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.d \
./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.o FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.su FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/%.c FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-stubs

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-stubs:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_ReadHeader_llhttp_execute.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/HTTPClient_Send_llhttp_execute.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/callback_stubs.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/get_time_stub.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/httpHeaderStrncpy.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/memmove.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/strncpy.su ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.d ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.o ./FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/stubs/transport_interface_stubs.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-stubs

