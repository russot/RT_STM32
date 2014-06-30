#define printf print2usb
enum {
	UNSET_ = 0 ,
	SET_  = 1,
};

enum{
	STOPPED = 0,
	FORWARD = 1,
	BACKWARD= 2,
};
enum{
	USB = 1,
	EVT = 2,
};

typedef struct {
	char* name;
	int (*service)(char*);
}function_t;

#define CMD_LINE_SIZE 32
#define MAX_CMD 16
#define CMD_BUF_SIZE MAX_CMD*CMD_LINE_SIZE
typedef struct{
	unsigned char queue[MAX_CMD][CMD_LINE_SIZE]; // size=16*32=512bytes
	int new_;
	int old_;
	int count;
}cmd_buffer_t;

typedef struct{
	cmd_buffer_t buf_usb;
	cmd_buffer_t buf_event;
	int (*has_cmd)(void);
	int (*deal_cmd)(void);
	int (*append)(char*,int);
}cmd_dealer_t;

#define AD_CH_NUM 4
#define DATA_LEN 8
#define BUFF_LEN 64
#define DATA_NUM  (BUFF_LEN/DATA_LEN)-1
typedef struct{
	__IO uint16_t length;
	__IO uint16_t signal;

}data_pair_t;

typedef struct{
	char str_buffer[BUFF_LEN];
	__IO int counter1;
	__IO int delay;
	__IO uint16_t ADC_[AD_CH_NUM];
	__IO int counter1_sample;
	__IO uint16_t ADC_sample[AD_CH_NUM];
	__IO data_pair_t ADC_sample_group[DATA_NUM];
	__IO int current;
	__IO int channel;
	__IO int manual_flag;
	__IO int sample_flag;
	__IO int need_upload_flag;
	__IO int running_flag;
	void (*__init__)(void);
	void (*reset)(void);
	void (*run)(void);
	void (*stop)(void);
	void (*cfg)(void);
	void (*sample)(void);
	void (*upload)(void);
	void (*format)(void);
	void (*service)(void);
	void (*set_running_flag)(void); 
	void (*unset_running_flag)(void); 
}data_t;



typedef struct{
GPIO_TypeDef* port;
uint16_t pin;
}port_pin_t;


typedef struct{
	port_pin_t pwm_pin;
	port_pin_t dir_pin;
	port_pin_t zero_pin;
	port_pin_t pollar_pin;
	TIM_TypeDef* timer;
	int running_flag;
	int auto_flag;
	uint16_t min_circle;
	uint16_t pwm_circle ;
} pwm_t;


extern int cmd_dealer_init(void);
