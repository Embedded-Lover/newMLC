/*
 * home.h
 *
 *  Created on: Sep 10, 2024
 *      Author: Karamali_M
 */

#ifndef HOMESCREEN_H_
#define HOMESCREEN_H_

typedef struct
{
	lv_obj_t*  window;

}homeScreen_t;

////functions
void createHomeScreen(void);
homeScreen_t getHomeScreen(void);

#endif /* HOMESCREEN_H_ */
