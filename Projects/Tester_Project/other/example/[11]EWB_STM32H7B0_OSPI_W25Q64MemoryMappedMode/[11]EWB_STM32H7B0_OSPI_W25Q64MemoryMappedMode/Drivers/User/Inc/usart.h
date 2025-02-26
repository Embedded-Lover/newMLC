#ifndef __USART_H
#define __USART_H

#include "stm32h7xx_hal.h"
#include "stdio.h"

/*-------------------------------------------- USART configuration macros ---------------------------------------*/

#define  USART1_BaudRate  115200

#define  USART1_TX_PIN									GPIO_PIN_9								// TX pin
#define	USART1_TX_PORT									GPIOA										// TX pin port
#define 	GPIO_USART1_TX_CLK_ENABLE        	   __HAL_RCC_GPIOA_CLK_ENABLE()	 	// TX pin clock


#define  USART1_RX_PIN									GPIO_PIN_10             			// RX pin
#define	USART1_RX_PORT									GPIOA                 				// RX pin port
#define 	GPIO_USART1_RX_CLK_ENABLE         	   __HAL_RCC_GPIOA_CLK_ENABLE()		// RX pin clock


/*---------------------------------------------- function declaration ---------------------------------------*/

void USART1_Init(void) ;	// USART1 initialization function

#endif //__USART_H





