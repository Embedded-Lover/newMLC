################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-proofs-2f-httpParserOnStatusCompleteCallback

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-proofs-2f-httpParserOnStatusCompleteCallback:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/test/cbmc/proofs/httpParserOnStatusCompleteCallback/httpParserOnStatusCompleteCallback_harness.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-test-2f-cbmc-2f-proofs-2f-httpParserOnStatusCompleteCallback

