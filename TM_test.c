// PROGRAM	: 2-3.c										2013.1028
// FUNCTION	: ETM PWM DC Motro Control with H-Bridge 	By Steven
#include <HT66F70A.h>


typedef	unsigned char	u8;
typedef	char			s8;
typedef	unsigned short	u16;
typedef	short			s16;
typedef	unsigned long	u32;
typedef	long			s32;
_Bool FG_GoStop;
u8 SEC,MIN,R1sec;
void Delay100us(u16);							//�禡�쫬�ŧi		 
void main()
{

	_wdtc=0xaf;
	//_pb6=0;
	_pbc6=0;
	_psc0=0x01; _tbc0=0x85;	
	_tm2c0=0b00100000;							//fINT=fH/16(2us)
	_tm2c1=0b11000001;							//Timer/Counter�Ҧ�,TM2A�k�X�M��
	_tm2al=5000%256; _tm2ah=5000/256;         	//TM2A=5000 (5000*2us=10ms)
	_mf0e=1; _t2ae=1; 							//�P��T2A���_
	_emi=1; _t2on=1; FG_GoStop=1;
	SEC=0; MIN=0; R1sec=100;
	while(1);
}
void Delay100us(u16 del)							//����del*200���O�g��
{	u16 i,j;										//@fSYS=8MH,����del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}


DEFINE_ISR(ISR_STM,0x14)
{	if(FG_GoStop)								//�O�_�Ȱ��p�ơH
	{	if(--R1sec==0)							//�_,��F�@��?
		{	R1sec=100;							//�O,���]R1sec���
			_pb6=1;
			if(++SEC==10)
			{
				SEC=0;
				_pb6=0;
			}
		}	
	}
	_pb6=0;
	_t2af=0;									//�M��T2AF�X��		
}