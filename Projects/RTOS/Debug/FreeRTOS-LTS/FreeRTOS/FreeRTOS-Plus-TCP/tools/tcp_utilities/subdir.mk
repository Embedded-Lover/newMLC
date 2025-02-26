################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-tcp_utilities

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-tcp_utilities:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/NTPDemo.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/date_and_time.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/http_client_test.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/plus_tcp_demo_cli.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_dump_packets.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_mem_stats.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/tcp_utilities/tcp_netstat.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-tcp_utilities

