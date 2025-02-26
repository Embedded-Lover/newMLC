################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-source-2f-dependency-2f-3rdparty-2f-llhttp-2f-src

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-source-2f-dependency-2f-3rdparty-2f-llhttp-2f-src:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/api.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/http.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/coreHTTP/source/dependency/3rdparty/llhttp/src/llhttp.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-coreHTTP-2f-source-2f-dependency-2f-3rdparty-2f-llhttp-2f-src

