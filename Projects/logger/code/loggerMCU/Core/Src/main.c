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
#include "fatfs.h"
#include "fdcan.h"
#include "usart.h"
#include "rtc.h"
#include "sdmmc.h"
#include "tim.h"
#include "usb_host.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdbool.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
FDCAN_TxHeaderTypeDef   TxHeader;
FDCAN_RxHeaderTypeDef   RxHeader;



typedef struct logBuffer
{
	uint8_t data[8];
	FDCAN_RxHeaderTypeDef header;
	RTC_TimeTypeDef timeStamp;
}logBuf_t;

logBuf_t logBuf[5000];


uint16_t                writeIndex;
uint16_t                readIndex;
uint16_t                logBufferIndex;
bool voltageIsLow = false;
bool periodicSave = false;
////////
uint32_t t1;
uint32_t t2;
uint32_t t3;
uint32_t t4;
uint32_t writeTime;
uint32_t allTime;
/////////////////////////////
FATFS logFS;
FRESULT res;
FIL file;
char fileName[15];
UINT bytesWrote;
char allBuffer [4100];
char headerBuffer [100];
char dataBuffer [100];
char dateBuffer [100];
/////////////////////////////
RTC_TimeTypeDef time = {0};
RTC_DateTypeDef date = {0};
////////////////////////////
char serialReceiveBuffer [1000];
///////////////////////////
typedef enum{
LOG_IN_SDCARD = 0,
LOG_IN_USB ,
LOG_ONLINE ,
}log_t;

log_t logType = LOG_IN_SDCARD;
///////////////////////////

void RTC_Init(void);
void logCreate(void);
void saveFile (void);
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
void MX_USB_HOST_Process(void);

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
	HAL_NVIC_EnableIRQ(PVD_IRQn);

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_TIM1_Init();
	MX_SDMMC1_SD_Init();
	MX_FDCAN2_Init();
	//MX_RTC_Init();
	MX_LPUART1_UART_Init();
	MX_FATFS_Init();
	MX_USB_HOST_Init();
	/* USER CODE BEGIN 2 */
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	RTC_Init();
	HAL_RTC_GetDate(&hrtc, &date, RTC_FORMAT_BIN);
	HAL_RTC_GetTime(&hrtc, &time, RTC_FORMAT_BIN);
	(void)sprintf(fileName,"20%02d-%02d-%02d.csv",date.Year, date.Month, date.Date);
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	HAL_TIM_Base_Start(&htim1);
	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	HAL_GPIO_WritePin(USB_Host_Device_GPIO_Port, USB_Host_Device_Pin, GPIO_PIN_RESET);
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	if (logType == LOG_IN_USB)
	{
		while (getUSBMode() != APPLICATION_READY)
		{
			MX_USB_HOST_Process();
		}
		res = f_mount(&logFS, SDPath, 0);
		res = f_mount(&logFS, USBHPath, 1);
	}
	else if (logType == LOG_IN_SDCARD)
	{
		res = f_mount(&logFS, USBHPath, 0);
		res = f_mount(&logFS, SDPath, 1);
	}
	else if (logType == LOG_ONLINE)
	{
		res = f_mount(&logFS, USBHPath, 0);
		res = f_mount(&logFS, SDPath, 0);
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	res = f_open(&file, fileName, (FA_OPEN_ALWAYS| FA_WRITE| FA_READ));
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	char tempBuf1[100] = {0};
	char tempBuf2[50] = {0};
	uint16_t miliSecond = (996-(float)time.SubSeconds/256*1000);
	(void)sprintf(tempBuf1, " *** Logger has been started at: ");
	(void)sprintf(tempBuf2,"20%02d/%02d/%02d %02d:%02d:%02d.%03d *** \r\n",date.Year, date.Month, date.Date, time.Hours, time.Minutes, time.Seconds, miliSecond);
	(void)strncat(tempBuf1, tempBuf2, strlen(tempBuf2));
	(void)f_lseek(&file, f_size(&file));
	res = f_write(&file, tempBuf1, strlen(tempBuf1), &bytesWrote);
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// Configure TX Header for FDCAN2
	TxHeader.Identifier = 0x0019;
	TxHeader.IdType = FDCAN_STANDARD_ID;
	//TxHeader2.TxFrameType = FDCAN_DATA_FRAME;
	TxHeader.TxFrameType = FDCAN_REMOTE_FRAME;
	TxHeader.DataLength = FDCAN_DLC_BYTES_8;
	TxHeader.ErrorStateIndicator = FDCAN_ESI_ACTIVE;
	TxHeader.BitRateSwitch = FDCAN_BRS_OFF;
	TxHeader.FDFormat = FDCAN_CLASSIC_CAN;
	TxHeader.TxEventFifoControl = FDCAN_NO_TX_EVENTS;
	TxHeader.MessageMarker = 0;
	HAL_FDCAN_Start(&hfdcan2);

	//  FDCAN_FilterTypeDef sFilterConfig;
	//  sFilterConfig.FilterConfig = FDCAN_FILTER_DISABLE;
	//  HAL_FDCAN_ConfigFilter(&hfdcan2, &sFilterConfig);

	HAL_FDCAN_ActivateNotification(&hfdcan2, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	HAL_UART_Receive_IT(&hlpuart1, (uint8_t*)serialReceiveBuffer, strlen(serialReceiveBuffer));

	while (1)
	{
		/* USER CODE END WHILE */
		MX_USB_HOST_Process();

		/* USER CODE BEGIN 3 */

		if (logBufferIndex > 0)
		{
			logCreate();
		}

		if(voltageIsLow || periodicSave)
		{
			saveFile();
		}


		HAL_UART_Transmit(&hlpuart1, "MCU/r/n", 5, 200);

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

	/** Configure LSE Drive Capability
	 */
	HAL_PWR_EnableBkUpAccess();
	__HAL_RCC_LSEDRIVE_CONFIG(RCC_LSEDRIVE_MEDIUMLOW);

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE|RCC_OSCILLATORTYPE_LSE;
	RCC_OscInitStruct.HSEState = RCC_HSE_ON;
	RCC_OscInitStruct.LSEState = RCC_LSE_ON;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
	RCC_OscInitStruct.PLL.PLLM = 1;
	RCC_OscInitStruct.PLL.PLLN = 35;
	RCC_OscInitStruct.PLL.PLLP = 2;
	RCC_OscInitStruct.PLL.PLLQ = 128;
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

void RTC_Init(void)
{

	RTC_AlarmTypeDef sAlarm = {0};

	hrtc.Instance = RTC;
	hrtc.Init.HourFormat = RTC_HOURFORMAT_24;
	hrtc.Init.AsynchPrediv = 127;
	hrtc.Init.SynchPrediv = 255;
	hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
	hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
	hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
	hrtc.Init.OutPutRemap = RTC_OUTPUT_REMAP_NONE;
	if (HAL_RTC_Init(&hrtc) != HAL_OK)
	{
		Error_Handler();
	}

	////////////////////////////////////////////////////////////////
	if(HAL_RTCEx_BKUPRead(&hrtc, RTC_BKP_DR1) !=  0x4321)
	{
		///////////
		date.Year = 25;
		date.Month = 1;
		date.Date = 13;
		date.WeekDay = RTC_WEEKDAY_MONDAY;
		time.Hours = 10;
		time.Minutes = 36;
		time.Seconds = 0;
		time.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
		time.StoreOperation = RTC_STOREOPERATION_RESET;
		///////////
		HAL_RTC_SetTime(&hrtc, &time, RTC_FORMAT_BIN);
		HAL_RTC_SetDate(&hrtc, &date, RTC_FORMAT_BIN);
		HAL_RTCEx_BKUPWrite(&hrtc, RTC_BKP_DR1, 0x4321);
	}
	////////////////////////////////////////////////////////////////
	HAL_RTCEx_EnableBypassShadow(&hrtc);
	////////////////////////////////////////////////////////////////

	sAlarm.AlarmTime.Hours = 0x0;
	sAlarm.AlarmTime.Minutes = 0x0;
	sAlarm.AlarmTime.Seconds = 0x0;
	sAlarm.AlarmTime.SubSeconds = 0x0;
	sAlarm.AlarmTime.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
	sAlarm.AlarmTime.StoreOperation = RTC_STOREOPERATION_RESET;
	sAlarm.AlarmMask = RTC_ALARMMASK_DATEWEEKDAY;
	sAlarm.AlarmSubSecondMask = RTC_ALARMSUBSECONDMASK_ALL;
	sAlarm.AlarmDateWeekDaySel = RTC_ALARMDATEWEEKDAYSEL_DATE;
	sAlarm.AlarmDateWeekDay = 0x1;
	sAlarm.Alarm = RTC_ALARM_A;
	if (HAL_RTC_SetAlarm_IT(&hrtc, &sAlarm, RTC_FORMAT_BCD) != HAL_OK)
	{
		Error_Handler();
	}
	////////////////////////////////////////////////////////////////
	RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

	PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_RTC;
	PeriphClkInitStruct.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
	if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
	{
		Error_Handler();
	}

	/* RTC clock enable */
	__HAL_RCC_RTC_ENABLE();

	/* RTC interrupt Init */
	HAL_NVIC_SetPriority(RTC_Alarm_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(RTC_Alarm_IRQn);

}

//void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef* htim)
//{
//
//}

void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo1ITs)
{
	if((RxFifo1ITs & FDCAN_IT_RX_FIFO0_NEW_MESSAGE) != RESET)
	{
		/* Retreive Rx messages from RX FIFO0 */
		//////////////////////////////////////////////////
		uint32_t error_code = HAL_FDCAN_GetError(hfdcan);
		if (error_code != HAL_FDCAN_ERROR_NONE)
		{
			logBuf[writeIndex].header.DataLength = 0xff;
			logBuf[writeIndex].header.Identifier = 0xff;
			for (uint8_t i = 0; i<8 ; ++i)
			{
			   logBuf[writeIndex].data[i] = 0xff;
			}
		}
		else
		{
			HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO0, &logBuf[writeIndex].header, logBuf[writeIndex].data);
		}
		//////////////////////////////////////////////////
		HAL_RTC_GetTime(&hrtc, &logBuf[writeIndex].timeStamp, RTC_FORMAT_BIN);
		//////////////////////////////////////////////////
		logBufferIndex++;
		writeIndex++;
		if(writeIndex>(5000-1)){writeIndex = 0;}
		//////////////////////////////////////////////////

		HAL_FDCAN_ActivateNotification(hfdcan, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);
	}
}

void HAL_FDCAN_ErrorStatusCallback(FDCAN_HandleTypeDef *hfdcan, uint32_t ErrorStatusITs)
{

}


void HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc)
{
	periodicSave = true;
}

void PVD_IRQHandler(void)
{
	HAL_PWR_PVD_IRQHandler();
}

void HAL_PWR_PVDCallback()
{

}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if(GPIO_Pin == voltageLow_Pin) // If The INT Source Is EXTI Line8 (A8 Pin)
	{
		if (HAL_GPIO_ReadPin(voltageLow_GPIO_Port, voltageLow_Pin) != 1)
		{
			voltageIsLow = true;   // save data in low voltage detection
			HAL_FDCAN_Stop(&hfdcan2);
		}
		else
		{
			NVIC_SystemReset();    // reset in back to normal
		}
	}
}

//void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
//{
//	HAL_UART_Receive_IT(&hlpuart1, (uint8_t*)serialReceiveBuffer, strlen(serialReceiveBuffer));
//}

void logCreate(void)
{
	//
	t3 = TIM1->CNT;/////
	//

	allBuffer[0] = '\0';
	dateBuffer[0] = '\0';
	headerBuffer[0] = '\0';
	dataBuffer[0] = '\0';


	uint16_t miliSecond = (996-(float)logBuf[readIndex].timeStamp.SubSeconds/256*1000);
	(void)sprintf(dateBuffer,"%02d/%02d/%02d,%02d:%02d:%02d.%03d,",date.Year, date.Month, date.Date, logBuf[readIndex].timeStamp.Hours, logBuf[readIndex].timeStamp.Minutes, logBuf[readIndex].timeStamp.Seconds, miliSecond);
	(void)sprintf(headerBuffer,"%1d,%1d,%02X,",logBuf[readIndex].header.RxFrameType>>29, logBuf[readIndex].header.DataLength>>16, logBuf[readIndex].header.Identifier);
	(void)sprintf(dataBuffer,"%03d,%03d,%03d,%03d,%03d,%03d,%03d,%03d\r\n",logBuf[readIndex].data[0],logBuf[readIndex].data[1],logBuf[readIndex].data[2],logBuf[readIndex].data[3],logBuf[readIndex].data[4],logBuf[readIndex].data[5],logBuf[readIndex].data[6],logBuf[readIndex].data[7]);
	readIndex++;
	if(readIndex>(5000-1)){readIndex = 0;}
	if(logBufferIndex > 0){logBufferIndex--;}


	(void)strncat(allBuffer, dateBuffer, strlen(dateBuffer));
	(void)strncat(allBuffer, headerBuffer, strlen(headerBuffer));
	(void)strncat(allBuffer, dataBuffer, strlen(dataBuffer));



	if (logType == LOG_ONLINE)
	{
	     HAL_UART_Transmit(&hlpuart1, (uint8_t*)allBuffer, strlen(allBuffer), 200);
	}
	else if ((logType == LOG_IN_USB) || (logType == LOG_IN_SDCARD))
	{
		f_lseek(&file, f_size(&file));
		res = f_write(&file, allBuffer, strlen(allBuffer), &bytesWrote);  //write after one sector(512B) is completed
	}


	t4 = TIM1->CNT;////
	if (t3 > t4)
	{
		writeTime = 65535 - (t3 -t4);
	}
	else
	{
		writeTime = t4-t3;
	}

}

void saveFile (void)
{

	(void)f_close(&file); //save

	if(voltageIsLow)
	{
		f_mount(&logFS, "", 0);   /* Unmount the default drive */
	}
	else if(periodicSave)
	{
		periodicSave = false;
		HAL_RTC_GetDate(&hrtc, &date, RTC_FORMAT_BIN);
		(void)sprintf(fileName,"20%02d-%02d-%02d.csv",date.Year, date.Month, date.Date);
		res = f_open(&file, fileName, (FA_OPEN_ALWAYS| FA_WRITE| FA_READ));
		logBufferIndex = 0;
		readIndex = 0;
		writeIndex = 0;
	}

	HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_SET);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	// do something with the data

	HAL_UART_Receive_IT(&hlpuart1, (uint8_t*)serialReceiveBuffer, strlen(serialReceiveBuffer));

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
