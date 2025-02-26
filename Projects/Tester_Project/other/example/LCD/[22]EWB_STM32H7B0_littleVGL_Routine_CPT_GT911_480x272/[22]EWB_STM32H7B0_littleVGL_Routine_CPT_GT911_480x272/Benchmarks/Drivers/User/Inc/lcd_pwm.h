#ifndef __PWM_H 
#define __PWM_H 
 
 
#include "stm32h7xx_hal.h" 
#include "lcd_rgb.h" 
 
#define LTDC_PWM_PIN GPIO_PIN_15 // pin
#define LTDC_PWM_PORT GPIOD			 // port
#define GPIO_LTDC_PWM_CLK_ENABLE __HAL_RCC_GPIOD_CLK_ENABLE() //clock
#define LCD_PWM_AF GPIO_AF2_TIM4 // Multiplexing 
	
#define LTDC_PWM_TIM TIM4 // timer 
#define LTDC_PWM_TIM_CLK_ENABLE __HAL_RCC_TIM4_CLK_ENABLE() // clock 
#define LTDC_PWM_TIM_CHANNEL TIM_CHANNEL_4 // channel 


/*-------------------- function declaration ----------------------*/ 

void LCD_PWMinit(uint8_t pulse); //PWM initialization 
void LCD_PwmSetPulse (uint8_t pulse); //Set duty cycle


#endif //__PWM_H


