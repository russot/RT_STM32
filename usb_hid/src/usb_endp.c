/**
 ******************************************************************************
 * @file    usb_endp.c
 * @author  MCD Application Team
 * @version V4.0.0
 * @date    21-January-2013
 * @brief   Endpoint routines
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
#include "usb_istr.h"
#include "cmd_type.h"
#include <rtthread.h>

extern cmd_dealer_t gCmd_dealer;
extern __IO uint8_t PrevXferComplete;


rt_sem_t sem_printf = RT_NULL;

void print2usb(char *str)
{
	uint8_t send_buffer[64]={0,};
	uint8_t *pBuffer = send_buffer;
        rt_sem_take(sem_printf, RT_WAITING_FOREVER);
	for (;PrevXferComplete!=1;){}//wait for last transfer completed
	for (;;){
		*pBuffer = *str;
		str++;
		pBuffer++;
		if(pBuffer == send_buffer+64)
			break;
	
	}
	UserToPMABufferCopy(send_buffer, ENDP2_TXADDR, 64);
	SetEPTxValid(ENDP2);
        rt_sem_release(sem_printf);
}
/* Private functions ---------------------------------------------------------*/
/*******************************************************************************
 * Function Name  : EP1_OUT_Callback.
 * Description    : EP1 OUT Callback Routine.
 * Input          : None.
 * Output         : None.
 * Return         : None.
 *******************************************************************************/
void EP1_OUT_Callback(void)
{
	int count = 0;
	char read_buffer[64]={0,};
	count = USB_SIL_Read(EP1_OUT, read_buffer);
	SetEPRxStatus(ENDP1, EP_RX_VALID);
	gCmd_dealer.append(read_buffer,USB);
}



/*******************************************************************************
 * Function Name  : EP1_IN_Callback.
 * Description    : EP1 IN Callback Routine.
 * Input          : None.
 * Output         : None.
 * Return         : None.
 *******************************************************************************/
void EP2_IN_Callback(void)
{
	PrevXferComplete = 1;
}
/*______________________________end____________________________________________*/
/*______________________________end____________________________________________*/
