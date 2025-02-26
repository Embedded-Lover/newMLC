################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.c \
../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.o \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.d \
./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/%.o FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/%.su FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/%.cyclo: ../FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/%.c FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-cbmc-2f-stubs

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-cbmc-2f-stubs:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/cbmc.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_api.su ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.cyclo ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.d ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.o ./FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/test/cbmc/stubs/freertos_kernel_api.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-test-2f-cbmc-2f-stubs

