#ifndef __TOUCH_H
#define __TOUCH_H

#include "stm32h7xx_hal.h"
#include "touch_iic.h"  
#include "usart.h"

/*------------------------------------ Related definitions ---------- --------------------------*/  	

#define TOUCH_MAX 5 //Maximum number of touch points

typedef struct 
{
	uint8_t flag; // touch flag bit, when it is 1, it means touch operation
	uint8_t num; // number of touch points
	uint16_t x[TOUCH_MAX]; // x coordinate
	uint16_t y[TOUCH_MAX]; // y coordinate
}TouchStructure;

extern volatile TouchStructure touchInfo; // declaration of touch data structure	

/*------------------------------------ Register definition ---------- --------------------------*/  		

#define GT9XX_IIC_RADDR 0xBB // IIC initialization address
#define GT9XX_IIC_WADDR 0xBA

#define GT9XX_CFG_ADDR 0x8047 // Firmware configuration information register and configuration start address
#define GT9XX_READ_ADDR 0x814E // touch information register
#define GT9XX_ID_ADDR 0x8140 // touch panel ID register

/*------------------------------------ Function declaration ---------- --------------------------*/  		

uint8_t Touch_Init(void); // touch screen initialization
void Touch_Scan(void); // touch scan
void GT9XX_Reset(void); // perform reset operation
void GT9XX_SendCfg(void); // Send GT9XX configuration parameters
void GT9XX_ReadCfg(void); // read GT9XX configuration parameters

#endif
