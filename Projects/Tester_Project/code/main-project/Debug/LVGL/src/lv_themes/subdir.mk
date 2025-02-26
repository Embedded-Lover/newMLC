################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/src/lv_themes/lv_theme.c \
../LVGL/src/lv_themes/lv_theme_empty.c \
../LVGL/src/lv_themes/lv_theme_material.c \
../LVGL/src/lv_themes/lv_theme_mono.c \
../LVGL/src/lv_themes/lv_theme_template.c 

OBJS += \
./LVGL/src/lv_themes/lv_theme.o \
./LVGL/src/lv_themes/lv_theme_empty.o \
./LVGL/src/lv_themes/lv_theme_material.o \
./LVGL/src/lv_themes/lv_theme_mono.o \
./LVGL/src/lv_themes/lv_theme_template.o 

C_DEPS += \
./LVGL/src/lv_themes/lv_theme.d \
./LVGL/src/lv_themes/lv_theme_empty.d \
./LVGL/src/lv_themes/lv_theme_material.d \
./LVGL/src/lv_themes/lv_theme_mono.d \
./LVGL/src/lv_themes/lv_theme_template.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL/src/lv_themes/%.o LVGL/src/lv_themes/%.su LVGL/src/lv_themes/%.cyclo: ../LVGL/src/lv_themes/%.c LVGL/src/lv_themes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-src-2f-lv_themes

clean-LVGL-2f-src-2f-lv_themes:
	-$(RM) ./LVGL/src/lv_themes/lv_theme.cyclo ./LVGL/src/lv_themes/lv_theme.d ./LVGL/src/lv_themes/lv_theme.o ./LVGL/src/lv_themes/lv_theme.su ./LVGL/src/lv_themes/lv_theme_empty.cyclo ./LVGL/src/lv_themes/lv_theme_empty.d ./LVGL/src/lv_themes/lv_theme_empty.o ./LVGL/src/lv_themes/lv_theme_empty.su ./LVGL/src/lv_themes/lv_theme_material.cyclo ./LVGL/src/lv_themes/lv_theme_material.d ./LVGL/src/lv_themes/lv_theme_material.o ./LVGL/src/lv_themes/lv_theme_material.su ./LVGL/src/lv_themes/lv_theme_mono.cyclo ./LVGL/src/lv_themes/lv_theme_mono.d ./LVGL/src/lv_themes/lv_theme_mono.o ./LVGL/src/lv_themes/lv_theme_mono.su ./LVGL/src/lv_themes/lv_theme_template.cyclo ./LVGL/src/lv_themes/lv_theme_template.d ./LVGL/src/lv_themes/lv_theme_template.o ./LVGL/src/lv_themes/lv_theme_template.su

.PHONY: clean-LVGL-2f-src-2f-lv_themes

