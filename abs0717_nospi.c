#include "HT66F70A.h"
typedef	unsigned char	u8;
typedef	char			s8;
typedef	unsigned short	u16;
typedef	short			s16;
typedef	unsigned long	u32;
typedef	long			s32;
//�~�q���}��
#define Relay _pc0
#define Relayc _pcc0
//LED�}��
#define led _pb6
#define ledc _pbc6
#define led2 _pb7
#define ledc2 _pbc7
//���s�}��
#define  SW_P0			_pe0
#define	 SW_P1 		    _pe1
#define  SW_P0C			_pec0
#define	 SW_P1C			_pec1
//���s�}��q���W��
#define  SW_P0PU		_pepu0
#define	 SW_P1PU		_pepu1		
#define	 SW_P2PU		_pepu2		
#define	 SW_P3PU		_pepu3	
//�p���ܼ�
u8 SEC,R1sec;
//���F�ܼ�
s16 R_S,temp,Index=100;

void Interrupt_Pin();	//�~�����_�]�w
void TM_Pin();  		//�ɶ����_�]�w
void Moto_Pin();		//���F��l
void Moto_control();	//���F����
void Delay100us(u16);	

void main()
{
	_wdtc=0xaf; 
	ledc=0; ledc2=0;
	R_S=0;
	TM_Pin();
	Moto_Pin();
	Interrupt_Pin();

	_emi=1;
	while(1)
	{	
		
	}
}

void TM_Pin(){
	_tm4c0=0b00100000;							
	_tm4c1=0b11000001;							
	_tm4al=5000%256; _tm4ah=5000/256;         	
	_mf4e=1; _t4ae=1; 							
	_t4on=1;
	SEC=0; R1sec=100;
}

void Moto_Pin(){
	SW_P0C=1; SW_P0PU=1;			   	//�W������}�쬰��J�ݩʨñҥδ��ɹq��
	SW_P1C=1; SW_P1PU=1;
	_pds2=0x01;							//�]�wPD4��TP2�\��
	_tm2c0=0b00000000;					//fINT=fSYS(8MHz)/4 (0.5us)
	_tm2c1=0b10101000;					//PWM/Active High/TM2R����g��
	_tm2rp=160;							//�g��=256*160*0.5us=20.48ms
	_t2on=1;
}

void Interrupt_Pin(){
	_pac3=1; _papu3=1;
	_integ=0b00000101;
	_int0e=1;
	_ifs0=0x00;
	_pac4=1; _papu4=1;
	_int1e=1;
	_ifs1=0x00;
}

void Moto_control(){
	temp=Index*20+1000;						//�ഫ�����Ť�Ѽ�
	_tm2al=temp%256;						//�]�w���Ť�Ѽ�
	_tm2ah=temp/256;					
	temp>>=1;								//�ഫ��Ton�ɶ�
	Delay100us(100);						//����120ms		
	//while(1)
	//{	
		if(!SW_P0)
		{
			Index=0;
			//break;
		}
		if(!SW_P1)
		{
			Index=180;
		/*	Index++;
			if(Index>=200) Index=200;
			break;;
		*/}
	//}
}

DEFINE_ISR(button_up,0x04)	//�~�����_
{	
	led2=0;
	R_S++;
	_int0f = 0;	
}

DEFINE_ISR(Button_Down,0x08)
{	

	led2=1;
	_int1f = 0;
}

DEFINE_ISR(ISR_STM,0x38)  	//�ɶ����_
{			
	if(--R1sec==0)						
	{	R1sec=100;
		led=1;
		R_S=0;
		//if(++SEC==2) led2=1;
		if(++SEC==5)
		{
			SEC=0;
			led=0;
		}
	}
	_t4af=0;
}

void Delay100us(u16 del)						//����del*200���O�g��
{	u16 i,j;									//@fSYS=8MH,����del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}