/**
 ******************************************************************************
 * @file    main.c
 * @author  MCD Application Team
 * @version V4.0.0
 * @date    21-January-2013
 * @brief   Custom HID demo main file
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; COPYRIGHT 2013 STMicroelectronics</center></h2>
 *
 * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *
 *        http://www.st.com/software_license_agreement_liberty_v2
 *
 * Unless required by applicable law or agreed to in writing, software 
 * distributed under the License is distributed on an "AS IS" BASIS, 
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************
 */


/* Includes ------------------------------------------------------------------*/
#include "hw_config.h"
#include "usb_lib.h"
#include "usb_pwr.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Extern variables ----------------------------------------------------------*/
extern rt_sem_t sem_printf ;
__IO uint8_t PrevXferComplete = 1;
__IO uint32_t TimingDelay = 0;
/* Private function prototypes -----------------------------------------------*/
void Delay(__IO uint32_t nCount);

/* Private functions ---------------------------------------------------------*/

/*******************************************************************************
 * Function Name  : main.
 * Description    : main routine.
 * Input          : None.
 * Output         : None.
 * Return         : None.
 *******************************************************************************/
void usb_init(void)
{
	Set_System();

	USB_Interrupts_Config();

	Set_USBClock();

	USB_Init();

    	sem_printf = rt_sem_create("sem", 1, RT_IPC_FLAG_FIFO);
	//usb_ep_init();

}

/*******************************************************************************
 * Function Name  : Delay
 * Description    : Inserts a delay time.
 * Input          : nCount: specifies the delay time length.
 * Output         : None
 * Return         : None
 *******************************************************************************/
void Delay(__IO uint32_t nCount)
{
	TimingDelay = nCount;
	for(; nCount!= 0;nCount--);
}

#ifdef  USE_FULL_ASSERT
/*******************************************************************************
 * Function Name  : assert_failed
 * Description    : Reports the name of the source file and the source line number
 *                  where the assert_param error has occurred.
 * Input          : - file: pointer to the source file name
 *                  - line: assert_param error line source number
 * Output         : None
 * Return         : None
 *******************************************************************************/

#endif

//#define USB_CMD_NEW 1
//#define USB_CMD_NONE 0
//
//__IO unsigned char usb_message = USB_CMD_NONE;
//
//
//#define CMD_LINE_SIZE 64
//#define MAX_CMD 16
//typedef struct{
//	unsigned char cmd_lines[MAX_CMD][CMD_LINE_SIZE];
//	int head ;
//	int tail;
//	int count;
//}cmd_t;
//cmd_t g_usb_cmd;
//cmd_t g_usb_response;
//
//void usb_ep_init(void)
//{
//	g_usb_cmd.head = 0;
//	g_usb_cmd.tail = 0;
//	g_usb_cmd.count = 0;
//	g_usb_response.head = 0;
//	g_usb_response.tail = 0;
//	g_usb_response.count = 0;
//}


//typedef struct {
//	char* name;
//	int (*service)(char*);
//}function_t;

//extern function_t* pF103;
//extern int deal_cmd(char* cmd_buffer,function_t* device );
////////////////////////////////////////////////////////////////////////////
//__IO rt_uint8_t usb_stack[ 512 ];
//__IO struct rt_thread usb_thread;
//__IO void usb_thread_entry(void* parameter)
//{
//	while (1)
//	{// called in main loop to serve usb send&receive
//		if(usb_message ==USB_CMD_NONE)
//			rt_thread_yield();
//		else{
//			usb_message &= ~USB_CMD_NEW;
//			while(g_usb_cmd.count != 0){
//				//print2usb(g_usb_cmd.cmd_lines[g_usb_cmd.tail]);
//				deal_cmd(g_usb_cmd.cmd_lines[g_usb_cmd.tail],pF103);
//				g_usb_cmd.tail++;
//				if (g_usb_cmd.tail == MAX_CMD)
//					g_usb_cmd.tail =0;
//				g_usb_cmd.count--;
//			}
//		}
//
//
//	}
//}
//
//
//
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
