#include "HT66F70A.h"



void main()
{
	_wdtc=0xaf;
	
	_pac3=1; _papu3=1;
	_pac4=1; _papu4=1;
	_integ=0b00001010;
	_int0e=1; _int1e=1;
	_ifs0=0x00;
//	_ifs1=0x00;
	_pb6=1;	_pbc6=0;
	_emi=1;
	while(1);
}
DEFINE_ISR(button_up,0x04)
{
	_pb6=0;
	_int0f = 0;
		
}
DEFINE_ISR(Button_Down,0x08)
{	

	_pb6=1;
	_int1f = 0;
}