#include "HT66F70A.h"

#define led _pb6
#define ledc _pbc6
/////////////////////////////////
//���s�}��
#define  SW_P0			_pe0
#define	 SW_P1 		    _pe1
#define	 SW_P2			_pe2
#define	 SW_P3			_pe3
#define  SW_P0C			_pec0
#define	 SW_P1C			_pec1
#define	 SW_P2C			_pec2
#define	 SW_P3C			_pec3
//���s�}��q���W��
#define  SW_P0PU		_pepu0
#define	 SW_P1PU		_pepu1		
#define	 SW_P2PU		_pepu2		
#define	 SW_P3PU		_pepu3	
///////////////////////////////////
typedef	unsigned char	u8;
typedef	char			s8;
typedef	unsigned short	u16;
typedef	short			s16;
typedef	unsigned long	u32;
typedef	long			s32;

u8 SEC,R1sec;
s16 temp,Index=100;
void TM_Pin();
void Moto_Pin();
void Delay100us(u16);	

void main()
{
	_wdtc=0xaf; ledc=0;
	TM_Pin();
	Moto_Pin();
	while(1)
	{	
		temp=Index*20+1000;						//�ഫ�����Ť�Ѽ�
		_tm2al=temp%256;						//�]�w���Ť�Ѽ�
		_tm2ah=temp/256;					
		temp>>=1;								//�ഫ��Ton�ɶ�
		Delay100us(100);						//����120ms
		
		while(1)
		{	
			if(!SW_P0)
			{
				Index=0;
				break;
			}
			if(!SW_P1)
			{
				Index=90;
				break;
			}
			if(!SW_P2)
			{
				Index++;
				if(Index>=200) Index=200;
				break;
			}
			if(!SW_P3)
			{
				Index--;
				if(Index<=0) Index=0;
				break;
			}
		}
	}
}

void TM_Pin(){
	_tm4c0=0b00100000;							
	_tm4c1=0b11000001;							
	_tm4al=5000%256; _tm4ah=5000/256;         	
	_mf4e=1; _t4ae=1; 							
	_emi=1; _t4on=1;
	SEC=0; R1sec=100;
}

void Moto_Pin(){
	SW_P0C=1; SW_P0PU=1;			   	//�W������}�쬰��J�ݩʨñҥδ��ɹq��
	SW_P1C=1; SW_P1PU=1;
	SW_P2C=1; SW_P2PU=1;
	SW_P3C=1; SW_P3PU=1;
	_pcs2=0x01;						//�]�wPC3/PC4��TP2�\��
	_tm2c0=0b00000000;							//fINT=fSYS(8MHz)/4 (0.5us)
	_tm2c1=0b10101000;							//PWM/Active High/TM2R����g��
	_tm2rp=160;									//�g��=256*160*0.5us=20.48ms
	_t2on=1;
}
	
DEFINE_ISR(ISR_STM,0x38)
{			
	if(--R1sec==0)						
	{	R1sec=100;
		led=1;
		if(++SEC==10)
		{
			SEC=0;
			led=0;
		}
	}
	//led=0;
	_t4af=0;
}

void Delay100us(u16 del)						//����del*200���O�g��
{	u16 i,j;									//@fSYS=8MH,����del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}