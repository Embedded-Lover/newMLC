/***
	***************************************************** ***************************************************** ***************************************************** ***************************************************** ***********
	* @file touch_480x272.c
	* @version V1.0
	* @date 2021-9-6
	* @author anti-customer technology
	* @brief GT911 touch driver
   ***************************************************** ***************************************************** ***************************************************** ***************************************************** ***********
   * @description
	*
>>>>> File description:
	*
	* 1. Operation functions related to touch screen
	* 2. Use analog IIC
	* 3. The default communication speed is 100KHz
	*	
	***************************************************** ***************************************************** ***************************************************** ***************************************************** ************************************************* FANKE***** **
***/

#include "touch_480x272.h"

volatile TouchStructure touchInfo; // Touch information structure, which is called in the function Touch_Scan() to store touch data


/**************************************************** ***************************************************** ***********************************
* Function name: GT9XX_Reset
* Entry parameters: None
* Return value: None
* Function function: reset GT911
* Description: Reset GT911, and configure the IIC address of the chip as 0xBA/0xBB
***************************************************** ***************************************************** ***********************************/

void GT9XX_Reset(void)
{
	Touch_INT_Out(); // Configure the INT pin as an output
	
	// Initialize pin state
	HAL_GPIO_WritePin(Touch_INT_PORT,Touch_INT_PIN,GPIO_PIN_RESET); // INT output low level
	HAL_GPIO_WritePin(Touch_RST_PORT,Touch_RST_PIN,GPIO_PIN_SET); // RST output high level
	Touch_IIC_Delay(10000);
	
	// start reset
	// Keep the INT pin low and set the device address to 0XBA/0XBB
	HAL_GPIO_WritePin(Touch_RST_PORT,Touch_RST_PIN,GPIO_PIN_RESET); // Pull down the reset pin, and the chip performs a reset at this time
	Touch_IIC_Delay(150000); // Delay
	HAL_GPIO_WritePin(Touch_RST_PORT,Touch_RST_PIN,GPIO_PIN_SET); // pull up the reset pin, the reset is over
	Touch_IIC_Delay(350000); // Delay
	Touch_INT_In(); // INT pin turns into a floating input
	Touch_IIC_Delay(20000); // Delay
									
}

/**************************************************** ***************************************************** ***********************************
* Function name: GT9XX_WriteHandle
* Entry parameter: addr - the register to be operated
* Return value: SUCCESS - operation succeeded
* ERROR - operation failed
* Function: GT9XX write operation
* Description: Write to the specified register
***************************************************** ***************************************************** ***********************************/

uint8_t GT9XX_WriteHandle (uint16_t addr)
{
	uint8_t status; // status flag bit

	Touch_IIC_Start(); // Start IIC communication
	if( Touch_IIC_WriteByte(GT9XX_IIC_WADDR) == ACK_OK ) //write data command
	{
		if( Touch_IIC_WriteByte((uint8_t)(addr >> 8)) == ACK_OK ) //write 16-bit address
		{
			if( Touch_IIC_WriteByte((uint8_t)(addr)) != ACK_OK )
			{
				status = ERROR; // operation failed
			}			
		}
	}
	status = SUCCESS; // operation succeeded
	return status;	
}

/**************************************************** ***************************************************** ***********************************
* Function name: GT9XX_WriteData
* Entry parameters: addr - the register to be written
* value - the data to write
* Return value: SUCCESS - operation succeeded
* ERROR - operation failed
* Function: GT9XX write one byte data
* Description: Write one byte of data to the specified register
***************************************************** ***************************************************** ***********************************/

uint8_t GT9XX_WriteData (uint16_t addr, uint8_t value)
{
	uint8_t status;
	
	Touch_IIC_Start(); //Start IIC communication

	if( GT9XX_WriteHandle(addr) == SUCCESS) //write to the register to be operated
	{
		if (Touch_IIC_WriteByte(value) != ACK_OK) //write data
		{
			status = ERROR;						
		}
	}	
	Touch_IIC_Stop(); // stop communication
	
	status = SUCCESS; // write successfully
	return status;
}

/**************************************************** ***************************************************** ***********************************
* Function name: GT9XX_WriteReg
* Entry parameters: addr - the first address of the register area to be written
* cnt - data length
* value - the data area to write
* Return value: SUCCESS - operation succeeded
* ERROR - operation failed
* Function: GT9XX write register
* Description: Write data of specified length to the register area of the chip
***************************************************** ***************************************************** ***********************************/

uint8_t GT9XX_WriteReg (uint16_t addr, uint8_t cnt, uint8_t *value)
{
	uint8_t status;
	uint8_t i;

	Touch_IIC_Start();

	if( GT9XX_WriteHandle(addr) == SUCCESS) // write to the register to be operated
	{
		for(i = 0 ; i < cnt; i++) // count
		{
			Touch_IIC_WriteByte(value[i]); // write data
		}					
		Touch_IIC_Stop(); // Stop IIC communication
		status = SUCCESS; // write successfully
	}
	else
	{
		Touch_IIC_Stop(); // Stop IIC communication
		status = ERROR; // write failed
	}
	return status;	
}

/**************************************************** ***************************************************** ***********************************
* Function name: GT9XX_ReadReg
* Entry parameters: addr - the first address of the register area to be read
* cnt - data length
* value - the data area to read
* Return value: SUCCESS - operation succeeded
* ERROR - operation failed
* Function: GT9XX read register
* Description: Read the data of the specified length from the register area of the chip
***************************************************** ***************************************************** ***********************************/

uint8_t GT9XX_ReadReg (uint16_t addr, uint8_t cnt, uint8_t *value)
{
	uint8_t status;
	uint8_t i;

	status = ERROR;
	Touch_IIC_Start(); // Start IIC communication

	if( GT9XX_WriteHandle(addr) == SUCCESS) //write to the register to be operated
	{
		Touch_IIC_Start(); //Restart IIC communication

		if (Touch_IIC_WriteByte(GT9XX_IIC_RADDR) == ACK_OK) // send read command
		{	
			for(i = 0 ; i < cnt; i++) // count
			{
				if (i == (cnt - 1))
				{
					value[i] = Touch_IIC_ReadByte(0); // Send a non-response signal when the last data is read
				}
				else
				{
					value[i] = Touch_IIC_ReadByte(1); // send response signal
				}
			}					
			Touch_IIC_Stop(); // Stop IIC communication
			status = SUCCESS;
		}
	}
	Touch_IIC_Stop(); // Stop IIC communication
	return (status);	
}

/**************************************************** ***************************************************** ***********************************
* Function name: Touch_Init
* Entry parameters: None
* Return value: SUCCESS - initialization succeeded
* ERROR - Error, no touchscreen detected	
* Function: Initialize the touch IC, read the corresponding information and send it to the serial port
* Description: Initialize the touch panel
***************************************************** ***************************************************** ***********************************/

uint8_t Touch_Init(void)
{
	uint8_t GT9XX_Info[11]; // touch screen IC information
	uint8_t cfgVersion = 0; // touch configuration version
	
	Touch_IIC_GPIO_Config(); // Initialize IIC pins
	GT9XX_Reset(); // Reset IC
			
	GT9XX_ReadReg (GT9XX_ID_ADDR,11,GT9XX_Info); // read touch screen IC information
	GT9XX_ReadReg (GT9XX_CFG_ADDR,1,&cfgVersion); // read touch configuration version
	
	if( GT9XX_Info[0] == '9' ) //judging whether the first character is 9
	{
// printf("Touch ID: GT%.4s \r\n",GT9XX_Info); //Print the ID of the touch chip
// printf("Firmware version: 0X%.4x\r\n",(GT9XX_Info[5]<<8) + GT9XX_Info[4]); // Chip firmware version
// printf("Touch resolution: %d * %d\r\n",(GT9XX_Info[7]<<8) + GT9XX_Info[6],(GT9XX_Info[9]<<8) +GT9XX_Info[8]) ; // current touch resolution		
// printf("Touch parameter configuration version: 0X%.2x \r\n",cfgVersion); // Touch configuration version	
		
		return SUCCESS;
	}
	else
	{
// printf("Touch Error\r\n"); //Error, no touch screen detected
		return ERROR;
	}

}

/**************************************************** ***************************************************** ***********************************
* Function name: Touch_Scan
* Entry parameters: None
* Return value: None
* Function function: touch scan
* Description: Call this function periodically in the program to detect touch operations, and the touch information is stored in the touchInfo structure
***************************************************** ***************************************************** ***********************************/

void Touch_Scan(void)
{
 	uint8_t touchData[2 + 8 * TOUCH_MAX ]; // used to store touch data
	uint8_t i = 0;	
	
	GT9XX_ReadReg (GT9XX_READ_ADDR,2 + 8 * TOUCH_MAX ,touchData); // read data
	GT9XX_WriteData (GT9XX_READ_ADDR,0); // Clear the register flag bit of the touch chip
	touchInfo.num = touchData[0] & 0x0f; // Get the current number of touch points
	
	if ( (touchInfo.num >= 1) && (touchInfo.num <=5) ) // when the touch number is between 1-5
	{
		for(i=0;i<touchInfo.num;i++) // Get the corresponding touch coordinates
		{
			touchInfo.y[i] = (touchData[5+8*i]<<8) | touchData[4+8*i]; // get Y coordinate
			touchInfo.x[i] = (touchData[3+8*i]<<8) | touchData[2+8*i]; // Get the X coordinate			
		}
		touchInfo.flag = 1; // The position of the touch flag is 1, which means that there is a touch action
	}
	else                       
	{
		touchInfo.flag = 0; // touch flag position 0, no touch action
	}
}

/**************************************************** ***************************************************** ***************************************************** ***************************************************** **********FANKE***/
// Experimental platform: Fanke 750 core board
//
