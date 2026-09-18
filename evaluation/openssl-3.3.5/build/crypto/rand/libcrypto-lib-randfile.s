	.file	"randfile.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"rb"
.LC1:
	.string	"../crypto/rand/randfile.c"
.LC2:
	.string	"Filename=%s"
	.text
	.globl	RAND_load_file
	.type	RAND_load_file, @function
RAND_load_file:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1472, %rsp
	movq	%rdi, -1464(%rbp)
	movq	%rsi, -1472(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -1472(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L22
.L6:
	leaq	.LC0(%rip), %rdx
	movq	-1464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	openssl_fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1464(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$121, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L22
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edx
	leaq	-1456(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	fstat@PLT
	testl	%eax, %eax
	jns	.L9
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1464(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$113, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$-1, %eax
	jmp	.L22
.L9:
	cmpq	$0, -1472(%rbp)
	jns	.L10
	movl	-1432(%rbp), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L11
	movq	-1408(%rbp), %rax
	movq	%rax, -1472(%rbp)
	jmp	.L10
.L11:
	movq	$256, -1472(%rbp)
.L10:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	setbuf@PLT
.L20:
	cmpq	$0, -1472(%rbp)
	jle	.L12
	cmpq	$1280, -1472(%rbp)
	jg	.L13
	movq	-1472(%rbp), %rax
	movl	%eax, -4(%rbp)
	jmp	.L14
.L13:
	movl	$1024, -4(%rbp)
	jmp	.L14
.L12:
	movl	$1280, -4(%rbp)
.L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	leaq	-1312(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L15
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	clearerr@PLT
	cmpl	$0, -20(%rbp)
	je	.L23
.L15:
	cmpl	$0, -20(%rbp)
	je	.L24
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-20(%rbp), %xmm1
	movq	%xmm1, %rcx
	movl	-20(%rbp), %edx
	leaq	-1312(%rbp), %rax
	movq	%rcx, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_add@PLT
	movl	-20(%rbp), %eax
	addl	%eax, -8(%rbp)
	cmpq	$0, -1472(%rbp)
	jle	.L19
	movl	-20(%rbp), %eax
	cltq
	subq	%rax, -1472(%rbp)
	cmpq	$0, -1472(%rbp)
	jle	.L25
.L19:
	cmpl	$2147482367, -8(%rbp)
	jg	.L26
	jmp	.L20
.L23:
	nop
	jmp	.L20
.L24:
	nop
	jmp	.L18
.L25:
	nop
	jmp	.L18
.L26:
	nop
.L18:
	leaq	-1312(%rbp), %rax
	movl	$1280, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	call	RAND_status@PLT
	testl	%eax, %eax
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1464(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L22
.L21:
	movl	-8(%rbp), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	RAND_load_file, .-RAND_load_file
	.section	.rodata
.LC3:
	.string	"wb"
	.text
	.globl	RAND_write_file
	.type	RAND_write_file, @function
RAND_write_file:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1200, %rsp
	movq	%rdi, -1192(%rbp)
	movl	$-1, -12(%rbp)
	movq	$0, -8(%rbp)
	leaq	-1184(%rbp), %rdx
	movq	-1192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	js	.L28
	movl	-1160(%rbp), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	je	.L28
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1192(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L34
.L28:
	leaq	-1040(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	cmpl	$1, %eax
	je	.L30
	movl	$-1, %eax
	jmp	.L34
.L30:
	movq	-1192(%rbp), %rax
	movl	$384, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	je	.L31
	leaq	.LC3(%rip), %rdx
	movl	-16(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L31
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1192(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$121, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L34
.L31:
	cmpq	$0, -8(%rbp)
	jne	.L32
	leaq	.LC3(%rip), %rdx
	movq	-1192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	openssl_fopen@PLT
	movq	%rax, -8(%rbp)
.L32:
	cmpq	$0, -8(%rbp)
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1192(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$121, %esi
	movl	$36, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L34
.L33:
	movq	-1192(%rbp), %rax
	movl	$384, %esi
	movq	%rax, %rdi
	call	chmod@PLT
	movq	-8(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1024, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	leaq	-1040(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-12(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	RAND_write_file, .-RAND_write_file
	.section	.rodata
.LC4:
	.string	"RANDFILE"
.LC5:
	.string	"HOME"
	.text
	.globl	RAND_file_name
	.type	RAND_file_name, @function
RAND_file_name:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
.L36:
	movl	$0, -12(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -8(%rbp)
.L37:
	cmpq	$0, -8(%rbp)
	je	.L38
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	jb	.L42
	movl	$0, %eax
	jmp	.L40
.L42:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L43
.L41:
	movq	-24(%rbp), %rax
	addq	$6, %rax
	cmpq	-48(%rbp), %rax
	jb	.L44
	movl	$0, %eax
	jmp	.L40
.L44:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1684959790, (%rax)
	movb	$0, 4(%rax)
.L43:
	movq	-40(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	RAND_file_name, .-RAND_file_name
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"RAND_load_file"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"RAND_write_file"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
