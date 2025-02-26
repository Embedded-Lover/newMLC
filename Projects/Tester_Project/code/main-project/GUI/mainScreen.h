/*
 * mainScreen.h
 *
 *  Created on: Sep 11, 2024
 *      Author: Karamali_M
 */

#ifndef MAINSCREEN_H_
#define MAINSCREEN_H_

typedef struct
{
	lv_obj_t*    window;
	lv_obj_t*    changeable;
	lv_style_t   timeDateStyle;
	lv_obj_t*    timeLabel;
	lv_obj_t*    dateLabel;
	float        scale;
}mainScreen_t;

////functions
void createMainScreen(void);
mainScreen_t getMainScreen(void);

#endif /* MAINSCREEN_H_ */
