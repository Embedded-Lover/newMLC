#ifndef __LED_H
#define __LED_H

/*------------------------------------------ LED configuration macro ----------------------------------*/

#define LED1_PIN            			 GPIO_PIN_1        				 	// LED1 pin      
#define LED1_PORT           			 GPIOC                 			 	// LED1 GPIO port     
#define __HAL_RCC_LED1_CLK_ENABLE    __HAL_RCC_GPIOC_CLK_ENABLE() 	// LED1 GPIO port clock
 

  
/*----------------------------------------- LED Control Macro ----------------------------------*/
						
#define LED1_ON 	  	HAL_GPIO_WritePin(LED1_PORT, LED1_PIN, GPIO_PIN_RESET)		// Output low level, light LED1	
#define LED1_OFF 	  	HAL_GPIO_WritePin(LED1_PORT, LED1_PIN, GPIO_PIN_SET)			// Output high level, turn off LED1	
#define LED1_Toggle	HAL_GPIO_TogglePin(LED1_PORT,LED1_PIN);							// Flip the state of the IO port
			
/*---------------------------------------- function declaration ------------------------------------*/

void LED_Init(void);

#endif //__LED_H


