#define printf rt_kprintf
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

#define AD_CH_NUM 6
#define DATA_LEN 4
#define BUFF_LEN 64 //mMaxPacketSize of USB bulk is 64Bytes
#define DATA_NUM  (BUFF_LEN/DATA_LEN)-1
#define AD_BUFF_LEN 128
typedef struct{
	__IO uint16_t length;
	__IO uint16_t signal;

}data_pair_t;

typedef struct{
	__IO uint16_t slot[BUFF_LEN/2];
} buffer_slot_t;

//loop buffer, with writing_head & reading_tail
typedef struct{
	__IO uint16_t *current;
	__IO uint16_t head;
	__IO uint16_t tail;
	buffer_slot_t _buffer[AD_BUFF_LEN];
} ad_buffer_t;


typedef struct{
	ad_buffer_t ad_buffer;
	__IO int counter1;
	__IO int delay;
	__IO uint16_t ADC_[AD_CH_NUM];
	__IO int counter1_sample;
	//__IO uint16_t ADC_sample[AD_CH_NUM];
	//__IO data_pair_t ADC_sample_group[DATA_NUM];
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
	uint16_t pwm_circle 
} pwm_t;

typedef struct{
	port_pin_t swR_pin;
} sw_t;

typedef struct{
	port_pin_t clk_pin;
	port_pin_t dat_pin;
} sp_port_t;

typedef struct{
	sp_port_t R;
	sp_port_t A;
	sp_port_t B;
	sp_port_t SW;
} pga_t;

extern int cmd_dealer_init(void);
