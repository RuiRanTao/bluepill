#include "main10ms.h"
#include "timepiece.h"
#include "stdio.h"
#include "rx_analysis.h"
#include "at24c02.h"
#include "w25q16.h"
#include "buzzer.h"


void main10ms()
{
	if(flag_10ms == 1)
	{
		flag_10ms = 0;
		if(rx_flag == 0)
		{
			AT24C02_iic_test();
			rx_flag = 100;
//			buzzer_breathe();
		    play_music(1);

		}
		else if(rx_flag == 1)
		{
			ReadID();
			WriteData();
			ReadData();
			rx_flag = 100;
		    play_music(0);


		}
//        HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
	}
}



