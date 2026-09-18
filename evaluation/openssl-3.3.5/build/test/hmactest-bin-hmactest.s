	.file	"hmactest.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"e9139d1e6ee064ef8cf514fc7dc83e86"
	.align 8
.LC1:
	.string	"9294727a3638bb1c13f48ef8158bfc9d"
	.align 8
.LC2:
	.string	"750c783e6ab0b503eaa86e310a5db738"
	.align 8
.LC3:
	.string	"56be34521d144c88dbb8c733f0e8b3f6"
	.align 8
.LC4:
	.string	"61afdecb95429ef494d61fdee15990cabf0826fc"
	.align 8
.LC5:
	.string	"2274b195d90ce8e03406f4b526a47e0787a88a65479938f1a5baa3ce0f079776"
	.align 8
.LC6:
	.string	"bab53058ae861a7f191abe2d0145cbb123776a6369ee3f9d79ce455667e411dd"
	.align 8
.LC7:
	.string	"a12396ceddd2a85f4c656bc1e0aa50c78cffde3e"
	.section	.data.rel.local,"aw"
	.align 32
	.type	test, @object
	.size	test, 768
test:
	.string	""
	.zero	15
	.long	0
	.string	"More text test vectors to stuff up EBCDIC machines :-)"
	.zero	9
	.long	54
	.quad	.LC0
	.base64	"CwsLCwsLCwsLCwsLCwsLCw=="
	.long	16
	.string	"Hi There"
	.zero	55
	.long	8
	.quad	.LC1
	.string	"Jefe"
	.zero	11
	.long	4
	.string	"what do ya want for nothing?"
	.zero	35
	.long	28
	.quad	.LC2
	.base64	"qqqqqqqqqqqqqqqqqqqqqg=="
	.long	16
	.base64	"3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d0A"
	.zero	13
	.long	50
	.quad	.LC3
	.string	""
	.zero	15
	.long	0
	.string	"My test data"
	.zero	51
	.long	12
	.quad	.LC4
	.string	""
	.zero	15
	.long	0
	.string	"My test data"
	.zero	51
	.long	12
	.quad	.LC5
	.string	"123456"
	.zero	9
	.long	6
	.string	"My test data"
	.zero	51
	.long	12
	.quad	.LC6
	.string	"12345"
	.zero	10
	.long	5
	.string	"My test data again"
	.zero	45
	.long	18
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"p"
.LC9:
	.string	"../test/hmactest.c"
.LC10:
	.string	"test[idx].digest"
	.text
	.type	test_hmac_md5, @function
test_hmac_md5:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	84+test(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %r14
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	16(%rax), %rdx
	leaq	test(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %r13
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+test(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	test(%rip), %rdx
	leaq	(%rax,%rdx), %r12
	call	EVP_md5@PLT
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%r14, %r8
	movq	%r13, %rcx
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	HMAC@PLT
	addq	$16, %rsp
	movl	$16, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$103, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	88+test(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_hmac_md5, .-test_hmac_md5
	.section	.rodata
.LC11:
	.string	"ctx"
.LC12:
	.string	"HMAC_CTX_get_md(ctx)"
	.align 8
.LC13:
	.string	"HMAC_Init_ex(ctx, NULL, 0, NULL, NULL)"
	.align 8
.LC14:
	.string	"HMAC_Update(ctx, test[4].data, test[4].data_len)"
	.align 8
.LC15:
	.string	"HMAC_Init_ex(ctx, NULL, 0, EVP_sha1(), NULL)"
	.text
	.type	test_hmac_bad, @function
test_hmac_bad:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	HMAC_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$113, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L10
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_get_md@PLT
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L10
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	movl	468+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	404+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	call	EVP_sha1@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$117, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	movl	468+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	404+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, -4(%rbp)
	jmp	.L8
.L10:
	nop
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_hmac_bad, .-test_hmac_bad
	.section	.rodata
.LC16:
	.string	"ctx = HMAC_CTX_new()"
	.align 8
.LC17:
	.string	"HMAC_Init_ex(ctx, test[4].key, -1, EVP_sha1(), NULL)"
	.align 8
.LC18:
	.string	"HMAC_Init_ex(ctx, test[4].key, test[4].key_len, EVP_sha1(), NULL)"
.LC19:
	.string	"HMAC_Final(ctx, buf, &len)"
.LC20:
	.string	"test[4].digest"
	.align 8
.LC21:
	.string	"HMAC_Init_ex(ctx, NULL, 0, EVP_sha256(), NULL)"
	.align 8
.LC22:
	.string	"HMAC_Init_ex(ctx, test[5].key, test[5].key_len, EVP_sha256(), NULL)"
.LC23:
	.string	"EVP_sha256()"
	.align 8
.LC24:
	.string	"HMAC_Update(ctx, test[5].data, test[5].data_len)"
.LC25:
	.string	"test[5].digest"
	.align 8
.LC26:
	.string	"HMAC_Init_ex(ctx, test[6].key, test[6].key_len, NULL, NULL)"
	.align 8
.LC27:
	.string	"HMAC_Update(ctx, test[6].data, test[6].data_len)"
.LC28:
	.string	"test[6].digest"
	.text
	.type	test_hmac_run, @function
test_hmac_run:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	call	HMAC_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$135, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L38
.L12:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_reset@PLT
	movq	-32(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$139, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_get_md@PLT
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L39
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$141, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	movl	468+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	404+test(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	call	EVP_sha1@PLT
	movq	%rax, %rdx
	leaq	384+test(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$143, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	call	EVP_sha1@PLT
	movq	%rax, %rcx
	movl	400+test(%rip), %edx
	leaq	384+test(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movl	468+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	404+test(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$147, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$148, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movl	-116(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$152, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	472+test(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L41
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L42
	call	EVP_sha256@PLT
	movq	%rax, %rcx
	movl	496+test(%rip), %edx
	leaq	480+test(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	call	EVP_sha256@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_get_md@PLT
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L43
	movl	564+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	500+test(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$161, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	-116(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	568+test(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L44
	movl	592+test(%rip), %edx
	leaq	576+test(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movl	660+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	596+test(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$170, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movl	-116(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	664+test(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L46
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$177, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movl	660+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	596+test(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movl	-116(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	movq	664+test(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$182, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L48
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movl	660+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	596+test(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$191, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movl	-116(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	664+test(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L50
	movl	$1, -20(%rbp)
	jmp	.L16
.L39:
	nop
	jmp	.L16
.L40:
	nop
	jmp	.L16
.L41:
	nop
	jmp	.L16
.L42:
	nop
	jmp	.L16
.L43:
	nop
	jmp	.L16
.L44:
	nop
	jmp	.L16
.L45:
	nop
	jmp	.L16
.L46:
	nop
	jmp	.L16
.L47:
	nop
	jmp	.L16
.L48:
	nop
	jmp	.L16
.L49:
	nop
	jmp	.L16
.L50:
	nop
.L16:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	-20(%rbp), %eax
.L38:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_hmac_run, .-test_hmac_run
	.type	test_hmac_single_shot, @function
test_hmac_single_shot:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	468+test(%rip), %eax
	movslq	%eax, %rbx
	call	EVP_sha1@PLT
	movq	%rax, %rdi
	leaq	404+test(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rbx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	call	HMAC@PLT
	addq	$16, %rsp
	movl	$20, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	472+test(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L53
.L52:
	movl	$0, %eax
	jmp	.L54
.L53:
	movl	$1, %eax
.L54:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_hmac_single_shot, .-test_hmac_single_shot
	.type	test_hmac_final_update_fail, @function
test_hmac_final_update_fail:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	HMAC_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$226, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	call	EVP_sha256@PLT
	movq	%rax, %rcx
	movl	496+test(%rip), %edx
	leaq	480+test(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$228, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movl	564+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	500+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$230, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movl	564+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	500+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$231, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L62
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$232, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L62
	movl	$1, -4(%rbp)
	jmp	.L57
.L61:
	nop
	jmp	.L57
.L62:
	nop
.L57:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_hmac_final_update_fail, .-test_hmac_final_update_fail
	.section	.rodata
.LC29:
	.string	"ctx2"
	.align 8
.LC30:
	.string	"HMAC_Init_ex(ctx, test[7].key, test[7].key_len, EVP_sha1(), NULL)"
	.align 8
.LC31:
	.string	"HMAC_Update(ctx, test[7].data, test[7].data_len)"
.LC32:
	.string	"HMAC_CTX_copy(ctx2, ctx)"
.LC33:
	.string	"HMAC_Final(ctx2, buf, &len)"
.LC34:
	.string	"test[7].digest"
	.text
	.type	test_hmac_copy, @function
test_hmac_copy:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	HMAC_CTX_new@PLT
	movq	%rax, -16(%rbp)
	call	HMAC_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	call	EVP_sha1@PLT
	movq	%rax, %rcx
	movl	688+test(%rip), %edx
	leaq	672+test(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movl	756+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	692+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMAC_CTX_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movl	-100(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	760+test(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$261, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L74
	movl	$1, -4(%rbp)
	jmp	.L66
.L72:
	nop
	jmp	.L66
.L73:
	nop
	jmp	.L66
.L74:
	nop
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_hmac_copy, .-test_hmac_copy
	.section	.rodata
.LC35:
	.string	"ctx = EVP_MD_CTX_new()"
	.align 8
.LC36:
	.string	"pkey = EVP_PKEY_new_mac_key(EVP_PKEY_HMAC, NULL, key, sizeof(key))"
	.align 8
.LC37:
	.string	"EVP_DigestSignInit(ctx, NULL, EVP_sha1(), NULL, pkey)"
.LC38:
	.string	"ctx_tmp = EVP_MD_CTX_new()"
.LC39:
	.string	"EVP_MD_CTX_copy(ctx_tmp, ctx)"
	.align 8
.LC40:
	.string	"EVP_DigestSignUpdate(ctx, ct, sizeof(ct))"
	.text
	.type	test_hmac_copy_uninited, @function
test_hmac_copy_uninited:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -82(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$280, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	leaq	-64(%rbp), %rax
	movl	$24, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$855, %edi
	call	EVP_PKEY_new_mac_key@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	call	EVP_sha1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$284, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	-240(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$166, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$291, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movl	$1, -28(%rbp)
	jmp	.L78
.L81:
	nop
	jmp	.L78
.L82:
	nop
.L78:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_hmac_copy_uninited, .-test_hmac_copy_uninited
	.section	.rodata
.LC41:
	.string	"%02x"
	.text
	.type	pt, @function
pt:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	movl	$0, -4(%rbp)
	jmp	.L86
.L88:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	movl	%edx, %ecx
	leaq	buf.0(%rip), %rdx
	leaq	(%rcx,%rdx), %rdi
	leaq	.LC41(%rip), %rdx
	movl	%eax, %ecx
	movl	$3, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addl	$1, -4(%rbp)
.L86:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jnb	.L87
	movl	-4(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	cmpl	$200, %eax
	jbe	.L88
.L87:
	leaq	buf.0(%rip), %rax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	pt, .-pt
	.section	.rodata
.LC42:
	.string	"test_hmac_md5"
.LC43:
	.string	"test_hmac_single_shot"
.LC44:
	.string	"test_hmac_bad"
.LC45:
	.string	"test_hmac_run"
.LC46:
	.string	"test_hmac_final_update_fail"
.LC47:
	.string	"test_hmac_copy"
.LC48:
	.string	"test_hmac_copy_uninited"
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
	leaq	test_hmac_md5(%rip), %rsi
	leaq	.LC42(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_hmac_single_shot(%rip), %rdx
	leaq	.LC43(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hmac_bad(%rip), %rdx
	leaq	.LC44(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hmac_run(%rip), %rdx
	leaq	.LC45(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hmac_final_update_fail(%rip), %rdx
	leaq	.LC46(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hmac_copy(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hmac_copy_uninited(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.local	buf.0
	.comm	buf.0,201,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
