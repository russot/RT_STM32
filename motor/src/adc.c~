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
#include "stm32f10x_adc.h"
#include <string.h>
#include "cmd_type.h"


void data_t_init(void);
data_t gData;
#define ADC1_DR_Address    ((uint32_t)0x4001244C)
#define END_FLAG '\0'
#define JEXTTRIG_SW		0x111<< 12
#define JEXTTRIG_CC1	0x011<< 12
#define SAMPL_41_5 0x100
#define SAMPL0_41_5 0x100 << 0
#define JCH_NUM(D) (D-1)<<20
#define JCH0(D) D<<15
#define ADC1_ON()  ADC1->CR2 |= ADC_CR2_ADON
#define ADC1_JSW_START() ADC1->CR2 |= ADC_CR2_JSWSTART

void data_t_service(void)
{
	if (gData.sample_flag == UNSET_)
		return ;	
	//new data, format and upload if neeeded 
	gData.sample_flag = UNSET_;
	gData.format();
	if (gData.need_upload_flag == SET_){
		gData.need_upload_flag = UNSET_;
		gData.upload();
	}

}

void data_t_upload(void)
{
	printf(&(gData.str_buffer[0]));
}

void data_t_run(char* cmd)
{
	gData.running_flag = SET_;
}

void data_t_stop(char* cmd)
{
	gData.running_flag = UNSET_;
}

void data_t_cfg(char* cmd);
void data_t_set_interval(char* cmd);
void data_t_set_channel(char* cmd);
void data_t_set_manual(char* cmd);
__IO function_t gAdc_cfg[4]={
	{"manual",data_t_set_manual},// "adc:sample:\r" to sample
	{"interval",data_t_set_interval},// "adc:run:\r" to set running_flag
	{"channel",data_t_set_channel},// "adc:run:\r" to set running_flag
	{0,0},// "adc:cfg:auto:N\r" to set manual_flag
};

void data_t_cfg(char* cmd)
{
	return deal_cmd__(cmd,&gAdc_cfg[0]);
}

void data_t_set_manual(char* cmd)
{
	if (cmd[0] == 'y' || cmd[0] == 'Y')
		gData.manual_flag = SET_;
	else if ( cmd[0] == 'n' || cmd[0] == 'N')
		gData.manual_flag = UNSET_;
}

void data_t_set_interval(char* cmd)
{
	uint16_t seconds;
	seconds = atoi(cmd);
	gData.delay = RT_TICK_PER_SECOND / seconds; // delay for speeding up
}

void data_t_set_channel(char* cmd)
{
	gData.channel = atoi(cmd); // delay for speeding up
}


void data_t_format(void)
{
	int last=0;
	char *str = &(gData.str_buffer[3]);
	switch (gData.running_flag){
		case SET_:
			if (gData.current == 0 )
			 	last = DATA_NUM - 1 ;
			else
				last = gData.current - 1 ;
			break;
		default:
			last = 0;
	}
	sprintf( str + last * DATA_LEN, 
		"%04x%04x",
		gData.ADC_sample_group[last].length,
		gData.ADC_sample_group[last].signal);
}

void data_t_reset(void)
{
	gData.counter1 = 0 ;
	gData.current = 0 ;
	TIM_SetCounter(TIM3,0);
}
#define _A0 gData.ADC_sample[0]
#define _A1 gData.ADC_sample[1]
#define _A2 gData.ADC_sample[2]
#define _A3 gData.ADC_sample[3]
#define OVER_FLOW(x)  ((x & 0xfff)==0xfff)
#define NOT_OVER_FLOW(x)  ((x & 0xfff)!=0xfff)
#define buf_sz 200
uint16_t filter_buffer[buf_sz];

void data_t_sample(void)
{
	int i;
	int j;
	uint32_t sum=0;
	for (i=0;i<buf_sz;i++){
		filter_buffer[i] = gData.ADC_[gData.channel] & 0xfff; // sampling data from DMA-memory area gData.ADC_
		sum += filter_buffer[i];	
		for(j=0;j<500;j++){;} // delay sometime for next sample
	}
	
	gData.ADC_sample_group[gData.current].signal = sum / buf_sz;
//		if (    (gData.channel== 0) && NOT_OVER_FLOW(_A1) ){ // select current signal 
//			gData.ADC_sample_group[gData.current].signal = (_A1 & 0xfff)| (0x1<<15); // set bit15 flag implying _A1 value
//		}else{
//			gData.ADC_sample_group[gData.current].signal = sum / buf_sz;
//		}
	if (gData.manual_flag == SET_){// select current  length
		gData.ADC_sample_group[gData.current].length = 0x0; // manual mode, set to 0 
	}else{
		gData.ADC_sample_group[gData.current].length = gData.counter1; // manual mode, set to 0 
	}
	gData.current++;
	if ( (gData.current == DATA_NUM)  || (gData.running_flag == UNSET_) ){ // running mode, upload 7 samples once; stopped mode, upload every sample
		gData.current = 0;
		gData.need_upload_flag = SET_;
	}
	gData.sample_flag = SET_;
}

void data_t_init(void){
	gData.service = data_t_service;
	gData.cfg= data_t_cfg;
	gData.run = data_t_run;
	gData.stop = data_t_stop;
	gData.upload = data_t_upload;
	gData.format = data_t_format;
	gData.sample = data_t_sample;
	gData.channel= 0;
	gData.reset  = data_t_reset;
	gData.reset();
	gData.str_buffer[0] = '0';
	gData.str_buffer[1] = 'x';
	gData.str_buffer[2] = ':';
	gData.delay= 1;
	gData.sample_flag = UNSET_ ;
	gData.need_upload_flag = UNSET_ ;
	gData.running_flag = UNSET_ ;
	gData.manual_flag = UNSET_ ;


}


///////////////////////////////////////////////////////////////////////////////////
void RCC_ADC_init(void)
{
	/* Enable DMA clock */
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);

	/* Enable ADC1 and GPIOC clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1 | RCC_APB2Periph_GPIOA, ENABLE);

}

///////////////////////////////////////////////////////////////////////////////////
void GPIO_ADC_init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	/* Configure PA.0 (ADC Channel 0) as analog input -------------------------*/
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
}

///////////////////////////////////////////////////////////////////////////////////
void DMA_ADC_init(void)
{
	DMA_InitTypeDef DMA_InitStructure;
	DMA_DeInit(DMA1_Channel1);
	DMA_InitStructure.DMA_PeripheralBaseAddr = ADC1_DR_Address;
	DMA_InitStructure.DMA_MemoryBaseAddr = (u32)&(gData.ADC_[0]);
	DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
	DMA_InitStructure.DMA_BufferSize = 4; // A0~A3 round circularly
	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
	DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
	DMA_InitStructure.DMA_Priority = DMA_Priority_High;
	DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
	DMA_Init(DMA1_Channel1, &DMA_InitStructure);

	/* Enable DMA channel1 */
	DMA_Cmd(DMA1_Channel1, ENABLE);
}

///////////////////////////////////////////////////////////////////////////////////
void adc_config(void)
{
	gData.__init__ = data_t_init;
	gData.__init__();
	ADC_InitTypeDef ADC_InitStructure;
	RCC_ADC_init();
	GPIO_ADC_init();
	DMA_ADC_init();

	/* ADC1 configuration ------------------------------------------------------*/
	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
	ADC_InitStructure.ADC_ScanConvMode = ENABLE;
	ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_NbrOfChannel = 4;
	ADC_Init(ADC1, &ADC_InitStructure);

	/* ADC1 regular channel 0 configuration */ 
	ADC_RegularChannelConfig(ADC1, ADC_Channel_0, 1, ADC_SampleTime_55Cycles5);
	ADC_RegularChannelConfig(ADC1, ADC_Channel_1, 2, ADC_SampleTime_55Cycles5);
	ADC_RegularChannelConfig(ADC1, ADC_Channel_2, 3, ADC_SampleTime_55Cycles5);
	ADC_RegularChannelConfig(ADC1, ADC_Channel_3, 4, ADC_SampleTime_55Cycles5);

	/* Enable ADC1 DMA */
	ADC_DMACmd(ADC1, ENABLE);

	/* Enable ADC1 */
	ADC_Cmd(ADC1, ENABLE);

	/* Enable ADC1 reset calibaration register */   
	ADC_ResetCalibration(ADC1);
	/* Check the end of ADC1 reset calibration register */
	while(ADC_GetResetCalibrationStatus(ADC1));

	/* Start ADC1 calibaration */
	ADC_StartCalibration(ADC1);
	/* Check the end of ADC1 calibration */
	while(ADC_GetCalibrationStatus(ADC1));

	/* Start ADC1 Software Conversion */ 
	ADC_SoftwareStartConvCmd(ADC1, ENABLE);

}



__IO function_t gAdc[5]={
	{"sample",data_t_sample},// "adc:sample:\r" to sample
	{"run",data_t_run },// "adc:run:\r" to set running_flag
	{"stop",data_t_stop},// "adc:stop:\r" to clear running_flag
	{"cfg",data_t_cfg},// "adc:cfg:auto:Y\r" to clear manual_flag
	{0,0},// "adc:cfg:auto:N\r" to set manual_flag
};

/**********************************************************/
__IO rt_uint8_t ad_sample_stack[ 512 ];
__IO struct rt_thread ad_sample_thread;
__IO void ad_sample_thread_entry(void* parameter)
{
	while (1){
		if( gData.running_flag == SET_)
			gData.sample();
		rt_thread_delay( gData.delay); /* sleep 0.5 second and switch to other thread */
	}
}

