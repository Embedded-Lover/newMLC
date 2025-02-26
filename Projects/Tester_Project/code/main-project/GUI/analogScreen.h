/*
 * analogScreen.h
 *
 *  Created on: Sep 11, 2024
 *      Author: Karamali_M
 */

#ifndef ANALOGSCREEN_H_
#define ANALOGSCREEN_H_

typedef struct
{
	lv_obj_t*    window;
	lv_obj_t*    tabview;
	//
	lv_obj_t*    analogData1;
	lv_obj_t*    analogData2;
	lv_obj_t*    analogData3;
	lv_obj_t*    analogData4;
	lv_obj_t*    analogData5;
	lv_obj_t*    analogData6;
	lv_obj_t*    analogData7;
	lv_obj_t*    analogData8;
	//
	bool         testStartBtn;
	float        setPoint;
	bool         ID0;
	bool         ID1;
	bool         ID2;
	//
	float        scale;
}analogScreen_t;

////functions
void createAnalogScreen(void);
analogScreen_t getAnalogScreen(void);

#endif /* ANALOGSCREEN_H_ */
