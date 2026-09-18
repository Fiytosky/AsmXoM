	.file	"bftest.c"
	.text
	.data
	.align 32
	.type	bf_key, @object
	.size	bf_key, 60
bf_key:
	.string	"abcdefghijklmnopqrstuvwxyz"
	.zero	3
	.string	"Who is John Galt?"
	.zero	12
	.align 16
	.type	bf_plain, @object
	.size	bf_plain, 16
bf_plain:
	.long	1112297303
	.long	1179210568
	.long	-19088744
	.long	1985229328
	.align 16
	.type	bf_cipher, @object
	.size	bf_cipher, 16
bf_cipher:
	.long	844026110
	.long	-200039933
	.long	-862883029
	.long	-2145192316
	.align 32
	.type	ecb_data, @object
	.size	ecb_data, 272
ecb_data:
	.base64	"AAAAAAAAAAA="
	.base64	"//////////8="
	.string	"0"
	.base64	"AAAAAAAA"
	.base64	"ERERERERERE="
	.base64	"ASNFZ4mrze8="
	.base64	"ERERERERERE="
	.base64	"AAAAAAAAAAA="
	.base64	"/ty6mHZUMhA="
	.base64	"fKEQRUoablc="
	.base64	"ATHZYZ3BN24="
	.base64	"B6ETPkoLJoY="
	.base64	"OElnTCYCMZ4="
	.base64	"BLkVukP+tbY="
	.base64	"ARO5cP008s4="
	.base64	"AXDxdUaPteY="
	.base64	"Qyl/rTjjc/4="
	.base64	"B6cTcEXaKhY="
	.base64	"BGiRBML9Oy8="
	.base64	"N9BrtRbLdUY="
	.base64	"HwgmDRrCRl4="
	.base64	"WEAjZBq6YXY="
	.base64	"AlgWFkYpsAc="
	.base64	"SXk+vHmzJY8="
	.base64	"T7BeFRWrc6c="
	.base64	"SeldbUyiKb8="
	.base64	"AYMQ3ECbJtY="
	.base64	"HFh/HBOST+8="
	.base64	"AQEBAQEBAQE="
	.base64	"Hx8fHw4ODg4="
	.base64	"4P7g/vH+8f4="
	.base64	"AAAAAAAAAAA="
	.base64	"//////////8="
	.base64	"ASNFZ4mrze8="
	.base64	"/ty6mHZUMhA="
	.align 32
	.type	plain_data, @object
	.size	plain_data, 272
plain_data:
	.base64	"AAAAAAAAAAA="
	.base64	"//////////8="
	.base64	"EAAAAAAAAAE="
	.base64	"ERERERERERE="
	.base64	"ERERERERERE="
	.base64	"ASNFZ4mrze8="
	.base64	"AAAAAAAAAAA="
	.base64	"ASNFZ4mrze8="
	.base64	"AaHW0Dl3Z0I="
	.base64	"XNVMqD3vV9o="
	.base64	"AkjUOAb2cXI="
	.ascii	"QEKX-\337D\n"
	.base64	"Qv1EMFlXf6I="
	.base64	"BZteCFHPFDo="
	.base64	"B1bY4HdHYdI="
	.base64	"diUUuCm/SGo="
	.base64	"O90RkEk3KAI="
	.base64	"JpVfaDWvYJo="
	.ascii	"\026M^@O'R2"
	.base64	"awVuGHWfXMo="
	.base64	"AEvW7wkXYGI="
	.string	"H\r9"
	.base64	"budi8g=="
	.base64	"Q3VAyGmPPPo="
	.base64	"By1DoHcHUpI="
	.base64	"Av5Vd4EX8So="
	.base64	"HZ1cUBj3KMI="
	.ascii	"0U2(mo)Z"
	.base64	"ASNFZ4mrze8="
	.base64	"ASNFZ4mrze8="
	.base64	"ASNFZ4mrze8="
	.base64	"//////////8="
	.base64	"AAAAAAAAAAA="
	.base64	"AAAAAAAAAAA="
	.base64	"//////////8="
	.align 32
	.type	cipher_data, @object
	.size	cipher_data, 272
cipher_data:
	.base64	"TvmXRWGY3Xg="
	.base64	"UYZv1bhey4o="
	.base64	"fYVvmmEwY/I="
	.base64	"JGbdh4uWPJ0="
	.base64	"YfnDgCKBsJY="
	.base64	"fQzGMK/aHsc="
	.base64	"TvmXRWGY3Xg="
	.base64	"Cs6rD8agoo0="
	.base64	"WcaCResFKCs="
	.base64	"sbjMCyUPCaA="
	.base64	"FzDld4vqHaQ="
	.base64	"ol54Vs8mUes="
	.base64	"NTiCsQnOjxo="
	.base64	"SPTQiEw3mRg="
	.base64	"QyGTt4lR/Jg="
	.base64	"E/BBVNadGuU="
	.base64	"Lu3ak//TnHk="
	.base64	"2IfgOTwtpuM="
	.base64	"X5nQT1sWOWk="
	.base64	"SgV6OyTTl3s="
	.base64	"RSAxweT62o4="
	.base64	"dVWuOfWbh70="
	.base64	"U8VfnLSfwBk="
	.base64	"eo57+pN+iaM="
	.base64	"z5xdekmGrbU="
	.base64	"0auykGWLx3g="
	.base64	"Vcs3dNE+8gE="
	.base64	"+jTsSEeyaLI="
	.base64	"p5B5UQjqPK4="
	.base64	"w54HLZ+sYx0="
	.base64	"AUkz4M2v9uQ="
	.base64	"8h6ad7ccSbw="
	.base64	"JFlGiFdUNpo="
	.base64	"a1xanF2eClo="
	.align 16
	.type	cbc_key, @object
	.size	cbc_key, 16
cbc_key:
	.base64	"ASNFZ4mrze/w4dLDtKWWhw=="
	.align 8
	.type	cbc_iv, @object
	.size	cbc_iv, 8
cbc_iv:
	.base64	"/ty6mHZUMhA="
	.align 32
	.type	cbc_data, @object
	.size	cbc_data, 40
cbc_data:
	.string	"7654321 Now is the time for "
	.zero	11
	.align 32
	.type	cbc_ok, @object
	.size	cbc_ok, 32
cbc_ok:
	.base64	"a3e01jAG3uYFsVbidAOXk1jeuecVRhbZWfFlK9X/ksw="
	.align 16
	.type	cfb64_ok, @object
	.size	cfb64_ok, 29
cfb64_ok:
	.base64	"5zIUooIhOcrybs9tLrnnbj2j3gTRUXIAUZ1XpsM="
	.align 16
	.type	ofb64_ok, @object
	.size	ofb64_ok, 29
ofb64_ok:
	.base64	"5zIUooIhOcpis0PMW2VYcxDdkI0MJBsiY8LPgNo="
	.align 16
	.type	key_test, @object
	.size	key_test, 25
key_test:
	.base64	"8OHSw7Sllod4aVpLPC0eDwARIjNEVWZ3iA=="
	.align 8
	.type	key_data, @object
	.size	key_data, 8
key_data:
	.base64	"/ty6mHZUMhA="
	.align 32
	.type	key_out, @object
	.size	key_out, 200
key_out:
	.base64	"+a1ZfEnbAF4="
	.base64	"6R0hwdlhptY="
	.base64	"6cK3ChvGXPM="
	.base64	"vh5jlAhkDwU="
	.base64	"s55ESBvbHm4="
	.base64	"lFeqg7GSjA0="
	.base64	"i7dwMvlgYp0="
	.base64	"6HokTizIXoI="
	.base64	"FXUOek9OxXc="
	.base64	"EiunCzq2SuA="
	.base64	"OoM8mv/FN/Y="
	.base64	"lAnah6kPa/I="
	.base64	"iE+AYlBguLQ="
	.base64	"H4UDHBnhGWg="
	.base64	"edk3OnFMo08="
	.base64	"kxQoh+474Vw="
	.base64	"A0Keg4zi0Us="
	.base64	"pCmeJ0af9ns="
	.base64	"r9Wu0cG8lqg="
	.base64	"EIUcDjhY2p8="
	.base64	"5vUe15udsh8="
	.base64	"ZKbhSv02tG8="
	.base64	"gMfX1FpUea0="
	.base64	"BQRLYvpS0IA="
	.zero	8
	.section	.rodata
.LC0:
	.string	"ecb test data"
	.align 8
.LC1:
	.string	"key bytes\t\tclear bytes\t\tcipher bytes"
.LC2:
	.string	"%02X"
.LC3:
	.string	"set_key test data"
.LC4:
	.string	"data[8]= "
.LC5:
	.string	"c="
.LC6:
	.string	" k[%2u]="
.LC7:
	.string	"\nchaining mode test data"
.LC8:
	.string	"key[16]   = "
.LC9:
	.string	"\niv[8]     = "
.LC10:
	.string	"\ndata[%d]  = '%s'"
.LC11:
	.string	"\ndata[%d]  = "
.LC12:
	.string	"cbc cipher text"
.LC13:
	.string	"cipher[%d]= "
.LC14:
	.string	"cfb64 cipher text"
.LC15:
	.string	"ofb64 cipher text"
	.text
	.type	print_test_data, @function
print_test_data:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -20(%rbp)
	jmp	.L2
.L9:
	movl	$0, -24(%rbp)
	jmp	.L3
.L4:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	ecb_data(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L3:
	cmpl	$7, -24(%rbp)
	jbe	.L4
	movl	$9, %edi
	call	putchar@PLT
	movl	$0, -24(%rbp)
	jmp	.L5
.L6:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	plain_data(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L5:
	cmpl	$7, -24(%rbp)
	jbe	.L6
	movl	$9, %edi
	call	putchar@PLT
	movl	$0, -24(%rbp)
	jmp	.L7
.L8:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	cipher_data(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L7:
	cmpl	$7, -24(%rbp)
	jbe	.L8
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -20(%rbp)
.L2:
	cmpl	$33, -20(%rbp)
	jbe	.L9
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L10
.L11:
	movl	-24(%rbp), %eax
	leaq	key_data(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L10:
	cmpl	$7, -24(%rbp)
	jbe	.L11
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -20(%rbp)
	jmp	.L12
.L17:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L13
.L14:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	key_out(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L13:
	cmpl	$7, -24(%rbp)
	jbe	.L14
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	leaq	.LC6(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L15
.L16:
	movl	-24(%rbp), %eax
	leaq	key_test(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L15:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jb	.L16
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -20(%rbp)
.L12:
	cmpl	$23, -20(%rbp)
	jbe	.L17
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L18
.L19:
	movl	-24(%rbp), %eax
	leaq	cbc_key(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L18:
	cmpl	$15, -24(%rbp)
	jbe	.L19
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L20
.L21:
	movl	-24(%rbp), %eax
	leaq	cbc_iv(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L20:
	cmpl	$7, -24(%rbp)
	jbe	.L21
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leal	1(%rax), %ecx
	leaq	cbc_data(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leal	1(%rax), %edx
	leaq	.LC11(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L22
.L23:
	movl	-24(%rbp), %eax
	leaq	cbc_data(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L22:
	movl	-24(%rbp), %ebx
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	cmpq	%rax, %rbx
	jb	.L23
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L24
.L25:
	movl	-24(%rbp), %eax
	leaq	cbc_ok(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L24:
	cmpl	$31, -24(%rbp)
	jbe	.L25
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leal	1(%rax), %edx
	leaq	.LC13(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L26
.L27:
	movl	-24(%rbp), %eax
	leaq	cfb64_ok(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L26:
	movl	-24(%rbp), %ebx
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	cmpq	%rax, %rbx
	jb	.L27
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leal	1(%rax), %edx
	leaq	.LC13(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24(%rbp)
	jmp	.L28
.L29:
	movl	-24(%rbp), %eax
	leaq	ofb64_ok(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L28:
	movl	-24(%rbp), %ebx
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	cmpq	%rax, %rbx
	jb	.L29
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	print_test_data, .-print_test_data
	.section	.rodata
.LC16:
	.string	"&(data[0])"
.LC17:
	.string	"&(bf_cipher[n][0])"
.LC18:
	.string	"../test/bftest.c"
.LC19:
	.string	"&(bf_plain[n][0])"
	.text
	.type	test_bf_ecb_raw, @function
test_bf_ecb_raw:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4216, %rsp
	.cfi_offset 3, -24
	movl	%edi, -4212(%rbp)
	movl	$1, -20(%rbp)
	movl	-4212(%rbp), %eax
	cltq
	imulq	$30, %rax, %rax
	leaq	bf_key(%rip), %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-4212(%rbp), %eax
	cltq
	imulq	$30, %rax, %rax
	leaq	bf_key(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ecx
	leaq	-4192(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BF_set_key@PLT
	movl	-4212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bf_plain(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4200(%rbp)
	movl	-4212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+bf_plain(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4196(%rbp)
	leaq	-4192(%rbp), %rdx
	leaq	-4200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BF_encrypt@PLT
	movl	-4212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bf_cipher(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	$8
	leaq	-4200(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L32
	movl	$0, -20(%rbp)
.L32:
	leaq	-4192(%rbp), %rdx
	leaq	-4200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BF_decrypt@PLT
	movl	-4212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bf_plain(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	$8
	leaq	-4200(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$308, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L33
	movl	$0, -20(%rbp)
.L33:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_bf_ecb_raw, .-test_bf_ecb_raw
	.section	.rodata
.LC20:
	.string	"out"
.LC21:
	.string	"&(cipher_data[n][0])"
.LC22:
	.string	"&(plain_data[n][0])"
	.text
	.type	test_bf_ecb, @function
test_bf_ecb:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4208, %rsp
	movl	%edi, -4196(%rbp)
	movl	$1, -4(%rbp)
	movl	-4196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ecb_data(%rip), %rax
	addq	%rax, %rdx
	leaq	-4176(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BF_set_key@PLT
	movl	-4196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	plain_data(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-4176(%rbp), %rdx
	leaq	-4184(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	call	BF_ecb_encrypt@PLT
	movl	-4196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	cipher_data(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	$8
	leaq	-4184(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$323, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L36
	movl	$0, -4(%rbp)
.L36:
	leaq	-4176(%rbp), %rdx
	leaq	-4184(%rbp), %rsi
	leaq	-4184(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	BF_ecb_encrypt@PLT
	movl	-4196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	plain_data(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	$8
	leaq	-4184(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$327, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L37
	movl	$0, -4(%rbp)
.L37:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_bf_ecb, .-test_bf_ecb
	.section	.rodata
.LC23:
	.string	"&(key_out[n][0])"
	.text
	.type	test_bf_set_key, @function
test_bf_set_key:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4208, %rsp
	movl	%edi, -4196(%rbp)
	movl	$1, -4(%rbp)
	movl	-4196(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	key_test(%rip), %rdx
	leaq	-4176(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BF_set_key@PLT
	leaq	-4176(%rbp), %rdx
	leaq	-4184(%rbp), %rax
	leaq	key_data(%rip), %rdi
	movl	$1, %ecx
	movq	%rax, %rsi
	call	BF_ecb_encrypt@PLT
	movl	-4196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	key_out(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-4184(%rbp), %rdi
	leaq	.LC23(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$342, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L40
	movl	$0, -4(%rbp)
.L40:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_bf_set_key, .-test_bf_set_key
	.section	.rodata
.LC24:
	.string	"cbc_ok"
.LC25:
	.string	"cbc_out"
.LC26:
	.string	"cbc_data"
.LC27:
	.string	"cbc_in"
	.text
	.type	test_bf_cbc, @function
test_bf_cbc:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4272, %rsp
	movl	$1, -4(%rbp)
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	leaq	cbc_key(%rip), %rdx
	leaq	-4272(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BF_set_key@PLT
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-96(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	cbc_iv(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	-8(%rbp), %edx
	leaq	-104(%rbp), %rsi
	leaq	-4272(%rbp), %rcx
	leaq	-96(%rbp), %rax
	leaq	cbc_data(%rip), %rdi
	movl	$1, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	BF_cbc_encrypt@PLT
	leaq	-96(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	$32
	leaq	cbc_ok(%rip), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L43
	movl	$0, -4(%rbp)
.L43:
	movq	cbc_iv(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	-8(%rbp), %edx
	leaq	-104(%rbp), %rdi
	leaq	-4272(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BF_cbc_encrypt@PLT
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rsi
	movl	-8(%rbp), %r8d
	leaq	-48(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	%rsi
	leaq	cbc_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$368, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L44
	movl	$0, -4(%rbp)
.L44:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_bf_cbc, .-test_bf_cbc
	.section	.rodata
.LC28:
	.string	"cfb64_ok"
	.text
	.type	test_bf_cfb64, @function
test_bf_cfb64:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4288, %rsp
	movl	$1, -4(%rbp)
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	leaq	cbc_key(%rip), %rdx
	leaq	-4288(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BF_set_key@PLT
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-96(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	cbc_iv(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	leaq	-108(%rbp), %rsi
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	cbc_data(%rip), %rdi
	subq	$8, %rsp
	pushq	$1
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$13, %edx
	movq	%rax, %rsi
	call	BF_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-8(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %r10d
	leaq	-108(%rbp), %r8
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	13(%rdx), %rsi
	leaq	13+cbc_data(%rip), %rdi
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%r10, %rdx
	call	BF_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %r8
	leaq	-96(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	%rsi
	leaq	cfb64_ok(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$392, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L47
	movl	$0, -4(%rbp)
.L47:
	movl	$0, -108(%rbp)
	movq	cbc_iv(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-108(%rbp), %rdi
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$17, %edx
	movq	%rax, %rdi
	call	BF_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-8(%rbp), %eax
	subl	$17, %eax
	movl	%eax, %r10d
	leaq	-108(%rbp), %r8
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	17(%rdx), %rsi
	leaq	-96(%rbp), %rdx
	leaq	17(%rdx), %rdi
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%r10, %rdx
	call	BF_cfb64_encrypt@PLT
	addq	$16, %rsp
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %r8
	leaq	-48(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	%rsi
	leaq	cbc_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$400, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L48
	movl	$0, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_bf_cfb64, .-test_bf_cfb64
	.section	.rodata
.LC29:
	.string	"ofb64_ok"
	.text
	.type	test_bf_ofb64, @function
test_bf_ofb64:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4288, %rsp
	movl	$1, -4(%rbp)
	leaq	cbc_data(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	leaq	cbc_key(%rip), %rdx
	leaq	-4288(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BF_set_key@PLT
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-96(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	cbc_iv(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	leaq	-108(%rbp), %rsi
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	cbc_data(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$13, %edx
	movq	%rax, %rsi
	call	BF_ofb64_encrypt@PLT
	movl	-8(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %r10d
	leaq	-108(%rbp), %r8
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	13(%rdx), %rsi
	leaq	13+cbc_data(%rip), %rdi
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%r10, %rdx
	call	BF_ofb64_encrypt@PLT
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %r8
	leaq	-96(%rbp), %rdi
	leaq	.LC29(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	%rsi
	leaq	ofb64_ok(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$424, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L51
	movl	$0, -4(%rbp)
.L51:
	movl	$0, -108(%rbp)
	movq	cbc_iv(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-108(%rbp), %rdi
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$17, %edx
	movq	%rax, %rdi
	call	BF_ofb64_encrypt@PLT
	movl	-8(%rbp), %eax
	subl	$17, %eax
	movl	%eax, %r10d
	leaq	-108(%rbp), %r8
	leaq	-104(%rbp), %rcx
	leaq	-4288(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	17(%rdx), %rsi
	leaq	-96(%rbp), %rdx
	leaq	17(%rdx), %rdi
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%r10, %rdx
	call	BF_ofb64_encrypt@PLT
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %r8
	leaq	-48(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC18(%rip), %rax
	pushq	%rsi
	leaq	cbc_data(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$431, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L52
	movl	$0, -4(%rbp)
.L52:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_bf_ofb64, .-test_bf_ofb64
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC30:
	.string	"test_bf_ecb_raw"
.LC31:
	.string	"test_bf_ecb"
.LC32:
	.string	"test_bf_set_key"
.LC33:
	.string	"test_bf_cbc"
.LC34:
	.string	"test_bf_cfb64"
.LC35:
	.string	"test_bf_ofb64"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L57
.L62:
	cmpl	$1, -4(%rbp)
	je	.L58
	cmpl	$0, -4(%rbp)
	jle	.L59
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L59
	jmp	.L63
.L58:
	call	print_test_data
	movl	$1, %eax
	jmp	.L61
.L63:
	jmp	.L57
.L59:
	movl	$0, %eax
	jmp	.L61
.L57:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L62
	leaq	test_bf_ecb_raw(%rip), %rsi
	leaq	.LC30(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bf_ecb(%rip), %rsi
	leaq	.LC31(%rip), %rax
	movl	$1, %ecx
	movl	$34, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bf_set_key(%rip), %rsi
	leaq	.LC32(%rip), %rax
	movl	$1, %ecx
	movl	$24, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bf_cbc(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bf_cfb64(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bf_ofb64(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC36:
	.string	"Usage: %s [options]\n"
.LC37:
	.string	"Valid options are:\n"
.LC38:
	.string	"help"
.LC39:
	.string	"Display this summary"
.LC40:
	.string	"list"
	.align 8
.LC41:
	.string	"Display the list of tests available"
.LC42:
	.string	"test"
	.align 8
.LC43:
	.string	"Run a single test by id or name"
.LC44:
	.string	"iter"
	.align 8
.LC45:
	.string	"Run a single iteration of a test"
.LC46:
	.string	"indent"
	.align 8
.LC47:
	.string	"Number of tabs added to output"
.LC48:
	.string	"seed"
	.align 8
.LC49:
	.string	"Seed value to randomize tests with"
.LC50:
	.string	"print"
	.align 8
.LC51:
	.string	"Output test tables instead of running tests"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 240
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC36
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	500
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	501
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	502
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	503
	.long	110
	.quad	.LC45
	.quad	.LC46
	.long	504
	.long	112
	.quad	.LC47
	.quad	.LC48
	.long	505
	.long	110
	.quad	.LC49
	.quad	.LC50
	.long	1
	.long	45
	.quad	.LC51
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
