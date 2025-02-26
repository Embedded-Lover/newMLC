/***
	***************************************************** ***************************************************
* @file main.c
* @version V1.0
* @date 2021-8-4
* @author EWB-STM technology
* @brief LED blinking experiment
    ***************************************************** ***************************************************
    * @description
*
* Experimental platform: EWB-STM STM32H7B0VBT6 core board (model: EWB-STM32H7B0)

>>>>> File description:
*
* Initialize the IO port of the LED, configure it as push-pull output, speed level 2M.
*
************************************************************************************************
***/

#include "stm32h7xx_hal.h"
#include "led.h"  


void LED_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	__HAL_RCC_LED1_CLK_ENABLE;		// Initialize LED1 GPIO clock	


	HAL_GPIO_WritePin(LED1_PORT, LED1_PIN, GPIO_PIN_RESET);		// The LED1 pin output is low, that is, LED1 is turned on


	GPIO_InitStruct.Pin 		= LED1_PIN;					// LED1 pin
	GPIO_InitStruct.Mode 	= GPIO_MODE_OUTPUT_PP;	// Push-pull output mode
	GPIO_InitStruct.Pull 	= GPIO_NOPULL;				// not up and down
	GPIO_InitStruct.Speed 	= GPIO_SPEED_FREQ_LOW;	// low speed mode
	HAL_GPIO_Init(LED1_PORT, &GPIO_InitStruct);


}

