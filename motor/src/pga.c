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

#define VO_PORT GPIOB
#define VO_SCK GPIO_Pin_9
#define VO_SI GPIO_Pin_8
#define VO_PORT4CS GPIOA
#define VO_CS GPIO_Pin_15


#define DIR_MINUS 0 
#define DIR_PLUS 1 

#define STABLE 8000

int stable_time=4000;
pga_t gPGA_ports={
	{ {GPIOB,GPIO_Pin_12},	// clk
	  {GPIOB,GPIO_Pin_13}	// dat
	},

};
///////////////////////////////////////////////////////////////////////////////////
void RCC_pga_init(void)
{

	/* Enable pga used port */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB|RCC_APB2Periph_GPIOC , ENABLE);

}
///////////////////////////////////////////////////////////////////////////////////
void GPIO_pga_init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	int i,j;
	
	sp_port_t* pSPort = (sp_port_t*)&gPGA_ports;
	//for(i=0;i<4;i++){
	//	port_pin_t* pPin = (port_pin_t*) pSPort;
	//	for(j=0;j<2;j++){
	//		GPIO_InitStructure.GPIO_Pin = pPin->pin ;
	//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
	//		GPIO_Init(pPin->port, &GPIO_InitStructure);
	//		pPin++;
	//	}
	//	pSPort++;	
	port_pin_t* pPin = (port_pin_t*) pSPort;
	for(j=0;j<2;j++){
	      GPIO_InitStructure.GPIO_Pin = pPin->pin ;
	      GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	      GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
	      GPIO_Init(pPin->port, &GPIO_InitStructure);
	      pPin++;
	}
//}
}

///////////////////////////////////////////////////////////////////////////////////
void pga_init(void){
	RCC_pga_init();
	GPIO_pga_init();
}



void delay(int ticks)
{
	for(;ticks>0;ticks--){
		asm("nop");
	}

}

///////////////////////////////////////////////////////////////////////////////////
int write_sport(sp_port_t * pSPort, uint32_t value)
{
	rt_kprintf("pga writed..!\r\n");
	int i = 0;
	for (i=0;i<24;i++){
		GPIO_ResetBits(pSPort->clk_pin.port, pSPort->clk_pin.pin);
		delay_loop(stable_time);
		//delay(stable_time);
		if (value&0x00800000){
			GPIO_SetBits(pSPort->dat_pin.port, pSPort->dat_pin.pin);
		}else{
			GPIO_ResetBits(pSPort->dat_pin.port, pSPort->dat_pin.pin);
		}
		delay_loop(stable_time);
		//delay(stable_time);
		GPIO_SetBits(pSPort->clk_pin.port, pSPort->clk_pin.pin);
		delay_loop(stable_time);
		//delay(stable_time);
		value = value<<1;
	}
}


int pga_set(char* cmd)// set minimum circle to aoid speed_lost 
{
	__IO static uint32_t value=0;
	uint32_t value_R=0;
	uint32_t value_A=0;
	unsigned char *pA;
	sp_port_t* pSPort = &(gPGA_ports.R);
	switch (*cmd){
		case 'R':
			rt_kprintf("pga_R setted...!\r\n");
			value_R= atoi(cmd+2); // 'pga:set:R:xxx' to set R sport
			value_R ^= 0xffffffff;
			value &=0xff0000ff;
			value |= (value_R<<8);
			break;
		case 'A' :
			rt_kprintf("pga_A setted...!\r\n");
			value_A= atoi(cmd+2); // 'pga:set:R:xxx' to set R sport
			value &=0xffffff00;
			value |= value_A;
			break;
		case 'r': 
			value_R= atoi(cmd+2); // 'pga:set:R:xxx' to set R sport
			pA = strchr(cmd,'a');
			value_A= atoi(pA+2);
			value_R ^= 0xffffffff;
			value = (value_R<<8)|value_A;
			rt_kprintf("pga_R&A setted...!\r\n");
			break;
		default:
			rt_kprintf("pga bad parameter ...! should be R|A|B \r\n");
			break;
	}

	write_sport(pSPort,value);
	return 1;
}





/**********************************************************/

