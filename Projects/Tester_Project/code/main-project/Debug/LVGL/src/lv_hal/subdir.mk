################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/src/lv_hal/lv_hal_disp.c \
../LVGL/src/lv_hal/lv_hal_indev.c \
../LVGL/src/lv_hal/lv_hal_tick.c 

OBJS += \
./LVGL/src/lv_hal/lv_hal_disp.o \
./LVGL/src/lv_hal/lv_hal_indev.o \
./LVGL/src/lv_hal/lv_hal_tick.o 

C_DEPS += \
./LVGL/src/lv_hal/lv_hal_disp.d \
./LVGL/src/lv_hal/lv_hal_indev.d \
./LVGL/src/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL/src/lv_hal/%.o LVGL/src/lv_hal/%.su LVGL/src/lv_hal/%.cyclo: ../LVGL/src/lv_hal/%.c LVGL/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-src-2f-lv_hal

clean-LVGL-2f-src-2f-lv_hal:
	-$(RM) ./LVGL/src/lv_hal/lv_hal_disp.cyclo ./LVGL/src/lv_hal/lv_hal_disp.d ./LVGL/src/lv_hal/lv_hal_disp.o ./LVGL/src/lv_hal/lv_hal_disp.su ./LVGL/src/lv_hal/lv_hal_indev.cyclo ./LVGL/src/lv_hal/lv_hal_indev.d ./LVGL/src/lv_hal/lv_hal_indev.o ./LVGL/src/lv_hal/lv_hal_indev.su ./LVGL/src/lv_hal/lv_hal_tick.cyclo ./LVGL/src/lv_hal/lv_hal_tick.d ./LVGL/src/lv_hal/lv_hal_tick.o ./LVGL/src/lv_hal/lv_hal_tick.su

.PHONY: clean-LVGL-2f-src-2f-lv_hal

