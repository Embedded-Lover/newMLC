################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c \
../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.c 

OBJS += \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.o \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.o 

C_DEPS += \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.d \
./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.d 


# Each subdirectory must supply rules for building sources it contributes
RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/%.o RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/%.su RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/%.cyclo: ../RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/%.c RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Softune-2f-MB91460

clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Softune-2f-MB91460:
	-$(RM) ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/__STD_LIB_sbrk.su ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.cyclo ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.d ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.o ./RTOS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/Softune/MB91460/port.su

.PHONY: clean-RTOS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-Softune-2f-MB91460

