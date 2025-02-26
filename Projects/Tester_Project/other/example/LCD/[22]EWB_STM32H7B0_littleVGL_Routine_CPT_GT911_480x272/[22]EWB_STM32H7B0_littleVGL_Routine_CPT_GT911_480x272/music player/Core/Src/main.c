/***
	****************************************************************************************************************
	*	@file  	main.c
	*	@version V1.0
	*  @date    2021-9-8
	* @author anti-customer technology
	* @brief LVGL Engineering
   **********************************************************************************************************************************************************************************************
   *  @description
	*
	*
>>>>> Function description:
	*
	* 1. Transplant LVGL version V7.81
	* 2. Run the official routine lv_demo_music, music player
	* 3. Use RGB565 16-bit color by default
	*
	*******************************************************************************************************************
***/

#include "main.h"
#include "led.h"
#include "key.h"
#include "usart.h"
#include "lcd_rgb.h"
#include "lcd_pwm.h"
#include "touch_480x272.h"

#include "lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"
#include "lv_demo_music.h"

/********************************************** Function Declaration* *********************************************/

void SystemClock_Config(void); // clock initialization
void MPU_Config(void);					// MPU≈‰÷√


/***************************************************************************************************
* Function name: main
* Entry parameters: None
* Return value: None
* Function function: LVGL
* Description: None
****************************************************************************************************/

int main(void)
{
	
	MPU_Config(); // MPU configuration
	SCB_EnableICache(); // enable ICache
	SCB_EnableDCache(); // enable DCache
	HAL_Init(); // Initialize the HAL library	
	SystemClock_Config(); // Configure the system clock, the main frequency is 280MHz
	LED_Init(); // Initialize LED pins
	KEY_Init(); // Initialize key pins
	USART1_Init(); // USART1 initialization	
	
	MX_LTDC_Init(); // LTDC and layer initialization
// LCD_PWMinit(40); // Backlight pin PWM initialization, duty cycle 40%		
	Touch_Init(); // touch screen initialization		

	lv_init(); // LVGL initialization
	lv_port_disp_init(); // LVGL display interface initialization
	lv_port_indev_init(); // LVGL touch interface initialization				
	
	lv_demo_music(); // Run the official routine lv_demo_music, music player

	while (1)
	{
		lv_task_handler(); // LVGL process
		Touch_Scan(); // touch scan
		LED1_Toggle; // LED instruction
		HAL_Delay(20); // The scanning interval of GT911 touch screen cannot be less than 10ms, it is recommended to set it to 20ms
	}

}

/****************************************************************************************************/
/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSE)
  *            SYSCLK(Hz)                     = 280000000 (CPU Clock)
  *            HCLK(Hz)                       = 280000000 (AXI and AHBs Clock)
  *            AHB Prescaler                  = 1 (AHB  Clock  280MHz)
  *            D1 APB3 Prescaler              = 2 (APB3 Clock  140MHz)
  *            D2 APB1 Prescaler              = 2 (APB1 Clock  140MHz)
  *            D2 APB2 Prescaler              = 2 (APB2 Clock  140MHz)
  *            D3 APB4 Prescaler              = 2 (APB4 Clock  140MHz)
  *            HSE Frequency(Hz)              = 25000000
  *            PLL_M                          = 5
  *            PLL_N                          = 112
  *            PLL_P                          = 2
  *            PLL_Q                          = 2
  *            PLL_R                          = 2
  *VDD(V) = 3.3
  *            Flash Latency(WS)              = 7
  * @param  None
  * @retval None
  */
  
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};
  
  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);
  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}
  /** Macro to configure the PLL clock source
  */
  __HAL_RCC_PLL_PLLSOURCE_CONFIG(RCC_PLLSOURCE_HSE);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 5;
  RCC_OscInitStruct.PLL.PLLN = 112;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_2;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    Error_Handler();
  }
  
  /* Set the LTDC clock, here it is set to 10MHz, that is, the refresh rate is around 60 frames, too high or too low will cause flicker*/
  /* LCD clock configuration */
  /* PLL3_VCO Input = HSE_VALUE/PLL3M = 1 Mhz */
  /* PLL3_VCO Output = PLL3_VCO Input * PLL3N = 200 Mhz */
  /* PLLLCDCLK = PLL3_VCO Output/PLL3R = 200/20 = 10 Mhz */
  /* LTDC clock frequency = PLLLCDCLK = 10 Mhz */  
      
  PeriphClkInitStruct.PLL3.PLL3M = 25;
  PeriphClkInitStruct.PLL3.PLL3N = 200;
  PeriphClkInitStruct.PLL3.PLL3P = 2;
  PeriphClkInitStruct.PLL3.PLL3Q = 2;
  PeriphClkInitStruct.PLL3.PLL3R = 20;
  PeriphClkInitStruct.PLL3.PLL3RGE = RCC_PLL3VCIRANGE_0;
  PeriphClkInitStruct.PLL3.PLL3VCOSEL = RCC_PLL3VCOMEDIUM;
  PeriphClkInitStruct.PLL3.PLL3FRACN = 0;  
  
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_LTDC;               

  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  } 
}

// Configure the MPU
//
void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct;
  
  HAL_MPU_Disable(); // disable MPU before setting

  MPU_InitStruct.Enable 				= MPU_REGION_ENABLE;
  MPU_InitStruct.BaseAddress 			= LCD_MemoryAdd;
  MPU_InitStruct.Size 					= MPU_REGION_SIZE_1MB;
  MPU_InitStruct.AccessPermission 	= MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.IsBufferable 		= MPU_ACCESS_NOT_BUFFERABLE;
  MPU_InitStruct.IsCacheable 			= MPU_ACCESS_NOT_CACHEABLE;
  MPU_InitStruct.IsShareable 			= MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.Number 				= MPU_REGION_NUMBER0;
  MPU_InitStruct.TypeExtField 		= MPU_TEX_LEVEL0;
  MPU_InitStruct.SubRegionDisable 	= 0x00;
  MPU_InitStruct.DisableExec 			= MPU_INSTRUCTION_ACCESS_ENABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT); // Enable MPU

}


/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/