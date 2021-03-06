; Generated by holtek-gcc v3.13, Wed Jul 11 20:19:54 2018
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
public _Delay100us
#pragma debug scope 2 1
#line 20 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
_Delay100us .section 'code'
_Delay100us proc
public _Delay100us_2
    local _Delay100us_2 db 2 dup(?)	; 2,0
#pragma debug variable 11 2 _Delay100us_2+0 "del"
#line 22 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	clr rb
	clr rc
_L2:
#line 22 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	mov a,rb
	sub a,_Delay100us_2[0]
	mov a,rc
	sbc a,_Delay100us_2[1]
	snz sc
	jmp _L1
	clr ra
_L5:
#line 23 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
;# 23 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c" 1
	nop
	inc ra
	mov a,ra
	sub a,26
	snz z
	jmp _L5
#line 22 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	inc rb
	sz z
	inc rc
	jmp _L2
_L1:
	ret
_Delay100us endp
#line 22 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
#pragma debug scope 1 1
___wdtc equ [62]
___pc equ [26]
___pcc equ [27]
public _main
#pragma debug scope 3 1
#line 6 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
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
#line 7 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	mov a,175
	mov [62],a
#line 8 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	clr [26].0
	clr [27].0
_L8:
#line 11 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	set [26].0
#line 12 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	mov a,16
	mov _Delay100us_2[0],a
	mov a,39
	mov _Delay100us_2[1],a
	fcall _Delay100us
#line 13 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	clr [26].0
#line 14 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
	mov a,16
	mov _Delay100us_2[0],a
	mov a,39
	mov _Delay100us_2[1],a
	fcall _Delay100us
	jmp _L8
	jmp $
_main endp

@dummy proc
	call _main
@dummy endp

#line 14 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
#pragma debug scope 1 1
#pragma debug struct_begin 42 "__pc_bits"
#pragma debug field 21 8 0 1 "__pc0" ;0,1
#pragma debug field 21 8 0 1 "__pc1" ;1,1
#pragma debug field 21 8 0 1 "__pc2" ;2,1
#pragma debug field 21 8 0 1 "__pc3" ;3,1
#pragma debug field 21 8 0 1 "__pc4" ;4,1
#pragma debug field 21 8 0 1 "__pc5" ;5,1
#pragma debug field 21 8 0 1 "__pc6" ;6,1
#pragma debug field 21 8 0 1 "__pc7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 43 ""
#pragma debug field 2 42 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 43 1 ___pc "__pc" 1
#pragma debug struct_begin 44 "__pcc_bits"
#pragma debug field 21 8 0 1 "__pcc0" ;0,1
#pragma debug field 21 8 0 1 "__pcc1" ;1,1
#pragma debug field 21 8 0 1 "__pcc2" ;2,1
#pragma debug field 21 8 0 1 "__pcc3" ;3,1
#pragma debug field 21 8 0 1 "__pcc4" ;4,1
#pragma debug field 21 8 0 1 "__pcc5" ;5,1
#pragma debug field 21 8 0 1 "__pcc6" ;6,1
#pragma debug field 21 8 0 1 "__pcc7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 45 ""
#pragma debug field 2 44 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 45 1 ___pcc "__pcc" 1
#pragma debug struct_begin 46 "__wdtc_bits"
#pragma debug field 21 8 0 1 "__ws0" ;0,1
#pragma debug field 21 8 0 1 "__ws1" ;1,1
#pragma debug field 21 8 0 1 "__ws2" ;2,1
#pragma debug field 21 8 0 1 "__we0" ;3,1
#pragma debug field 21 8 0 1 "__we1" ;4,1
#pragma debug field 21 8 0 1 "__we2" ;5,1
#pragma debug field 21 8 0 1 "__we3" ;6,1
#pragma debug field 21 8 0 1 "__we4" ;7,1
#pragma debug struct_end
#pragma debug union_begin 47 ""
#pragma debug field 2 46 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 47 1 ___wdtc "__wdtc" 1
IFDEF ISR_SYSTEM_STACK_BEFORE_2014_12_23
ELSE
ENDIF
#line 6 "D:\IIIT\Desktop\盛群程式\Relay_Test\Relay_Test.c"
@code .section at 0 'code'
	clr bp
	jmp _main_startup1


; 
; Generated by holtek-gcc v3.13, Wed Jul 11 20:19:54 2018
; Rebuild 26
; end of file
