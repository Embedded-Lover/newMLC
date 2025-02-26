/*
 * home.c
 *
 *  Created on: Sep 10, 2024
 *      Author: Karamali_M
 */

#include "../LVGL/lvgl.h"
#include "homeScreen.h"
#include "lcd.h"
#include "analogScreen.h"
#include "mainScreen.h"


//private members
////////
static homeScreen_t homeScreen;


//private functions
static void createBasic(void);
static void selectAnalogTestEvent(lv_obj_t * obj, lv_event_t event);
static void selectDigitalInTestEvent(lv_obj_t * obj, lv_event_t event);
static void selectDigitalOutTestEvent(lv_obj_t * obj, lv_event_t event);



void createHomeScreen(void){

	createBasic();
}


static void createBasic(void)
{
	homeScreen.window = lv_obj_create(getMainScreen().changeable, NULL);
	lv_obj_set_size(homeScreen.window, 680, DISPLAY_HEIGHT);

	static lv_style_t   windowStyle;
	lv_style_set_border_color(&windowStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_bg_color(&windowStyle, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_style_set_border_width(&windowStyle, LV_STATE_DEFAULT, 7);
	lv_obj_add_style(homeScreen.window, LV_OBJ_PART_MAIN, &windowStyle);
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	static lv_style_t   cardtitleStyle;
	lv_style_set_radius(&cardtitleStyle, LV_STATE_DEFAULT, 0);
	lv_style_set_border_width(&cardtitleStyle, LV_STATE_DEFAULT, 7);
	lv_style_set_text_font(&cardtitleStyle, LV_STATE_DEFAULT, &lv_font_montserrat_22);
	lv_style_set_border_color(&cardtitleStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_bg_color(&cardtitleStyle, LV_STATE_DEFAULT, lv_color_hex(0x000000ff));
	lv_style_set_text_color(&cardtitleStyle, LV_STATE_DEFAULT, lv_color_hex(0x00ffffffff));
    ///
	lv_obj_t*    cardtitleBtn;
	lv_obj_t*    cardtitleLable;
	cardtitleBtn = lv_btn_create(homeScreen.window, NULL);
	lv_obj_set_click(cardtitleBtn, false);
	cardtitleLable = lv_label_create(cardtitleBtn , NULL);
	lv_obj_add_style(cardtitleBtn, LV_OBJ_PART_MAIN, &cardtitleStyle);
	lv_obj_set_size(cardtitleBtn, 680, 50);
	lv_label_set_text_fmt(cardtitleLable,"%5s","Home");
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	static lv_style_t   btnStyle;
	lv_style_set_text_color(&btnStyle, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_style_set_bg_color(&btnStyle, LV_STATE_DEFAULT, lv_color_hex(0x00FFFF00));
	lv_style_set_border_color(&btnStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ffffff));
	lv_style_set_radius(&btnStyle, LV_STATE_DEFAULT, 20);
	lv_style_set_border_width(&btnStyle, LV_STATE_DEFAULT, 5);
	lv_style_set_text_font(&btnStyle, LV_STATE_DEFAULT, &lv_font_montserrat_26);
	//
	lv_obj_t * selectAnalogTestBtn = lv_btn_create(homeScreen.window, NULL);
	lv_obj_t * selectDigitalInTestBtn = lv_btn_create(homeScreen.window, NULL);
	lv_obj_t * selectDigitalOutTestBtn = lv_btn_create(homeScreen.window, NULL);
	//
	lv_obj_t * selectAnalogTestLable = lv_label_create(selectAnalogTestBtn , NULL);
	lv_obj_t * selectDigitalInTestLable = lv_label_create(selectDigitalInTestBtn , NULL);
	lv_obj_t * selectDigitalOutTestLable = lv_label_create(selectDigitalOutTestBtn , NULL);
	//
	lv_obj_add_style(selectAnalogTestBtn, LV_OBJ_PART_MAIN, &btnStyle);
	lv_obj_add_style(selectDigitalInTestBtn, LV_OBJ_PART_MAIN, &btnStyle);
	lv_obj_add_style(selectDigitalOutTestBtn, LV_OBJ_PART_MAIN, &btnStyle);
	//
	lv_label_set_text(selectAnalogTestLable, "Analog Input (AI) Card Test");
	lv_label_set_text(selectDigitalInTestLable, "Digital Input (DI) Card  Test");
	lv_label_set_text(selectDigitalOutTestLable, "Digital Output (DO) Card Test");
	//
	lv_obj_set_size(selectAnalogTestBtn, 420, 70);
	lv_obj_set_size(selectDigitalInTestBtn, 420, 70);
	lv_obj_set_size(selectDigitalOutTestBtn, 420, 70);
	//
	lv_obj_set_pos(selectAnalogTestBtn, (680-400)/2, 120);
    lv_obj_align(selectDigitalInTestBtn, selectAnalogTestBtn, LV_ALIGN_OUT_BOTTOM_MID, 0, 30);
    lv_obj_align(selectDigitalOutTestBtn, selectDigitalInTestBtn, LV_ALIGN_OUT_BOTTOM_MID, 0, 30);
	//
	lv_obj_set_event_cb(selectAnalogTestBtn, selectAnalogTestEvent);
	lv_obj_set_event_cb(selectDigitalInTestBtn, selectDigitalInTestEvent);
	lv_obj_set_event_cb(selectDigitalOutTestBtn, selectDigitalOutTestEvent);
	//
}

static void selectAnalogTestEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		lv_obj_move_foreground(getAnalogScreen().window);
		break;
	}
}

static void selectDigitalInTestEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		break;
	}
}

static void selectDigitalOutTestEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		break;
	}
}

homeScreen_t getHomeScreen(void){

	return homeScreen;
}




