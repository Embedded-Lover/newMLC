/***
***************************************************** *************************************************
* @file key.c
* @version V1.0
* @date 2021-8-2
* @author EWB-STM technology
* @brief key interface related functions
    ***************************************************** *************************************************
    * @description
*
* Experimental platform: EWB-STM STM32H7B0VBT6 core board (model: EWB-STM32H7B0)

>>>>> File description:
*
* Initialize the button pin, configured as a pull-up input
*
*************************************************************************************************
***/

#include "key.h"  


/***************************************************** ***************************************************
* Function name: KEY_Init
* Entry parameters: none
* Return value: None
* Function function: Initialize button pins
* Note: configured as a pull-up input
*************************************************************************************************/

void KEY_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	__HAL_RCC_KEY_CLK_ENABLE;						// turn on the clock

	GPIO_InitStruct.Pin 	= KEY_PIN;				// Button pin
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;	// input mode	
	GPIO_InitStruct.Pull = GPIO_PULLUP;			// pull up
	
	HAL_GPIO_Init(KEY_PORT, &GPIO_InitStruct);	

}
/**************************************************** ***************************************************
* Function name: KEY_Scan
* Entry parameters: none
* Return value: KEY_ON - key pressed, KEY_OFF - key released
* Function function: button scan
* Description: Call this function periodically, and judge the status according to the return value
***********************************************************************************************/
	
uint8_t	KEY_Scan(void)
{
	if( HAL_GPIO_ReadPin ( KEY_PORT,KEY_PIN) == 0 )	//Detect if a key is pressed
	{	
		HAL_Delay(10);	//Debounce Debounce
		if( HAL_GPIO_ReadPin ( KEY_PORT,KEY_PIN) == 0)	//Check again whether it is low level
		{
			while(  HAL_GPIO_ReadPin ( KEY_PORT,KEY_PIN) == 0);	//wait for the button to be released
			return KEY_ON;	//return button pressed sign
		}
	}
	return KEY_OFF;	
}









