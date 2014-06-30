#include <stdio.h>
#include <string.h>
#include "stm32f10x_flash.h"

#include "cmd_type.h"

#ifndef UNIT
#define printf print2usb
#endif //UNIT

void RCC_Configuration_motor(void)
{
	RCC_APB2PeriphClockCmd(
			RCC_APB2Periph_GPIOA|\
			RCC_APB2Periph_GPIOB|\
			RCC_APB2Periph_GPIOC|\
//			RCC_APB2Periph_GPIOD|\
//			RCC_APB2Periph_GPIOF|
			RCC_APB2Periph_AFIO, ENABLE);


	/* Enable  USART2 USART3 USART4 USART5 TIM2 TIM3 USB clock */
}
void NVIC_Configuration_motor(void)
{	 
	NVIC_InitTypeDef NVIC_InitStructure;


	/* Configure the NVIC Preemption Priority Bits */  
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);

	/* Enable the TIM3 Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel =TIM3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

}

int hardware_init(void)
{
	RCC_Configuration_motor();
	NVIC_Configuration_motor();
	tim3_init();
	adc_config();
	usb_init();
	rt_kprintf("ADC System initialized!\r\n");
	
	return  0;
}

/*********************************************************/

