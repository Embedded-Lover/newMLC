################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/src/lv_misc/lv_anim.c \
../LVGL/src/lv_misc/lv_area.c \
../LVGL/src/lv_misc/lv_async.c \
../LVGL/src/lv_misc/lv_bidi.c \
../LVGL/src/lv_misc/lv_color.c \
../LVGL/src/lv_misc/lv_debug.c \
../LVGL/src/lv_misc/lv_fs.c \
../LVGL/src/lv_misc/lv_gc.c \
../LVGL/src/lv_misc/lv_ll.c \
../LVGL/src/lv_misc/lv_log.c \
../LVGL/src/lv_misc/lv_math.c \
../LVGL/src/lv_misc/lv_mem.c \
../LVGL/src/lv_misc/lv_printf.c \
../LVGL/src/lv_misc/lv_task.c \
../LVGL/src/lv_misc/lv_templ.c \
../LVGL/src/lv_misc/lv_txt.c \
../LVGL/src/lv_misc/lv_txt_ap.c \
../LVGL/src/lv_misc/lv_utils.c 

OBJS += \
./LVGL/src/lv_misc/lv_anim.o \
./LVGL/src/lv_misc/lv_area.o \
./LVGL/src/lv_misc/lv_async.o \
./LVGL/src/lv_misc/lv_bidi.o \
./LVGL/src/lv_misc/lv_color.o \
./LVGL/src/lv_misc/lv_debug.o \
./LVGL/src/lv_misc/lv_fs.o \
./LVGL/src/lv_misc/lv_gc.o \
./LVGL/src/lv_misc/lv_ll.o \
./LVGL/src/lv_misc/lv_log.o \
./LVGL/src/lv_misc/lv_math.o \
./LVGL/src/lv_misc/lv_mem.o \
./LVGL/src/lv_misc/lv_printf.o \
./LVGL/src/lv_misc/lv_task.o \
./LVGL/src/lv_misc/lv_templ.o \
./LVGL/src/lv_misc/lv_txt.o \
./LVGL/src/lv_misc/lv_txt_ap.o \
./LVGL/src/lv_misc/lv_utils.o 

C_DEPS += \
./LVGL/src/lv_misc/lv_anim.d \
./LVGL/src/lv_misc/lv_area.d \
./LVGL/src/lv_misc/lv_async.d \
./LVGL/src/lv_misc/lv_bidi.d \
./LVGL/src/lv_misc/lv_color.d \
./LVGL/src/lv_misc/lv_debug.d \
./LVGL/src/lv_misc/lv_fs.d \
./LVGL/src/lv_misc/lv_gc.d \
./LVGL/src/lv_misc/lv_ll.d \
./LVGL/src/lv_misc/lv_log.d \
./LVGL/src/lv_misc/lv_math.d \
./LVGL/src/lv_misc/lv_mem.d \
./LVGL/src/lv_misc/lv_printf.d \
./LVGL/src/lv_misc/lv_task.d \
./LVGL/src/lv_misc/lv_templ.d \
./LVGL/src/lv_misc/lv_txt.d \
./LVGL/src/lv_misc/lv_txt_ap.d \
./LVGL/src/lv_misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL/src/lv_misc/%.o LVGL/src/lv_misc/%.su LVGL/src/lv_misc/%.cyclo: ../LVGL/src/lv_misc/%.c LVGL/src/lv_misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-src-2f-lv_misc

clean-LVGL-2f-src-2f-lv_misc:
	-$(RM) ./LVGL/src/lv_misc/lv_anim.cyclo ./LVGL/src/lv_misc/lv_anim.d ./LVGL/src/lv_misc/lv_anim.o ./LVGL/src/lv_misc/lv_anim.su ./LVGL/src/lv_misc/lv_area.cyclo ./LVGL/src/lv_misc/lv_area.d ./LVGL/src/lv_misc/lv_area.o ./LVGL/src/lv_misc/lv_area.su ./LVGL/src/lv_misc/lv_async.cyclo ./LVGL/src/lv_misc/lv_async.d ./LVGL/src/lv_misc/lv_async.o ./LVGL/src/lv_misc/lv_async.su ./LVGL/src/lv_misc/lv_bidi.cyclo ./LVGL/src/lv_misc/lv_bidi.d ./LVGL/src/lv_misc/lv_bidi.o ./LVGL/src/lv_misc/lv_bidi.su ./LVGL/src/lv_misc/lv_color.cyclo ./LVGL/src/lv_misc/lv_color.d ./LVGL/src/lv_misc/lv_color.o ./LVGL/src/lv_misc/lv_color.su ./LVGL/src/lv_misc/lv_debug.cyclo ./LVGL/src/lv_misc/lv_debug.d ./LVGL/src/lv_misc/lv_debug.o ./LVGL/src/lv_misc/lv_debug.su ./LVGL/src/lv_misc/lv_fs.cyclo ./LVGL/src/lv_misc/lv_fs.d ./LVGL/src/lv_misc/lv_fs.o ./LVGL/src/lv_misc/lv_fs.su ./LVGL/src/lv_misc/lv_gc.cyclo ./LVGL/src/lv_misc/lv_gc.d ./LVGL/src/lv_misc/lv_gc.o ./LVGL/src/lv_misc/lv_gc.su ./LVGL/src/lv_misc/lv_ll.cyclo ./LVGL/src/lv_misc/lv_ll.d ./LVGL/src/lv_misc/lv_ll.o ./LVGL/src/lv_misc/lv_ll.su ./LVGL/src/lv_misc/lv_log.cyclo ./LVGL/src/lv_misc/lv_log.d ./LVGL/src/lv_misc/lv_log.o ./LVGL/src/lv_misc/lv_log.su ./LVGL/src/lv_misc/lv_math.cyclo ./LVGL/src/lv_misc/lv_math.d ./LVGL/src/lv_misc/lv_math.o ./LVGL/src/lv_misc/lv_math.su ./LVGL/src/lv_misc/lv_mem.cyclo ./LVGL/src/lv_misc/lv_mem.d ./LVGL/src/lv_misc/lv_mem.o ./LVGL/src/lv_misc/lv_mem.su ./LVGL/src/lv_misc/lv_printf.cyclo ./LVGL/src/lv_misc/lv_printf.d ./LVGL/src/lv_misc/lv_printf.o ./LVGL/src/lv_misc/lv_printf.su ./LVGL/src/lv_misc/lv_task.cyclo ./LVGL/src/lv_misc/lv_task.d ./LVGL/src/lv_misc/lv_task.o ./LVGL/src/lv_misc/lv_task.su ./LVGL/src/lv_misc/lv_templ.cyclo ./LVGL/src/lv_misc/lv_templ.d ./LVGL/src/lv_misc/lv_templ.o ./LVGL/src/lv_misc/lv_templ.su ./LVGL/src/lv_misc/lv_txt.cyclo ./LVGL/src/lv_misc/lv_txt.d ./LVGL/src/lv_misc/lv_txt.o ./LVGL/src/lv_misc/lv_txt.su ./LVGL/src/lv_misc/lv_txt_ap.cyclo ./LVGL/src/lv_misc/lv_txt_ap.d ./LVGL/src/lv_misc/lv_txt_ap.o ./LVGL/src/lv_misc/lv_txt_ap.su ./LVGL/src/lv_misc/lv_utils.cyclo ./LVGL/src/lv_misc/lv_utils.d ./LVGL/src/lv_misc/lv_utils.o ./LVGL/src/lv_misc/lv_utils.su

.PHONY: clean-LVGL-2f-src-2f-lv_misc

