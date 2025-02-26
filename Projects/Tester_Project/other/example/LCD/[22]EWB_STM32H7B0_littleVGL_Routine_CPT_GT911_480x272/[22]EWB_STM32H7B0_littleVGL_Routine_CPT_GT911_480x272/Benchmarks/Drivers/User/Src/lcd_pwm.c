/*** 
	************************************************* ***************************************************** 
	* @file lcd_pwm.c 
	* @version V1.0 
	* @date 2021-6-5 
	* @author Fanke Technology 
	* @brief LCD backlight pwm related functions 
   ***************** ***************************************************** ****************************** 
   * @description 
	* 
	* 
>>>>> Document description: 
	* 
	* 1. PWM frequency is 2KHz 
	* 2. HAL_TIM_MspPostInit is used to initialize the IO port, HAL_TIM_Base_MspInit is used to open clock 
	*
	***************************************************** *****************************************************/ 


#include "lcd_pwm.h" 

TIM_HandleTypeDef htim4; // TIM_HandleTypeDef structure variable 

static uint16_t LCD_PwmPeriod = 500; //Timer reload value 

/******************** ***************************************************** *************************** 
* Function name: HAL_TIM_MspPostInit 
* Entry parameter: htim - TIM_HandleTypeDef structure variable, which means the defined TIM (handle £©
* Return value: None 
* Function: Initialize the corresponding PWM port of TIM 
* Description: Initialize the pin used by PWM 
* 
*********************** ***************************************************** *************************/ 

void HAL_TIM_MspPostInit(TIM_HandleTypeDef* htim) 
{
	GPIO_InitTypeDef GPIO_InitStruct = {0}; 
	if(htim->Instance == LTDC_PWM_TIM) 
	{ 
		GPIO_LDC_Backlight_CLK_ENABLE; // enable backlight pin port clock 

		GPIO_InitStruct.Pin = LTDC_PWM_PIN; // backlight pin 
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP; // multiplexing Pull output 
		GPIO_InitStruct.Pull = GPIO_NOPULL; // Do not pull up and down 
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW; // Low speed mode 
		GPIO_InitStruct.Alternate = LCD_PWM_AF; // Multiplex 
		
		HAL_GPIO_Init(LTDC_PWM_PORT, &GPIO_InitStruct); // **IO port 
	} 
}   


/***************************************************** ********************************************** 
* Function Name: LCD_PwmSetPulse 
* Entry parameter: pulse - PWM duty cycle, range 0~100 
* Return value: None 
* Function function: set PWM duty cycle 
* Description: None
***************************************************** *************************************************/ 
	
void LCD_PwmSetPulse (uint8_t pulse) 
{ 
	uint16_t compareValue ; 
	
	compareValue = pulse * LCD_PwmPeriod / 100; //Set comparison value according to duty cycle 

	TIM4->CCR4 = compareValue; //Modify channel 4 comparison value of TIM4 
} 

/******* ***************************************************** **************************************** 
* Function name: LCD_PWMinit 
* Entry parameter: pulse - PWM duty cycle, range 0~100 
* Return value: None 
* Function: Initialize TIM4, configure PWM frequency to 2KHz 
* Description: None 
***************** ***************************************************** *****************************/ 

void LCD_PWMinit(uint8_t pulse) 
{

	TIM_ClockConfigTypeDef sClockSourceConfig = {0}; 
	TIM_MasterConfigTypeDef sMasterConfig = {0}; 
	TIM_OC_InitTypeDef sConfigOC = {0}; 

	htim4.Instance = LTDC_PWM_TIM; // timer 
	htim4.Init.Prescaler = 240; //The counting frequency is 1MKHz 
	htim4.Init.CounterMode = TIM_COUNTERMODE_UP; // up counting mode 
	htim4.Init.Period = LCD_PwmPeriod -1 ; // reload value 499, that is, count 500 times 
	htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1; // clock No frequency division 
	htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE; // The ARPE position of the control register TIMx_CR1 is 0, that is, the automatic reload register is prohibited from preloading 

	HAL_TIM_Base_Init(&htim4); // According to the above parameters, initialize TIM2

	sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL; // Select the internal clock source 
	HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig); // Initialize and configure the clock source 

	HAL_TIM_PWM_Init(&htim4); // According to the above parameters, perform PWM initialization on TIM    

	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET; //Trigger output selection, configure the reset mode at this time, that is, the MMS of the register TIMx_CR2 is 000 
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE; // do not use the slave mode 
	HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig); // initialize the configuration 

	sConfigOC.OCMode		= TIM_OCMODE_PWM1;	
	sConfigOC.Pulse = pulse*LCD_PwmPeriod/100; // The comparison value is 250, the overload is 500, and the duty cycle is 50% 
	sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH; // The effective state is high level 
	sConfigOC.OCFastMode = TIM_OCFAST_DISABLE; // disable fast mode
	HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, LTDC_PWM_TIM_CHANNEL); // initialize PWM configuration 

	HAL_TIM_MspPostInit(&htim4); // initialize IO port 
	HAL_TIM_PWM_Start(&htim4, LTDC_PWM_TIM_CHANNEL); // start PWM*******			 
} 

/**** ***************************************************** ********************************** 
* Function name: HAL_TIM_Base_MspInit 
* Entry parameter: htim_base - TIM_HandleTypeDef structure variable, That means the defined TIM (handle) 
* Return value: None 
* Function: Turn on the clock 
* Description: None 
* 
************************* ***************************************************** *********************/ 

void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* htim_base) 
{ 
  if(htim_base->Instance==LTDC_PWM_TIM) 
  {
    LTDC_PWM_TIM_CLK_ENABLE; // enable TIM clock 
  } 

}

