#include "main.h"
#include "main10ms.h"
#include "timepiece.h"

 uint8_t time_1ms = 0;
 uint8_t time_2ms = 0;
 uint8_t time_10ms = 0;
 uint8_t time_100ms = 0;
 uint16_t time_sec = 0;

 uint8_t flag_1ms = 0;
 uint8_t flag_2ms = 0;
 uint8_t flag_10ms = 0;
 uint8_t flag_100ms = 0;
 uint8_t flag_sec = 0;


void timepiece()
{

	time_1ms++;
	if(time_1ms%1 == 0)
	{
		flag_1ms = 1;
		time_1ms = 0;
	}

	time_2ms++;
	if(time_2ms%2 == 0)
	{
		flag_2ms = 1;
		time_2ms = 0;
	}

	time_10ms++;
	if(time_10ms%10 == 0)
	{
		flag_10ms = 1;
		time_10ms = 0;
	}

	time_100ms++;
	if(time_100ms%100 == 0)
	{
		flag_100ms = 1;
		time_100ms = 0;
	}

	time_sec++;
	if(time_sec%1000 == 0)
	{

		flag_sec = 1;
		time_sec = 0;
	}

}

