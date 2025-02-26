################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_2-2f-src

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_2-2f-src:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Plus-TCP/tools/CMock/vendor/unity/examples/example_2/src/ProductionCode2.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Plus-2d-TCP-2f-tools-2f-CMock-2f-vendor-2f-unity-2f-examples-2f-example_2-2f-src

