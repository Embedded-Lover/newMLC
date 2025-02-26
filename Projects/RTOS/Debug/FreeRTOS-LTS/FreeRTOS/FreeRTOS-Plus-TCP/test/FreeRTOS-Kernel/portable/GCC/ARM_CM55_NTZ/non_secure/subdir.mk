################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM55_NTZ-2f-non_secure

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM55_NTZ-2f-non_secure:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/mpu_wrappers_v2_asm.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/port.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM55_NTZ-2f-non_secure

