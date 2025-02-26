

#ifndef _XPT2046_Touchscreen_h_
#define _XPT2046_Touchscreen_h_

#include <stdint.h>
#include <stdbool.h>

typedef struct TS_Point {
	uint16_t x, y, z;
}TS_Point;


TS_Point touchUpdate(void);
void transfer(uint8_t dataSend);
uint16_t transferReceive(uint8_t dataSend);
void setScreenSize(uint16_t x, uint16_t y);
void setRotation(uint8_t n);
void setOffset(uint8_t xOffset, uint8_t yOffset);
void setThreshold(uint16_t th);
void getPoint(void);
bool isTouched(void);
bool getTouchFlag();
void resetTouched(void);

#endif
