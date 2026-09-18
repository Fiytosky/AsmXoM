	.file	"set_key.c"
	.text
	.type	constant_time_msb, @function
constant_time_msb:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_eq, @function
constant_time_eq:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	constant_time_eq, .-constant_time_eq
	.type	constant_time_eq_8, @function
constant_time_eq_8:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	constant_time_eq_8, .-constant_time_eq_8
	.section	.rodata
	.align 32
	.type	odd_parity, @object
	.size	odd_parity, 256
odd_parity:
	.base64	"AQECAgQEBwcICAsLDQ0ODhAQExMVFRYWGRkaGhwcHx8gICMjJSUmJikpKiosLC8vMTEyMjQ0Nzc4ODs7PT0+PkBAQ0NFRUZGSUlKSkxMT09RUVJSVFRXV1hYW1tdXV5eYWFiYmRkZ2doaGtrbW1ubnBwc3N1dXZ2eXl6enx8f3+AgIODhYWGhomJioqMjI+PkZGSkpSUl5eYmJubnZ2enqGhoqKkpKenqKirq62trq6wsLOztbW2trm5urq8vL+/wcHCwsTEx8fIyMvLzc3OztDQ09PV1dbW2dna2tzc39/g4OPj5eXm5unp6urs7O/v8fHy8vT09/f4+Pv7/f3+"
	.ascii	"\376"
	.text
	.globl	DES_set_odd_parity
	.type	DES_set_odd_parity, @function
DES_set_odd_parity:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	cltq
	leaq	odd_parity(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L10:
	cmpl	$7, -4(%rbp)
	jbe	.L11
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	DES_set_odd_parity, .-DES_set_odd_parity
	.globl	DES_check_key_parity
	.type	DES_check_key_parity, @function
DES_check_key_parity:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movb	$-1, -5(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -6(%rbp)
	movzbl	-6(%rbp), %eax
	shrb	$4, %al
	xorb	%al, -6(%rbp)
	movzbl	-6(%rbp), %eax
	shrb	$2, %al
	xorb	%al, -6(%rbp)
	movzbl	-6(%rbp), %eax
	shrb	%al
	xorb	%al, -6(%rbp)
	movzbl	-6(%rbp), %eax
	andl	$1, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	constant_time_eq_8
	andb	%al, -5(%rbp)
	addl	$1, -4(%rbp)
.L13:
	cmpl	$7, -4(%rbp)
	jbe	.L14
	movzbl	-5(%rbp), %eax
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	DES_check_key_parity, .-DES_check_key_parity
	.section	.rodata
	.align 32
	.type	weak_keys, @object
	.size	weak_keys, 128
weak_keys:
	.base64	"AQEBAQEBAQE="
	.base64	"/v7+/v7+/v4="
	.base64	"Hx8fHw4ODg4="
	.base64	"4ODg4PHx8fE="
	.base64	"Af4B/gH+Af4="
	.base64	"/gH+Af4B/gE="
	.base64	"H+Af4A7xDvE="
	.base64	"4B/gH/EO8Q4="
	.base64	"AeAB4AHxAfE="
	.base64	"4AHgAfEB8QE="
	.base64	"H/4f/g7+Dv4="
	.base64	"/h/+H/4O/g4="
	.base64	"AR8BHwEOAQ4="
	.base64	"HwEfAQ4BDgE="
	.base64	"4P7g/vH+8f4="
	.base64	"/uD+4P7x/vE="
	.text
	.globl	DES_is_weak_key
	.type	DES_is_weak_key, @function
DES_is_weak_key:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	weak_keys(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	orl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$15, -4(%rbp)
	jbe	.L18
	movl	-8(%rbp), %eax
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	DES_is_weak_key, .-DES_is_weak_key
	.section	.rodata
	.align 32
	.type	des_skb, @object
	.size	des_skb, 2048
des_skb:
	.long	0
	.long	16
	.long	536870912
	.long	536870928
	.long	65536
	.long	65552
	.long	536936448
	.long	536936464
	.long	2048
	.long	2064
	.long	536872960
	.long	536872976
	.long	67584
	.long	67600
	.long	536938496
	.long	536938512
	.long	32
	.long	48
	.long	536870944
	.long	536870960
	.long	65568
	.long	65584
	.long	536936480
	.long	536936496
	.long	2080
	.long	2096
	.long	536872992
	.long	536873008
	.long	67616
	.long	67632
	.long	536938528
	.long	536938544
	.long	524288
	.long	524304
	.long	537395200
	.long	537395216
	.long	589824
	.long	589840
	.long	537460736
	.long	537460752
	.long	526336
	.long	526352
	.long	537397248
	.long	537397264
	.long	591872
	.long	591888
	.long	537462784
	.long	537462800
	.long	524320
	.long	524336
	.long	537395232
	.long	537395248
	.long	589856
	.long	589872
	.long	537460768
	.long	537460784
	.long	526368
	.long	526384
	.long	537397280
	.long	537397296
	.long	591904
	.long	591920
	.long	537462816
	.long	537462832
	.long	0
	.long	33554432
	.long	8192
	.long	33562624
	.long	2097152
	.long	35651584
	.long	2105344
	.long	35659776
	.long	4
	.long	33554436
	.long	8196
	.long	33562628
	.long	2097156
	.long	35651588
	.long	2105348
	.long	35659780
	.long	1024
	.long	33555456
	.long	9216
	.long	33563648
	.long	2098176
	.long	35652608
	.long	2106368
	.long	35660800
	.long	1028
	.long	33555460
	.long	9220
	.long	33563652
	.long	2098180
	.long	35652612
	.long	2106372
	.long	35660804
	.long	268435456
	.long	301989888
	.long	268443648
	.long	301998080
	.long	270532608
	.long	304087040
	.long	270540800
	.long	304095232
	.long	268435460
	.long	301989892
	.long	268443652
	.long	301998084
	.long	270532612
	.long	304087044
	.long	270540804
	.long	304095236
	.long	268436480
	.long	301990912
	.long	268444672
	.long	301999104
	.long	270533632
	.long	304088064
	.long	270541824
	.long	304096256
	.long	268436484
	.long	301990916
	.long	268444676
	.long	301999108
	.long	270533636
	.long	304088068
	.long	270541828
	.long	304096260
	.long	0
	.long	1
	.long	262144
	.long	262145
	.long	16777216
	.long	16777217
	.long	17039360
	.long	17039361
	.long	2
	.long	3
	.long	262146
	.long	262147
	.long	16777218
	.long	16777219
	.long	17039362
	.long	17039363
	.long	512
	.long	513
	.long	262656
	.long	262657
	.long	16777728
	.long	16777729
	.long	17039872
	.long	17039873
	.long	514
	.long	515
	.long	262658
	.long	262659
	.long	16777730
	.long	16777731
	.long	17039874
	.long	17039875
	.long	134217728
	.long	134217729
	.long	134479872
	.long	134479873
	.long	150994944
	.long	150994945
	.long	151257088
	.long	151257089
	.long	134217730
	.long	134217731
	.long	134479874
	.long	134479875
	.long	150994946
	.long	150994947
	.long	151257090
	.long	151257091
	.long	134218240
	.long	134218241
	.long	134480384
	.long	134480385
	.long	150995456
	.long	150995457
	.long	151257600
	.long	151257601
	.long	134218242
	.long	134218243
	.long	134480386
	.long	134480387
	.long	150995458
	.long	150995459
	.long	151257602
	.long	151257603
	.long	0
	.long	1048576
	.long	256
	.long	1048832
	.long	8
	.long	1048584
	.long	264
	.long	1048840
	.long	4096
	.long	1052672
	.long	4352
	.long	1052928
	.long	4104
	.long	1052680
	.long	4360
	.long	1052936
	.long	67108864
	.long	68157440
	.long	67109120
	.long	68157696
	.long	67108872
	.long	68157448
	.long	67109128
	.long	68157704
	.long	67112960
	.long	68161536
	.long	67113216
	.long	68161792
	.long	67112968
	.long	68161544
	.long	67113224
	.long	68161800
	.long	131072
	.long	1179648
	.long	131328
	.long	1179904
	.long	131080
	.long	1179656
	.long	131336
	.long	1179912
	.long	135168
	.long	1183744
	.long	135424
	.long	1184000
	.long	135176
	.long	1183752
	.long	135432
	.long	1184008
	.long	67239936
	.long	68288512
	.long	67240192
	.long	68288768
	.long	67239944
	.long	68288520
	.long	67240200
	.long	68288776
	.long	67244032
	.long	68292608
	.long	67244288
	.long	68292864
	.long	67244040
	.long	68292616
	.long	67244296
	.long	68292872
	.long	0
	.long	268435456
	.long	65536
	.long	268500992
	.long	4
	.long	268435460
	.long	65540
	.long	268500996
	.long	536870912
	.long	805306368
	.long	536936448
	.long	805371904
	.long	536870916
	.long	805306372
	.long	536936452
	.long	805371908
	.long	1048576
	.long	269484032
	.long	1114112
	.long	269549568
	.long	1048580
	.long	269484036
	.long	1114116
	.long	269549572
	.long	537919488
	.long	806354944
	.long	537985024
	.long	806420480
	.long	537919492
	.long	806354948
	.long	537985028
	.long	806420484
	.long	4096
	.long	268439552
	.long	69632
	.long	268505088
	.long	4100
	.long	268439556
	.long	69636
	.long	268505092
	.long	536875008
	.long	805310464
	.long	536940544
	.long	805376000
	.long	536875012
	.long	805310468
	.long	536940548
	.long	805376004
	.long	1052672
	.long	269488128
	.long	1118208
	.long	269553664
	.long	1052676
	.long	269488132
	.long	1118212
	.long	269553668
	.long	537923584
	.long	806359040
	.long	537989120
	.long	806424576
	.long	537923588
	.long	806359044
	.long	537989124
	.long	806424580
	.long	0
	.long	134217728
	.long	8
	.long	134217736
	.long	1024
	.long	134218752
	.long	1032
	.long	134218760
	.long	131072
	.long	134348800
	.long	131080
	.long	134348808
	.long	132096
	.long	134349824
	.long	132104
	.long	134349832
	.long	1
	.long	134217729
	.long	9
	.long	134217737
	.long	1025
	.long	134218753
	.long	1033
	.long	134218761
	.long	131073
	.long	134348801
	.long	131081
	.long	134348809
	.long	132097
	.long	134349825
	.long	132105
	.long	134349833
	.long	33554432
	.long	167772160
	.long	33554440
	.long	167772168
	.long	33555456
	.long	167773184
	.long	33555464
	.long	167773192
	.long	33685504
	.long	167903232
	.long	33685512
	.long	167903240
	.long	33686528
	.long	167904256
	.long	33686536
	.long	167904264
	.long	33554433
	.long	167772161
	.long	33554441
	.long	167772169
	.long	33555457
	.long	167773185
	.long	33555465
	.long	167773193
	.long	33685505
	.long	167903233
	.long	33685513
	.long	167903241
	.long	33686529
	.long	167904257
	.long	33686537
	.long	167904265
	.long	0
	.long	256
	.long	524288
	.long	524544
	.long	16777216
	.long	16777472
	.long	17301504
	.long	17301760
	.long	16
	.long	272
	.long	524304
	.long	524560
	.long	16777232
	.long	16777488
	.long	17301520
	.long	17301776
	.long	2097152
	.long	2097408
	.long	2621440
	.long	2621696
	.long	18874368
	.long	18874624
	.long	19398656
	.long	19398912
	.long	2097168
	.long	2097424
	.long	2621456
	.long	2621712
	.long	18874384
	.long	18874640
	.long	19398672
	.long	19398928
	.long	512
	.long	768
	.long	524800
	.long	525056
	.long	16777728
	.long	16777984
	.long	17302016
	.long	17302272
	.long	528
	.long	784
	.long	524816
	.long	525072
	.long	16777744
	.long	16778000
	.long	17302032
	.long	17302288
	.long	2097664
	.long	2097920
	.long	2621952
	.long	2622208
	.long	18874880
	.long	18875136
	.long	19399168
	.long	19399424
	.long	2097680
	.long	2097936
	.long	2621968
	.long	2622224
	.long	18874896
	.long	18875152
	.long	19399184
	.long	19399440
	.long	0
	.long	67108864
	.long	262144
	.long	67371008
	.long	2
	.long	67108866
	.long	262146
	.long	67371010
	.long	8192
	.long	67117056
	.long	270336
	.long	67379200
	.long	8194
	.long	67117058
	.long	270338
	.long	67379202
	.long	32
	.long	67108896
	.long	262176
	.long	67371040
	.long	34
	.long	67108898
	.long	262178
	.long	67371042
	.long	8224
	.long	67117088
	.long	270368
	.long	67379232
	.long	8226
	.long	67117090
	.long	270370
	.long	67379234
	.long	2048
	.long	67110912
	.long	264192
	.long	67373056
	.long	2050
	.long	67110914
	.long	264194
	.long	67373058
	.long	10240
	.long	67119104
	.long	272384
	.long	67381248
	.long	10242
	.long	67119106
	.long	272386
	.long	67381250
	.long	2080
	.long	67110944
	.long	264224
	.long	67373088
	.long	2082
	.long	67110946
	.long	264226
	.long	67373090
	.long	10272
	.long	67119136
	.long	272416
	.long	67381280
	.long	10274
	.long	67119138
	.long	272418
	.long	67381282
	.text
	.globl	DES_set_key
	.type	DES_set_key, @function
DES_set_key:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DES_check_key_parity@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$-1, -4(%rbp)
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DES_is_weak_key@PLT
	testl	%eax, %eax
	je	.L22
	movl	$-2, -4(%rbp)
.L22:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	DES_set_key, .-DES_set_key
	.globl	DES_set_key_checked
	.type	DES_set_key_checked, @function
DES_set_key_checked:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DES_check_key_parity@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$-1, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DES_is_weak_key@PLT
	testl	%eax, %eax
	je	.L27
	movl	$-2, %eax
	jmp	.L26
.L27:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	$0, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	DES_set_key_checked, .-DES_set_key_checked
	.globl	DES_set_key_unchecked
	.type	DES_set_key_unchecked, @function
DES_set_key_unchecked:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %r14
	movq	-48(%rbp), %r13
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %ebx
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %r12d
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %r12d
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %r12d
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %r12d
	movl	%r12d, %eax
	shrl	$4, %eax
	xorl	%ebx, %eax
	andl	$252645135, %eax
	movl	%eax, %r13d
	xorl	%r13d, %ebx
	movl	%r13d, %eax
	sall	$4, %eax
	xorl	%eax, %r12d
	movl	%ebx, %eax
	sall	$18, %eax
	xorl	%ebx, %eax
	andl	$-859045888, %eax
	movl	%eax, %r13d
	xorl	%r13d, %ebx
	movl	%ebx, %edx
	movl	%r13d, %eax
	shrl	$18, %eax
	movl	%edx, %ebx
	xorl	%eax, %ebx
	movl	%r12d, %eax
	sall	$18, %eax
	xorl	%r12d, %eax
	andl	$-859045888, %eax
	movl	%eax, %r13d
	movl	%r12d, %edx
	xorl	%r13d, %edx
	movl	%r13d, %eax
	shrl	$18, %eax
	xorl	%eax, %edx
	movl	%edx, %r12d
	movl	%r12d, %eax
	shrl	%eax
	xorl	%ebx, %eax
	andl	$1431655765, %eax
	movl	%eax, %r13d
	xorl	%r13d, %ebx
	leal	(%r13,%r13), %eax
	xorl	%eax, %r12d
	movl	%ebx, %eax
	shrl	$8, %eax
	xorl	%r12d, %eax
	andl	$16711935, %eax
	movl	%eax, %r13d
	xorl	%r13d, %r12d
	movl	%r13d, %eax
	sall	$8, %eax
	xorl	%eax, %ebx
	movl	%r12d, %eax
	shrl	%eax
	xorl	%ebx, %eax
	andl	$1431655765, %eax
	movl	%eax, %r13d
	xorl	%r13d, %ebx
	leal	(%r13,%r13), %eax
	xorl	%eax, %r12d
	movl	%r12d, %eax
	sall	$16, %eax
	andl	$16711680, %eax
	movl	%eax, %edx
	movl	%r12d, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	%r12d, %eax
	sarq	$16, %rax
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	%ebx, %eax
	sarq	$4, %rax
	andl	$251658240, %eax
	orl	%edx, %eax
	movl	%eax, %r12d
	andl	$268435455, %ebx
	movl	$0, %r15d
	jmp	.L29
.L32:
	movslq	%r15d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	shifts2.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L30
	movl	%ebx, %edx
	shrl	$2, %edx
	movl	%ebx, %eax
	sall	$26, %eax
	movl	%edx, %ebx
	orl	%eax, %ebx
	movl	%r12d, %edx
	shrl	$2, %edx
	movl	%r12d, %eax
	sall	$26, %eax
	orl	%eax, %edx
	movl	%edx, %r12d
	jmp	.L31
.L30:
	movl	%ebx, %edx
	shrl	%edx
	movl	%ebx, %eax
	sall	$27, %eax
	movl	%edx, %ebx
	orl	%eax, %ebx
	movl	%r12d, %edx
	shrl	%edx
	movl	%r12d, %eax
	sall	$27, %eax
	orl	%eax, %edx
	movl	%edx, %r12d
.L31:
	andl	$268435455, %ebx
	andl	$268435455, %r12d
	movl	%ebx, %eax
	andl	$63, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	des_skb(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%ebx, %eax
	shrl	$6, %eax
	andl	$3, %eax
	movl	%eax, %ecx
	movl	%ebx, %eax
	shrl	$7, %eax
	andl	$60, %eax
	orl	%ecx, %eax
	movl	%eax, %eax
	addq	$64, %rax
	leaq	0(,%rax,4), %rcx
	leaq	des_skb(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ebx, %eax
	shrl	$13, %eax
	andl	$15, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	shrl	$14, %eax
	andl	$48, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	subq	$-128, %rax
	leaq	0(,%rax,4), %rdx
	leaq	des_skb(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%eax, %ecx
	movl	%ebx, %eax
	shrl	$20, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	shrl	$21, %eax
	andl	$6, %eax
	orl	%eax, %edx
	movl	%ebx, %eax
	shrl	$22, %eax
	andl	$56, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	addq	$192, %rax
	leaq	0(,%rax,4), %rdx
	leaq	des_skb(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%ecx, %esi
	orl	%eax, %esi
	movl	%r12d, %eax
	andl	$63, %eax
	movl	%eax, %eax
	addq	$256, %rax
	leaq	0(,%rax,4), %rdx
	leaq	des_skb(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%r12d, %eax
	shrl	$7, %eax
	andl	$3, %eax
	movl	%eax, %ecx
	movl	%r12d, %eax
	shrl	$8, %eax
	andl	$60, %eax
	orl	%ecx, %eax
	movl	%eax, %eax
	addq	$320, %rax
	leaq	0(,%rax,4), %rcx
	leaq	des_skb(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%r12d, %eax
	shrl	$15, %eax
	andl	$63, %eax
	movl	%eax, %eax
	addq	$384, %rax
	leaq	0(,%rax,4), %rdx
	leaq	des_skb(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%eax, %ecx
	movl	%r12d, %eax
	shrl	$21, %eax
	andl	$15, %eax
	movl	%eax, %edx
	movl	%r12d, %eax
	shrl	$22, %eax
	andl	$48, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	addq	$448, %rax
	leaq	0(,%rax,4), %rdx
	leaq	des_skb(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%eax, %ecx
	movl	%ecx, %r13d
	movl	%r13d, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	movzwl	%ax, %eax
	orl	%edx, %eax
#APP
# 384 "../crypto/des/set_key.c" 1
	rorl $30,%eax
# 0 "" 2
#NO_APP
	movl	%eax, %edx
	movq	%r14, %rax
	leaq	4(%rax), %r14
	movl	%edx, (%rax)
	shrl	$16, %esi
	movl	%esi, %eax
	movl	%eax, %edx
	movl	%r13d, %eax
	movw	$0, %ax
	orl	%edx, %eax
#APP
# 387 "../crypto/des/set_key.c" 1
	rorl $26,%eax
# 0 "" 2
#NO_APP
	movl	%eax, %r13d
	movl	%r13d, %edx
	movq	%r14, %rax
	leaq	4(%rax), %r14
	movl	%edx, (%rax)
	addl	$1, %r15d
.L29:
	cmpl	$15, %r15d
	jle	.L32
	nop
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	DES_set_key_unchecked, .-DES_set_key_unchecked
	.globl	DES_key_sched
	.type	DES_key_sched, @function
DES_key_sched:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	DES_key_sched, .-DES_key_sched
	.section	.rodata
	.align 32
	.type	shifts2.0, @object
	.size	shifts2.0, 64
shifts2.0:
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
