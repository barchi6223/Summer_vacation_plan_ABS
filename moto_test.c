#include <HT66F70A.h>
typedef	unsigned char	u8;
typedef	char			s8;
typedef	unsigned short	u16;
typedef	short			s16;
typedef	unsigned long	u32;
typedef	long			s32;

#define  SW_P0PU		_pepu0
#define  SW_P0			_pe0
#define  SW_P0C			_pec0

#define	 SW_P1PU		_pepu1		
#define	 SW_P1 		    _pe1		
#define	 SW_P1C			_pec1		

#define	 SW_P2PU		_pepu2		
#define	 SW_P2			_pe2		
#define	 SW_P2C			_pec2		


#define	 SW_P3PU		_pepu3		
#define	 SW_P3			_pe3		
#define	 SW_P3C			_pec3	
void Delay100us(u16);							//�禡�쫬�ŧi		 
void main()
{	s16 temp,Index=100;
	_wdtc=0b10101111;							//�����ݭ̪��p�ɾ�
	SW_P0C=1; SW_P0PU=1;			   	//�W������}�쬰��J�ݩʨñҥδ��ɹq��
	SW_P1C=1; SW_P1PU=1;
	SW_P2C=1; SW_P2PU=1;
	SW_P3C=1; SW_P3PU=1;		   	
	_psc0=0x01; _tbc0=0x85;_tb0e=1;				//fTB=fSYS/4,�g��=8192*fTB,�P��TB0���_	
	_pcs2=0x01;						//�]�wPC3/PC4��TP2�\��
	_tm2c0=0b00000000;							//fINT=fSYS(8MHz)/4 (0.5us)
	_tm2c1=0b10101000;							//PWM/Active High/TM2R����g��
	_tm2rp=160;									//�g��=256*160*0.5us=20.48ms
	_t2on=1; _emi=1;							//�_�lTM1�p�ƨíP��EMI
	while(1)
	{	temp=Index*20+1000;						//�ഫ�����Ť�Ѽ�
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
void Delay100us(u16 del)						//����del*200���O�g��
{	u16 i,j;									//@fSYS=8MH,����del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}