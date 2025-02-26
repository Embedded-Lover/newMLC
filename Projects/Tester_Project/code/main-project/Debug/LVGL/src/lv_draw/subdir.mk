################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/src/lv_draw/lv_draw_arc.c \
../LVGL/src/lv_draw/lv_draw_blend.c \
../LVGL/src/lv_draw/lv_draw_img.c \
../LVGL/src/lv_draw/lv_draw_label.c \
../LVGL/src/lv_draw/lv_draw_line.c \
../LVGL/src/lv_draw/lv_draw_mask.c \
../LVGL/src/lv_draw/lv_draw_rect.c \
../LVGL/src/lv_draw/lv_draw_triangle.c \
../LVGL/src/lv_draw/lv_img_buf.c \
../LVGL/src/lv_draw/lv_img_cache.c \
../LVGL/src/lv_draw/lv_img_decoder.c 

OBJS += \
./LVGL/src/lv_draw/lv_draw_arc.o \
./LVGL/src/lv_draw/lv_draw_blend.o \
./LVGL/src/lv_draw/lv_draw_img.o \
./LVGL/src/lv_draw/lv_draw_label.o \
./LVGL/src/lv_draw/lv_draw_line.o \
./LVGL/src/lv_draw/lv_draw_mask.o \
./LVGL/src/lv_draw/lv_draw_rect.o \
./LVGL/src/lv_draw/lv_draw_triangle.o \
./LVGL/src/lv_draw/lv_img_buf.o \
./LVGL/src/lv_draw/lv_img_cache.o \
./LVGL/src/lv_draw/lv_img_decoder.o 

C_DEPS += \
./LVGL/src/lv_draw/lv_draw_arc.d \
./LVGL/src/lv_draw/lv_draw_blend.d \
./LVGL/src/lv_draw/lv_draw_img.d \
./LVGL/src/lv_draw/lv_draw_label.d \
./LVGL/src/lv_draw/lv_draw_line.d \
./LVGL/src/lv_draw/lv_draw_mask.d \
./LVGL/src/lv_draw/lv_draw_rect.d \
./LVGL/src/lv_draw/lv_draw_triangle.d \
./LVGL/src/lv_draw/lv_img_buf.d \
./LVGL/src/lv_draw/lv_img_cache.d \
./LVGL/src/lv_draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL/src/lv_draw/%.o LVGL/src/lv_draw/%.su LVGL/src/lv_draw/%.cyclo: ../LVGL/src/lv_draw/%.c LVGL/src/lv_draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-src-2f-lv_draw

clean-LVGL-2f-src-2f-lv_draw:
	-$(RM) ./LVGL/src/lv_draw/lv_draw_arc.cyclo ./LVGL/src/lv_draw/lv_draw_arc.d ./LVGL/src/lv_draw/lv_draw_arc.o ./LVGL/src/lv_draw/lv_draw_arc.su ./LVGL/src/lv_draw/lv_draw_blend.cyclo ./LVGL/src/lv_draw/lv_draw_blend.d ./LVGL/src/lv_draw/lv_draw_blend.o ./LVGL/src/lv_draw/lv_draw_blend.su ./LVGL/src/lv_draw/lv_draw_img.cyclo ./LVGL/src/lv_draw/lv_draw_img.d ./LVGL/src/lv_draw/lv_draw_img.o ./LVGL/src/lv_draw/lv_draw_img.su ./LVGL/src/lv_draw/lv_draw_label.cyclo ./LVGL/src/lv_draw/lv_draw_label.d ./LVGL/src/lv_draw/lv_draw_label.o ./LVGL/src/lv_draw/lv_draw_label.su ./LVGL/src/lv_draw/lv_draw_line.cyclo ./LVGL/src/lv_draw/lv_draw_line.d ./LVGL/src/lv_draw/lv_draw_line.o ./LVGL/src/lv_draw/lv_draw_line.su ./LVGL/src/lv_draw/lv_draw_mask.cyclo ./LVGL/src/lv_draw/lv_draw_mask.d ./LVGL/src/lv_draw/lv_draw_mask.o ./LVGL/src/lv_draw/lv_draw_mask.su ./LVGL/src/lv_draw/lv_draw_rect.cyclo ./LVGL/src/lv_draw/lv_draw_rect.d ./LVGL/src/lv_draw/lv_draw_rect.o ./LVGL/src/lv_draw/lv_draw_rect.su ./LVGL/src/lv_draw/lv_draw_triangle.cyclo ./LVGL/src/lv_draw/lv_draw_triangle.d ./LVGL/src/lv_draw/lv_draw_triangle.o ./LVGL/src/lv_draw/lv_draw_triangle.su ./LVGL/src/lv_draw/lv_img_buf.cyclo ./LVGL/src/lv_draw/lv_img_buf.d ./LVGL/src/lv_draw/lv_img_buf.o ./LVGL/src/lv_draw/lv_img_buf.su ./LVGL/src/lv_draw/lv_img_cache.cyclo ./LVGL/src/lv_draw/lv_img_cache.d ./LVGL/src/lv_draw/lv_img_cache.o ./LVGL/src/lv_draw/lv_img_cache.su ./LVGL/src/lv_draw/lv_img_decoder.cyclo ./LVGL/src/lv_draw/lv_img_decoder.d ./LVGL/src/lv_draw/lv_img_decoder.o ./LVGL/src/lv_draw/lv_img_decoder.su

.PHONY: clean-LVGL-2f-src-2f-lv_draw

