/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "dma2d.h"
#include "fdcan.h"
#include "ltdc.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <stdlib.h>
#include <../../LVGL/lvgl.h>
#include <../../Touch/XPT2046_Touchscreen.h>
#include "define.h"

#include "../../GUI/lcd.h"
#include "../../GUI/mainScreen.h"
#include "../../GUI/homeScreen.h"
#include "../../GUI/analogScreen.h"
#include "../../GUI/images/locoPic.h"
#include "../../GUI/images/mapnaPic.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
static lv_color_t buf_1[LVGL_buff_size];   /*Declare a buffer for 1/10 screen size*/

#define shuntCurrentGain 3.3/65535
double supplyCurrent24V;
uint16_t* LCD_MemoryAdd;
/////
static void my_flush_cb(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p);
static void LCD_on_task(lv_task_t * task);
static void intro_page_task(lv_task_t * task);
static void lv_screen_update_task(lv_task_t * task);
static bool lvgl_touch_read(lv_indev_t * indev, lv_indev_data_t*data);
lv_indev_drv_t indev_drv;
lv_indev_t * indev_touchpad;
/////
TS_Point point;

// FDCAN2 Defines
FDCAN_TxHeaderTypeDef   TxHeader2;
FDCAN_RxHeaderTypeDef   RxHeader2;
uint8_t                 TxData2[8];
uint8_t                 RxData2[8];


/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA2D_Init();
  MX_TIM1_Init();
  MX_FDCAN2_Init();
  MX_SPI2_Init();
  MX_LTDC_Init();
  MX_ADC1_Init();
  MX_SPI1_Init();
  /* USER CODE BEGIN 2 */


	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//HAL_GPIO_WritePin(LED_BACK_LIGHT_GPIO_Port, LED_BACK_LIGHT_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_RESET);
	////////////////////////
	LCD_MemoryAdd = malloc(imageSize * sizeof(*LCD_MemoryAdd));
	memset(LCD_MemoryAdd, 0, imageSize * sizeof(*LCD_MemoryAdd));
	//LCD_MemoryAdd = 0x24010000;

	HAL_LTDC_SetAddress(&hltdc, LCD_MemoryAdd, 0);
	HAL_LTDC_SetWindowSize(&hltdc, DISPLAY_WIDTH, DISPLAY_HEIGHT, 0);
	hltdc.Init.TotalWidth = 850;
	HAL_LTDC_SetWindowPosition(&hltdc, 0, 0, 0);
	///////////////////////
	HAL_DMA2D_ConfigLayer(&hdma2d, 1);

	lv_init();
	static lv_disp_buf_t disp_buf;
	lv_disp_drv_t disp_drv;
	lv_disp_buf_init(&disp_buf, buf_1, NULL, LVGL_buff_size);
	lv_disp_drv_init(&disp_drv);
	disp_drv.hor_res = DISPLAY_WIDTH;
	disp_drv.ver_res = DISPLAY_HEIGHT;
	disp_drv.flush_cb = my_flush_cb;
	disp_drv.buffer = &disp_buf;
	lv_disp_drv_register(&disp_drv);
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	lv_obj_clean(lv_scr_act());
	createMainScreen();
	createAnalogScreen();
	createHomeScreen();
	//lv_scr_load(getMainScreen().window);
	/////////////////////////////////////////////////////////////////////////
	LV_IMG_DECLARE(MAP30_small);
    lv_obj_t * image = lv_img_create(lv_scr_act(), NULL);
	lv_img_set_src(image, &MAP30_small);

	//LV_IMG_DECLARE(m24);
    //lv_obj_t * image1 = lv_img_create(lv_scr_act(), NULL);
	//lv_img_set_src(image1, &m24);
	/////////////////////////////////////////////////////////////////////////
    lv_indev_drv_init(&indev_drv);
    indev_drv.type = LV_INDEV_TYPE_POINTER;
    indev_drv.read_cb = lvgl_touch_read;
    indev_touchpad = lv_indev_drv_register(&indev_drv);
	//////////////////////
	lv_task_t* task0 = lv_task_create(LCD_on_task, 1, LV_TASK_PRIO_MID, 0);
	lv_task_t* task1 = lv_task_create(intro_page_task, 7000, LV_TASK_PRIO_MID, 0);
	lv_task_t* task2 = lv_task_create(lv_screen_update_task, 500, LV_TASK_PRIO_MID, 0);
	lv_task_once(task0);
	lv_task_once(task1);
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	setScreenSize(800, 480);
	setRotation(3);
	setOffset(150,150);
	setThreshold(300);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////

		// Configure TX Header for FDCAN2
		TxHeader2.Identifier = 0x0019;
		TxHeader2.IdType = FDCAN_STANDARD_ID;
		//TxHeader2.TxFrameType = FDCAN_DATA_FRAME;
		TxHeader2.TxFrameType = FDCAN_REMOTE_FRAME;
		TxHeader2.DataLength = FDCAN_DLC_BYTES_8;
		TxHeader2.ErrorStateIndicator = FDCAN_ESI_ACTIVE;
		TxHeader2.BitRateSwitch = FDCAN_BRS_OFF;
		TxHeader2.FDFormat = FDCAN_CLASSIC_CAN;
		TxHeader2.TxEventFifoControl = FDCAN_NO_TX_EVENTS;
		TxHeader2.MessageMarker = 0;
		HAL_FDCAN_Start(&hfdcan2);

		//  FDCAN_FilterTypeDef sFilterConfig;
		//  sFilterConfig.FilterConfig = FDCAN_FILTER_DISABLE;
		//  HAL_FDCAN_ConfigFilter(&hfdcan2, &sFilterConfig);

		HAL_FDCAN_ActivateNotification(&hfdcan2, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);

	///////////////////////////////////////////////////////////////////////////////////////
	for(uint8_t i=0; i< 8; ++i )
	{
		TxData2[i] = 0x00;
	}
	//////////////////////////////////
	HAL_TIM_Base_Start_IT(&htim1);
	//////////////////////////////////
	HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
	HAL_GPIO_TogglePin(LED2_GPIO_Port, LED2_Pin);
	HAL_GPIO_WritePin(Buzz_GPIO_Port, Buzz_Pin, GPIO_PIN_RESET);
	//////////////////////////////////
	HAL_GPIO_WritePin(DO_CS_GPIO_Port, DO_CS_Pin, GPIO_PIN_SET);
    //uint8_t outputBuffer[4] = {0x55,0x55,0x55,0x55};
	uint8_t outputBuffer[1] = {0x55};
	//////////////////////////////////
	HAL_GPIO_WritePin(DI_CS_GPIO_Port, DI_CS_Pin, GPIO_PIN_SET);
	//////////////////////////////////
	HAL_GPIO_WritePin(AO_CS_GPIO_Port, AO_CS_Pin, GPIO_PIN_SET);
	//////////////////////////////////

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1)
	{
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
		lv_task_handler();
		HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
		///
		HAL_GPIO_WritePin(DO_CS_GPIO_Port, DO_CS_Pin, GPIO_PIN_RESET);
		HAL_SPI_Transmit(&hspi1, outputBuffer, 1, 30);
		HAL_GPIO_WritePin(DO_CS_GPIO_Port, DO_CS_Pin, GPIO_PIN_SET);
		HAL_Delay(100);
		//HAL_Delay(100);

	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /*AXI clock gating */
  RCC->CKGAENR = 0xFFFFFFFF;

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 35;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 80;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
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

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_6) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
static void my_flush_cb(lv_disp_drv_t  *disp_drv, const lv_area_t * area, lv_color_t * color_p)
{
	//Set the drawing region
	int height = area->y2 - area->y1 + 1;
	int width = area->x2 - area->x1 + 1;

	//Write colour to each pixel

	uint8_t pixelSize = sizeof(*LCD_MemoryAdd)/sizeof(*color_p);
	uint32_t offset = (DISPLAY_WIDTH * area->y1 + area->x1)/pixelSize;
	uint32_t destinationAddress = LCD_MemoryAdd + offset; // final address;
	hdma2d.Instance->OOR = DISPLAY_WIDTH - width; // set row offset
	HAL_DMA2D_Start(&hdma2d , (uint32_t)color_p, destinationAddress, width, height);
	HAL_DMA2D_PollForTransfer(&hdma2d, 10); // wait for the transfer to complete

	lv_disp_flush_ready(disp_drv);
}


static bool lvgl_touch_read(lv_indev_t * indev, lv_indev_data_t*data)
{
	static lv_coord_t last_x = 0;
	static lv_coord_t last_y = 0;
	point = touchUpdate();
    if(getTouchFlag())
    {

		last_x = point.x;
		last_y = point.y;
    	data->state = LV_INDEV_STATE_PR;
    }
    else
    {
    	data->state = LV_INDEV_STATE_REL;
    }

	data->point.x = last_x;
	data->point.y = last_y;

	 return false;
}

static void lv_screen_update_task(lv_task_t* task)
{
	if(getAnalogScreen().testStartBtn == true)
	{
		lv_label_set_text_fmt(getAnalogScreen().analogData1, "Analog_1:     %03d",RxData2[0]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData2, "Analog_2:     %03d",RxData2[1]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData3, "Analog_3:     %03d",RxData2[2]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData4, "Analog_4:     %03d",RxData2[3]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData5, "Analog_5:     %03d",RxData2[4]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData6, "Analog_6:     %03d",RxData2[5]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData7, "Analog_7:     %03d",RxData2[6]);
	//	lv_label_set_text_fmt(getAnalogScreen().analogData8, "Analog_8:     %03d",RxData2[7]);
	}

}

static void LCD_on_task(lv_task_t* task)
{
	HAL_GPIO_WritePin(LED_BACK_LIGHT_GPIO_Port, LED_BACK_LIGHT_Pin, GPIO_PIN_SET);
}

static void intro_page_task(lv_task_t* task)
{
	lv_scr_load(getMainScreen().window);
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef* htim)
{
	if(getAnalogScreen().testStartBtn == true)
	{
		HAL_FDCAN_AddMessageToTxFifoQ(&hfdcan2, &TxHeader2, TxData2);
		HAL_ADC_Start_IT(&hadc1);
	}

}

void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo1ITs)
{
	if((RxFifo1ITs & FDCAN_IT_RX_FIFO0_NEW_MESSAGE) != RESET)
	{
		//Retreive Rx messages from RX FIFO0
		HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO0, &RxHeader2, RxData2);
		HAL_FDCAN_ActivateNotification(hfdcan, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);
	}
}

void  HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *hadc)
{
	uint16_t temp;
	temp = HAL_ADC_GetValue(&hadc1);
	supplyCurrent24V = (float)temp*shuntCurrentGain;
}
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

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
