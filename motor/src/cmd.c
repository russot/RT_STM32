/*
   cmd  format is defined below.
command:target:address:value1:value2...:\r
*/

#include <stdio.h>
#include <string.h>
#include "stm32f10x_flash.h"

#include "cmd_type.h"
#include <rtthread.h>


#define __CONSOLE__ // assign storage for gConsole, must before console.h below
#include "console.h"
//#define sprintf my_sprintf

cmd_dealer_t gCmd_dealer;

/**********************************************************/
int console_srv(char *cmd)
{
	if (! strncmp("set:usb",cmd,7)){
		printf("\r\n console set to usb now....\r\n");
		printf_org = print2usb;
		printf = print2usb;
	}else if (! strncmp("set:ser",cmd,7)){
		printf("\r\n console set to serial1 now....\r\n");
		printf_org = rt_kprintf;
		printf = rt_kprintf;
	}else
		printf("\r\nerr: unknow console\r\n");
	return 1;
}

/**********************************************************/
int flash(char *cmd)
{
	char buffer[128]={0,};
	sprintf(buffer,"read:%s\n\r",cmd);
	printf(buffer);	
	return 1;
}





/**********************************************************/
extern data_t gData;
extern unsigned long _etext;
#define FLASH_ADDR 0x08000000
#define FLASH_SIZE 0x10000 //64K
#define CALIBR_SIZE 0x1000 //4K
#define CALIBR_ADDR FLASH_ADDR+FLASH_SIZE-CALIBR_SIZE //FLASH high_end 4K area
int set_calibr(char* cmd)
{
	char buffer[128]={0,};
	sprintf(buffer,"adc_value write:%x\n\r",gData.ADC_);
	printf(buffer);	
	FLASH_UnlockBank1();
	FLASH_ProgramWord(CALIBR_ADDR, gData.ADC_);
	FLASH_LockBank1();
}

/**********************************************************/
int get_calibr(char* cmd)
{
	int adc_value;
	char buffer[128]={0,};
	adc_value =*((int*)CALIBR_ADDR);
	sprintf(buffer,"adc_value read:%x\n\r",adc_value);
	printf(buffer);	
//	sprintf(buffer,"adc_value address:0x%x\n\r",CALIBR_ADDR);
//       printf(buffer);	
}


// -----------calibrator function mapping is as below----------//
function_t gCalibr[]={
	{"set",set_calibr},
	{"get",get_calibr},
	{0,0},
};

/**********************************************************/
int calib_srv(char *cmd)
{
	return	deal_cmd__(cmd, gCalibr);
}

int motor_srv(char *cmd);
int adc_srv(char *cmd);
int vout_srv(char *cmd);
/**********************************************************/
function_t gF103[]= {
	{"console",console_srv},
	{"flash",flash},
	{"calib",calib_srv},
	{"motor",motor_srv},
	{"adc",adc_srv},
	{"vout",vout_srv},
	{0,0},
};


int deal_cmd__(char* cmd_buffer,function_t* device );
/**********************************************************/
extern __IO function_t  gMotor[5];
int motor_srv(char *cmd)
{
	return 	deal_cmd__(cmd, &gMotor[0]);
}


extern  __IO function_t gAdc[8];
int adc_srv(char *cmd)
{
	return 	deal_cmd__(cmd, &gAdc[0]);
}

/**********************************************************/
extern __IO function_t  gVout[4];
int vout_srv(char *cmd)
{
	return 	deal_cmd__(cmd, &gVout[0]);
}

/**********************************************************/
#define SEP_  ':'
int deal_cmd__(char* cmd_buffer,function_t* device )
{

	char *pEnd;
	function_t* func = device;
	pEnd = strchr(cmd_buffer,SEP_);
	if (pEnd == 0){
		printf("\n\r>>__unknown command\n\r"); 
		return -1; 
	}
	*pEnd = '\0';

	for (; func->name != 0;func++){
		if (!strcmp(cmd_buffer,func->name) ){
			func->service(pEnd+1);
			return 1;
		}
	}
	printf("\n\r>>unknown command__\n\r"); 
	return -1; 

}

/**********************************************************/
int has_cmd_(void)
{
	return (gCmd_dealer.buf_usb.count + \
		gCmd_dealer.buf_event.count);
}

/**********************************************************/
int append_(char* cmd, int dest)
{
	int* pNew;
	int* pCount;
	char* pBuffer;
	int len;

	switch (dest){
		case EVT:
			pNew = &gCmd_dealer.buf_event.new_;
			pCount =&gCmd_dealer.buf_event.count;
			pBuffer = &gCmd_dealer.buf_event.queue[*pNew][0];
			break;
		case USB:
			pNew = &gCmd_dealer.buf_usb.new_;
			pCount =&gCmd_dealer.buf_usb.count;
			pBuffer =&gCmd_dealer.buf_usb.queue[*pNew][0];
			break;
		default:
			return -1;
	}
	len = strlen(cmd);
	if (len > CMD_LINE_SIZE -1)
		len = CMD_LINE_SIZE -1;
	strncpy(pBuffer,cmd,len);
	pBuffer[len]='\0';

	//rt_kprintf(gCmd_dealer.buf_usb.queue[gCmd_dealer.buf_usb.new_]);
	(*pNew)++;
	if(*pNew == MAX_CMD){
		*pNew = 0;
	}
	(*pCount)++;	
	//rt_kprintf("__%d__",gCmd_dealer.buf_usb.count);
	return 1;
}

/**********************************************************/
int deal_cmd_(void)
{
	int* pOld = &gCmd_dealer.buf_usb.old_;
	printf_org = printf;
	//rt_kprintf("dealing cmd from usb...\n");
	while(gCmd_dealer.buf_usb.count !=0){
		printf = print2usb;
		deal_cmd__(gCmd_dealer.buf_usb.queue[*pOld], &gF103[0]);
		(*pOld)++;
		if (*pOld == MAX_CMD)
			*pOld = 0;
		gCmd_dealer.buf_usb.count--;
	}
       
	pOld = &gCmd_dealer.buf_event.old_;
	while(gCmd_dealer.buf_event.count !=0){
		printf = print2usb;
		deal_cmd__(gCmd_dealer.buf_event.queue[*pOld], &gF103[0]);
		(*pOld)++;
		if (*pOld == MAX_CMD)
			*pOld =0;
		gCmd_dealer.buf_event.count--;
	}
	printf = printf_org;
	return 0;
}

/**********************************************************/
int cmd_dealer_init(void)
{
	memset(&gCmd_dealer.buf_usb, 0, sizeof(cmd_buffer_t));
	memset(&gCmd_dealer.buf_event, 0, sizeof(cmd_buffer_t));
	gCmd_dealer.has_cmd = has_cmd_;
	gCmd_dealer.deal_cmd = deal_cmd_;
	gCmd_dealer.append = append_;

	return 0;
}


/////////////////////////////////////////////////////////////////////////
__IO rt_uint8_t cmd_stack[512];
__IO struct rt_thread cmd_thread;
__IO void cmd_thread_entry(void* parameter)
{
	cmd_dealer_init();
	hardware_init();
	while (1)
	{// called in main loop to serve usb send&receive
		//rt_kprintf("motor on, count  \r\n");
		if  ( gCmd_dealer.has_cmd() ) 
			gCmd_dealer.deal_cmd();
		else{
			rt_thread_yield();
			rt_thread_delay(RT_TICK_PER_SECOND/100);
			continue;
		}
	}
}



/*------------------------- unit test---------------------------*/
#ifdef UNIT
int main(int argc,char *argv[])
{
	char buffer[128];
	strcpy(buffer,"get:cfg:2");
	deal_cmd(buffer,F103);
	strcpy(buffer,"flash:write:0x55");
	deal_cmd(buffer,F103);
	strcpy(buffer,"FLASH:clear:");
	deal_cmd(buffer,F103);
	strcpy(buffer,"slope:clear:");
	deal_cmd(buffer,F103);
	return 0;
}
#endif //UNIT
