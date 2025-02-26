
#include "XPT2046_Touchscreen.h"
#include <spi.h>

static uint16_t threshold;
static TS_Point point = {0};
static TS_Point offset = {0};
static uint8_t rotation = 1;
static uint16_t displayWidth;
static uint16_t displayHeight;
static bool pressed = false;

void setScreenSize(uint16_t x, uint16_t y)
{
	displayWidth = x;
	displayHeight = y;
}

void setRotation(uint8_t n)
{
	rotation = n % 4;
}

void setOffset(uint8_t xOffset, uint8_t yOffset)
{
	offset.x = xOffset;
	offset.y = yOffset;
}

void setThreshold(uint16_t th)
{
	threshold = th;
}

TS_Point touchUpdate(void)
{
	if (isTouched())
	{
	   	   getPoint();
	}
	else
	{
		   point.x = 0;
		   point.y = 0;
	}
	return point;
}

bool isTouched(void)
{
	uint16_t Z1,Z2;
	pressed = false;
	Z1 = transferReceive(0xB1) >> 3;
	Z2 = transferReceive(0xC1) >> 3;
	if (Z1 - Z2 + 4095 > threshold) {pressed = true;}
	return pressed;
}

bool getTouchFlag()
{
	return pressed;
}

void getPoint(void)
{
	int16_t data[6];


	data[0] = transferReceive(0xD1/* Y */) >> 3;
	data[1] = transferReceive(0x91/* X */) >> 3;
	//data[2] = transferReceive(0xD0/* Y */) >> 3;
    //data[3] = transferReceive(0x90/* X */) >> 3;
	//data[4] = transferReceive(0xD0/* Y */) >> 3;
    //data[5] = transferReceive(0x90/* X */) >> 3;

	/*
	for(uint8_t i =0; i<3 ; ++i)
	{
		point.x = data[i] & 0xfff;
		point.y = data[i+1] & 0xfff;
	}

	point.x /= 3;
	point.y /= 3;
	*/

	point.x = data[0] & 0xfff;
	point.y = data[1] & 0xfff;
	

	point.x = (float)(point.x-offset.x)*displayWidth/3600;
	point.y = (float)(point.y-offset.y)*displayHeight/3600;


   switch (rotation) {
		  case 0:
			 point.x = displayHeight - point.y;
			 point.y = point.x;
			break;
		  case 1:

			break;
		  case 2:
			point.x = point.y;
			point.y = displayWidth - point.x;
			break;
		  case 3:
			point.y = displayHeight - point.y;
			break;
		  case 4:
			point.x = displayWidth - point.x;
			break;
		  default:
			point.x = displayWidth - point.x;
			point.y = displayHeight - point.y;
   }

}

void transfer(uint8_t dataSend)
{
    HAL_SPI_Transmit(&hspi2, &dataSend, 1, 30);
}

uint16_t transferReceive(uint8_t dataSend)
{
	uint8_t dataReceive[3];
	uint16_t result;

    HAL_SPI_TransmitReceive(&hspi2, &dataSend, dataReceive, 3, 30);

	result = ((uint16_t)dataReceive[1] << 8) | (uint16_t)dataReceive[2];
	return result;
}


