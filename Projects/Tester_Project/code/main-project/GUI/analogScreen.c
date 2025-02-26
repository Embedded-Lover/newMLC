/*
 * analogScreen.c
 *
 *  Created on: Sep 11, 2024
 *      Author: Karamali_M
 */

#include "../LVGL/lvgl.h"
#include "lcd.h"
#include "analogScreen.h"
#include "mainScreen.h"


//private members
static analogScreen_t analogScreen;
lv_obj_t*   tab1;
lv_obj_t*   tab2;
lv_obj_t*   tab3;
lv_obj_t*   tab4;
lv_obj_t*   tab5;
static lv_obj_t*   spinbox;
static lv_obj_t*    setPointLable;
static lv_obj_t*    ID0Lable;
static lv_obj_t*    ID1Lable;
static lv_obj_t*    ID2Lable;
static lv_obj_t*    sw0;
static lv_obj_t*    sw1;
static lv_obj_t*    sw2;

//private functions
static void createBasic(void);
static void createTab1(void);
static void createTab2(void);
static void createTab3(void);
static void createTab4(void);
static void createTab5(void);
static void startEvent(lv_obj_t * obj, lv_event_t event);
static void stopEvent(lv_obj_t * obj, lv_event_t event);
static void spinRightEvent(lv_obj_t * obj, lv_event_t event);
static void spinLeftEvent(lv_obj_t * obj, lv_event_t event);
static void IDconfirmEvent(lv_obj_t * obj, lv_event_t event);
static void setPointConfirmEvent(lv_obj_t * obj, lv_event_t event);
////////


void createAnalogScreen(void){

	createBasic();
	createTab1();
	createTab2();
	createTab3();
	createTab4();
	createTab5();
}


static void createBasic(void)
{
	analogScreen.scale = 1;
	analogScreen.window = lv_obj_create(getMainScreen().changeable, NULL);
	lv_obj_set_size(analogScreen.window, 680, DISPLAY_HEIGHT);
	lv_obj_set_style_local_bg_color(analogScreen.window, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	static lv_style_t   cardtitleStyle;
	lv_style_set_radius(&cardtitleStyle, LV_STATE_DEFAULT, 0);
	lv_style_set_border_width(&cardtitleStyle, LV_STATE_DEFAULT, 7);
	lv_style_set_text_font(&cardtitleStyle, LV_STATE_DEFAULT, &lv_font_montserrat_22);
	lv_style_set_border_color(&cardtitleStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_bg_color(&cardtitleStyle, LV_STATE_DEFAULT, lv_color_hex(0x000000ff));
	lv_style_set_text_color(&cardtitleStyle, LV_STATE_DEFAULT, lv_color_hex(0x00ffffffff));

	lv_obj_t*    cardtitleBtn;
	lv_obj_t*    cardtitleLable;
	cardtitleBtn = lv_btn_create(analogScreen.window, NULL);
	lv_obj_set_click(cardtitleBtn, false);
	cardtitleLable = lv_label_create(cardtitleBtn , NULL);
	lv_obj_add_style(cardtitleBtn, LV_OBJ_PART_MAIN, &cardtitleStyle);
	lv_obj_set_size(cardtitleBtn, 680, 50);
	lv_label_set_text_fmt(cardtitleLable,"%5s","Analog Card");
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	static lv_style_t   tabViewStyle;
	lv_style_set_radius(&tabViewStyle, LV_STATE_DEFAULT, 0);
	lv_style_set_border_width(&tabViewStyle, LV_STATE_DEFAULT, 7);
	lv_style_set_text_font(&tabViewStyle, LV_STATE_DEFAULT, &lv_font_montserrat_22);
	lv_style_set_border_color(&tabViewStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_bg_color(&tabViewStyle, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_style_set_text_color(&tabViewStyle, LV_STATE_DEFAULT, lv_color_hex(0x00ffffffff));
	//////////
	static lv_style_t   tabBtnStyle;
	lv_style_set_bg_color(&tabBtnStyle,LV_STATE_DEFAULT, lv_color_hex(0x0000ff00));
	lv_style_set_border_color(&tabBtnStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ffffff));
	lv_style_set_text_color(&tabBtnStyle, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_style_set_radius(&tabBtnStyle, LV_STATE_DEFAULT, 0);
	lv_style_set_border_width(&tabBtnStyle, LV_STATE_DEFAULT, 7);
	//////////
	static lv_style_t   tabActiveStyle;
	lv_style_set_bg_color(&tabActiveStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_text_color(&tabActiveStyle, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	///////////////////////////////

	analogScreen.tabview = lv_tabview_create(analogScreen.window, NULL);

	lv_obj_set_size(analogScreen.tabview, lv_obj_get_width(cardtitleBtn) , DISPLAY_HEIGHT-lv_obj_get_height(cardtitleBtn));
	lv_obj_align(analogScreen.tabview, cardtitleBtn, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);

	tab1 = lv_tabview_add_tab(analogScreen.tabview, "Config");
	tab2 = lv_tabview_add_tab(analogScreen.tabview, "Test");
	tab3 = lv_tabview_add_tab(analogScreen.tabview, "Result1");
	tab4 = lv_tabview_add_tab(analogScreen.tabview, "Result2");
	tab5 = lv_tabview_add_tab(analogScreen.tabview, "Result3");
	lv_tabview_set_btns_pos(analogScreen.tabview, LV_TABVIEW_TAB_POS_TOP);

	lv_obj_add_style(analogScreen.tabview, LV_TABVIEW_PART_TAB_BG, &tabBtnStyle);
	lv_obj_add_style(analogScreen.tabview, LV_TABVIEW_PART_TAB_BTN, &tabBtnStyle);
	lv_obj_add_style(analogScreen.tabview, LV_OBJ_PART_MAIN, &tabViewStyle);
	lv_obj_add_style(analogScreen.tabview, LV_TABVIEW_PART_INDIC, &tabActiveStyle);
	//
	lv_page_set_scroll_propagation(tab1, false);
	lv_page_set_scroll_propagation(tab2, false);
	lv_page_set_scroll_propagation(tab3, false);
	lv_page_set_scroll_propagation(tab4, false);
	lv_page_set_scroll_propagation(tab5, false);
}

static void createTab1(void)
{
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
	static lv_style_t spinStyle;
	lv_style_set_text_font(&spinStyle, LV_STATE_DEFAULT, &lv_font_montserrat_40);
	//
	lv_obj_t * setPointBtn = lv_btn_create(tab1, NULL);
	lv_obj_t * btnR = lv_btn_create(tab1, NULL);
	lv_obj_t * btnL= lv_btn_create(tab1, NULL);
	//
	lv_obj_t * lable = lv_label_create(btnR , NULL);
	lv_obj_t * lableL = lv_label_create(btnL , NULL);
	setPointLable = lv_label_create(setPointBtn , NULL);
	//
	spinbox = lv_spinbox_create(tab1, NULL);
	lv_obj_add_style(spinbox, LV_OBJ_PART_MAIN, &spinStyle);
	lv_spinbox_set_range(spinbox, 0, 24);
	lv_spinbox_set_digit_format(spinbox, 2, 0);
	lv_spinbox_set_step(spinbox, 1);
	//lv_spinbox_step_prev(spinbox);
	///
	static lv_style_t spinBtnStyle;
	lv_style_set_radius(&spinBtnStyle, LV_STATE_DEFAULT, 10);
	lv_style_set_border_width(&spinBtnStyle, LV_STATE_DEFAULT, 2);
	lv_style_set_text_font(&spinBtnStyle, LV_STATE_DEFAULT, &lv_font_montserrat_22);
	lv_style_set_border_color(&spinBtnStyle,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_text_color(&spinBtnStyle, LV_STATE_DEFAULT, lv_color_hex(0x00ffffffff));
	lv_style_set_bg_color(&spinBtnStyle, LV_STATE_DEFAULT, lv_color_hex(0x0029c5f6));
	lv_style_set_bg_opa(&spinBtnStyle,LV_STATE_DEFAULT, LV_OPA_100);
	////////////
	lv_obj_add_style(setPointBtn, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_label_set_text_fmt(setPointLable, "SET POINT: %02d mA",0);
	////////////
	lv_obj_add_style(btnR, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_label_set_text(lable, LV_SYMBOL_PLUS);
	lv_obj_set_event_cb(btnR, spinRightEvent);
	////////////
	lv_obj_add_style(btnL, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_label_set_text(lableL, LV_SYMBOL_MINUS);
	lv_obj_set_event_cb(btnL, spinLeftEvent);
	////////////
	lv_obj_t * btnSetPointConfirm= lv_btn_create(tab1, NULL);
	lv_obj_t * lableSetPointConfirm = lv_label_create(btnSetPointConfirm , NULL);
	//
	lv_obj_add_style(btnSetPointConfirm, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_label_set_text(lableSetPointConfirm, "Confirm");
	lv_obj_set_event_cb(btnSetPointConfirm, setPointConfirmEvent);
	//
	lv_obj_set_pos(setPointBtn, 50, 70);
	//
	lv_coord_t h = 70;
	lv_obj_set_size(spinbox, 80, h);
	lv_obj_set_size(btnR, h, h);
	lv_obj_set_size(btnL, h, h);
	lv_obj_set_size(setPointBtn, 230, h);
	lv_obj_set_size(btnSetPointConfirm, 2*h, h);
	//
	lv_obj_align(spinbox, setPointBtn, LV_ALIGN_OUT_BOTTOM_MID, 0, 20);
	lv_obj_align(btnR, spinbox, LV_ALIGN_OUT_RIGHT_MID, 5, 0);
	lv_obj_align(btnL, spinbox, LV_ALIGN_OUT_LEFT_MID, -5, 0);
	lv_obj_align(btnSetPointConfirm, spinbox, LV_ALIGN_OUT_BOTTOM_MID, 0, 20);
	///////////////////////////////////////////////////////////////////////////////
	sw0 = lv_switch_create(tab1, NULL);
	sw1 = lv_switch_create(tab1, NULL);
	sw2 = lv_switch_create(tab1, NULL);
	lv_obj_t * btnID0= lv_btn_create(tab1, NULL);
	lv_obj_t * btnID1= lv_btn_create(tab1, NULL);
	lv_obj_t * btnID2= lv_btn_create(tab1, NULL);
	lv_obj_t * btnIDconfirm= lv_btn_create(tab1, NULL);
	ID0Lable = lv_label_create(btnID0 , NULL);
	ID1Lable = lv_label_create(btnID1 , NULL);
	ID2Lable = lv_label_create(btnID2 , NULL);
	lv_obj_t * lableIDconfirm = lv_label_create(btnIDconfirm , NULL);
	//
	lv_obj_set_pos(sw0, 400, 40);
	//
	lv_obj_set_size(sw0, 110, h-20);
	lv_obj_set_size(sw1, 110, h-20);
	lv_obj_set_size(sw2, 110, h-20);
	lv_obj_set_size(btnID0, 100, h);
	lv_obj_set_size(btnID1, 100, h);
	lv_obj_set_size(btnID2, 100, h);
	lv_obj_set_size(btnIDconfirm, 2*h, h);
	//
	static lv_style_t switchStyle;
	lv_style_set_radius(&switchStyle, LV_STATE_DEFAULT, 20);
	lv_style_set_border_width(&switchStyle, LV_STATE_DEFAULT, 2);
	lv_style_set_border_color(&switchStyle,LV_STATE_DEFAULT, lv_color_hex(0x0000ff00));
	lv_style_set_bg_color(&switchStyle, LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));

	static lv_style_t switchKnobStyle;
	lv_style_set_bg_color(&switchKnobStyle, LV_STATE_DEFAULT, lv_color_hex(0x00FFFF00));

	lv_obj_add_style(sw0, LV_OBJ_PART_MAIN, &switchStyle);
	lv_obj_add_style(sw0, LV_SWITCH_PART_KNOB, &switchKnobStyle);
	lv_obj_add_style(sw1, LV_OBJ_PART_MAIN, &switchStyle);
	lv_obj_add_style(sw1, LV_SWITCH_PART_KNOB, &switchKnobStyle);
	lv_obj_add_style(sw2, LV_OBJ_PART_MAIN, &switchStyle);
	lv_obj_add_style(sw2, LV_SWITCH_PART_KNOB, &switchKnobStyle);
	//
	lv_obj_add_style(btnID0, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_obj_add_style(btnID1, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_obj_add_style(btnID2, LV_OBJ_PART_MAIN, &spinBtnStyle);
	lv_obj_add_style(btnIDconfirm, LV_OBJ_PART_MAIN, &spinBtnStyle);
	///
	lv_label_set_text_fmt(ID0Lable, "ID0: %01d", 0);
	lv_label_set_text_fmt(ID1Lable, "ID1: %01d", 0);
	lv_label_set_text_fmt(ID2Lable, "ID2: %01d", 0);
	lv_label_set_text(lableIDconfirm, "Confirm");
	//
	lv_obj_align(sw1, sw0, LV_ALIGN_OUT_BOTTOM_MID, 0, 20);
	lv_obj_align(sw2, sw1, LV_ALIGN_OUT_BOTTOM_MID, 0, 20);
	//
	lv_obj_align(btnID0, sw0, LV_ALIGN_OUT_RIGHT_MID, 20, 0);
	lv_obj_align(btnID1, sw1, LV_ALIGN_OUT_RIGHT_MID, 20, 0);
	lv_obj_align(btnID2, sw2, LV_ALIGN_OUT_RIGHT_MID, 20, 0);
	lv_obj_align(btnIDconfirm, sw2, LV_ALIGN_OUT_BOTTOM_LEFT, 50, 30);
	///
	lv_obj_set_ext_click_area(sw0, 0, 50, 0 ,0);
	lv_obj_set_ext_click_area(sw1, 0, 50, 0 ,0);
	lv_obj_set_ext_click_area(sw2, 0, 50, 0 ,0);
	///
	lv_obj_set_click(setPointBtn, false);
	lv_obj_set_click(spinbox, false);
	lv_obj_set_click(btnID0, false);
	lv_obj_set_click(btnID1, false);
	lv_obj_set_click(btnID2, false);
	//
	lv_obj_set_event_cb(btnIDconfirm, IDconfirmEvent);
}

static void createTab2(void)
{
	float scale = 2;
	///////////////////////
	static lv_style_t btnStyle;
	lv_style_set_text_font(&btnStyle, LV_STATE_DEFAULT, &lv_font_montserrat_22);
	lv_style_set_radius(&btnStyle, LV_STATE_DEFAULT, 100);
	lv_style_set_border_width(&btnStyle, LV_STATE_DEFAULT, 7);
	///////////
	lv_obj_t *   btnStart;
	btnStart = lv_btn_create(tab2, NULL);
	lv_obj_add_style(btnStart, LV_OBJ_PART_MAIN, &btnStyle);
	lv_obj_set_style_local_bg_color(btnStart, LV_BTN_PART_MAIN , LV_STATE_DEFAULT, lv_color_hex(0x0000ff00));
	lv_obj_set_pos(btnStart, 15, 15);
	lv_obj_set_size(btnStart, 50*scale, 50*scale);
	/*Add a Label*/
	lv_obj_t* btnStartLabel = lv_label_create(btnStart, NULL);
	lv_label_set_text(btnStartLabel, "Test \nStart");
	//
	lv_obj_set_event_cb(btnStart, startEvent);
	////////////////////////
	lv_obj_t *   btnStop;
	btnStop = lv_btn_create(tab2, NULL);
	lv_obj_add_style(btnStop, LV_OBJ_PART_MAIN, &btnStyle);
	lv_obj_set_style_local_bg_color(btnStop, LV_BTN_PART_MAIN , LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	//lv_obj_set_pos(btnF2, 0, 0);
	lv_obj_align(btnStop, btnStart, LV_ALIGN_OUT_RIGHT_TOP, 0, 0);
	lv_obj_set_size(btnStop, 50*scale, 50*scale);
	/*Add a Label*/
	lv_obj_t* btnStopLabel = lv_label_create(btnStop, NULL);
	lv_label_set_text(btnStopLabel, "Test \nStop");
	///////////////////////
	static lv_style_t   btn1Style;
	lv_style_set_radius(&btn1Style, LV_STATE_DEFAULT, 10);
	lv_style_set_border_width(&btn1Style, LV_STATE_DEFAULT, 2);
	lv_style_set_border_color(&btn1Style,LV_STATE_DEFAULT, lv_color_hex(0x00ff0000));
	lv_style_set_text_color(&btn1Style, LV_STATE_DEFAULT, lv_color_hex(0x00ffffffff));
	lv_style_set_bg_color(&btn1Style, LV_STATE_DEFAULT, lv_color_hex(0x0029c5f6));
	lv_style_set_text_font(&btn1Style, LV_STATE_DEFAULT, &lv_font_montserrat_26);
	//
	lv_obj_t * voltageTestBtn = lv_btn_create(tab2, NULL);
	lv_obj_t * canTestBtn = lv_btn_create(tab2, NULL);
	lv_obj_t * funcTestBtn = lv_btn_create(tab2, NULL);
	//
	lv_obj_t * voltageTestLable = lv_label_create(voltageTestBtn , NULL);
	lv_obj_t * canTestTestLable = lv_label_create(canTestBtn , NULL);
	lv_obj_t * funcTestLable = lv_label_create(funcTestBtn , NULL);
	//
	lv_obj_add_style(voltageTestBtn, LV_OBJ_PART_MAIN, &btn1Style);
	lv_obj_add_style(canTestBtn, LV_OBJ_PART_MAIN, &btn1Style);
	lv_obj_add_style(funcTestBtn, LV_OBJ_PART_MAIN, &btn1Style);
	//
	lv_label_set_text(voltageTestLable, "Voltage Test");
	lv_label_set_text(canTestTestLable, "Can Bus Test");
	lv_label_set_text(funcTestLable, "Functionality Test");
	//
	lv_obj_set_size(voltageTestBtn, 300, 60);
	lv_obj_set_size(canTestBtn, 300, 60);
	lv_obj_set_size(funcTestBtn, 300, 60);
	//
	lv_obj_set_pos(voltageTestBtn, 220, 100);
    lv_obj_align(canTestBtn, voltageTestBtn, LV_ALIGN_OUT_BOTTOM_MID, 0, 10);
    lv_obj_align(funcTestBtn, canTestBtn, LV_ALIGN_OUT_BOTTOM_MID, 0, 10);
    ///////////////////////
	lv_obj_set_event_cb(btnStop, stopEvent);
}

static void createTab3(void)
{
	float scale = 1.8;
	///////////////////////
	//	/*Style*/
	static lv_style_t s;
	lv_style_init(&s);
	lv_style_set_radius(&s, LV_STATE_DEFAULT, 0);
	lv_style_set_border_width(&s, LV_STATE_DEFAULT, 2);
	lv_style_set_border_width(&s, LV_STATE_CHECKED, 2);
	lv_style_set_text_font(&s, LV_STATE_DEFAULT, &lv_font_montserrat_24);
	lv_style_set_border_color(&s,LV_STATE_DEFAULT, lv_color_hex(0x00FFA500));
	lv_style_set_border_color(&s,LV_STATE_CHECKED, lv_color_hex(0x00ff0000));
	lv_style_set_text_color(&s, LV_STATE_DEFAULT, lv_color_hex(0x00000000));
	lv_style_set_text_color(&s, LV_STATE_CHECKED, lv_color_hex(0x00000000));
	lv_style_set_bg_color(&s, LV_STATE_DEFAULT, lv_color_hex(0x00ADD8E6));
	lv_style_set_bg_color(&s, LV_STATE_CHECKED, lv_color_hex(0x0000ff00));
	lv_style_set_bg_color(&s, LV_STATE_FOCUSED, lv_color_hex(0x00ff0000));
	lv_style_set_bg_opa(&s,LV_STATE_DEFAULT, LV_OPA_100);
	/////////
	uint8_t xSize = 140;
	uint8_t ySize = 30;
	lv_obj_t* analogueBtn1 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn1, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn1, xSize*scale, ySize*scale);
	lv_obj_set_pos(analogueBtn1, 50*scale, 30*scale);
	analogScreen.analogData1 = lv_label_create(analogueBtn1, NULL);
	lv_label_set_text_fmt(analogScreen.analogData1, "Analog_1:    %03d",0);
	////
	lv_obj_t* analogueBtn2 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn2 , LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn2 , xSize*scale, ySize*scale);
	analogScreen.analogData2 = lv_label_create(analogueBtn2 , NULL);
	lv_label_set_text_fmt(analogScreen.analogData2, "Analog_2:    %03d",0);
	lv_obj_align(analogueBtn2, analogueBtn1, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
	////
	lv_obj_t* analogueBtn3 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn3, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn3, xSize*scale, ySize*scale);
	analogScreen.analogData3 = lv_label_create(analogueBtn3, NULL);
	lv_label_set_text_fmt(analogScreen.analogData3, "Analog_3:    %03d",0);
	lv_obj_align(analogueBtn3, analogueBtn2, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
	////
	lv_obj_t* analogueBtn4 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn4, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn4, xSize*scale, ySize*scale);
	analogScreen.analogData4 = lv_label_create(analogueBtn4, NULL);
	lv_label_set_text_fmt(analogScreen.analogData4, "Analog_4:    %03d",0);
	lv_obj_align(analogueBtn4, analogueBtn3, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
	////
	lv_obj_t* analogueBtn5 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn5, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn5, xSize*scale, ySize*scale);
	analogScreen.analogData5 = lv_label_create(analogueBtn5, NULL);
	lv_label_set_text_fmt(analogScreen.analogData5, "Analog_5:    %03d",0);
	lv_obj_align(analogueBtn5, analogueBtn1, LV_ALIGN_OUT_RIGHT_TOP, 0, 0);
	////
	lv_obj_t* analogueBtn6 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn6, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn6, xSize*scale, ySize*scale);
	analogScreen.analogData6 = lv_label_create(analogueBtn6, NULL);
	lv_label_set_text_fmt(analogScreen.analogData6, "Analog_6:    %03d",0);
	lv_obj_align(analogueBtn6, analogueBtn5, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
	////
	lv_obj_t* analogueBtn7 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn7, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn7, xSize*scale, ySize*scale);
	analogScreen.analogData7 = lv_label_create(analogueBtn7, NULL);
	lv_label_set_text_fmt(analogScreen.analogData7, "Analog_7:    %03d",0);
	lv_obj_align(analogueBtn7, analogueBtn6, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
	////
	lv_obj_t* analogueBtn8 = lv_btn_create(tab3, NULL);
	lv_obj_add_style(analogueBtn8, LV_OBJ_PART_MAIN, &s);
	lv_obj_set_size(analogueBtn8, xSize*scale, ySize*scale);
	analogScreen.analogData8 = lv_label_create(analogueBtn8, NULL);
	lv_label_set_text_fmt(analogScreen.analogData8, "Analog_8:    %03d",0);
	lv_obj_align(analogueBtn8, analogueBtn7, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
}

static void createTab4(void)
{

}

static void createTab5(void)
{

}

static void startEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		analogScreen.testStartBtn = true;
		break;
	}
}

static void stopEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		analogScreen.testStartBtn = false;
		break;
	}
}

static void spinRightEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		lv_spinbox_increment(spinbox);
		break;
	}
}

static void spinLeftEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		lv_spinbox_decrement(spinbox);
		break;
	}
}

static void IDconfirmEvent(lv_obj_t * obj, lv_event_t event)

{
	switch(event) {
	case LV_EVENT_CLICKED:
		lv_label_set_text_fmt(ID0Lable, "ID0: %01d", lv_switch_get_state(sw0));
		lv_label_set_text_fmt(ID1Lable, "ID1: %01d", lv_switch_get_state(sw1));
		lv_label_set_text_fmt(ID2Lable, "ID2: %01d", lv_switch_get_state(sw2));
		analogScreen.ID0 = lv_switch_get_state(sw0);
		analogScreen.ID1 = lv_switch_get_state(sw1);
		analogScreen.ID2 = lv_switch_get_state(sw2);
		break;
	}
}

static void setPointConfirmEvent(lv_obj_t * obj, lv_event_t event)
{
	switch(event) {
	case LV_EVENT_CLICKED:
		lv_label_set_text_fmt(setPointLable, "SET POINT: %02d mA", lv_spinbox_get_value(spinbox));
		analogScreen.setPoint = lv_spinbox_get_value(spinbox);
		break;
	}
}

analogScreen_t getAnalogScreen(void){

	return analogScreen;
}
