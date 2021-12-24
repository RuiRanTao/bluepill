#include "main.h"
#include "stdio.h"
#include "string.h"
#include "rx_analysis.h"
#include "usart.h"

uint8_t StrTemp[BUFFERSIZE]={0x0D,0x0A};

extern DMA_HandleTypeDef hdma_usart1_tx;

uint8_t rx_flag=100;

char str0[]="trr";
char str1[]="pxr";


void rx_analysis(uint8_t len, uint8_t rxbuff[] )
{
	for(uint8_t i=len;i<BUFFERSIZE;i++)
	{
		rxbuff[i]=0;
	}
	if((strcmp((char *)rxbuff,str0)==0)&&(sizeof(str0) == (len+1)))
	{
		rx_flag=0;
	}
	else if((strcmp((char *)rxbuff,str1)==0)&&(sizeof(str1) == (len+1)))
	{
		rx_flag=1;
	}
	else
	{
		rx_flag = 100;
	}

	printf("rx_flag = %d", rx_flag);
	printf("\r\n");
	HAL_UART_Transmit_DMA(&huart1,StrTemp,2);


}

