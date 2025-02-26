/*** 
	*********************************************** ***************************************************** 
	* @file key.c 
	* @version V1.0 
	* @date 2021-1-19 
	* @author Anti-Customer Technology 
	* @brief Button interface related functions 
   ****************** ***************************************************** ******************************* 
   * @description 
	* 
	* 
>>>>> File description: 
	* 
	* Initialize button pins, configured as pull-up input 
	* 
	************* ***************************************************** *****************************************/ 

#include "key.h"  


/**************************************************** ************************************************ 
* Function Name: KEY_Init 
* Entry parameters: None 
* Return value: None 
* Function: Initialize key pins 
* Description: Configure as pull-up input			 
******************** ***************************************************** ***************************/ 

void KEY_Init(void) 
{ 
	GPIO_InitTypeDef GPIO_InitStruct = {0}; 

	__HAL_RCC_KEY_CLK_ENABLE; // Enable clock 

	GPIO_InitStruct.Pin = KEY_PIN; // key pin 
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT; // input mode	 
	GPIO_InitStruct.Pull = GPIO_PULLUP; // pull up 
	
	HAL_GPIO_Init(KEY_PORT, &GPIO_InitStruct);	 

}

/**************************************************** ************************************************ 
* Function Name: KEY_Scan 
* Entry parameters: none 
* Return value: KEY_ON - key pressed, KEY_OFF - key released 
* Function: key scan 
* Description: call this function periodically, and judge the state according to the return value			 
******* ***************************************************** *****************************************/ 
	
uint8_t KEY_Scan(void) 
{ 
	if( HAL_GPIO_ReadPin ( KEY_PORT,KEY_PIN) == 0 ) //Check if the key is pressed 
	{	 
		HAL_Delay(10); //Delay debounce 
		if( HAL_GPIO_ReadPin ( KEY_PORT,KEY_PIN) == 0) //Check if it is low level again 
		{ 
			while( HAL_GPIO_ReadPin ( KEY_PORT,KEY_PIN ) == 0 ); //wait for the key to be released 
			return KEY_ON; //return to the key pressed sign 
		} 
	} 
	return KEY_OFF;	
}








