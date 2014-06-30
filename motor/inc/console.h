#ifndef __CONSOLE_H__
#define  __CONSOLE_H__


typedef struct{
	__IO void(*print)(char*);
	__IO void (*print_org)(char*);
}console_t;


#ifndef __DEBUG__ 
#define printf gConsole.print
#define printf_org gConsole.print_org
#else
#define printf rt_kprintf
#endif // __DEBUG__

#ifndef __CONSOLE__
extern __IO console_t  gConsole;
#else
__IO console_t gConsole;
#endif //__CONSOLE__
void print2usb(char*);
#endif //__CONSOLE_H__
