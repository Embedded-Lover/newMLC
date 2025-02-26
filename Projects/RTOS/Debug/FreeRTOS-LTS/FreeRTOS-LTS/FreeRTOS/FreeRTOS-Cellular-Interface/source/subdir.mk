################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.c \
../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.c 

OBJS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.o \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.o 

C_DEPS += \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.d \
./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/%.o FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/%.su FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/%.cyclo: ../FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/%.c FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/include" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/RL78" -I"E:/RTOS/FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Kernel/conf" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-source

clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-source:
	-$(RM) ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_api.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_3gpp_urc_handler.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_at_core.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_common_api.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pkthandler.su ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.cyclo ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.d ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.o ./FreeRTOS-LTS/FreeRTOS-LTS/FreeRTOS/FreeRTOS-Cellular-Interface/source/cellular_pktio.su

.PHONY: clean-FreeRTOS-2d-LTS-2f-FreeRTOS-2d-LTS-2f-FreeRTOS-2f-FreeRTOS-2d-Cellular-2d-Interface-2f-source

