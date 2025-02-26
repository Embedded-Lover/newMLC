################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.c \
../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.c 

OBJS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.o \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.o 

C_DEPS += \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.d \
./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.d 


# Each subdirectory must supply rules for building sources it contributes
documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/%.o documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/%.su documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/%.cyclo: ../documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/%.c documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-unit-2d-test-2f-FreeRTOS_Sockets_DiffConfig1

clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-unit-2d-test-2f-FreeRTOS_Sockets_DiffConfig1:
	-$(RM) ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_GenericAPI_utest.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_TCP_API_utest.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_UDP_API_utest.su ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.cyclo ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.d ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.o ./documents/FreeRTOSv202406.01-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/unit-test/FreeRTOS_Sockets_DiffConfig1/FreeRTOS_Sockets_DiffConfig1_privates_utest.su

.PHONY: clean-documents-2f-FreeRTOSv202406-2e-01-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-unit-2d-test-2f-FreeRTOS_Sockets_DiffConfig1

