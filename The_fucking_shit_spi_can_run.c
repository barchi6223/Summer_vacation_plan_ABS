#include "HT66F70A.h"
#define SDO _pa5
#define SDI _pa6
#define SCK _pa7
#define CS _pb5

#define SDOC _pac5
#define SDIC _pac6
#define SCKC _pac7
#define CSC _pbc5
unsigned short Data1;
unsigned short Slave(void);
void Master(unsigned short Data);
void main()
{
	_wdtc=0xaf;
	SCK=0;
	SDIC=1; SCKC=0; SDOC=0;
	_simc0=0b01000000;
	_simc2=0b00100000;
	_simen=1;
	Data1=0;
	while(1){
			do{
				_wcol=0;
				Master(0x00);
			}while(_wcol);
			while(!_trf);
			_trf=0;
			Data1=_simd;
			
	}
}

/*unsigned short Slave(void){
	unsigned short a=7, temp=0b10000000;
	do{
		while(!SCK);
		if(SDI) Data1 |= temp;
		while(!SCK);
		temp>>1;
	}while(a--!=0);
	return Data1;
}*/

void Master(unsigned short Data){
	unsigned short temp=0b00000001;
	do{
		SDO=Data & temp;
		SCK=1; _nop(); SCK=0;
		temp<<=1;
	}while(temp!=0);
}