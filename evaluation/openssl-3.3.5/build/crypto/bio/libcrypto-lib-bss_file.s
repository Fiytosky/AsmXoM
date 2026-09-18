	.file	"bss_file.c"
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
	.string	"FILE pointer"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_filep, @object
	.size	methods_filep, 112
methods_filep:
	.long	1026
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	file_write
	.quad	bread_conv
	.quad	file_read
	.quad	file_puts
	.quad	file_gets
	.quad	file_ctrl
	.quad	file_new
	.quad	file_free
	.quad	0
	.zero	16
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bss_file.c"
.LC2:
	.string	"calling fopen(%s, %s)"
	.text
	.globl	BIO_new_file
	.type	BIO_new_file, @function
BIO_new_file:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	openssl_fopen@PLT
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L6
	orl	$16, -4(%rbp)
.L6:
	cmpq	$0, -16(%rbp)
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L8
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L9
.L8:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$75, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L9:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L10:
	movl	$0, %eax
	jmp	.L11
.L7:
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_new_file, .-BIO_new_file
	.globl	BIO_new_fp
	.type	BIO_new_fp, @function
BIO_new_fp:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_new_fp, .-BIO_new_fp
	.globl	BIO_s_file
	.type	BIO_s_file, @function
BIO_s_file:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_filep(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_s_file, .-BIO_s_file
	.type	file_new, @function
file_new:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	file_new, .-file_new
	.type	file_free, @function
file_free:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.L24:
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
.L23:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	file_free, .-file_free
	.section	.rodata
.LC3:
	.string	"calling fread()"
	.text
	.type	file_read, @function
file_read:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L26
	cmpq	$0, -32(%rbp)
	je	.L26
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L26
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L26
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
.L26:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	file_read, .-file_read
	.type	file_write, @function
file_write:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L29
	cmpq	$0, -32(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L29
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.L29:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	file_write, .-file_write
	.section	.rodata
.LC4:
	.string	"a+"
.LC5:
	.string	"a"
.LC6:
	.string	"r+"
.LC7:
	.string	"w"
.LC8:
	.string	"r"
.LC9:
	.string	"calling fflush()"
	.text
	.type	file_ctrl, @function
file_ctrl:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$133, -44(%rbp)
	je	.L32
	cmpl	$133, -44(%rbp)
	jg	.L33
	cmpl	$128, -44(%rbp)
	je	.L34
	cmpl	$128, -44(%rbp)
	jg	.L33
	cmpl	$108, -44(%rbp)
	je	.L35
	cmpl	$108, -44(%rbp)
	jg	.L33
	cmpl	$107, -44(%rbp)
	je	.L36
	cmpl	$107, -44(%rbp)
	jg	.L33
	cmpl	$106, -44(%rbp)
	je	.L37
	cmpl	$106, -44(%rbp)
	jg	.L33
	cmpl	$12, -44(%rbp)
	je	.L38
	cmpl	$12, -44(%rbp)
	jg	.L33
	cmpl	$11, -44(%rbp)
	je	.L39
	cmpl	$11, -44(%rbp)
	jg	.L33
	cmpl	$9, -44(%rbp)
	je	.L40
	cmpl	$9, -44(%rbp)
	jg	.L33
	cmpl	$8, -44(%rbp)
	je	.L41
	cmpl	$8, -44(%rbp)
	jg	.L33
	cmpl	$3, -44(%rbp)
	je	.L32
	cmpl	$3, -44(%rbp)
	jg	.L33
	cmpl	$1, -44(%rbp)
	je	.L34
	cmpl	$2, -44(%rbp)
	je	.L42
	jmp	.L33
.L34:
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L43
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L43
.L32:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	jmp	.L43
.L37:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	file_free
	movq	-56(%rbp), %rax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L43
.L35:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	file_free
	movq	-56(%rbp), %rax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-56(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L44
	movq	-56(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L45
	leaq	.LC4(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	jmp	.L46
.L45:
	leaq	.LC5(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	jmp	.L46
.L44:
	movq	-56(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L47
	movq	-56(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L47
	leaq	.LC6(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	jmp	.L46
.L47:
	movq	-56(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L48
	leaq	.LC7(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	jmp	.L46
.L48:
	movq	-56(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L49
	leaq	.LC8(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	jmp	.L46
.L49:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L43
.L46:
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	openssl_fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$297, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L43
.L50:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	jmp	.L43
.L36:
	cmpq	$0, -64(%rbp)
	je	.L54
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L54
.L41:
	movq	-40(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L43
.L40:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L43
.L39:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$326, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.L55
.L38:
	movq	$1, -8(%rbp)
	jmp	.L43
.L33:
	movq	$0, -8(%rbp)
	jmp	.L43
.L54:
	nop
	jmp	.L43
.L55:
	nop
.L43:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	file_ctrl, .-file_ctrl
	.type	file_gets, @function
file_gets:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L60
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L61
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	jmp	.L58
.L60:
	nop
	jmp	.L58
.L61:
	nop
.L58:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	file_gets, .-file_gets
	.type	file_puts, @function
file_puts:
.LFB174:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	file_puts, .-file_puts
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"BIO_new_file"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 10
__func__.1:
	.string	"file_read"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"file_ctrl"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
