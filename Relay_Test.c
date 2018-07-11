#include "HT66F70A.h"
#define Relay _pc0
#define Relayc _pcc0
void Delay100us(int);
void main()
{
	_wdtc=0b10101111;
	Relay=0; Relayc=0;
	int x;
	while(1){
		Relay=1;
		Delay100us(10000);
		Relay=0;
		Delay100us(10000);		
	}
	

}

void Delay100us(int del){
	int i,j;
	for(i=0;i<del;i++){
		for(j=0;j<=25;j++) GCC_NOP();
	}
}