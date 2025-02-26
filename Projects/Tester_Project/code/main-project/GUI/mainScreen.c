/*
 * main.c
 *
 *  Created on: Sep 11, 2024
 *      Author: Karamali_M
 */

#include "../LVGL/lvgl.h"
#include "mainScreen.h"
#include "homeScreen.h"

//private members
static mainScreen_t mainScreen;

//private functions
static void homeBtnEvent(lv_obj_t * obj, lv_event_t event);
static void settingBtnEvent(lv_obj_t * obj, lv_event_t event);
static void usbBtnEvent(lv_obj_t * obj, lv_event_t event);


void createMainScreen(void){

	mainScreen.scale = 1;
	mainScreen.window = lv_obj_create(NULL, NULL);
	lv_obj_set_style_local_bg_color(mainScreen.window, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	lv_obj_t* homeBtn;
	lv_obj_t* settingBtn;
	lv_obj_t* usbBtn;
	//////////
	lv_obj_t* homeLabel;
	lv_obj_t* settingLabel;
	lv_obj_t* usbLabel;
	//////////
	static lv_style_t   btnStyle;
	lv_style_set_text_color(&btnStyle, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_style_set_bg_color(&btnStyle, LV_STATE_DEFAULT, lv_color_hex(0x0000ff00));
	lv_style_set_border_color(&btnStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ffffff));
	lv_style_set_radius(&btnStyle, LV_STATE_DEFAULT, 10);
	lv_style_set_border_width(&btnStyle, LV_STATE_DEFAULT, 5);
	lv_style_set_text_font(&btnStyle, LV_STATE_DEFAULT, &lv_font_montserrat_40);
    /////////
	homeBtn = lv_btn_create(mainScreen.window, NULL);
	lv_obj_set_size(homeBtn, 110*mainScreen.scale, 110*mainScreen.scale);
	lv_obj_set_pos(homeBtn, 0, 0);
	lv_obj_add_style(homeBtn, LV_OBJ_PART_MAIN, &btnStyle);
	homeLabel = lv_label_create(homeBtn, NULL);
	lv_label_set_text_fmt(homeLabel, LV_SYMBOL_HOME);


	settingBtn = lv_btn_create(mainScreen.window, NULL);
	lv_obj_set_size(settingBtn, 110*mainScreen.scale, 110*mainScreen.scale);
	lv_obj_add_style(settingBtn, LV_OBJ_PART_MAIN, &btnStyle);
	settingLabel = lv_label_create(settingBtn, NULL);
	lv_label_set_text_fmt(settingLabel, LV_SYMBOL_SETTINGS);
	lv_obj_align(settingBtn, homeBtn, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 5);


	usbBtn = lv_btn_create(mainScreen.window, NULL);
	lv_obj_set_size(usbBtn, 110*mainScreen.scale, 110*mainScreen.scale);
	lv_obj_add_style(usbBtn, LV_OBJ_PART_MAIN, &btnStyle);
	usbLabel = lv_label_create(usbBtn, NULL);
	lv_label_set_text_fmt(usbLabel, LV_SYMBOL_USB);
	lv_obj_align(usbBtn, settingBtn, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 5);

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	lv_style_set_text_color(&mainScreen.timeDateStyle, LV_STATE_DEFAULT, lv_color_hex(0x00ffffff));
	lv_style_set_text_font(&mainScreen.timeDateStyle, LV_STATE_DEFAULT, &lv_font_montserrat_22);

	mainScreen.timeLabel = lv_label_create(mainScreen.window, NULL);
    lv_obj_add_style(mainScreen.timeLabel, LV_OBJ_PART_MAIN, &mainScreen.timeDateStyle);
    lv_label_set_text_fmt(mainScreen.timeLabel,"%02d:%02d %2s",0,0,"AM");
	lv_obj_set_pos(mainScreen.timeLabel, 0, 400);

	mainScreen.dateLabel = lv_label_create(mainScreen.window, NULL);
    lv_obj_add_style(mainScreen.dateLabel, LV_OBJ_PART_MAIN, &mainScreen.timeDateStyle);
    lv_label_set_text_fmt(mainScreen.dateLabel,"%02d/%02d/%2d",9,10,24);
    lv_obj_align(mainScreen.dateLabel, mainScreen.timeLabel, LV_ALIGN_OUT_BOTTOM_MID, 0, 0);

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	mainScreen.changeable = lv_obj_create(mainScreen.window, NULL);
	lv_obj_set_pos(mainScreen.changeable, (110+10)*mainScreen.scale, 0);
	lv_obj_set_size(mainScreen.changeable, 680, 480);
	lv_obj_set_style_local_border_color(mainScreen.changeable, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_obj_set_style_local_bg_color(mainScreen.changeable, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	lv_obj_set_event_cb(homeBtn, homeBtnEvent);
	lv_obj_set_event_cb(settingBtn, settingBtnEvent);
	lv_obj_set_event_cb(usbBtn, usbBtnEvent);
}

static void homeBtnEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:

		lv_obj_move_foreground(getHomeScreen().window);

		break;
	}
}

static void settingBtnEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:

		break;
	}
}

static void usbBtnEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:

		break;
	}
}

mainScreen_t getMainScreen(void){

	return mainScreen;
}
