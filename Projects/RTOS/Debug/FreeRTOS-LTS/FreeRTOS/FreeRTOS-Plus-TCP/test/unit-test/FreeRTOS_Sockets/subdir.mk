################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-unit-2d-test-2f-FreeRTOS_Sockets

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-unit-2d-test-2f-FreeRTOS_Sockets:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_GenericAPI_utest.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_TCP_API_utest.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_UDP_API_utest.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_privates_utest.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets/FreeRTOS_Sockets_stubs.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-unit-2d-test-2f-FreeRTOS_Sockets

