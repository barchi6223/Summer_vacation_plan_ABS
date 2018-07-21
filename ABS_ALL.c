#include "HT66F70A.h"
typedef	unsigned char	u8;
typedef	char			s8;
typedef	unsigned short	u16;
typedef	short			s16;
typedef	unsigned long	u32;
typedef	long			s32;
//繼電器腳位
#define Relay _pc0
#define Relayc _pcc0
//LED腳位
#define led _pb6
#define ledc _pbc6
#define led2 _pb7
#define ledc2 _pbc7
//按鈕腳位
#define  SW_P0			_pe0
#define	 SW_P1 		    _pe1
#define  SW_P0C			_pec0
#define	 SW_P1C			_pec1
//按鈕腳位電阻上拉
#define  SW_P0PU		_pepu0
#define	 SW_P1PU		_pepu1		
#define	 SW_P2PU		_pepu2		
#define	 SW_P3PU		_pepu3	
//SPI腳位
#define SDO _pa5	//以盛群為基準
#define SDA _pa6	//以盛群為基準
#define SCK _pa7
#define CS  _pb5
#define SDOC _pac5	//以盛群為基準
#define SDAC _pac6
#define SCKC _pac7
#define CSC  _pbc5
#define SDOPU _papu5	//盛群為基準
#define SDAPU _papu6
#define SCKPU _papu7
#define CSPU  _pbpu5
//輪徑
#define WHEEL 24

void Interrupt_Pin();	//外部中斷設定
void TM_Pin();  		//時間中斷設定
void Moto_Pin();		//馬達初始
void PinSet();

void Moto_control(u8 angle);	//馬達控制
float Operation_Speed();//計算時速

void Delay100us(u16);	
void delay_ms(unsigned char);

//SPI
unsigned char ADXL345_SPI_Read(unsigned char);
void ADXL345_SPI_Write(unsigned char Address, unsigned char WriteData);


u8 SEC,R1sec,s;
s16 RollSpeed,temp,Index=100;
float Speed,SpeedArray[3];
int AccX,AccY,AccZ;
int* ptrAcc[] = {&AccX,&AccY,&AccZ};
unsigned char id;

void main(){
	_wdtc=0xaf; 
	ledc=0; ledc2=0;
	
	TM_Pin();
	Moto_Pin();
	Interrupt_Pin();
	PinSet();
	
	ADXL345_SPI_Write(0x31,0x0B); //設定測量範圍&資料格式
	ADXL345_SPI_Write(0x2D,0x08); //開始測量
	
	_emi=1;
	while(1){
		if(Speed>10) Moto_control(0);
		else Moto_control(180);	
		/*AccX = ((ADXL345_SPI_Read(0x32)<<8)&0xFF00) | (ADXL345_SPI_Read(0x33)&0xFF);
		AccX = AccX*4;
		AccY = ((ADXL345_SPI_Read(0x34)<<8)&0xFF00) | (ADXL345_SPI_Read(0x35)&0xFF);
		AccY = AccY*4;
		AccZ = ((ADXL345_SPI_Read(0x36)<<8)&0xFF00) | (ADXL345_SPI_Read(0x37)&0xFF);
		AccZ = AccZ*4;*/	
		id=(unsigned char)ADXL345_SPI_Read(0x00);
	}
}

void TM_Pin(){				//時間中斷設定
	_tm4c0=0b00100000;							
	_tm4c1=0b11000001;							
	_tm4al=5000%256; _tm4ah=5000/256;         	
	_mf4e=1; _t4ae=1; 							
	_t4on=1;
	SEC=0; R1sec=50; s=2;
	RollSpeed=0;
}

void Moto_Pin(){			//馬達設定
	SW_P0C=1; SW_P0PU=1;	//規劃按鍵腳位為輸入屬性並啟用提升電阻
	SW_P1C=1; SW_P1PU=1;
	_pds2=0x01;				//設定PD4為TP2功能
	_tm2c0=0b00000000;
	_tm2c1=0b10101000;
	_tm2rp=160;
	_t2on=1;
}

void Interrupt_Pin(){		//外部中斷設定 
	_pac3=1; _papu3=1;
	_integ=0b00000101;		//正緣觸發中斷
	_int0e=1;
	_ifs0=0x00;
	_pac4=1; _papu4=1;
	_int1e=1;
	_ifs1=0x00;
}
 
void Moto_control(u8 angle){
		temp=Index*20+1000;
		_tm2al=temp%256;
		_tm2ah=temp/256;
		temp>>=1;
		Index=angle;
}

float Operation_Speed(){ //計算時速

	float HourSpeed;
	HourSpeed=RollSpeed*WHEEL*2.54*60*2/1000;
	RollSpeed=0;	
	return HourSpeed;
}

DEFINE_ISR(button_up,0x04){	//外部中斷
	 
	led2=0;
	RollSpeed++;
	_int0f = 0;	
}

DEFINE_ISR(Button_Down,0x08){
	
	led2=1;
	_int1f = 0;
}

DEFINE_ISR(ISR_STM,0x38){  	//時間中斷
			
    if(--R1sec==0){
    
    	led=1;
    	R1sec=50;
    	if(s<=2){
    		SpeedArray[s]=Operation_Speed();
    		s--;
    	}else{
    		s=2;
    		SpeedArray[s]=Operation_Speed();
    	}
    	Speed=(SpeedArray[0]+SpeedArray[1]+SpeedArray[2])/3;
    	if(++SEC==10)
    	{
    	led=0;
     	SEC=0;
     	}
     	
    }
    _t4af=0;
}

void Delay100us(u16 del)						//延遲del*200指令週期
{	u16 i,j;									//@fSYS=8MH,延遲del*100us
	for(i=0;i<del;i++)
		for(j=0;j<=25;j++) GCC_NOP();
}

void delay_ms(unsigned char del)
{	
	unsigned char i;
	for(i=0;i<del;i++) GCC_DELAY(2000);		//內建函式，延遲2000指令週期
}


void PinSet()
{
	_cp0c = 0x00;	//類比比較器功能關閉
	_cp1c = 0x00;
	
	_scomen = 0;
	//_smod = 0xe0;//4MHz
	_sdis0=0;
	_sdis1=0;
	_simc0=0x00;
	_simc2=0x0C;
	_simen=1;  
	
	_adoff=1;
	_pas2=0x10;  //設定各個腳位功能
	_pas3=0x22;
	_pbs2=0x10;

	
	_ifs4=0;
	
	SDOC=0; 	SDAC=1; 	SCKC=0;		CSC=0;		//設定I/O
	_phc0 = 0; 	_phc1 = 0;	_phc2 = 0; 	_pgc = 0x00;   //設置PH0、PH1、PH2為輸出   
	SDAPU=1;	SDOPU=1;	SCKPU=1;	CSPU=1;				
	SCK=0;		CS=1;		//數據初始
}

unsigned char ADXL345_SPI_Read(unsigned char Address)
{
	unsigned char TempSend=0;
	unsigned char TempRead =0;
	do
	{
		_wcol=0;
		TempSend = Address|0x80;
		_simd = TempSend;
	}while(_wcol == 1);
	while(_trf == 0);
	_trf = 0;
	TempRead = _simd;
	return TempRead;
}

void ADXL345_SPI_Write(unsigned char Address, unsigned char WriteData)
{
	unsigned char AddressSend;
	unsigned char WriteDataSend;
	
	do
	{
		_wcol=0;
		AddressSend = Address & 0x7F;
		_simd = AddressSend;
	}while(_wcol == 1);
	while(_trf == 0);
	_trf = 0;

	do
	{
		_wcol=0;
  		WriteDataSend = WriteData;
  		_simd = WriteDataSend;
	}while(_wcol == 1);
	while(_trf == 0)
	{
	}
	_trf = 0;
}