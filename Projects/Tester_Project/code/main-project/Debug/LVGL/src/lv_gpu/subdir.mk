################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/src/lv_gpu/lv_gpu_nxp_pxp.c \
../LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.c \
../LVGL/src/lv_gpu/lv_gpu_nxp_vglite.c \
../LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.c 

OBJS += \
./LVGL/src/lv_gpu/lv_gpu_nxp_pxp.o \
./LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.o \
./LVGL/src/lv_gpu/lv_gpu_nxp_vglite.o \
./LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./LVGL/src/lv_gpu/lv_gpu_nxp_pxp.d \
./LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.d \
./LVGL/src/lv_gpu/lv_gpu_nxp_vglite.d \
./LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
LVGL/src/lv_gpu/%.o LVGL/src/lv_gpu/%.su LVGL/src/lv_gpu/%.cyclo: ../LVGL/src/lv_gpu/%.c LVGL/src/lv_gpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7B0xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-src-2f-lv_gpu

clean-LVGL-2f-src-2f-lv_gpu:
	-$(RM) ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp.cyclo ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp.d ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp.o ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp.su ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.cyclo ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.d ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.o ./LVGL/src/lv_gpu/lv_gpu_nxp_pxp_osa.su ./LVGL/src/lv_gpu/lv_gpu_nxp_vglite.cyclo ./LVGL/src/lv_gpu/lv_gpu_nxp_vglite.d ./LVGL/src/lv_gpu/lv_gpu_nxp_vglite.o ./LVGL/src/lv_gpu/lv_gpu_nxp_vglite.su ./LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.cyclo ./LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.d ./LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.o ./LVGL/src/lv_gpu/lv_gpu_stm32_dma2d.su

.PHONY: clean-LVGL-2f-src-2f-lv_gpu

