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
void Delay100us(u16);							//函式原型宣告		 
void main()
{

	_wdtc=0xaf;
	//_pb6=0;
	_pbc6=0;
	_psc0=0x01; _tbc0=0x85;	
	_tm2c0=0b00100000;							//fINT=fH/16(2us)
	_tm2c1=0b11000001;							//Timer/Counter模式,TM2A吻合清除
	_tm2al=5000%256; _tm2ah=5000/256;         	//TM2A=5000 (5000*2us=10ms)
	_mf0e=1; _t2ae=1; 							//致能T2A中斷
	_emi=1; _t2on=1; FG_GoStop=1;
	SEC=0; MIN=0; R1sec=100;
	while(1);
}
void Delay100us(u16 del)							//延遲del*200指令週期
{	u16 i,j;										//@fSYS=8MH,延遲del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}


DEFINE_ISR(ISR_STM,0x14)
{	if(FG_GoStop)								//是否暫停計數？
	{	if(--R1sec==0)							//否,到達一秒?
		{	R1sec=100;							//是,重設R1sec初值
			_pb6=1;
			if(++SEC==10)
			{
				SEC=0;
				_pb6=0;
			}
		}	
	}
	_pb6=0;
	_t2af=0;									//清除T2AF旗標		
}