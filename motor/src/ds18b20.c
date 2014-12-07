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

port_pin_t ds18b20={GPIOB,GPIO_Pin_0};

#define low_() GPIO_ResetBits(ds18b20.port,ds18b20.pin)
#define high_() GPIO_SetBits(ds18b20.port,ds18b20.pin)
#define us 12
#define DIR_MINUS 0 
#define DIR_PLUS 1 

#define STABLE 8000

///////////////////////////////////////////////////////////////////////////////////
void RCC_ds18b20_setup_out(void)
{
	/* Enable DMA clock */

	/* Enable ADC1 and GPIOC clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);

}
///////////////////////////////////////////////////////////////////////////////////
void GPIO_ds18b20_setup_out(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	/* Configure PA.0 (ADC Channel 0) as analog input -------------------------*/
	GPIO_InitStructure.GPIO_Pin = ds18b20.pin ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(ds18b20.port, &GPIO_InitStructure);

}

///////////////////////////////////////////////////////////////////////////////////
void GPIO_ds18b20_setup_in(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	/* Configure PA.0 (ADC Channel 0) as analog input -------------------------*/
	GPIO_InitStructure.GPIO_Pin = ds18b20.pin ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(ds18b20.port, &GPIO_InitStructure);

}

void ds18b20_init(void){
	RCC_ds18b20_setup_out();
	GPIO_ds18b20_setup_out();
}




void ds18b20_reset(void)
{
	
	int tmp;
	GPIO_ds18b20_setup_out(); // setup as output
	high_();
	delay_loop(2*us); // high 32us , > Min 15us
	low_();
	delay_loop(800*us); // low 800us , > Min 480us
	GPIO_ds18b20_setup_in();
	while (GPIO_ReadInputDataBit(ds18b20.port,ds18b20.pin)){asm("nop");}
	while (!GPIO_ReadInputDataBit(ds18b20.port,ds18b20.pin)){asm("nop");}
	delay_loop(60*us); // high 32us , > Min 15us

}

uint8_t read_bit(void)
{
	uint8_t bit ;
	GPIO_ds18b20_setup_out(); // setup as output
	high_();
	delay_loop(5*us);// low 5us , > Min 1us
	low_();
	delay_loop(3*us);// low 5us , > Min 1us
	GPIO_ds18b20_setup_in();// setup as input
	delay_loop(5*us); // high 20us , 15us-60us
	bit = GPIO_ReadInputDataBit(ds18b20.port,ds18b20.pin);
	delay_loop(25*us); // high 64us , > Min 60us
	return bit;
}

uint8_t temp_read_byte(void)
{
	uint8_t bit ;
	uint8_t byte=0;
	int i;
	for(i=0;i<8;i++){
		bit = read_bit();
		byte = (byte>>1) | (bit<<7);	
	}
	return byte;
}

void temp_write_byte(uint8_t byte)
{
	uint8_t mask=0x01;
	int i;
	GPIO_ds18b20_setup_out(); // setup as output
	high_();
	delay_loop(2*us); // high 64us , > Min 60us
	for(i=0;i<8;i++){
		if (byte&mask){
			low_();
			delay_loop(5*us);// low 20us , 10us-60us	
			high_();
			delay_loop(70*us); // high 64us , > Min 60us
		}else{
			low_();
			delay_loop(70*us); // high 64us , > Min 60us
			high_();
			delay_loop(5*us);// low 20us , 15us-60us	
		}
		mask <<= 1;
	}
	GPIO_ds18b20_setup_in();// setup as input
}

void temp_trig(void)
{
	ds18b20_reset();
	temp_write_byte(0xcc);// 写跳过读ROM
	temp_write_byte(0x44);// 写温度转换指令
	delay_loop(900000*us);
}


int get_temp_(void)
{
	int l_byte=0x0;
	int h_byte=0x0;
	int tmp=0x0;
	temp_trig();
	ds18b20_reset();
	temp_write_byte(0xcc);// 写跳过读ROM指令
	temp_write_byte(0xbe);// 写读数据指令
	l_byte = temp_read_byte();
	h_byte = temp_read_byte();
	return  (h_byte<<8) | l_byte;
}



/**********************************************************/

