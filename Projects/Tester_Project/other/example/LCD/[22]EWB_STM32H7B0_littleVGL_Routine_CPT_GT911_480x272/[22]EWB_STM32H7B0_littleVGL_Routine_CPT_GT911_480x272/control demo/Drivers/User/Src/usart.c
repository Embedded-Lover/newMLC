/***
	************************************************************************************************
	*	@file  	usart.c
	*	@version V1.0
	*  @date    2021-1-19
	* @author anti-customer technology	
	* @brief serial port printing test
   *************************************************************************************************
   *  @description
	*
	*
>>>>> File description:
	*
	* Initialize the usart pin, configure parameters such as baud rate
	*
	************************************************************************************************
***/


#include "usart.h"



UART_HandleTypeDef huart1; // UART_HandleTypeDef structure variable


/*************************************************************************************************
* Function name: HAL_UART_MspInit
* Entry parameters: huart - the variable defined by UART_HandleTypeDef, which means the defined serial port
* Return value: None
* Function function: Initialize the serial port pin
* Description: None		
*************************************************************************************************/


void HAL_UART_MspInit(UART_HandleTypeDef* huart)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};
	
	if(huart->Instance==USART1)
	{
		__HAL_RCC_USART1_CLK_ENABLE(); // Turn on the USART1 clock

		GPIO_USART1_TX_CLK_ENABLE; // Turn on the GPIO clock of USART1 TX pin
		GPIO_USART1_RX_CLK_ENABLE; // Turn on the GPIO clock of USART1 RX pin

		GPIO_InitStruct.Pin = USART1_TX_PIN; // TX pin
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP; // multiplex push-pull output
		GPIO_InitStruct.Pull = GPIO_PULLUP; // pull up
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH; // speed level
		GPIO_InitStruct.Alternate = GPIO_AF7_USART1; // multiplexed as USART1
		HAL_GPIO_Init(USART1_TX_PORT, &GPIO_InitStruct);

		GPIO_InitStruct.Pin = USART1_RX_PIN; // RX pin
		HAL_GPIO_Init(USART1_RX_PORT, &GPIO_InitStruct);		
	}

}

/*************************************************************************************************
* Function name: USART1_Init
* Entry parameters: None
* Return value: None
* Function function: Initialize serial port configuration
* Description: None		 
*************************************************************************************************/

void USART1_Init(void)
{
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {

  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {

  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {

  }
  if (HAL_UARTEx_DisableFifoMode(&huart1) != HAL_OK)
  {

  }
}

/*************************************************************************************************
* Function name: fputc
* Entry parameters: ch - character to be output, f - file pointer (not used here)
* Return value: return character when normal, return EOF (-1) when error occurs
* Function function: redirect the fputc function to use the printf function
* Description: None		
*************************************************************************************************/

int fputc(int ch, FILE *f)
{
	HAL_UART_Transmit(&huart1, (uint8_t *)&ch, 1, 100); // send single byte data
	return (ch);
}
