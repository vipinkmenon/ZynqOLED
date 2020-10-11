/*
 * main.c
 *
 *  Created on: Feb 20, 2020
 *      Author: VIPIN
 */


#include "oled.h"
#include "xparameters.h"


int main(){
	char *myString = "Hello world";
	oledControl myOled;
	initOled(&myOled,XPAR_OLEDCONTROL_0_S00_AXI_BASEADDR);
	clearOled(&myOled);
	printOled(&myOled,myString);
	return 0;
}

