; Generated by holtek-gcc v3.13, Wed Jul 18 22:34:57 2018
; 
; Configuration:
;       with long instruction
;       Multi-ROM, Multi-RAM
;       bits_per_rom_unit:16
;       with mp1
;       with tbhp, address(0x9)
;          Use tabrd-const
;       
; SFR address of long-instruction arch:
;    mp0 = -1,1,0
;    mp1 = 4,3,2
;    mp2 = 14,13,12
;    tbp = 9,7,8
;    acc = 5
;    pcl = 6
;    status = 10
;    bp = 11
;    intc = 48
;       
; use 'tabrdc' instead of 'tabrd'
;       

#pragma translator "holtek-gcc 4.6.4" "3.13" "build 20130711"
; Rebuild 26

ir equ [2]
mp equ [3]
sbp equ [4]
acc equ [5]
bp equ [11]
tblp equ [7]
tbhp equ [9]
status equ [10]
c equ [10].0
ac equ [10].1
z equ [10].2
ov equ [10].3
cz equ [10].6
sc equ [10].7
intc equ [48]

extern ra:byte
extern rb:byte
extern rc:byte
extern rd:byte
extern re:byte
extern rf:byte
extern rg:byte
extern rh:byte
extern _Crom2Prom:near
extern _Crom2PromNext:near
@HCCINIT	.section 'data'
@HCCINIT0	.section 'data'

#pragma debug scope 1 1
	extern __DELAY3:near
	extern __DELAYX3:near
	extern __DELAYX6:near
	extern __DELAYY5:near
	extern __DELAYY3:near
	extern _builtin_holtek_delay_2:byte
___tm4c0 equ [336]
___tm4c1 equ [337]
___tm4al equ [340]
___tm4ah equ [341]
___intc3 equ [51]
___mfi4 equ [56]
public _TM_Pin
#pragma debug scope 2 1
#line 59 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
_TM_Pin .section 'code'
_TM_Pin proc
#line 60 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,32
	lmov [336],a
#line 61 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,193
	lmov [337],a
#line 62 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,136
	lmov [340],a
	mov a,19
	lmov [341],a
#line 63 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [51].2
	set [56].1
#line 64 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	lset [336].3
#line 65 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr _SEC[0]
	mov a,100
	mov _R1sec[0],a
	mov a,2
	mov _s[0],a
	ret
_TM_Pin endp
#line 65 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
___pec equ [35]
___pepu equ [33]
___pds2 equ [366]
___tm2c0 equ [81]
___tm2c1 equ [82]
___tm2rp equ [87]
public _Moto_Pin
#pragma debug scope 3 1
#line 68 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
_Moto_Pin .section 'code'
_Moto_Pin proc
#line 69 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [35].0
	set [33].0
#line 70 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [35].1
	set [33].1
#line 71 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,1
	lmov [366],a
#line 72 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [81]
#line 73 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,168
	mov [82],a
#line 74 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,160
	mov [87],a
#line 75 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [81].3
	ret
_Moto_Pin endp
#line 75 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
___pac equ [19]
___papu equ [17]
___integ equ [57]
___intc0 equ [48]
___ifs0 equ [328]
___ifs1 equ [329]
public _Interrupt_Pin
#pragma debug scope 4 1
#line 78 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
_Interrupt_Pin .section 'code'
_Interrupt_Pin proc
#line 79 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [19].3
	set [17].3
#line 80 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,5
	mov [57],a
#line 81 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [48].1
#line 82 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	lclr [328]
#line 83 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [19].4
	set [17].4
#line 84 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [48].2
#line 85 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	lclr [329]
	ret
_Interrupt_Pin endp
#line 85 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
___wdtc equ [62]
___pbc equ [23]
public _main
#pragma debug scope 5 1
#line 44 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
IFDEF WITH_DEFAULT_STARTUP
extern _main_initial0:near
extern _main_startup:near
ENDIF

ROMBANK 0 @start
@start .section com_l 'code'
_main_startup1:
@start .section com_e 'code'
	mov a,bank _main
	mov bp,a
	jmp _main

_main .section 'code'
_main proc
#line 45 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,175
	mov [62],a
#line 46 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [23].6
	clr [23].7
#line 47 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr _RollSpeed[0]
	clr _RollSpeed[1]
#line 48 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _TM_Pin
#line 49 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _Moto_Pin
#line 50 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _Interrupt_Pin
#line 52 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [48].0
_L5:
	jmp _L5
	jmp $
_main endp

@dummy proc
	call _main
@dummy endp

#line 52 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
___pe equ [34]
public _Moto_control
#pragma debug scope 6 1
#line 88 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
_Moto_control .section 'code'
_Moto_control proc
#line 94 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	sz [34].0
	jmp _L8
#line 96 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr _Index[0]
	clr _Index[1]
_L8:
#line 99 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	sz [34].1
	jmp _L7
#line 101 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,-76
	mov _Index[0],a
	clr _Index[1]
_L7:
	ret
_Moto_control endp
#line 101 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
public _Operation_Speed
#pragma debug scope 7 1
#line 106 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
_Operation_Speed .section 'code'
_Operation_Speed proc
#line 108 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,_RollSpeed[0]  
	mov _builtin_holtek_mulhi3_2[0],a  
	mov a,_RollSpeed[1]  
	mov _builtin_holtek_mulhi3_2[1],a
	mov a,24  
	mov _builtin_holtek_mulhi3_2[2],a  
	clr _builtin_holtek_mulhi3_2[3]
	fcall _builtin_holtek_mulhi3
	mov a,_builtin_holtek_mulhi3_2[4]  
	mov rd,a  
	mov a,_builtin_holtek_mulhi3_2[5]  
	mov re,a
	mov a,re
	mov _builtin_holtek_mant1[1],a
	mov a,rd
	mov _builtin_holtek_mant1[0],a
	fcall _builtin_holtek_itod
	mov a,_builtin_holtek_mant12p[0]
	mov rg,a
	mov a,_builtin_holtek_mant1[2]
	mov rf,a
	mov a,_builtin_holtek_mant1[1]
	mov re,a
	mov a,_builtin_holtek_mant1[0]
	mov rd,a
	mov a,rg
	mov _builtin_holtek_mant12p[0],a
	mov a,rf
	mov _builtin_holtek_mant1[2],a
	mov a,re
	mov _builtin_holtek_mant1[1],a
	mov a,rd
	mov _builtin_holtek_mant1[0],a
	mov a,64
	mov _builtin_holtek_mant12p[1],a
	mov a,34
	mov _builtin_holtek_mant2[2],a
	mov a,143
	mov _builtin_holtek_mant2[1],a
	mov a,92
	mov _builtin_holtek_mant2[0],a
	fcall _builtin_holtek_dtmul
	mov a,_builtin_holtek_mant12p[0]
	mov rg,a
	mov a,_builtin_holtek_mant1[2]
	mov rf,a
	mov a,_builtin_holtek_mant1[1]
	mov re,a
	mov a,_builtin_holtek_mant1[0]
	mov rd,a
	mov a,rg
	mov _builtin_holtek_mant12p[0],a
	mov a,rf
	mov _builtin_holtek_mant1[2],a
	mov a,re
	mov _builtin_holtek_mant1[1],a
	mov a,rd
	mov _builtin_holtek_mant1[0],a
	mov a,66
	mov _builtin_holtek_mant12p[1],a
	mov a,112
	mov _builtin_holtek_mant2[2],a
	mov a,0
	mov _builtin_holtek_mant2[1],a
	mov a,0
	mov _builtin_holtek_mant2[0],a
	fcall _builtin_holtek_dtmul
	mov a,_builtin_holtek_mant12p[0]
	mov rg,a
	mov a,_builtin_holtek_mant1[2]
	mov rf,a
	mov a,_builtin_holtek_mant1[1]
	mov re,a
	mov a,_builtin_holtek_mant1[0]
	mov rd,a
	mov a,rg
	mov _builtin_holtek_mant12p[0],a
	mov a,rf
	mov _builtin_holtek_mant1[2],a
	mov a,re
	mov _builtin_holtek_mant1[1],a
	mov a,rd
	mov _builtin_holtek_mant1[0],a
	mov a,68
	mov _builtin_holtek_mant12p[1],a
	mov a,122
	mov _builtin_holtek_mant2[2],a
	mov a,0
	mov _builtin_holtek_mant2[1],a
	mov a,0
	mov _builtin_holtek_mant2[0],a
	fcall _builtin_holtek_dtdiv
	mov a,_builtin_holtek_mant12p[0]
	mov rg,a
	mov a,_builtin_holtek_mant1[2]
	mov rf,a
	mov a,_builtin_holtek_mant1[1]
	mov re,a
	mov a,_builtin_holtek_mant1[0]
	mov rd,a
#line 109 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr _RollSpeed[0]
	clr _RollSpeed[1]
#line 111 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,rg
	mov rc,a
	mov a,rf
	mov rb,a
	mov a,re
	mov ra,a
	ret
_Operation_Speed endp
#line 111 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
___pb equ [22]
public _button_up
#pragma debug scope 8 1
#line 115 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
@button_up_code .section at 4 'code'
	mov r1,a
	mov a, bp
	clr bp
	jmp _button_up
ROMBANK 0 _button_up
#pragma debug scope 1 1
@dummy4 proc
	call _button_up
@dummy4 endp
#pragma debug scope 9 1
_button_up .section 'code'
_button_up proc
	mov r2,a
	mov a, status
	mov r3,a
#line 116 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [22].7
#line 117 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	inc _RollSpeed[0]
	sz z
	inc _RollSpeed[1]
#line 118 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [48].4
	mov a,r2
	mov bp,a
	mov a,r3
	mov status,a
	mov a,r1
	reti
_button_up endp

#line 118 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
public _Button_Down
#pragma debug scope 10 1
#line 122 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
@Button_Down_code .section at 8 'code'
	mov r1,a
	mov a, bp
	clr bp
	jmp _Button_Down
ROMBANK 0 _Button_Down
#pragma debug scope 1 1
@dummy8 proc
	call _Button_Down
@dummy8 endp
#pragma debug scope 11 1
_Button_Down .section 'code'
_Button_Down proc
	mov r2,a
	mov a, status
	mov r3,a
#line 123 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [22].7
#line 124 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [48].5
	mov a,r2
	mov bp,a
	mov a,r3
	mov status,a
	mov a,r1
	reti
_Button_Down endp

#line 124 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
public _ISR_STM
#pragma debug scope 12 1
#line 128 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
@ISR_STM_code .section at 56 'code'
	mov r1,a
	mov a, bp
	clr bp
	jmp _ISR_STM
ROMBANK 0 _ISR_STM
#pragma debug scope 1 1
@dummy56 proc
	call _ISR_STM
@dummy56 endp
#pragma debug scope 13 1
_ISR_STM .section 'code'
_ISR_STM proc
local _ISR_STM_2 db 1 dup(?)
	mov r2,a
	mov a, status
	mov r3,a
	mov a,mp
	mov r4,a
	mov a,sbp
	mov r5,a
	mov a,tblp
	mov r6,a
	mov a,tbhp
	mov r7,a
#line 129 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	deca _R1sec[0]
	mov ra,a
	mov a,ra
	mov _R1sec[0],a
	sz ra
	jmp _L15
#line 132 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	set [22].6
#line 133 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,100
	mov _R1sec[0],a
#line 134 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,_s[0]
	mov _ISR_STM_2[0],a
	mov a,2
	sub a,_ISR_STM_2[0]
	snz c
	jmp _L16
#line 135 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _Operation_Speed
	mov a,_ISR_STM_2[0]
	mov rd,a
	clr re
	clr c
	rlca rd
	mov rf,a
	rlca re
	mov rg,a
	mov a,rf
	addm a,rd
	mov a,rg
	adcm a,re
	mov a,low offset _SpeedArray
	add a,rd
	mov mp,a
	mov a,high offset _SpeedArray
	adc a,re
	mov sbp,a
	mov a,ra
	mov ir,a
	inc mp
	mov a,rb
	mov ir,a
	inc mp
	mov a,rc
	mov ir,a
#line 136 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _Operation_Speed
	mov a,ra
	mov _Speed[0],a
	mov a,rb
	mov _Speed[1],a
	mov a,rc
	mov _Speed[2],a
#line 137 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	dec _s[0]
	jmp _L17
_L16:
#line 139 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,2
	mov _s[0],a
#line 140 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _Operation_Speed
	mov a,ra
	mov _SpeedArray[6],a
	mov a,rb
	mov _SpeedArray[7],a
	mov a,rc
	mov _SpeedArray[8],a
#line 141 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	fcall _Operation_Speed
	mov a,ra
	mov _Speed[0],a
	mov a,rb
	mov _Speed[1],a
	mov a,rc
	mov _Speed[2],a
_L17:
#line 143 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	inca _SEC[0]
	mov ra,a
	mov a,ra
	mov _SEC[0],a
	mov a,ra
	sub a,5
	snz z
	jmp _L15
#line 145 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [22].6
#line 146 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr _SEC[0]
_L15:
#line 150 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr [56].5
	mov a,r2
	mov bp,a
	mov a,r3
	mov status,a
	mov a,r4
	mov mp,a
	mov a,r5
	mov sbp,a
	mov a,r6
	mov tblp,a
	mov a,r7
	mov tbhp,a
	tabrdc acc
	mov a,r1
	reti
_ISR_STM endp

#line 150 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
public _Delay100us
#pragma debug scope 14 1
#line 154 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
_Delay100us .section 'code'
_Delay100us proc
public _Delay100us_2
    local _Delay100us_2 db 2 dup(?)	; 2,0
#pragma debug variable 10 14 _Delay100us_2+0 "del"
#line 155 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	clr rb
	clr rc
_L20:
#line 155 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	mov a,rb
	sub a,_Delay100us_2[0]
	mov a,rc
	sbc a,_Delay100us_2[1]
	sz cz
	jmp _L19
	clr ra
_L23:
#line 156 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
;# 156 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c" 1
	nop
	inc ra
	mov a,ra
	sub a,26
	snz z
	jmp _L23
#line 155 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
	inc rb
	sz z
	inc rc
	jmp _L20
_L19:
	ret
_Delay100us endp
#line 155 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
#pragma debug scope 1 1
#line 33 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _SpeedArray
@HCCINIT0_SpeedArray .section 'data'
_SpeedArray	db 9 dup(0)
#pragma debug array 42 28 3 1
#pragma debug variable 42 1 _SpeedArray "SpeedArray"

@HCCINIT .section 'data'
#line 33 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _Speed
@HCCINIT0_Speed .section 'data'
_Speed	db 3 dup(0)
#pragma debug variable 28 1 _Speed "Speed"

@HCCINIT .section 'data'
public _Index
@HCCINIT	.section 'data'
#line 31 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
@HCCINIT_Index .section 'data'
_Index label byte
#pragma debug variable 9 1 _Index "Index"
	dw 100
@ROMDATA_BASE .section inpage 'code'
	dc 100
@HCCINIT_Index .section 'data'
#line 31 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _temp
@HCCINIT0_temp .section 'data'
_temp	db 2 dup(0)
#pragma debug variable 9 1 _temp "temp"

@HCCINIT .section 'data'
#line 31 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _RollSpeed
@HCCINIT0_RollSpeed .section 'data'
_RollSpeed	db 2 dup(0)
#pragma debug variable 9 1 _RollSpeed "RollSpeed"

@HCCINIT .section 'data'
#line 29 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _s
@HCCINIT0_s .section 'data'
_s	db 0
#pragma debug variable 8 1 _s "s"

@HCCINIT .section 'data'
#line 29 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _R1sec
@HCCINIT0_R1sec .section 'data'
_R1sec	db 0
#pragma debug variable 8 1 _R1sec "R1sec"

@HCCINIT .section 'data'
#line 29 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
public _SEC
@HCCINIT0_SEC .section 'data'
_SEC	db 0
#pragma debug variable 8 1 _SEC "SEC"

@HCCINIT .section 'data'
#pragma debug struct_begin 43 "__papu_bits"
#pragma debug field 21 8 0 1 "__papu0" ;0,1
#pragma debug field 21 8 0 1 "__papu1" ;1,1
#pragma debug field 21 8 0 1 "__papu2" ;2,1
#pragma debug field 21 8 0 1 "__papu3" ;3,1
#pragma debug field 21 8 0 1 "__papu4" ;4,1
#pragma debug field 21 8 0 1 "__papu5" ;5,1
#pragma debug field 21 8 0 1 "__papu6" ;6,1
#pragma debug field 21 8 0 1 "__papu7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 44 ""
#pragma debug field 2 43 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 44 1 ___papu "__papu" 1
#pragma debug struct_begin 45 "__pac_bits"
#pragma debug field 21 8 0 1 "__pac0" ;0,1
#pragma debug field 21 8 0 1 "__pac1" ;1,1
#pragma debug field 21 8 0 1 "__pac2" ;2,1
#pragma debug field 21 8 0 1 "__pac3" ;3,1
#pragma debug field 21 8 0 1 "__pac4" ;4,1
#pragma debug field 21 8 0 1 "__pac5" ;5,1
#pragma debug field 21 8 0 1 "__pac6" ;6,1
#pragma debug field 21 8 0 1 "__pac7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 46 ""
#pragma debug field 2 45 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 46 1 ___pac "__pac" 1
#pragma debug struct_begin 47 "__pb_bits"
#pragma debug field 21 8 0 1 "__pb0" ;0,1
#pragma debug field 21 8 0 1 "__pb1" ;1,1
#pragma debug field 21 8 0 1 "__pb2" ;2,1
#pragma debug field 21 8 0 1 "__pb3" ;3,1
#pragma debug field 21 8 0 1 "__pb4" ;4,1
#pragma debug field 21 8 0 1 "__pb5" ;5,1
#pragma debug field 21 8 0 1 "__pb6" ;6,1
#pragma debug field 21 8 0 1 "__pb7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 48 ""
#pragma debug field 2 47 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 48 1 ___pb "__pb" 1
#pragma debug struct_begin 49 "__pbc_bits"
#pragma debug field 21 8 0 1 "__pbc0" ;0,1
#pragma debug field 21 8 0 1 "__pbc1" ;1,1
#pragma debug field 21 8 0 1 "__pbc2" ;2,1
#pragma debug field 21 8 0 1 "__pbc3" ;3,1
#pragma debug field 21 8 0 1 "__pbc4" ;4,1
#pragma debug field 21 8 0 1 "__pbc5" ;5,1
#pragma debug field 21 8 0 1 "__pbc6" ;6,1
#pragma debug field 21 8 0 1 "__pbc7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 50 ""
#pragma debug field 2 49 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 50 1 ___pbc "__pbc" 1
#pragma debug struct_begin 51 "__pepu_bits"
#pragma debug field 21 8 0 1 "__pepu0" ;0,1
#pragma debug field 21 8 0 1 "__pepu1" ;1,1
#pragma debug field 21 8 0 1 "__pepu2" ;2,1
#pragma debug field 21 8 0 1 "__pepu3" ;3,1
#pragma debug field 21 8 0 1 "__pepu4" ;4,1
#pragma debug field 21 8 0 1 "__pepu5" ;5,1
#pragma debug field 21 8 0 1 "__pepu6" ;6,1
#pragma debug field 21 8 0 1 "__pepu7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 52 ""
#pragma debug field 2 51 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 52 1 ___pepu "__pepu" 1
#pragma debug struct_begin 53 "__pe_bits"
#pragma debug field 21 8 0 1 "__pe0" ;0,1
#pragma debug field 21 8 0 1 "__pe1" ;1,1
#pragma debug field 21 8 0 1 "__pe2" ;2,1
#pragma debug field 21 8 0 1 "__pe3" ;3,1
#pragma debug field 21 8 0 1 "__pe4" ;4,1
#pragma debug field 21 8 0 1 "__pe5" ;5,1
#pragma debug field 21 8 0 1 "__pe6" ;6,1
#pragma debug field 21 8 0 1 "__pe7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 54 ""
#pragma debug field 2 53 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 54 1 ___pe "__pe" 1
#pragma debug struct_begin 55 "__pec_bits"
#pragma debug field 21 8 0 1 "__pec0" ;0,1
#pragma debug field 21 8 0 1 "__pec1" ;1,1
#pragma debug field 21 8 0 1 "__pec2" ;2,1
#pragma debug field 21 8 0 1 "__pec3" ;3,1
#pragma debug field 21 8 0 1 "__pec4" ;4,1
#pragma debug field 21 8 0 1 "__pec5" ;5,1
#pragma debug field 21 8 0 1 "__pec6" ;6,1
#pragma debug field 21 8 0 1 "__pec7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 56 ""
#pragma debug field 2 55 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 56 1 ___pec "__pec" 1
#pragma debug struct_begin 57 "__intc0_bits"
#pragma debug field 21 8 0 1 "__emi" ;0,1
#pragma debug field 21 8 0 1 "__int0e" ;1,1
#pragma debug field 21 8 0 1 "__int1e" ;2,1
#pragma debug field 21 8 0 1 "__cp0e" ;3,1
#pragma debug field 21 8 0 1 "__int0f" ;4,1
#pragma debug field 21 8 0 1 "__int1f" ;5,1
#pragma debug field 21 8 0 1 "__cp0f" ;6,1
#pragma debug field 21 8 0 1 ;7,1
#pragma debug struct_end
#pragma debug union_begin 58 ""
#pragma debug field 2 57 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 58 1 ___intc0 "__intc0" 1
#pragma debug struct_begin 59 "__intc3_bits"
#pragma debug field 21 8 0 1 "__int2e" ;0,1
#pragma debug field 21 8 0 1 "__int3e" ;1,1
#pragma debug field 21 8 0 1 "__mf4e" ;2,1
#pragma debug field 21 8 0 1 ;3,1
#pragma debug field 21 8 0 1 "__int2f" ;4,1
#pragma debug field 21 8 0 1 "__int3f" ;5,1
#pragma debug field 21 8 0 1 "__mf4f" ;6,1
#pragma debug field 21 8 0 1 ;7,1
#pragma debug struct_end
#pragma debug union_begin 60 ""
#pragma debug field 2 59 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 60 1 ___intc3 "__intc3" 1
#pragma debug struct_begin 61 "__mfi4_bits"
#pragma debug field 21 8 0 1 "__t4pe" ;0,1
#pragma debug field 21 8 0 1 "__t4ae" ;1,1
#pragma debug field 21 8 0 1 "__t5pe" ;2,1
#pragma debug field 21 8 0 1 "__t5ae" ;3,1
#pragma debug field 21 8 0 1 "__t4pf" ;4,1
#pragma debug field 21 8 0 1 "__t4af" ;5,1
#pragma debug field 21 8 0 1 "__t5pf" ;6,1
#pragma debug field 21 8 0 1 "__t5af" ;7,1
#pragma debug struct_end
#pragma debug union_begin 62 ""
#pragma debug field 2 61 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 62 1 ___mfi4 "__mfi4" 1
#pragma debug struct_begin 63 "__integ_bits"
#pragma debug field 21 8 0 1 "__int0eg0" ;0,1
#pragma debug field 21 8 0 1 "__int0eg1" ;1,1
#pragma debug field 21 8 0 1 "__int1eg0" ;2,1
#pragma debug field 21 8 0 1 "__int1eg1" ;3,1
#pragma debug field 21 8 0 1 "__int2eg0" ;4,1
#pragma debug field 21 8 0 1 "__int2eg1" ;5,1
#pragma debug field 21 8 0 1 "__int3eg0" ;6,1
#pragma debug field 21 8 0 1 "__int3eg1" ;7,1
#pragma debug struct_end
#pragma debug union_begin 64 ""
#pragma debug field 2 63 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 64 1 ___integ "__integ" 1
#pragma debug struct_begin 65 "__wdtc_bits"
#pragma debug field 21 8 0 1 "__ws0" ;0,1
#pragma debug field 21 8 0 1 "__ws1" ;1,1
#pragma debug field 21 8 0 1 "__ws2" ;2,1
#pragma debug field 21 8 0 1 "__we0" ;3,1
#pragma debug field 21 8 0 1 "__we1" ;4,1
#pragma debug field 21 8 0 1 "__we2" ;5,1
#pragma debug field 21 8 0 1 "__we3" ;6,1
#pragma debug field 21 8 0 1 "__we4" ;7,1
#pragma debug struct_end
#pragma debug union_begin 66 ""
#pragma debug field 2 65 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 66 1 ___wdtc "__wdtc" 1
#pragma debug struct_begin 67 "__tm2c0_bits"
#pragma debug field 21 8 0 3 ;0,3
#pragma debug field 21 8 0 1 "__t2on" ;3,1
#pragma debug field 21 8 0 1 "__t2ck0" ;4,1
#pragma debug field 21 8 0 1 "__t2ck1" ;5,1
#pragma debug field 21 8 0 1 "__t2ck2" ;6,1
#pragma debug field 21 8 0 1 "__t2pau" ;7,1
#pragma debug struct_end
#pragma debug union_begin 68 ""
#pragma debug field 2 67 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 68 1 ___tm2c0 "__tm2c0" 1
#pragma debug struct_begin 69 "__tm2c1_bits"
#pragma debug field 21 8 0 1 "__t2cclr" ;0,1
#pragma debug field 21 8 0 1 "__t2dpx" ;1,1
#pragma debug field 21 8 0 1 "__t2pol" ;2,1
#pragma debug field 21 8 0 1 "__t2oc" ;3,1
#pragma debug field 21 8 0 1 "__t2io0" ;4,1
#pragma debug field 21 8 0 1 "__t2io1" ;5,1
#pragma debug field 21 8 0 1 "__t2m0" ;6,1
#pragma debug field 21 8 0 1 "__t2m1" ;7,1
#pragma debug struct_end
#pragma debug union_begin 70 ""
#pragma debug field 2 69 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 70 1 ___tm2c1 "__tm2c1" 1
#pragma debug variable 8 1 ___tm2rp "__tm2rp" 1
#pragma debug struct_begin 71 "__ifs0_bits"
#pragma debug field 21 8 0 1 "__int0s0" ;0,1
#pragma debug field 21 8 0 1 "__int0s1" ;1,1
#pragma debug field 21 8 0 1 "__int1s0" ;2,1
#pragma debug field 21 8 0 1 "__int1s1" ;3,1
#pragma debug field 21 8 0 1 "__int2s0" ;4,1
#pragma debug field 21 8 0 1 "__int2s1" ;5,1
#pragma debug field 21 8 0 1 "__pintbs0" ;6,1
#pragma debug field 21 8 0 1 "__pintbs1" ;7,1
#pragma debug struct_end
#pragma debug union_begin 72 ""
#pragma debug field 2 71 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 72 1 ___ifs0 "__ifs0" 1
#pragma debug struct_begin 73 "__ifs1_bits"
#pragma debug field 21 8 0 1 "__tck0s0" ;0,1
#pragma debug field 21 8 0 1 "__tck0s1" ;1,1
#pragma debug field 21 8 0 1 "__tck1s0" ;2,1
#pragma debug field 21 8 0 1 "__tck1s1" ;3,1
#pragma debug field 21 8 0 1 "__tck2s0" ;4,1
#pragma debug field 21 8 0 1 "__tck2s1" ;5,1
#pragma debug field 21 8 0 1 "__tck3s0" ;6,1
#pragma debug field 21 8 0 1 "__tck3s1" ;7,1
#pragma debug struct_end
#pragma debug union_begin 74 ""
#pragma debug field 2 73 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 74 1 ___ifs1 "__ifs1" 1
#pragma debug struct_begin 75 "__tm4c0_bits"
#pragma debug field 21 8 0 3 ;0,3
#pragma debug field 21 8 0 1 "__t4on" ;3,1
#pragma debug field 21 8 0 1 "__t4ck0" ;4,1
#pragma debug field 21 8 0 1 "__t4ck1" ;5,1
#pragma debug field 21 8 0 1 "__t4ck2" ;6,1
#pragma debug field 21 8 0 1 "__t4pau" ;7,1
#pragma debug struct_end
#pragma debug union_begin 76 ""
#pragma debug field 2 75 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 76 1 ___tm4c0 "__tm4c0" 1
#pragma debug struct_begin 77 "__tm4c1_bits"
#pragma debug field 21 8 0 1 "__t4cclr" ;0,1
#pragma debug field 21 8 0 1 "__t4dpx" ;1,1
#pragma debug field 21 8 0 1 "__t4pol" ;2,1
#pragma debug field 21 8 0 1 "__t4oc" ;3,1
#pragma debug field 21 8 0 1 "__t4io0" ;4,1
#pragma debug field 21 8 0 1 "__t4io1" ;5,1
#pragma debug field 21 8 0 1 "__t4m0" ;6,1
#pragma debug field 21 8 0 1 "__t4m1" ;7,1
#pragma debug struct_end
#pragma debug union_begin 78 ""
#pragma debug field 2 77 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 78 1 ___tm4c1 "__tm4c1" 1
#pragma debug variable 8 1 ___tm4al "__tm4al" 1
#pragma debug variable 8 1 ___tm4ah "__tm4ah" 1
#pragma debug struct_begin 79 "__pds2_bits"
#pragma debug field 21 8 0 1 "__pd4s0" ;0,1
#pragma debug field 21 8 0 1 "__pd4s1" ;1,1
#pragma debug field 21 8 0 1 "__pd4s2" ;2,1
#pragma debug field 21 8 0 1 "__pd4s3" ;3,1
#pragma debug field 21 8 0 1 "__pd5s0" ;4,1
#pragma debug field 21 8 0 1 "__pd5s1" ;5,1
#pragma debug field 21 8 0 1 "__pd5s2" ;6,1
#pragma debug field 21 8 0 1 "__pd5s3" ;7,1
#pragma debug struct_end
#pragma debug union_begin 80 ""
#pragma debug field 2 79 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 80 1 ___pds2 "__pds2" 1
IFDEF ISR_SYSTEM_STACK_BEFORE_2014_12_23
ELSE
extern r1:byte
extern r2:byte
extern r3:byte
extern r4:byte
extern r5:byte
extern r6:byte
extern r7:byte
ENDIF
#line 44 "D:\IIIT\Desktop\盛群程式\abs0717_nospi\abs0717_nospi.c"
@code .section at 0 'code'
	clr bp
	jmp _main_startup1

extern _builtin_holtek_mulhi3_2:byte
extern _builtin_holtek_mulhi3:near
extern _builtin_holtek_mant1:byte
extern _builtin_holtek_mant12p:byte
extern _builtin_holtek_itod:near
extern _builtin_holtek_mant2:byte
extern _builtin_holtek_dtmul:near
extern _builtin_holtek_dtdiv:near

; 
; Generated by holtek-gcc v3.13, Wed Jul 18 22:34:57 2018
; Rebuild 26
; end of file
