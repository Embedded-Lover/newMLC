#ifndef __LCD_RGB_H
#define __LCD_RGB_H

#include "stm32h7xx_hal.h"
#include "usart.h"
#include "lcd_fonts.h"
#include <stdio.h>

// 1. If only single layer is used, this parameter can be defined as 1, and if double layer is used, it needs to be changed to 2
// 2. This routine uses the AXI SRAM inside 7B0 as the video memory, the starting address is 0x24000000, and the size is 1M
// 3. Space required for video memory = resolution * number of bytes per pixel, for example, 480*272 screen, using 16-bit color (RGB565 or AEGB1555), requires video memory 480*272*2 = 261120 bytes
// 4. Regardless of whether it is a single-layer display or a double-layer display, it cannot exceed the size of the AXI SRAM
//
#define LCD_NUM_LAYERS 1 // Define the number of display layers, 7B0 can drive two layers of display

#define ColorMode_0 LTDC_PIXEL_FORMAT_RGB565 //Define the color format of layer0
//#define ColorMode_0 LTDC_PIXEL_FORMAT_ARGB8888   


/*---------------------------------------- Common colors ------ ------------------------------------------------

 1. Here, for the convenience of users, 32-bit colors are defined, and then automatically converted into the colors required by the corresponding color format through code
 2. In the 32-bit color, from the high bit to the low bit corresponds to the 4 color channels of A, R, G, and B, where A represents the transparent channel
 3. Up to 255 transparent colors can be set, ff means opaque, 0 means completely transparent
 4. Unless you use a color format that supports transparent colors such as ARGB1555 and ARGB8888, the transparent color will not work, and ARGB1555 only supports one bit
	 Transparent color, that is, only transparent and opaque, ARGB4444 has 16 levels of transparency, and ARGB8888 supports 255 levels of transparency
 5. The user can use the palette on the computer to obtain 24-bit RGB colors, and then supplement the transparent channel to obtain 32-bit colors, and then input the 32-bit colors
	 LCD_SetColor() or LCD_SetBackColor() can display the corresponding color.
 6. Example: the RGB value of pure blue is 0x0000FF, if no transparent color is required, the corresponding 32-bit color value is 0xff0000FF
 7. The colors defined below are all set to opaque, and users can define the corresponding colors according to their needs */

#define LCD_WHITE 0xffFFFFFF // pure white
#define LCD_BLACK 0xff000000 // pure black
                           
#define LCD_BLUE 0xff0000FF // pure blue
#define LCD_GREEN 0xff00FF00 // pure green
#define LCD_RED 0xffFF0000 // pure red
#define LCD_CYAN 0xff00FFFF // cyan
#define LCD_MAGENTA 0xffFF00FF // magenta
#define LCD_YELLOW 0xffFFFF00 // yellow
#define LCD_GREY 0xff2C2C2C // gray
													
#define LIGHT_BLUE 0xff8080FF // light blue
#define LIGHT_GREEN 0xff80FF80 // light green
#define LIGHT_RED 0xffFF8080 // bright red
#define LIGHT_CYAN 0xff80FFFF // light cyan
#define LIGHT_MAGENTA 0xffFF80FF // bright magenta
#define LIGHT_YELLOW 0xffFFFF80 // bright yellow
#define LIGHT_GREY 0xffA3A3A3 // light gray
													
#define DARK_BLUE 0xff000080 // dark blue
#define DARK_GREEN 0xff008000 // dark green
#define DARK_RED 0xff800000 // dark red
#define DARK_CYAN 0xff008080 // dark cyan
#define DARK_MAGENTA 0xff800080 // dark magenta
#define DARK_YELLOW 0xff808000 // dark yellow
#define DARK_GREY 0xff404040 // dark gray

/*------------------------------------------------ ---------- Function declaration -------------------------------------- -----------------*/
	
void MX_LTDC_Init(void); // LTDC and layer initialization
void LCD_Clear(uint32_t color); // clear screen function

void LCD_CopyBuffer(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint32_t *color); // Copy the buffer to the display area

/*------------------------------------------------ -------- LCD related parameters --------------------------------------- ----------------*/

#define HBP 43 // set according to screen's manual
#define VBP 12
#define HSW 1
#define VSW 1
#define HFP 8
#define VFP 8

#define LCD_Width 480 // LCD pixel length
#define LCD_Height 272 // LCD pixel width
#define LCD_MemoryAdd 0x24000000 // The starting address of video memory  

// The video memory address of layer0, this routine uses the AXI SRAM inside 7B0 as the video memory, the starting address is 0x24000000, and the size is 1M
// The memory size of layer0 is equal to = LCD_Width * LCD_Width * BytesPerPixel_0 (bytes per pixel)
// Because the size of AXI SRAM is only 1M, the area set by the user must not exceed this value!	
// In this routine, the 480*272 screen uses RGB565 format, and requires 480*272*2 = 261120 bytes of video memory
#define LCD_MemoryAdd 0x24000000 // The starting address of video memory  

// layer0 bytes per pixel

#if ( ColorMode_0 == LTDC_PIXEL_FORMAT_RGB565 || ColorMode_0 == LTDC_PIXEL_FORMAT_ARGB1555 || ColorMode_0 == LTDC_PIXEL_FORMAT_ARGB4444 )
	#define BytesPerPixel_0 2 //16-bit color mode each pixel occupies 2 bytes
#elif ColorMode_0 == LTDC_PIXEL_FORMAT_RGB888
	#define BytesPerPixel_0 3 //24-bit color mode each pixel occupies 3 bytes
#else
	#define BytesPerPixel_0 4 //32-bit color mode each pixel occupies 4 bytes
#endif	


/*------------------------------------------------ -------- LCD Backlight Pin ----------------------------------------- -----------------*/

#define LCD_Backlight_PIN GPIO_PIN_15								
#define LCD_Backlight_PORT GPIOD									
#define GPIO_LDC_Backlight_CLK_ENABLE __HAL_RCC_GPIOD_CLK_ENABLE()	 	

#define LCD_Backlight_OFF HAL_GPIO_WritePin(LCD_Backlight_PORT, LCD_Backlight_PIN, GPIO_PIN_RESET); // turn off the backlight
#define LCD_Backlight_ON HAL_GPIO_WritePin(LCD_Backlight_PORT, LCD_Backlight_PIN, GPIO_PIN_SET); // turn on the backlight


#endif //__LCD_RGB_H
