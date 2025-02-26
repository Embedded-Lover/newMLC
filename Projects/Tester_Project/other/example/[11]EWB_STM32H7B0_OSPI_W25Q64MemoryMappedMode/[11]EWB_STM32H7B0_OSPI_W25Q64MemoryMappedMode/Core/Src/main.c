/***
***************************************************** ***************************************************
* @file main.c
* @version V1.0
* @date 2021-8-4
* @author anti-customer technology
* @brief OSPI driver W25Q64, use memory mapped mode for reading
    ***************************************************** ***************************************************
    * @description
*

>>>>> Function description:
*
* 1. Light up the LED and use the delay function that comes with the HAL library to achieve blinking
* 2. Use OSPI1 to drive W25Q64 for a simple read and write test
* 3. OSPI driver W25Q64, use memory mapping mode to read
* 4. The default configuration QSPI drive clock is 140M
*
>>>>> Serial port printing instructions:
*
* USART1 uses PA9/PA10, the serial port baud rate is 115200
*
***************************************************** *************************************************
***/	

#include "main.h"
#include "led.h"
#include "key.h"
#include "usart.h"
#include "ospi_w25q64.h"


/********************************************** Variable definitions* *********************************************/

#define W25Qxx_NumByteToTest 32*1024 // length of test data, 32K

int32_t OSPI_Status ; //Check flag bit

uint8_t W25Qxx_WriteBuffer[W25Qxx_NumByteToTest]; // write data array
uint8_t W25Qxx_ReadBuffer[W25Qxx_NumByteToTest]; // read data array


/**************************************************** *****************************************************
* Function name: OSPI_W25Qxx_Test
* Entry parameters: none
* Return value: OSPI_W25Qxx_OK - test successful and passed
* Function function: perform a simple read and write test and calculate the speed
* Description: None
***************************************************************************************************/

int8_t OSPI_W25Qxx_Test(void) //Flash read and write test
{
uint32_t i = 0X8000; // count variable
uint32_t W25Qxx_TestAddr = 0 ; // test address
uint32_t ExecutionTime_Begin; // start time
uint32_t ExecutionTime_End; // end time
uint32_t ExecutionTime; // execution time
float ExecutionSpeed; // execution speed

// erase >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   
	
	
ExecutionTime_Begin = HAL_GetTick(); // Get the current time of systick in ms
OSPI_Status = OSPI_W25Qxx_BlockErase_32K(W25Qxx_TestAddr); // Erase 32K bytes
ExecutionTime_End = HAL_GetTick(); // Get the current time of systick in ms

ExecutionTime = ExecutionTime_End - ExecutionTime_Begin; // Calculate the erasing time, in ms

if( OSPI_Status == OSPI_W25Qxx_OK )
{
printf ("\r\nW25Q64 erased successfully, time required to erase 32K bytes: %d ms\r\n",ExecutionTime);
}
else
{
printf ("\r\n Erase failed!!!!! Error code:%d\r\n",OSPI_Status);
		while (1);
	}	
	
// Write >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

for(i=0;i<W25Qxx_NumByteToTest;i++) //Write the data into the array first
{
W25Qxx_WriteBuffer[i] = i;
}
ExecutionTime_Begin = HAL_GetTick(); // Get the current time of systick in ms
OSPI_Status = OSPI_W25Qxx_WriteBuffer(W25Qxx_WriteBuffer, W25Qxx_TestAddr, W25Qxx_NumByteToTest); // write data
ExecutionTime_End = HAL_GetTick(); // Get the current time of systick in ms

ExecutionTime = ExecutionTime_End - ExecutionTime_Begin; // Calculate the erasing time, in ms
ExecutionSpeed = (float)W25Qxx_NumByteToTest / ExecutionTime ; // Calculate the write speed in KB/S
if( OSPI_Status == OSPI_W25Qxx_OK )
{
printf ("\r\nWrite successfully, data size: %d KB, time-consuming: %d ms, write speed: %.2f KB/s\r\n", W25Qxx_NumByteToTest/1024, ExecutionTime, ExecutionSpeed);
}
else
{
printf ("\r\nWrite error!!!!! Error code:%d\r\n",OSPI_Status);
while (1);
}

// read>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 

OSPI_Status = OSPI_W25Qxx_MemoryMappedMode(); // Configure OSPI as memory mapped mode
if( OSPI_Status == OSPI_W25Qxx_OK )
{
printf ("\r\nEnter the memory mapping mode successfully, start reading >>>>\r\n");
}
else
{
printf ("\r\nMemory mapping error!! Error code:%d\r\n",OSPI_Status);
		while (1);
	}	
	
ExecutionTime_Begin = HAL_GetTick(); // Get the current time of systick in ms
memcpy(W25Qxx_ReadBuffer,(uint8_t *)W25Qxx_Mem_Addr+W25Qxx_TestAddr,W25Qxx_NumByteToTest); // Copy data from QSPI_Mem_Addr +W25Qxx_TestAddr address to W25Qxx_ReadBuffer
ExecutionTime_End = HAL_GetTick(); // Get the current time of systick in ms

ExecutionTime = ExecutionTime_End - ExecutionTime_Begin; // Calculate the erasing time, in ms
ExecutionSpeed = (float)W25Qxx_NumByteToTest/1024/1024 / ExecutionTime*1000 ; // Calculate the read speed in MB/S

if( OSPI_Status == OSPI_W25Qxx_OK )
{
printf ("\r\nread successfully, data size: %d KB, time-consuming: %d ms, read speed: %.2f MB/s \r\n", W25Qxx_NumByteToTest/1024, ExecutionTime, ExecutionSpeed);
}
else
{
printf ("\r\nRead error!!!!! Error code:%d\r\n",OSPI_Status);
while (1);
}
// Data validation >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   
	
for(i=0;i<W25Qxx_NumByteToTest;i++) //Verify whether the read data is equal to the written data
{
if( W25Qxx_WriteBuffer[i] != W25Qxx_ReadBuffer[i] ) //If the data are not equal, return 0
{
printf ("\r\nData verification failed!!!!! Error location: %d\r\n",i);
while(1);
}
}
printf ("\r\nValidation passed!!!!! QSPI driver W25Q64 test is normal\r\n");

// Read the data of the whole Flash to test the speed >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	
printf ("\r\n********************************************** ***************************************************** **********\r\n");
printf ("\r\nIn the above test, the read data is relatively small and takes a very short time, and the minimum unit of measurement is ms, so the calculated reading speed has a large error\r\n");
printf ("\r\nNext, read the data of the entire flash to test the speed, so that the speed error obtained is relatively small\r\n");
printf ("\r\nStart reading >>>>\r\n");	
ExecutionTime_Begin = HAL_GetTick(); // Get the current time of systick in ms

for(i=0;i<W25Qxx_FlashSize/(W25Qxx_NumByteToTest);i++) // read W25Qxx_NumByteToTest bytes of data each time
{
memcpy(W25Qxx_ReadBuffer,(uint8_t *)W25Qxx_Mem_Addr+W25Qxx_TestAddr,W25Qxx_NumByteToTest); // Copy data from QSPI_Mem_Addr address to W25Qxx_ReadBuffer
W25Qxx_TestAddr = W25Qxx_TestAddr + W25Qxx_NumByteToTest;
}
ExecutionTime_End = HAL_GetTick(); // Get the current time of systick in ms

ExecutionTime = ExecutionTime_End - ExecutionTime_Begin; // Calculate the erasing time, in ms
ExecutionSpeed = (float)W25Qxx_FlashSize/1024/1024 / ExecutionTime*1000 ; // Calculate the read speed in MB/S

if( OSPI_Status == OSPI_W25Qxx_OK )
{
printf ("\r\nRead successfully, data size: %d MB, time-consuming: %d ms, read speed: %.2f MB/s \r\n", W25Qxx_FlashSize/1024/1024, ExecutionTime, ExecutionSpeed );
}
else
{
printf ("\r\nRead error!!!!! Error code:%d\r\n",OSPI_Status);
while (1);
}

return OSPI_W25Qxx_OK ; // test passed

}
/********************************************** Function Declaration *******************************************/

void SystemClock_Config(void); // clock initialization


/**************************************************** *****************************************************
* Function name: main
* Entry parameters: none
* Return value: None
* Function function: run STM32
* Description: None
******************************************************************************************************/

int main(void)
{
SCB_EnableICache(); // enable ICache
SCB_EnableDCache(); // enable DCache
HAL_Init(); // Initialize the HAL library
SystemClock_Config(); // Configure the system clock, the main frequency is 280MHz
LED_Init(); // Initialize LED pins
KEY_Init(); // Initialize key pins
USART1_Init(); // USART1 initialization

OSPI_W25Qxx_Init(); // Initialize OSPI and W25Q64

OSPI_W25Qxx_Test(); // Flash read and write test
	
	while (1)
	{
		LED1_Toggle;
		HAL_Delay(100);
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
  *            VDD(V)                         = 3.3
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
  
  
	PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_OSPI;    
  
/* The maximum driving frequency allowed by W25Q64JV is only 133MHz, and the maximum driving frequency of 7B0 OSPI is 140MHz */
  
  
// /** Here pll2_r_ck is used as the core clock of OSPI, the speed is 266M, and then divided by 2 to get 133M drive clock */
// PeriphClkInitStruct.PLL2.PLL2M = 25; // crystal oscillator frequency division factor 25 (Note: external crystal oscillator is 25M)
// PeriphClkInitStruct.PLL2.PLL2N = 266; // Multiply the prescaled crystal clock by 266 to get 266M clock
// PeriphClkInitStruct.PLL2.PLL2P = 2; // This parameter has nothing to do with OSPI, users can configure and use it freely
// PeriphClkInitStruct.PLL2.PLL2Q = 2; // This parameter has nothing to do with OSPI, users can configure and use it freely
// PeriphClkInitStruct.PLL2.PLL2R = 1; // Divide by 1 to get 266M pll2_r_ck clock
// PeriphClkInitStruct.PLL2.PLL2RGE = RCC_PLL2VCIRANGE_0;
// PeriphClkInitStruct.PLL2.PLL2VCOSEL = RCC_PLL2VCOMEDIUM;
// PeriphClkInitStruct.PLL2.PLL2FRACN = 0;
//
// PeriphClkInitStruct.OspiClockSelection = RCC_OSPICLKSOURCE_PLL2; //Use pll2_r_ck as the core clock of OSPI, the speed is 266M, and then divide by 2 to get 133M drive clock
  
/* For the convenience of setting, use the system main clock HCLK as the core clock of OSPI, the speed is 280M, and then divide by 2 to get the 140M drive clock */
/* HCLK is also OSPI's default core clock, and when using XIP (running code on OSPI peripherals), only the default clock can be used */
/* Therefore, although 140M has exceeded the highest clock allowed by W25Q64JV, set the OSPI drive clock to 140M */
/* In the actual test, the drive clock is pulled to nearly 200M, and w25q64 can still read and write normally, so don't worry about stability when the frequency exceeds 7M*/
  PeriphClkInitStruct.OspiClockSelection = RCC_OSPICLKSOURCE_D1HCLK; //Use the system main clock HCLK as the OSPI core clock, the speed is 280M, and then divide by 2 to get 140M drive clock
  
	if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
	{
		Error_Handler();
	}    
  
}

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
