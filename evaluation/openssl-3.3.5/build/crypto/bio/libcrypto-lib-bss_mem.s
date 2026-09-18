	.file	"bss_mem.c"
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
	.string	"memory buffer"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	mem_method, @object
	.size	mem_method, 112
mem_method:
	.long	1025
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	mem_write
	.quad	bread_conv
	.quad	mem_read
	.quad	mem_puts
	.quad	mem_gets
	.quad	mem_ctrl
	.quad	mem_new
	.quad	mem_free
	.quad	0
	.zero	16
	.section	.rodata
.LC1:
	.string	"secure memory buffer"
	.section	.data.rel.ro
	.align 32
	.type	secmem_method, @object
	.size	secmem_method, 112
secmem_method:
	.long	1025
	.zero	4
	.quad	.LC1
	.quad	bwrite_conv
	.quad	mem_write
	.quad	bread_conv
	.quad	mem_read
	.quad	mem_puts
	.quad	mem_gets
	.quad	mem_ctrl
	.quad	secmem_new
	.quad	mem_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_mem
	.type	BIO_s_mem, @function
BIO_s_mem:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	mem_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_s_mem, .-BIO_s_mem
	.globl	BIO_s_secmem
	.type	BIO_s_secmem, @function
BIO_s_secmem:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	secmem_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_s_secmem, .-BIO_s_secmem
	.section	.rodata
.LC2:
	.string	"../crypto/bio/bss_mem.c"
	.text
	.globl	BIO_new_mem_buf
	.type	BIO_new_mem_buf, @function
BIO_new_mem_buf:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	cmpl	$0, -44(%rbp)
	jns	.L12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L13
.L12:
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
.L13:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L11
.L14:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_new_mem_buf, .-BIO_new_mem_buf
	.type	mem_init, @function
mem_init:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$111, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_new_ex@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$116, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L17
.L18:
	leaq	.LC2(%rip), %rax
	movl	$119, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	mem_init, .-mem_init
	.type	mem_new, @function
mem_new:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	mem_new, .-mem_new
	.type	secmem_new, @function
secmem_new:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mem_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	secmem_new, .-secmem_new
	.type	mem_free, @function
mem_free:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mem_buf_free
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	mem_free, .-mem_free
	.type	mem_buf_free, @function
mem_buf_free:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.L32:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
.L31:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	mem_buf_free, .-mem_buf_free
	.type	mem_buf_sync, @function
mem_buf_sync:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L34
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L34:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	mem_buf_sync, .-mem_buf_sync
	.type	mem_read, @function
mem_read:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L37:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -52(%rbp)
	js	.L38
	movl	-52(%rbp), %eax
	cltq
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	jmp	.L39
.L38:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.L39:
	cmpq	$0, -48(%rbp)
	je	.L40
	cmpl	$0, -4(%rbp)
	jle	.L40
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L41
.L40:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L41
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L41:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	mem_read, .-mem_read
	.type	mem_write, @function
mem_write:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L44:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -52(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	cmpq	$0, -48(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L48:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	mem_buf_sync
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	je	.L50
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L45
.L50:
	nop
.L45:
	movl	-4(%rbp), %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	mem_write, .-mem_write
	.type	mem_ctrl, @function
mem_ctrl:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$1, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L53
.L52:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L53:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L54
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.L55
.L54:
	movq	$0, -32(%rbp)
.L55:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$133, -76(%rbp)
	je	.L56
	cmpl	$133, -76(%rbp)
	jg	.L57
	cmpl	$130, -76(%rbp)
	je	.L58
	cmpl	$130, -76(%rbp)
	jg	.L57
	cmpl	$128, -76(%rbp)
	je	.L59
	cmpl	$128, -76(%rbp)
	jg	.L57
	cmpl	$115, -76(%rbp)
	je	.L60
	cmpl	$115, -76(%rbp)
	jg	.L57
	cmpl	$114, -76(%rbp)
	je	.L61
	cmpl	$114, -76(%rbp)
	jg	.L57
	cmpl	$13, -76(%rbp)
	je	.L62
	cmpl	$13, -76(%rbp)
	jg	.L57
	cmpl	$12, -76(%rbp)
	jg	.L57
	cmpl	$11, -76(%rbp)
	jge	.L63
	cmpl	$10, -76(%rbp)
	je	.L64
	cmpl	$10, -76(%rbp)
	jg	.L57
	cmpl	$9, -76(%rbp)
	je	.L65
	cmpl	$9, -76(%rbp)
	jg	.L57
	cmpl	$8, -76(%rbp)
	je	.L66
	cmpl	$8, -76(%rbp)
	jg	.L57
	cmpl	$3, -76(%rbp)
	je	.L67
	cmpl	$3, -76(%rbp)
	jg	.L57
	cmpl	$1, -76(%rbp)
	je	.L68
	cmpl	$2, -76(%rbp)
	je	.L69
	jmp	.L57
.L68:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L71
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L72
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.L72:
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L82
.L71:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L82
.L59:
	cmpq	$0, -88(%rbp)
	js	.L74
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -88(%rbp)
	jle	.L75
.L74:
	movq	$-1, %rax
	jmp	.L76
.L75:
	cmpq	$0, -88(%rbp)
	je	.L77
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L78
.L77:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
.L78:
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L73
.L69:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L73
.L58:
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 56(%rax)
	jmp	.L73
.L67:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L83
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L83
.L61:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	mem_buf_free
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L73
.L60:
	cmpq	$0, -96(%rbp)
	je	.L84
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L81
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	mem_buf_sync
.L81:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L84
.L66:
	movq	-72(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L73
.L65:
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L73
.L62:
	movq	$0, -8(%rbp)
	jmp	.L73
.L64:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L73
.L63:
	movq	$1, -8(%rbp)
	jmp	.L73
.L57:
	movq	$0, -8(%rbp)
	jmp	.L73
.L82:
	nop
	jmp	.L73
.L83:
	nop
	jmp	.L73
.L84:
	nop
.L73:
	movq	-8(%rbp), %rax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	mem_ctrl, .-mem_ctrl
	.type	mem_gets, @function
mem_gets:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$-1, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L86
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L86:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -8(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L87
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.L87:
	cmpl	$0, -8(%rbp)
	jg	.L88
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L90
.L93:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L91
	addl	$1, -4(%rbp)
	jmp	.L92
.L91:
	addl	$1, -4(%rbp)
.L90:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L93
.L92:
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mem_read
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L94
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L94:
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	mem_gets, .-mem_gets
	.type	mem_puts, @function
mem_puts:
.LFB178:
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
	call	mem_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	mem_puts, .-mem_puts
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"BIO_new_mem_buf"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"mem_write"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
