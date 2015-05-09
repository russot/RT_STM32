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
#include "stdio.h"
#include "stm32f10x_conf.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_gpio.h"
#include <rtthread.h>
#include "console.h"
#include "led.h"
#include "cmd_type.h"

#define INIT_CIRCLE 1000
#define MIN_PULSE 58

__IO int pollar_flag = UNSET_;
__IO int zero_flag = UNSET_;
extern cmd_dealer_t gCmd_dealer;
extern data_t gData;

pwm_t gPWM1 ={
	{GPIOB, GPIO_Pin_3},	// pwm out(TIM2.OC2) maps to GPIOB3
	{GPIOB, GPIO_Pin_4},	// pwm dir maps to GPIOB4
	{GPIOB, GPIO_Pin_6},	// pwm zero maps to GPIO6
	{GPIOB, GPIO_Pin_6},// pwm pollar maps to GPIOB7
	TIM2,	// TIM2.OC2 maps to GPIOB.Pin3
	STOPPED,
	UNSET_,
	MIN_PULSE,
	INIT_CIRCLE }; 		

/**********************************************************/
void exti_init(void)
{
	//RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, DISABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, DISABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	EXTI_DeInit();
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = gPWM1.zero_pin.pin; //configure zero_pin 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gPWM1.zero_pin.port, &GPIO_InitStructure);
	
	//GPIO_InitStructure.GPIO_Pin = gPWM1.pollar_pin.pin; //configure pollar_pin
	//GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	//GPIO_Init(gPWM1.pollar_pin.port, &GPIO_InitStructure);


	EXTI_InitTypeDef EXTI_InitStruct;
	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB,GPIO_PinSource6);
	EXTI_InitStruct.EXTI_Line = EXTI_Line6;
	EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	EXTI_InitStruct.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStruct);

	//GPIO_EXTILineConfig(GPIO_PortSourceGPIOA,GPIO_PinSource7);
	//EXTI_InitStruct.EXTI_Line = EXTI_Line7;
	//EXTI_InitStruct.EXTI_Mode = EXTI_Mode_Interrupt;
	//EXTI_InitStruct.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	//EXTI_InitStruct.EXTI_LineCmd = ENABLE;
	//EXTI_Init(&EXTI_InitStruct);


	/* Configure the NVIC Preemption Priority Bits */  
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
	NVIC_InitTypeDef NVIC_InitStructure;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=0;
	/* Enable the TIM3 Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel =TIM3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	/* Enable the EXTI3 Interrupt */
	//NVIC_InitStructure.NVIC_IRQChannel =EXTI15_10_IRQn;
	//NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
	//NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	//NVIC_Init(&NVIC_InitStructure);

	/* Enable the EXTI9_5 Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel =EXTI9_5_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

}

void middle_Y_led(void)
{
	rt_hw_led_off(1);
}

void middle_N_led(void)
{
	rt_hw_led_on(1);
}


uint8_t middle_status_update(void)
{
	uint8_t status_zero = GPIO_ReadInputDataBit(gPWM1.zero_pin.port,gPWM1.zero_pin.pin);
	uint8_t status_pollar = GPIO_ReadInputDataBit(gPWM1.pollar_pin.port,gPWM1.pollar_pin.pin);
	uint8_t status_middle = UNSET_;
	if ( (status_zero!=Bit_SET) && (status_pollar!=Bit_SET) ){
		status_middle = SET_;
		//middle_Y_led();
	}else{
		status_middle = UNSET_;
		//middle_N_led();
	}
	return status_middle;

}
void pollar_service(void)
{
	if (zero_flag == SET_){
		zero_flag = UNSET_;
		if (middle_status_update() == UNSET_ ){
			printf("rep:to_zero ......\0");	
			pwm_stop();
//			if (gPWM1.auto_flag == SET_)
//				gCmd_dealer.append("motor:move:x>:",EVT);
		}else{
			printf("rep:fr_zero ......\0");	
		}
	}
	if (pollar_flag == SET_){
		pollar_flag = UNSET_;
		if (middle_status_update() == UNSET_ ){
			printf("rep:to_pollar ......\r\n");	
			pwm_stop();
			if (gPWM1.auto_flag == SET_)
				gCmd_dealer.append("motor:move:x<:",EVT);
		}else{
			printf("rep:fr_pollar ......\r\n");	
		}
	}

}

/**********************************************************/
__IO rt_uint8_t event_stack[ 512 ];
__IO struct rt_thread event_thread;
__IO void event_thread_entry(void* parameter)
{
	exti_init();
	pwm_init();
	middle_status_update();
	while (1){
		pollar_service();
		gData.service(); // upload ad data
		rt_thread_yield();
	//	printf("evt server...\r\n");
	}
}

/**********************************************************/
//void EXTI15_10_IRQHandler(void)
//{
//	if ( EXTI->PR & EXTI_Line15){
//		EXTI->PR = EXTI_Line15;
//		pollar_flag = SET_;
//		if (middle_status_update() == SET_ )
//			gData.reset();
//	}
//}

/**********************************************************/
void EXTI9_5_IRQHandler(void)
{
	EXTI->PR = EXTI_Line6;
	gData.reset();
}

void  pwm_init(void) // use TIM4 as pwm
{
}
/**********************************************************/
void  pwm_init_(void) // use TIM2 as pwm
{
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = gPWM1.pwm_pin.pin;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gPWM1.pwm_pin.port, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = gPWM1.dir_pin.pin;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gPWM1.dir_pin.port, &GPIO_InitStructure);


	GPIO_PinRemapConfig(GPIO_PartialRemap1_TIM2, ENABLE); // remap T2C2 to B3 as pwm_pin.pin
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure; /*供给系统时钟*/
       	TIM_DeInit(gPWM1.timer);//复位定时器4
	TIM_TimeBaseStructure.TIM_Period = INIT_CIRCLE;
	//设置了在下一个更新事件装入活动的自动重装载寄存器周期的值它的取值必须在0x0000 和0xFFFF 之间。 
	TIM_TimeBaseStructure.TIM_Prescaler = 360;
	//设置了用来作为 TIMx 时钟频率除数的预分频值，的取值必须在 0x0000 和0xFFFF 之间。
	TIM_TimeBaseStructure.TIM_ClockDivision = 0x0;//设置了时钟分割
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Down;
	//选择了计数器模式，向上计数值
	TIM_TimeBaseInit(gPWM1.timer,&TIM_TimeBaseStructure);
	TIM_ClearFlag(gPWM1.timer,TIM_FLAG_Update);   

	TIM_OCInitTypeDef oc_init_struct;
	oc_init_struct.TIM_OCIdleState  = TIM_OCIdleState_Reset;
	oc_init_struct.TIM_OCMode       = TIM_OCMode_PWM1;
	oc_init_struct.TIM_OCNIdleState = TIM_OCNIdleState_Reset;
	oc_init_struct.TIM_OCNPolarity  = TIM_OCNPolarity_High;
	oc_init_struct.TIM_OCPolarity   = TIM_OCPolarity_High;
	oc_init_struct.TIM_OutputNState = TIM_OutputNState_Enable;
	oc_init_struct.TIM_OutputState  = TIM_OutputState_Enable;
	oc_init_struct.TIM_Pulse        = MIN_PULSE;
	TIM_OC2Init(gPWM1.timer,&oc_init_struct);
	TIM_OC2NPolarityConfig(gPWM1.timer,TIM_OCNPolarity_Low);
	TIM_SetCompare2(gPWM1.timer,MIN_PULSE);    // MUST Be >0, < 35999 in main.c
	TIM_CCxCmd(gPWM1.timer,TIM_Channel_2,TIM_CCx_Enable); // TIM2->CC2 ENABLED
	
}


/**********************************************************/
void  pwm_accl(void) // use TIM4 as pwm
{
	
	gPWM1.pwm_circle = gPWM1.pwm_circle*8/10;
	if (gPWM1.pwm_circle < gPWM1.min_circle)
		gPWM1.pwm_circle = gPWM1.min_circle;
	TIM_SetAutoreload(gPWM1.timer,  gPWM1.pwm_circle);
}

/**********************************************************/
void  pwm_dccl(void) // use TIM4 as pwm
{
	
	gPWM1.pwm_circle = gPWM1.pwm_circle*10/8;
	if (gPWM1.pwm_circle > INIT_CIRCLE)
		gPWM1.pwm_circle = INIT_CIRCLE;
	TIM_SetAutoreload(gPWM1.timer,  gPWM1.pwm_circle);
}

/**********************************************************/
void  pwm_setup_min(uint16_t min_circle) // use TIM4 as pwm
{
	
	 gPWM1.min_circle = min_circle;
	
}

/**********************************************************/
void  pwm_stop(void) // use TIM4 as pwm
{
	TIM_Cmd(gPWM1.timer, DISABLE);  //计数器禁能，停止工作
	gPWM1.pwm_circle = INIT_CIRCLE;
	gPWM1.running_flag = STOPPED;

	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = gPWM1.pwm_pin.pin;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gPWM1.pwm_pin.port, &GPIO_InitStructure);	
	GPIO_ResetBits(gPWM1.pwm_pin.port,gPWM1.pwm_pin.pin); 
}

/**********************************************************/
void  pwm_run(void) // use TIM4 as pwm
{
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = gPWM1.pwm_pin.pin;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(gPWM1.pwm_pin.port, &GPIO_InitStructure);
	TIM_Cmd(gPWM1.timer, ENABLE);  //计数器使能，开始工作
}

void pwm_set_auto_true(void)
{
	gPWM1.auto_flag = SET_;
}
void pwm_set_auto_false(void)
{
	gPWM1.auto_flag = UNSET_;
}
/**********************************************************/
void pwm_set_forward(void)
{
	gPWM1.running_flag = FORWARD; 
	GPIO_SetBits(gPWM1.dir_pin.port,gPWM1.dir_pin.pin);
}

/**********************************************************/
void pwm_set_backward(void)
{
	gPWM1.running_flag = BACKWARD; 
	GPIO_ResetBits(gPWM1.dir_pin.port,gPWM1.dir_pin.pin); 
}

/**********************************************************/
int motor_move(char* cmd)
{
	if ((cmd[0] == 'x') && (cmd[1] =='+')){		// "motor:move:x+" to move forward
		printf("rep:move x forward......\r\n");
		pwm_set_forward();
		pwm_run();
	}else if ((cmd[0] == 'x') && (cmd[1] =='-')){	// "motor:move:x-" to move backward
		printf("rep:move x backward......\r\n");
		pwm_set_backward();
		pwm_run();
	}else if ((cmd[0] == 'x') && (cmd[1] =='>')){	// "motor:move:x>" to run forward
		printf("rep:run x forward......\r\n");
		motor_run(FORWARD);
	}else if ((cmd[0] == 'x') && (cmd[1] =='<')){	// "motor:move:x<" to run backward
		printf("rep:run x backward......\r\n");
		motor_run(BACKWARD);
	}else{
		printf("rep:err_unkown direction.\r\n");
		return -1;
	}
	return 1;
}
/**********************************************************/
int motor_run(int dir)
{
	pwm_stop();
	rt_thread_delay(RT_TICK_PER_SECOND/10); // delay for speeding up
	switch (dir){
		case BACKWARD:
			pwm_set_backward();
			break;
		case FORWARD:
			pwm_set_forward();
			break;
		default:
			printf("rep:err_unkown direction...\r\n");
			return -1;
			break;
	}
	pwm_run();
	for(;gPWM1.pwm_circle > gPWM1.min_circle;){// accelerate to max_speed
		rt_thread_delay(RT_TICK_PER_SECOND/100); // delay for speeding up
		pwm_accl();
	}
	return 1;
}



int motor_stop(char* cmd)// "motor:stop:\r" to stop
{
	pwm_stop();
	printf("rep:stop......\r\n");
	return 1;
}

int motor_accl(char* cmd)// "motor:accl:x+|-\r" to accelarate
{

	if ((cmd[0] == 'x') && (cmd[1] == '+')){
		pwm_accl(); 
		printf("rep:accelarate......\r\n");
	}else if ((cmd[0] == 'x') && (cmd[1] == '-')){
		pwm_dccl(); 
		printf("rep:dccelarate......\r\n");
	}
	return 1;
}

int motor_setup(char* cmd)// set minimum circle to aoid speed_lost 
{

	uint16_t circle;
	circle = atoi(cmd);
	pwm_setup_min(circle);
	return 1;
}

int motor_delay(char* cmd)// set minimum circle to aoid speed_lost 
{

	uint16_t seconds;
	seconds = atoi(cmd);
	rt_thread_delay(RT_TICK_PER_SECOND * seconds); // delay for speeding up
	return 1;
}


int motor_set_auto(char* cmd)// set minimum circle to aoid speed_lost 
{
	switch (cmd[0]){
		case 'Y':
			pwm_set_auto_true();
			break;
		case 'N':
			pwm_set_auto_false();
			break;
		default:
			printf("rep:err_unkown auto command!...\r\n");
			return -1;
			break;
	}
	return 1;
}


// -----------motor function mapping is as below----------//
__IO function_t gMotor[5]={
	{"move",motor_move},// "motor:move:x+\r" to move forward,"motor:move:x-\r" to move backward
	{"stop",motor_stop},// "motor:stop:\r" to stop
	{"accl",motor_accl},// "motor:accl:\r" to accelarate
	{"setup",motor_setup},// "motor:accl:\r" to accelarate
	{"auto",motor_set_auto},// "motor:accl:\r" to accelarate
	{"delay",motor_delay},// "motor:accl:\r" to accelarate
	{0,0},
};


