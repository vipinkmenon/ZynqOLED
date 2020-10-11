/*
 * oled.h
 *
 *  Created on: Feb 20, 2020
 *      Author: VIPIN
 */

#ifndef SRC_OLED_H_
#define SRC_OLED_H_

#include<xil_types.h>

typedef struct oledControl{
	u32 baseAddress;
}oledControl;

int initOled(oledControl *myOled,u32 baseAddress);
void writeCharOled(oledControl *myOled,char myChar);
void printOled(oledControl *myOled,char *myString);
void clearOled(oledControl *myOled);


#endif /* SRC_OLED_H_ */
