#include <gui/screen1_screen/Screen1View.hpp>
#include <lwip.h>
#include <stdio.h>
#include <string.h>
extern struct netif gnetif;

Screen1View::Screen1View()
{
	tim_tick = 0;
	y_angel = 0;
}

void Screen1View::setupScreen()
{
    Screen1ViewBase::setupScreen();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}
void Screen1View::handleTickEvent(){
	tim_tick++;
	if(tim_tick % 5 == 0){
		y_angel += 0.1;
		textureMapper1.updateYAngle(y_angel);
	}

	char buff[30];
	uint32_t local_IP = gnetif.ip_addr.addr;
	if(local_IP>0){
	sprintf(buff,"%d.%d.%d.%d",(local_IP & 0xff), ((local_IP >> 8) & 0xff), ((local_IP >> 16) & 0xff), (local_IP >> 24));
	Unicode::strncpy(textArea2Buffer,(char*)buff,TEXTAREA2_SIZE-1);
	textArea2.invalidate();}
}
