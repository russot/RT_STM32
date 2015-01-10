/*
 \file main.c
 \brief Gray counter - osmibitovy na otestovani TiniLA analyzatoru
        casovani v INTu, generace noveho bude v hlavni smycce, zaroven
        zmerime, jak rychle to pojede
 
    LED - PB5-7
    Gray_Out - PB8-15
    TBase_In - PA8-10

 \ 2010-03-03 - prvni verze - LED pozice se musi upresnit a taky port na Graycode. A taky nejak nastavovat rychlost - zakladni bude 100kHz, nastavovanim zpomalit az na 1Hz - pomalejsi asi nema smysl
  
 */

//#include "stm32f10x.h"
#include "stm32f10x_conf.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_tim.h"
#include <rtthread.h>

#include "led.h"
#include "cmd_type.h"

extern data_t gData;
#define COUNTER_PORT GPIOA  // PA6--LQFP48.16
#define COUNTER_PIN GPIO_Pin_6
#define COUNTER_PIN_ALT GPIO_Pin_5

#define DIR_PORT GPIOB  // PA6--LQFP48.16
#define DIR_PIN GPIO_Pin_5

#define TICKED 1
#define NOT_TICKED 0
#define FORWARD 1
#define BACKWARD 2
#define STOPPED  0
port_pin_t gCounter_Pin={//Tim3 ch2, alt-funtion remap on GPIOB5
	GPIOA,
	GPIO_Pin_15,
};

port_pin_t gCounter_DirPin={
	GPIOB,
	GPIO_Pin_12,
};
extern volatile pwm_t gPWM1;

int status_tim3 = 0;
void TIM2_IRQHandler( void)
{
	TIM2->SR &= ~(1<<0); // clear UIF flag
	TIM_ClearFlag(TIM2,TIM_FLAG_Update);
	TIM_ClearITPendingBit(TIM2 , TIM_FLAG_Update);
	gData.counter1++;
	if (gPWM1.running_flag == FORWARD)
		gData.counter1++;
	else if  (gPWM1.running_flag == BACKWARD)
		gData.counter1--;
	status_tim3++;
	status_tim3%=2;
	if (status_tim3==1)
		rt_hw_led_on(0);
	else
		rt_hw_led_off(0);
	//gData.sample();
}



void  tim2_init_(void)
{
}
void  tim2_IRQ_init(void)
{
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
	NVIC_InitTypeDef NVIC_InitStructure;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=0;
	/* Enable the TIM2 Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel =TIM2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
}

void  tim2_init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE); 
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
	GPIO_PinRemapConfig(GPIO_PartialRemap1_TIM2, ENABLE);//remap to T2_C1_ETR to PA15

	tim2_IRQ_init();

	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = gCounter_Pin.pin;  
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gCounter_Pin.port, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = gCounter_DirPin.pin;  
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gCounter_DirPin.port, &GPIO_InitStructure);

	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	/*供给系统时钟*/
	TIM_DeInit(TIM2);//复位定时器3
	TIM_TimeBaseStructure.TIM_Period = 100;
	  //设置了在下一个更新事件装入活动的自动重装载寄存器周期的值它的取值必须在0x0000 和0xFFFF 之间。 
	TIM_TimeBaseStructure.TIM_Prescaler = 0;
	    //设置了用来作为 TIMx 时钟频率除数的预分频值，的取值必须在 0x0000 和0xFFFF 之间。
	TIM_TimeBaseStructure.TIM_ClockDivision = 0x0;//设置了时钟分割
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	    //选择了计数器模式，向上计数值
	TIM_TimeBaseInit(TIM2,&TIM_TimeBaseStructure);
	TIM_ARRPreloadConfig(TIM2, ENABLE);
	TIM_SetCounter(TIM2, 0);
	TIM_ClearFlag(TIM2,TIM_FLAG_Update);   
	     /*clear TIM2 update pending flag,  清除TIM2溢出中断标志*/
	TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE);	/* TIM IT enable */ //打开溢出中断


	TIM_ETRClockMode2Config(TIM2,
			TIM_ExtTRGPSC_OFF, 
			TIM_ExtTRGPolarity_NonInverted,
			0 //filter value, must be a value between 0x0 and 0xF
			);
	//TIM_TIxExternalClockConfig(TIM2,TIM_TIxExternalCLK1Source_TI2, //TIM_TIxExternalCLK1Source_TI1ED TIM_TIxExternalCLK1Source_TI1
				//TIM_ICPolarity_Rising, 
				//10); //filter value, must be a value between 0x0 and 0xF
	 //计数器使能，开始工作
	TIM_Cmd(TIM2, ENABLE); 

}



