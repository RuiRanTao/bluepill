#include "main1ms.h"
#include "timepiece.h"
#include "stdio.h"
#include "rx_analysis.h"

void main1ms()
{
	if(flag_1ms == 1)
	{
		flag_1ms = 0;
        HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
	}
}
