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

extern volatile pwm_t gPWM1;

void TIM3_IRQHandler( void)
{
	TIM3->SR &= ~(1<<0); // clear UIF flag
	TIM_ClearFlag(TIM3,TIM_FLAG_Update);
	if (gPWM1.running_flag == FORWARD)
		gData.counter1++;
	else if  (gPWM1.running_flag == BACKWARD)
		gData.counter1--;

	//gData.sample();
}




void  tim3_init(void)
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	/*供给系统时钟*/
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	TIM_DeInit(TIM3);//复位定时器2
	TIM_TimeBaseStructure.TIM_Period = 10;
	  //设置了在下一个更新事件装入活动的自动重装载寄存器周期的值它的取值必须在0x0000 和0xFFFF 之间。 
	TIM_TimeBaseStructure.TIM_Prescaler = 1;
	    //设置了用来作为 TIMx 时钟频率除数的预分频值，的取值必须在 0x0000 和0xFFFF 之间。
	TIM_TimeBaseStructure.TIM_ClockDivision = 0x0;//设置了时钟分割
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Down;
	    //选择了计数器模式，向上计数值
	TIM_TimeBaseInit(TIM3,&TIM_TimeBaseStructure);
	TIM_ClearFlag(TIM3,TIM_FLAG_Update);   
	     /*clear TIM3 update pending flag,  清除TIM3溢出中断标志*/
	TIM_ITConfig(TIM3, TIM_IT_Update, ENABLE);	/* TIM IT enable */ //打开溢出中断

	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = COUNTER_PIN;  
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(COUNTER_PORT, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = COUNTER_PIN_ALT;  
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(COUNTER_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = DIR_PIN;  
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(DIR_PORT, &GPIO_InitStructure);

	TIM_TIxExternalClockConfig(TIM3,TIM_TIxExternalCLK1Source_TI1ED, //TIM_TIxExternalCLK1Source_TI1ED TIM_TIxExternalCLK1Source_TI1
				TIM_ICPolarity_Rising, 
				10); //filter value, must be a value between 0x0 and 0xF
	 //计数器使能，开始工作
	TIM_Cmd(TIM3, ENABLE); 

}



