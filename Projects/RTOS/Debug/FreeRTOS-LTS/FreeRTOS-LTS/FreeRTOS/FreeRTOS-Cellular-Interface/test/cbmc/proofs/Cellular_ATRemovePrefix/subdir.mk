################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/RL78" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-cbmc-2f-proofs-2f-Cellular_ATRemovePrefix

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-cbmc-2f-proofs-2f-Cellular_ATRemovePrefix:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/test/cbmc/proofs/Cellular_ATRemovePrefix/Cellular_ATRemovePrefix_harness.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-test-2f-cbmc-2f-proofs-2f-Cellular_ATRemovePrefix

