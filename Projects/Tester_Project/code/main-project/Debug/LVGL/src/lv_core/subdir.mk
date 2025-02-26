################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/src/lv_core/lv_disp.c \
../LVGL/src/lv_core/lv_group.c \
../LVGL/src/lv_core/lv_indev.c \
../LVGL/src/lv_core/lv_obj.c \
../LVGL/src/lv_core/lv_refr.c \
../LVGL/src/lv_core/lv_style.c 

OBJS += \
./LVGL/src/lv_core/lv_disp.o \
./LVGL/src/lv_core/lv_group.o \
./LVGL/src/lv_core/lv_indev.o \
./LVGL/src/lv_core/lv_obj.o \
./LVGL/src/lv_core/lv_refr.o \
./LVGL/src/lv_core/lv_style.o 

C_DEPS += \
./LVGL/src/lv_core/lv_disp.d \
./LVGL/src/lv_core/lv_group.d \
./LVGL/src/lv_core/lv_indev.d \
./LVGL/src/lv_core/lv_obj.d \
./LVGL/src/lv_core/lv_refr.d \
./LVGL/src/lv_core/lv_style.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL/src/lv_core/%.o LVGL/src/lv_core/%.su LVGL/src/lv_core/%.cyclo: ../LVGL/src/lv_core/%.c LVGL/src/lv_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-src-2f-lv_core

clean-LVGL-2f-src-2f-lv_core:
	-$(RM) ./LVGL/src/lv_core/lv_disp.cyclo ./LVGL/src/lv_core/lv_disp.d ./LVGL/src/lv_core/lv_disp.o ./LVGL/src/lv_core/lv_disp.su ./LVGL/src/lv_core/lv_group.cyclo ./LVGL/src/lv_core/lv_group.d ./LVGL/src/lv_core/lv_group.o ./LVGL/src/lv_core/lv_group.su ./LVGL/src/lv_core/lv_indev.cyclo ./LVGL/src/lv_core/lv_indev.d ./LVGL/src/lv_core/lv_indev.o ./LVGL/src/lv_core/lv_indev.su ./LVGL/src/lv_core/lv_obj.cyclo ./LVGL/src/lv_core/lv_obj.d ./LVGL/src/lv_core/lv_obj.o ./LVGL/src/lv_core/lv_obj.su ./LVGL/src/lv_core/lv_refr.cyclo ./LVGL/src/lv_core/lv_refr.d ./LVGL/src/lv_core/lv_refr.o ./LVGL/src/lv_core/lv_refr.su ./LVGL/src/lv_core/lv_style.cyclo ./LVGL/src/lv_core/lv_style.d ./LVGL/src/lv_core/lv_style.o ./LVGL/src/lv_core/lv_style.su

.PHONY: clean-LVGL-2f-src-2f-lv_core

