################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.c 

OBJS += \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.o 

C_DEPS += \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.d 


# Each subdirectory must supply rules for building sources it contributes
RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.o RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.su RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.cyclo: ../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/%.c RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel

clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel:
	-$(RM) ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/croutine.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/event_groups.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/list.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/queue.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/stream_buffer.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/tasks.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/timers.su

.PHONY: clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel

