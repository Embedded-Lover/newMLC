/***
	***************************************************** ***************************************************** ***************************************************** *********************************************
	* @file lcd_rgb.c
	* @version V1.0
	* @date 2021-9-6
	* @author anti-customer technology
	* @brief drive RGB display for display	
   ***************************************************** ***************************************************** ***************************************************** *****************************************
   * @description
	*
	*
>>>>> Important note:
	*
	* 1. The EWB-STM32H7B0 core board uses the internal AXI SRAM as the video memory, the starting address is 0x24000000, and the size is 1M
	* 2. No matter how the user sets it, it cannot exceed the size of the AXI SRAM
	* 3. When the program has just been downloaded, it is normal for the screen to vibrate and flicker slightly, wait for a while or turn on the power again to return to normal
	* 4. The LTDC clock is set by the SystemClock_Config() function in the main.c file
	*
>>>>> Other instructions:
	*
	* 1. The Chinese font library uses a small font library, that is, the corresponding Chinese characters are used to take the model, and the user can add or delete according to the needs
	* 2. For the function and use of each function, please refer to the description of the function and the test function in the lcd_test.c file
	*
	***************************************************** ***************************************************** ***************************************************** *****************************************FANKE*****
***/

#include "lcd_rgb.h"

DMA2D_HandleTypeDef hdma2d; // DMA2D handle
LTDC_HandleTypeDef hltdc; // LTDC handle


/**************************************************** ***************************************************
* Function name: HAL_LTDC_MspInit
* Entry parameters: None
* Return value: None
* Function function: Initialize the IO port of the LTDC pin
* Description: Will be called by HAL_LTDC_Init() function			
***************************************************** ***************************************************/

void HAL_LTDC_MspInit(LTDC_HandleTypeDef* hltdc)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};
	if(hltdc->Instance==LTDC)
	{
		__HAL_RCC_LTDC_CLK_ENABLE(); // Enable LTDC clock

		__HAL_RCC_GPIOC_CLK_ENABLE(); // Enable IO port clock
		__HAL_RCC_GPIOA_CLK_ENABLE(); // Enable IO port clock
		__HAL_RCC_GPIOB_CLK_ENABLE(); // Enable IO port clock
		__HAL_RCC_GPIOE_CLK_ENABLE(); // Enable IO port clock
		__HAL_RCC_GPIOD_CLK_ENABLE(); // Enable IO port clock
		GPIO_LDC_Backlight_CLK_ENABLE; // Enable backlight pin IO port clock

/*------------------------------LTC GPIO Configuration--------------- -----------
		
EWB-STM32H7B0 core board uses 18-bit interface, RGB666

		PE15 ------> LTDC_R7 PD3 ------> LTDC_G7 PB9 ------> LTDC_B7
		PB1 ------> LTDC_R6 PC7 ------> LTDC_G6 PB8 ------> LTDC_B6
		PC0 ------> LTDC_R5 PB11 ------> LTDC_G5 PA3 ------> LTDC_B5
		PA5 ------> LTDC_R4 PB10 ------> LTDC_G4 PE12 ------> LTDC_B4
		PB0 ------> LTDC_R3 PE11 ------> LTDC_G3 PD10 ------> LTDC_B3
		PA1 ------> LTDC_R2 PA6 ------> LTDC_G2 PD6 ------> LTDC_B2
			
		PA7 ------> LTDC_VSYNC
		PE13 ------> LTDC_DE
		PE14 ------> LTDC_CLK
		PC6 ------> LTDC_HSYNC
		
-------------------------------------------------- --------------------------------*/
		
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP; // Multiplexing output mode
		GPIO_InitStruct.Pull = GPIO_NOPULL; // No pull-up and pull-down
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_MEDIUM; // speed grade
		GPIO_InitStruct.Alternate = GPIO_AF14_LTDC; // Multiplex to LTDC of AF14
		
		GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_6|GPIO_PIN_7;		
		HAL_GPIO_Init(GPIOC, &GPIO_InitStruct); // Initialize the LTDC pin corresponding to GPIOC

		GPIO_InitStruct.Pin = GPIO_PIN_1|GPIO_PIN_3|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;								
		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct); // Initialize the LTDC pin corresponding to GPIOA

		GPIO_InitStruct.Pin = GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15;								  
		HAL_GPIO_Init(GPIOE, &GPIO_InitStruct); // Initialize the LTDC pin corresponding to GPIOE

		GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_8|GPIO_PIN_9;
		HAL_GPIO_Init(GPIOB, &GPIO_InitStruct); // Initialize the LTDC pin corresponding to GPIOB

		GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_6|GPIO_PIN_10;
		HAL_GPIO_Init(GPIOD, &GPIO_InitStruct); // Initialize the LTDC pin corresponding to GPIOD


		GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1;
		GPIO_InitStruct.Alternate = GPIO_AF9_LTDC; // It should be noted that the LTDC multiplexing lines corresponding to PB0 and PB1 are in AF9
		HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);	

		LCD_Backlight_OFF; // first turn off the backlight pin
		
		// Initialize the backlight pin
		GPIO_InitStruct.Pin = LCD_Backlight_PIN; // backlight pin
		GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP; // push-pull output mode
		GPIO_InitStruct.Pull = GPIO_NOPULL; // No pull-up and pull-down
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW; // low speed
		HAL_GPIO_Init(LCD_Backlight_PORT, &GPIO_InitStruct); // Initialize
		
	}
}


/**************************************************** ***************************************************
* Function name: MX_LTDC_Init
* Entry parameters: None
* Return value: None
* Function function: Initialize the IO port of the LTDC pin, global parameters, layer settings, etc.
* Description: None			
***************************************************** ***************************************************/

void MX_LTDC_Init(void)
{
	LTDC_LayerCfgTypeDef pLayerCfg = {0}; // layer0 related parameters
	__HAL_RCC_DMA2D_CLK_ENABLE(); // Enable DMA2D clock

	hltdc.Instance = LTDC;
	hltdc.Init.HSPolarity = LTDC_HSPOLARITY_AL; // active low
	hltdc.Init.VSPolarity = LTDC_VSPOLARITY_AL; // active low
	hltdc.Init.DEPolarity = LTDC_DEPOLARITY_AL; // Active low level, it should be noted that many panels are active high level, but 7B0 needs to be set to low level to display normally
	hltdc.Init.PCPolarity = LTDC_PCPOLARITY_IPC; // normal clock signal
  
	hltdc.Init.HorizontalSync = HSW - 1; // Just set the parameters according to the screen
	hltdc.Init.VerticalSync = VSW -1;
	hltdc.Init.AccumulatedHBP = HBP + HSW -1;
	hltdc.Init.AccumulatedVBP = VBP + VSW -1;
	hltdc.Init.AccumulatedActiveW = LCD_Width + HSW + HBP -1;
	hltdc.Init.AccumulatedActiveH = LCD_Height + VSW + VBP -1;
	hltdc.Init.TotalWidth = LCD_Width + HSW + HBP + HFP - 1;
	hltdc.Init.TotalHeigh = LCD_Height + VSW + VBP + VFP - 1;
	
	hltdc.Init.Backcolor.Red = 0; // initial background color, R	
	hltdc.Init.Backcolor.Green = 0; // initial background color, G	
	hltdc.Init.Backcolor.Blue = 0; // initial background color, B
	
	HAL_LTDC_Init(&hltdc); // initialize LTDC parameters

/*---------------------------------- layer0 display configuration ----------- ---------------------*/

	pLayerCfg.WindowX0 = 0; // horizontal starting point
	pLayerCfg.WindowX1 = LCD_Width; // horizontal end point
	pLayerCfg.WindowY0 = 0; // vertical starting point
	pLayerCfg.WindowY1 = LCD_Height; // vertical end point
	pLayerCfg.ImageWidth = LCD_Width; // display area width
	pLayerCfg.ImageHeight = LCD_Height; // display area height	
	pLayerCfg.PixelFormat = ColorMode_0; // color format	

// Configure the constant transparency of layer0, and finally write to the LTDC_LxCACR register
// It should be noted that this parameter directly configures the transparency of the entire layer0, here it is set to 255 to be opaque
	pLayerCfg.Alpha = 255; // The value range is 0~255, 255 means opaque, 0 means completely transparent

// Set the layer mixing coefficient of layer0, and finally write it into the LTDC_LxBFCR register
// This parameter is used to set the color mixing coefficient between layer0 and the underlying background, the calculation formula is:
// Mixed color = BF1 * layer0 color + BF2 * underlying background color
// If layer0 uses transparent color, it must be configured as LTDC_BLENDING_FACTOR1_PAxCA and LTDC_BLENDING_FACTOR2_PAxCA, otherwise the A channel in ARGB will not work
// For more introduction, please refer to the introduction of the LTDC_LxBFCR register in the reference manual
	pLayerCfg.BlendingFactor1 = LTDC_BLENDING_FACTOR1_CA; // Blending factor 1
	pLayerCfg.BlendingFactor2 = LTDC_BLENDING_FACTOR2_CA; // blending factor 2

// The video memory address of layer0, this routine uses the AXI SRAM inside 7B0 as the video memory, the starting address is 0x24000000, and the size is 1M
// The memory size of layer0 is equal to = LCD_Width * LCD_Width * BytesPerPixel_0 (bytes per pixel)
// Because the size of AXI SRAM is only 1M, the area set by the user must not exceed this value!	
// In this routine, the 480*272 screen uses RGB565 format, and requires 480*272*2 = 261120 bytes of video memory
	pLayerCfg.FBStartAdress = LCD_MemoryAdd; // memory address

// Configure the initial default color of layer0, including the values of A, R, G, and B, and finally write to the LTDC_LxDCCR register
	pLayerCfg.Alpha0 = 0; // initial color, A
	pLayerCfg.Backcolor.Blue = 0; // initial color, R
	pLayerCfg.Backcolor.Green = 0; // initial color, G
	pLayerCfg.Backcolor.Red = 0; // initial color, B
  
	HAL_LTDC_ConfigLayer(&hltdc, &pLayerCfg, 0); // configure layer0
	
	#if ( ( ColorMode_0 == LTDC_PIXEL_FORMAT_RGB888 )||( ColorMode_0 == LTDC_PIXEL_FORMAT_ARGB8888 ) ) // determine whether to use 24-bit or 32-bit color

	//Because the low bits of each channel of 7B0 use pseudo-random jitter output, if the color jitter is not turned on, 24-bit or 32-bit color cannot be displayed normally
	// The EWB-STM32H7B0 core board uses an 18-bit interface. After turning on the color dithering, the display effect is the same as that of the 24-bit interface
	
		HAL_LTDC_EnableDither(&hltdc); // enable color dithering
		
	#endif


	LCD_Clear(LCD_BLACK); // clear the screen to black

// After LTDC is initialized, there will be a short white screen at the moment of power-on,
// Even if the backlight pin is pulled down at the beginning and the screen backlight pin is pulled down with a resistor, this phenomenon will still occur,
// If you need to eliminate this phenomenon, you can turn on the backlight after a short delay after initialization
//
// HAL_Delay(200); // Delay 200ms

	LCD_Backlight_ON; // turn on the backlight	

}



/**************************************************** ***************************************************** *************
* Function name: LCD_Clear
*
* Function function: clear screen function, clear the LCD to the color of LCD.BackColor, use DMA2D to realize
*
* Note: First use LCD_SetBackColor() to set the background color to be cleared, and then call this function to clear the screen
*
***************************************************** ***************************************************** *************/

void LCD_Clear(uint32_t color)
{
	
	DMA2D->CR &= ~(DMA2D_CR_START); // stop DMA2D
	DMA2D->CR = DMA2D_R2M; // register to SDRAM
	DMA2D->OPFCCR = ColorMode_0; // set the color format
	DMA2D->OOR = 0; // set row offset
	DMA2D->OMAR = LCD_MemoryAdd ; // address
	DMA2D->NLR = (LCD_Width<<16)|(LCD_Height); // set length and width
	DMA2D->OCOLR = color; // color
	
// Wait for the vertical data to enable display status, that is, when LTDC is about to refresh a whole screen of data
// Because the screen is swiped before a frame is swiped, there will be tearing
// The user can also use the register overload interrupt to judge, but in order to ensure the simplicity of the routine and the convenience of transplantation, the method of judging the register is directly used here
// If you don't make a judgment, DMA2D only needs 0.5ms to refresh a screen. After adding it, it takes 4.7ms to refresh a screen, but the refresh rate of the screen itself is only 60 frames.
// The speed of adding 4.7ms is already very fast, unless it is an occasion with particularly high speed requirements, otherwise it is recommended to add a sentence to judge vertical waiting to avoid tearing effect
//
	while( LTDC->CDSR != 0X00000001); // Judge bit 0 VDES of display status register LTDC_CDSR: vertical data enable display status
	
	DMA2D->CR |= DMA2D_CR_START; // start DMA2D
		
	while (DMA2D->CR & DMA2D_CR_START) ; // wait for the transfer to complete
	 
}


/**************************************************** ***************************************************** *************************************
* Function name: LCD_CopyBuffer
*
* Entry parameter: x - horizontal coordinate, value range 0~479
* y - vertical coordinate, value range 0~271
* width - the horizontal width of the image, the maximum value is 480
* height - the vertical width of the image, the maximum value is 272
* *color - the address of the buffer to copy
*				
* Function function: copy the buffer to the display area at the beginning of the coordinate (x, y)
*
* Description: 1. Implemented using DMA2D
* 2. The area to be drawn cannot exceed the display area of the screen
* 3. In the lv_port_disp.c file, it is called by the function disp_flush() to refresh the display area			 
*
***************************************************** ***************************************************** *****************************************/

void LCD_CopyBuffer(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint32_t *color)
{

	DMA2D->CR &= ~(DMA2D_CR_START); // stop DMA2D
	DMA2D->CR = DMA2D_M2M; // memory to memory
	DMA2D->FGPFCCR = ColorMode_0; // set the color format
   DMA2D->FGOR = 0; //
	DMA2D->OOR = LCD_Width - width; // set row offset 	
	DMA2D->FGMAR = (uint32_t)color;		
	DMA2D->OMAR = LCD_MemoryAdd + BytesPerPixel_0*(LCD_Width * y + x); // address;
	DMA2D->NLR = (width<<16)|(height); // set length and width		
	DMA2D->CR |= DMA2D_CR_START; // start DMA2D
		
	while (DMA2D->CR & DMA2D_CR_START) ; // wait for the transfer to complete

}


/**************************************************** ***************************************************** ***************************************************** ***************************************************** ***************************************************** *****************FANKE***/
// Experimental platform: anti-customer STM32H7B0 core board
//
