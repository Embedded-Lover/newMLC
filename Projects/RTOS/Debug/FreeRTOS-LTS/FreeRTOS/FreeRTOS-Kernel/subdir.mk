################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel

