	.file	"param_build.c"
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
	.type	sk_OSSL_PARAM_BLD_DEF_num, @function
sk_OSSL_PARAM_BLD_DEF_num:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	sk_OSSL_PARAM_BLD_DEF_num, .-sk_OSSL_PARAM_BLD_DEF_num
	.type	sk_OSSL_PARAM_BLD_DEF_value, @function
sk_OSSL_PARAM_BLD_DEF_value:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	sk_OSSL_PARAM_BLD_DEF_value, .-sk_OSSL_PARAM_BLD_DEF_value
	.type	sk_OSSL_PARAM_BLD_DEF_new_null, @function
sk_OSSL_PARAM_BLD_DEF_new_null:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	sk_OSSL_PARAM_BLD_DEF_new_null, .-sk_OSSL_PARAM_BLD_DEF_new_null
	.type	sk_OSSL_PARAM_BLD_DEF_free, @function
sk_OSSL_PARAM_BLD_DEF_free:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	sk_OSSL_PARAM_BLD_DEF_free, .-sk_OSSL_PARAM_BLD_DEF_free
	.type	sk_OSSL_PARAM_BLD_DEF_push, @function
sk_OSSL_PARAM_BLD_DEF_push:
.LFB170:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	sk_OSSL_PARAM_BLD_DEF_push, .-sk_OSSL_PARAM_BLD_DEF_push
	.type	sk_OSSL_PARAM_BLD_DEF_pop, @function
sk_OSSL_PARAM_BLD_DEF_pop:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	sk_OSSL_PARAM_BLD_DEF_pop, .-sk_OSSL_PARAM_BLD_DEF_pop
	.section	.rodata
.LC0:
	.string	"../crypto/param_build.c"
	.text
	.type	param_push, @function
param_push:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$55, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_bytes_to_blocks@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L20
.L19:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L20:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_push
	testl	%eax, %eax
	jg	.L21
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$68, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L21:
	movq	-8(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	param_push, .-param_push
	.type	param_push_num, @function
param_push_num:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	param_push
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	cmpq	$8, -48(%rbp)
	jbe	.L25
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	param_push_num, .-param_push_num
	.globl	OSSL_PARAM_BLD_new
	.type	OSSL_PARAM_BLD_new, @function
OSSL_PARAM_BLD_new:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$93, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	call	sk_OSSL_PARAM_BLD_DEF_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$98, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L27:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	OSSL_PARAM_BLD_new, .-OSSL_PARAM_BLD_new
	.type	free_all_params, @function
free_all_params:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_num
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_pop
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$110, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L30:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L31
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	free_all_params, .-free_all_params
	.globl	OSSL_PARAM_BLD_free
	.type	OSSL_PARAM_BLD_free, @function
OSSL_PARAM_BLD_free:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_all_params
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L32
.L35:
	nop
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	OSSL_PARAM_BLD_free, .-OSSL_PARAM_BLD_free
	.globl	OSSL_PARAM_BLD_push_int
	.type	OSSL_PARAM_BLD_push_int, @function
OSSL_PARAM_BLD_push_int:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	OSSL_PARAM_BLD_push_int, .-OSSL_PARAM_BLD_push_int
	.globl	OSSL_PARAM_BLD_push_uint
	.type	OSSL_PARAM_BLD_push_uint, @function
OSSL_PARAM_BLD_push_uint:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	OSSL_PARAM_BLD_push_uint, .-OSSL_PARAM_BLD_push_uint
	.globl	OSSL_PARAM_BLD_push_long
	.type	OSSL_PARAM_BLD_push_long, @function
OSSL_PARAM_BLD_push_long:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	OSSL_PARAM_BLD_push_long, .-OSSL_PARAM_BLD_push_long
	.globl	OSSL_PARAM_BLD_push_ulong
	.type	OSSL_PARAM_BLD_push_ulong, @function
OSSL_PARAM_BLD_push_ulong:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	OSSL_PARAM_BLD_push_ulong, .-OSSL_PARAM_BLD_push_ulong
	.globl	OSSL_PARAM_BLD_push_int32
	.type	OSSL_PARAM_BLD_push_int32, @function
OSSL_PARAM_BLD_push_int32:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	OSSL_PARAM_BLD_push_int32, .-OSSL_PARAM_BLD_push_int32
	.globl	OSSL_PARAM_BLD_push_uint32
	.type	OSSL_PARAM_BLD_push_uint32, @function
OSSL_PARAM_BLD_push_uint32:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	OSSL_PARAM_BLD_push_uint32, .-OSSL_PARAM_BLD_push_uint32
	.globl	OSSL_PARAM_BLD_push_int64
	.type	OSSL_PARAM_BLD_push_int64, @function
OSSL_PARAM_BLD_push_int64:
.LFB196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	OSSL_PARAM_BLD_push_int64, .-OSSL_PARAM_BLD_push_int64
	.globl	OSSL_PARAM_BLD_push_uint64
	.type	OSSL_PARAM_BLD_push_uint64, @function
OSSL_PARAM_BLD_push_uint64:
.LFB197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	OSSL_PARAM_BLD_push_uint64, .-OSSL_PARAM_BLD_push_uint64
	.globl	OSSL_PARAM_BLD_push_size_t
	.type	OSSL_PARAM_BLD_push_size_t, @function
OSSL_PARAM_BLD_push_size_t:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	OSSL_PARAM_BLD_push_size_t, .-OSSL_PARAM_BLD_push_size_t
	.globl	OSSL_PARAM_BLD_push_time_t
	.type	OSSL_PARAM_BLD_push_time_t, @function
OSSL_PARAM_BLD_push_time_t:
.LFB199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	OSSL_PARAM_BLD_push_time_t, .-OSSL_PARAM_BLD_push_time_t
	.globl	OSSL_PARAM_BLD_push_double
	.type	OSSL_PARAM_BLD_push_double, @function
OSSL_PARAM_BLD_push_double:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$3, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push_num
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	OSSL_PARAM_BLD_push_double, .-OSSL_PARAM_BLD_push_double
	.section	.rodata
	.align 8
.LC1:
	.string	"Negative big numbers are unsupported for OSSL_PARAM_UNSIGNED_INTEGER"
	.text
	.type	push_BN, @function
push_BN:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$2, -52(%rbp)
	je	.L59
	cmpl	$1, -52(%rbp)
	jne	.L60
.L59:
	movl	$1, %eax
	jmp	.L61
.L60:
	movl	$0, %eax
.L61:
	cltq
	testq	%rax, %rax
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	cmpq	$0, -40(%rbp)
	je	.L64
	cmpl	$2, -52(%rbp)
	jne	.L65
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L65
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$524556, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L65:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L66
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L66:
	movl	-8(%rbp), %eax
	cltq
	cmpq	%rax, -48(%rbp)
	jnb	.L67
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L67:
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	cmpl	$8, %eax
	jne	.L68
	movl	$1, -4(%rbp)
.L68:
	cmpq	$0, -48(%rbp)
	jne	.L64
	addq	$1, -48(%rbp)
.L64:
	movl	-4(%rbp), %r8d
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	param_push
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L63
.L69:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	push_BN, .-push_BN
	.globl	OSSL_PARAM_BLD_push_BN
	.type	OSSL_PARAM_BLD_push_BN, @function
OSSL_PARAM_BLD_push_BN:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	push_BN
	jmp	.L72
.L71:
	cmpq	$0, -24(%rbp)
	je	.L73
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	jmp	.L74
.L73:
	movl	$0, %eax
.L74:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$2, %r8d
	movq	%rax, %rcx
	call	push_BN
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	OSSL_PARAM_BLD_push_BN, .-OSSL_PARAM_BLD_push_BN
	.globl	OSSL_PARAM_BLD_push_BN_pad
	.type	OSSL_PARAM_BLD_push_BN_pad, @function
OSSL_PARAM_BLD_push_BN_pad:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L76
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L76
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	push_BN
	jmp	.L77
.L76:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rdi
	call	push_BN
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	OSSL_PARAM_BLD_push_BN_pad, .-OSSL_PARAM_BLD_push_BN_pad
	.globl	OSSL_PARAM_BLD_push_utf8_string
	.type	OSSL_PARAM_BLD_push_utf8_string, @function
OSSL_PARAM_BLD_push_utf8_string:
.LFB204:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L79
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
.L79:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	-4(%rbp), %edi
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	$4, %r8d
	movq	%rax, %rdi
	call	param_push
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	OSSL_PARAM_BLD_push_utf8_string, .-OSSL_PARAM_BLD_push_utf8_string
	.globl	OSSL_PARAM_BLD_push_utf8_ptr
	.type	OSSL_PARAM_BLD_push_utf8_ptr, @function
OSSL_PARAM_BLD_push_utf8_ptr:
.LFB205:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L83
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
.L83:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$6, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	OSSL_PARAM_BLD_push_utf8_ptr, .-OSSL_PARAM_BLD_push_utf8_ptr
	.globl	OSSL_PARAM_BLD_push_octet_string
	.type	OSSL_PARAM_BLD_push_octet_string, @function
OSSL_PARAM_BLD_push_octet_string:
.LFB206:
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
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movl	$5, %r8d
	movq	%rax, %rdi
	call	param_push
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	OSSL_PARAM_BLD_push_octet_string, .-OSSL_PARAM_BLD_push_octet_string
	.globl	OSSL_PARAM_BLD_push_octet_ptr
	.type	OSSL_PARAM_BLD_push_octet_ptr, @function
OSSL_PARAM_BLD_push_octet_ptr:
.LFB207:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$7, %r8d
	movl	$8, %ecx
	movq	%rax, %rdi
	call	param_push
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	OSSL_PARAM_BLD_push_octet_ptr, .-OSSL_PARAM_BLD_push_octet_ptr
	.type	param_bld_convert, @function
param_bld_convert:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_num
	movl	%eax, -36(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L93
.L107:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_value
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, 8(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 24(%rdx)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	$-1, 32(%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L94
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	salq	$3, %rax
	addq	%rax, -80(%rbp)
	jmp	.L95
.L94:
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	salq	$3, %rax
	addq	%rax, -72(%rbp)
.L95:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L97
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	jmp	.L98
.L97:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_signed_bn2native@PLT
	jmp	.L98
.L96:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$7, %eax
	je	.L99
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$6, %eax
	jne	.L100
.L99:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L98
.L100:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L101
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L102
.L101:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L104
.L103:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L104:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L98
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L98
.L102:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$8, %rax
	jbe	.L106
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L98
.L106:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L98:
	addl	$1, -20(%rbp)
.L93:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L107
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	param_bld_convert, .-param_bld_convert
	.globl	OSSL_PARAM_BLD_to_param
	.type	OSSL_PARAM_BLD_to_param, @function
OSSL_PARAM_BLD_to_param:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PARAM_BLD_DEF_num
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	ossl_param_bytes_to_blocks@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	salq	$3, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L110
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$371, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L110
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L111
.L110:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$377, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L112
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$379, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movl	$0, %eax
	jmp	.L111
.L112:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	param_bld_convert
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_param_set_secure_block@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free_all_params
	movq	-48(%rbp), %rax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	OSSL_PARAM_BLD_to_param, .-OSSL_PARAM_BLD_to_param
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"param_push_num"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 8
__func__.1:
	.string	"push_BN"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"OSSL_PARAM_BLD_to_param"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
