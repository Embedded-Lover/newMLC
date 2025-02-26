################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s 

S_UPPER_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.S 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.o 

S_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.d 

S_UPPER_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.o: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.S FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.o: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.s FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM23_NTZ

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM23_NTZ:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.o

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM23_NTZ

