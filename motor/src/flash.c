/*
   cmd  format is defined below.
command:target:address:value1:value2...:\r

*/
#include "stm32f10x_conf.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_flash.h"
#include "string.h"

#define atoi   my_atoi
#define memset   my_memset
#define memcpy   my_memcpy
#define strlen   my_strlen
#define strcmp   my_strcmp
#define strchr   my_strchr
#define sprintf   my_sprintf

void printf_(char *buffer);
void printf_hex(char* str,int size);

#define SEP_FIELD	':'

#define FLASH_PAGE_SIZE	0x400
#define BANK1_WRITE_START_ADDR  (uint32_t)0x08008000 // 16kBytes, 
#define BANK1_WRITE_END_ADDR  (uint32_t)0x0800C000
#define SEP_FIELD ':'
/*******************************************************************************************************************/
int  FLASH_write(char* argv){
	/* Porgram FLASH Bank1 ********************************************************/       
	/* Unlock the Flash Bank1 Program Erase controller */
	char *pData;
	int need_erase = 0; 
	char buffer[20];
	int Data=0x87654321;
	int Address,FLASHStatus;
	Address = atoi(argv);
	pData = strchr(argv,SEP_FIELD);
	pData++;
	Data = atoi(pData);
	sprintf(buffer,"\naddr:%x\n",Address);
	printf_(buffer);
	sprintf(buffer,"\ndata:%x\n",Data);
	printf_(buffer);
	if ( *(__IO uint32_t*)Address != 0xffffffff)
		need_erase =1;
	FLASH_UnlockBank1();
	if ( need_erase!=0 ){
		printf_("\r\nNeeds erasing page first!erase now...\r\n");
	}
	/* Define the number of page to be erased */

	if ( (Address&0x3) !=0){
		printf_("\r\nError:Address must align by four bytes!");
		return 3;  //3,  命令参数无效
	}

	FLASH_ProgramWord(Address, Data);
	FLASH_LockBank1();

	return 0;

	/* Check the correctness of written data */
	//~ Address = BANK1_WRITE_START_ADDR;

	//~ while((Address < BANK1_WRITE_END_ADDR) && (MemoryProgramStatus != FAILED))
	//~ {
	//~ if((*(__IO uint32_t*) Address) != Data)
	//~ {
	//~ MemoryProgramStatus = FAILED;
	//~ }
	//~ Address += 4;
	//~ }

}


/*******************************************************************************************************************/
#define buffer_sz 16
int  FLASH_read(char* argv){
	uint32_t  i=0,len =32,data=0;
	char buffer[buffer_sz];
	char* pHead,*pEnd;
	uint32_t  address =  0x08000800;
	if (*argv){
		pHead = argv;
		pEnd = strchr(pHead,SEP_FIELD);
		if (pEnd) {
			*pEnd = '\0';
			address = atoi(pHead);
			if (address < 0x08000000 && address >0x0800ffff) // for 64kBytes flash MCU
				return 4; //4,  超出命令范围 in uart.c
			pHead = pEnd +1;
			if (*pHead)
				len = atoi(pHead);
			if (len<0 && len > 1024)
				return 4; //4,  超出命令范围 in uart.c
		}
	}
	printf_("\r\n");
	printf_hex((char*)address,(int) len);
	return 0;
}


/*******************************************************************************************************************/
typedef struct {
	char* name;
	int (*service)(char*);
}cmd_t;

typedef struct {
	cmd_t cmd1;
	cmd_t cmd2;
	cmd_t cmd3;
	cmd_t cmd4;
	cmd_t cmd5;
	cmd_t cmd6;
	cmd_t cmd7;
	cmd_t cmd8;
	cmd_t cmd9;
}function_t;

#define NULL 0
function_t Flash = {
	{"read",FLASH_read},
	{"READ",FLASH_read},
	{"write",FLASH_write},
	{"WRITE",FLASH_write},
	{0,0},
};


/*******************************************************************************************************************/
int FLASH_service(char* cmd_buffer){
	char *pEnd;
	cmd_t  *cmd = (cmd_t*)&Flash.cmd1;
	pEnd = strchr(cmd_buffer,SEP_FIELD);
	if(pEnd) 
		*pEnd = '\0';
	do{
		if (!strcmp(cmd_buffer, cmd->name) ){ // 找到对应命令名，调用对应命令服务例程
			return cmd->service(pEnd+1);
		}
		cmd++;
	}while( cmd->name != 0);
	return 2;  //2,  设备无此命令 in uart.c

}
