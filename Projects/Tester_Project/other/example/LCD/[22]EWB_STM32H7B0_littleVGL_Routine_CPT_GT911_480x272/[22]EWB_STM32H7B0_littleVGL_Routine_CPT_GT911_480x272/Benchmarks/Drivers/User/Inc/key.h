#ifndef __KEY_H 
#define __KEY_H 

#include "stm32h7xx_hal.h" 

#define KEY_ON 1 //press the key 
#define KEY_OFF 0 //release the key 

/*----------------- ------------------------- IO port configuration macro--------------------- -------------*/ 


#define KEY_PIN GPIO_PIN_13 // KEY pin       
#define KEY_PORT GPIOC // KEY GPIO port      
#define __HAL_RCC_KEY_CLK_ENABLE __HAL_RCC_GPIOC_CLK_ENABLE() // KEY GPIO port clock 

/*--- --------------------------------------- Function declaration --------- ---------------------------*/ 

void KEY_Init(void); //Key IO port initialization function 
uint8_t KEY_Scan(void); // key scan 

#endif //__KEY_H










