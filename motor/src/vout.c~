/*ADC sample module 
 ---------------------------------------------------------------------------------------------------
 *2014.6.18 change log:
 *construct into object style, wrapped by data_t gData.
 *With only one object instance(gData), object reference is omitted in operation parameter list. 
 ---------------------------------------------------------------------------------------------------
 *2014.6.1
 *initialising called by entry.c 
 *service called by cmd.c ( initialized from PC, by entry gADC[] )
 * 
 * 
 */

#include "stm32f10x_conf.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_gpio.h"
#include <string.h>
#include "cmd_type.h"

#define VO_PORT GPIOA
#define VO_PIN GPIO_Pin_8


#define DIR_MINUS 0 
#define DIR_PLUS 1 

#define STABLE 8000

#define INIT_CIRCLE 6000
#define MIN_PULSE 2000
///////////////////////////////////////////////////////////////////////////////////
void RCC_vout_init(void)
{
	/* Enable DMA clock */

	/* Enable ADC1 and GPIOC clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1|RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB , ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

}
int stable_time=1200;
///////////////////////////////////////////////////////////////////////////////////
void GPIO_vout_init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	//GPIO_PinRemapConfig(GPIO_Remap_SWJ_Disable, ENABLE); // remap to enable A15 as #CS 

	/* Configure PA.0 (ADC Channel 0) as analog input -------------------------*/
	GPIO_InitStructure.GPIO_Pin = VO_PIN ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(VO_PORT, &GPIO_InitStructure);
	
}
void t1c1_init()
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure; /*供给系统时钟*/
       	TIM_DeInit(TIM1);//复位定时器4
	TIM_TimeBaseStructure.TIM_Period = INIT_CIRCLE ;
	//设置了在下一个更新事件装入活动的自动重装载寄存器周期的值它的取值必须在0x0000 和0xFFFF 之间。 
	TIM_TimeBaseStructure.TIM_Prescaler = 30;
	//设置了用来作为 TIMx 时钟频率除数的预分频值，的取值必须在 0x0000 和0xFFFF 之间。
	TIM_TimeBaseStructure.TIM_ClockDivision = 0x0;//设置了时钟分割
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	//TIM_TimeBaseStructure.RepetitionCounter = 0;
	//TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Down;
	//选择了计数器模式，向上计数值
	TIM_TimeBaseInit(TIM1,&TIM_TimeBaseStructure);
	TIM_ARRPreloadConfig(TIM1,ENABLE);
	TIM_ClearFlag(TIM1,TIM_FLAG_Update);   

	TIM_OCInitTypeDef oc_init_struct;
	//oc_init_struct.TIM_OCIdleState  = TIM_OCIdleState_Reset;
	oc_init_struct.TIM_OCMode       = TIM_OCMode_PWM1;
	oc_init_struct.TIM_OCNPolarity  = TIM_OCNPolarity_High;
	oc_init_struct.TIM_OCPolarity   = TIM_OCPolarity_High;
	oc_init_struct.TIM_OutputNState = TIM_OutputNState_Enable;
	oc_init_struct.TIM_OutputState  = TIM_OutputState_Enable;
	oc_init_struct.TIM_Pulse        = MIN_PULSE;
	TIM_OC1Init(TIM1,&oc_init_struct);
	TIM_OC1NPolarityConfig(TIM1,TIM_OCNPolarity_Low);
	TIM_SetCompare1(TIM1,MIN_PULSE);    // MUST Be >0, < 35999 in main.c
	TIM_CCxCmd(TIM1,TIM_Channel_1,TIM_CCx_Enable); // TIM2->CC2 ENABLED

	TIM_Cmd(TIM1,ENABLE);
	TIM_CtrlPWMOutputs(TIM1,ENABLE);
}

void vout_init(void){
	RCC_vout_init();
	GPIO_vout_init();
	t1c1_init();
}



void delay(int ticks)
{
	for(;ticks>0;ticks--){}

}


//int write_reg(uint8_t value)
//{
//	rt_kprintf("vout writed..!\r\n");
//	int i = 0;
//	uint8_t command = 0x11;
//	//CS enable
//	GPIO_ResetBits(VO_PORT4CS, VO_CS);
//	delay(stable_time);
//	for (i=0;i<8;i++){
//		GPIO_ResetBits(VO_PORT, VO_SCK);
//		delay(stable_time);
//		if (command&0x80){
//			GPIO_SetBits(VO_PORT, VO_SI);
//			delay(stable_time);
//		}else{
//			GPIO_ResetBits(VO_PORT, VO_SI);
//			delay(stable_time);
//		}
//		GPIO_SetBits(VO_PORT, VO_SCK);
//		delay(stable_time);
//		command = command<<1;
//	}
//	for (i=0;i<8;i++){
//		GPIO_ResetBits(VO_PORT, VO_SCK);
//		delay(stable_time);
//		if (value&0x80){
//			GPIO_SetBits(VO_PORT, VO_SI);
//			delay(stable_time);
//		}else{
//			GPIO_ResetBits(VO_PORT, VO_SI);
//			delay(stable_time);
//		}
//		GPIO_SetBits(VO_PORT, VO_SCK);
//		delay(stable_time);
//		value = value<<1;
//	}
//	//CS disable
//	GPIO_SetBits(VO_PORT4CS, VO_CS);
//	delay(STABLE);
//}

int Vout_Value=MIN_PULSE;
int vout_adj(int dir,int steps)
{
	if (dir == DIR_PLUS)
		Vout_Value += steps;
	else
		Vout_Value -= steps;
	if (Vout_Value < 0)
		Vout_Value = 0;
	if (Vout_Value > 6000)
		Vout_Value = 6000;
	TIM_SetCompare1(TIM1,Vout_Value);    // MUST Be >0, < 35999 in main.c
	//write_reg((uint8_t)Vout_Value);
}

int vout_increase(char* cmd)// set minimum circle to aoid speed_lost 
{
	rt_kprintf("vout increased...!\r\n");
	uint16_t steps;
	steps = atoi(cmd);
	vout_adj(DIR_PLUS,steps);
	return 1;
}

int vout_decrease(char* cmd)// set minimum circle to aoid speed_lost 
{
	rt_kprintf("vout decreased...!\r\n");
	uint16_t steps;
	steps = atoi(cmd);
	vout_adj(DIR_MINUS,steps);
	return 1;
}

int vout_set(char* cmd)// set minimum circle to aoid speed_lost 
{
	int value= 0;
	rt_kprintf("stable time setted...!\r\n");
	uint16_t steps;
	value = atoi(cmd);
	TIM_SetCompare1(TIM1,value);    // MUST Be >0, < 35999 in main.c
	Vout_Value=value;
	//TIM_SetAutoreload(TIM1,  value);
	return 1;
}



__IO function_t gVout[4]={
	{"inc",vout_increase},// "adc:sample:\r" to sample
	{"dec",vout_decrease},// "adc:run:\r" to set running_flag
	{"set",vout_set},// "adc:run:\r" to set running_flag
	{0,0},// "adc:cfg:auto:N\r" to set manual_flag
};

/**********************************************************/

