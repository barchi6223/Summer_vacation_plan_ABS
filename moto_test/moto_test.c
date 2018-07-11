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
void Delay100us(u16);							//函式原型宣告		 
void main()
{	s16 temp,Index=100;
	_wdtc=0b10101111;							//關閉看們狗計時器
	SW_P0C=1; SW_P0PU=1;			   	//規劃按鍵腳位為輸入屬性並啟用提升電阻
	SW_P1C=1; SW_P1PU=1;
	SW_P2C=1; SW_P2PU=1;
	SW_P3C=1; SW_P3PU=1;		   	
	_psc0=0x01; _tbc0=0x85;_tb0e=1;				//fTB=fSYS/4,週期=8192*fTB,致能TB0中斷	
	_pcs2=0x01;						//設定PC3/PC4為TP2功能
	_tm2c0=0b00000000;							//fINT=fSYS(8MHz)/4 (0.5us)
	_tm2c1=0b10101000;							//PWM/Active High/TM2R控制週期
	_tm2rp=160;									//週期=256*160*0.5us=20.48ms
	_t2on=1; _emi=1;							//起始TM1計數並致能EMI
	while(1)
	{	temp=Index*20+1000;						//轉換為佔空比參數
		_tm2al=temp%256;						//設定佔空比參數
		_tm2ah=temp/256;					
		temp>>=1;								//轉換為Ton時間
		Delay100us(100);						//延遲120ms
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
void Delay100us(u16 del)						//延遲del*200指令週期
{	u16 i,j;									//@fSYS=8MH,延遲del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}