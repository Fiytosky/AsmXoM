	.file	"self_test_core.c"
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
	.string	"../crypto/self_test_core.c"
	.text
	.globl	ossl_self_test_set_callback_new
	.type	ossl_self_test_set_callback_new, @function
ossl_self_test_set_callback_new:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$40, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ossl_self_test_set_callback_new, .-ossl_self_test_set_callback_new
	.globl	ossl_self_test_set_callback_free
	.type	ossl_self_test_set_callback_free, @function
ossl_self_test_set_callback_free:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_self_test_set_callback_free, .-ossl_self_test_set_callback_free
	.type	get_self_test_callback, @function
get_self_test_callback:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	get_self_test_callback, .-get_self_test_callback
	.globl	OSSL_SELF_TEST_set_callback
	.type	OSSL_SELF_TEST_set_callback, @function
OSSL_SELF_TEST_set_callback:
.LFB163:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_self_test_callback
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L12:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	OSSL_SELF_TEST_set_callback, .-OSSL_SELF_TEST_set_callback
	.globl	OSSL_SELF_TEST_get_callback
	.type	OSSL_SELF_TEST_get_callback, @function
OSSL_SELF_TEST_get_callback:
.LFB164:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_self_test_callback
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L14
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L14:
	cmpq	$0, -40(%rbp)
	je	.L20
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L19
.L18:
	movl	$0, %eax
.L19:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	OSSL_SELF_TEST_get_callback, .-OSSL_SELF_TEST_get_callback
	.section	.rodata
.LC1:
	.string	"st-phase"
.LC2:
	.string	"st-type"
.LC3:
	.string	"st-desc"
	.text
	.type	self_test_setparams, @function
self_test_setparams:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	32(%rax), %rbx
	leaq	-96(%rbp), %rax
	leaq	.LC1(%rip), %rdi
	movl	$0, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	32(%rax), %rbx
	leaq	-96(%rbp), %rax
	leaq	.LC2(%rip), %rdi
	movl	$0, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	32(%rax), %rbx
	leaq	-96(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	movl	$0, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
.L22:
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	32(%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	self_test_setparams, .-self_test_setparams
	.section	.rodata
.LC4:
	.string	""
	.text
	.globl	OSSL_SELF_TEST_new
	.type	OSSL_SELF_TEST_new, @function
OSSL_SELF_TEST_new:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$97, %edx
	movq	%rax, %rsi
	movl	$200, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	self_test_setparams
	movq	-8(%rbp), %rax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	OSSL_SELF_TEST_new, .-OSSL_SELF_TEST_new
	.globl	OSSL_SELF_TEST_free
	.type	OSSL_SELF_TEST_free, @function
OSSL_SELF_TEST_free:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	OSSL_SELF_TEST_free, .-OSSL_SELF_TEST_free
	.section	.rodata
.LC5:
	.string	"Start"
	.text
	.globl	OSSL_SELF_TEST_onbegin
	.type	OSSL_SELF_TEST_onbegin, @function
OSSL_SELF_TEST_onbegin:
.LFB168:
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
	cmpq	$0, -8(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	self_test_setparams
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	OSSL_SELF_TEST_onbegin, .-OSSL_SELF_TEST_onbegin
	.section	.rodata
.LC6:
	.string	"Pass"
.LC7:
	.string	"Fail"
.LC8:
	.string	"None"
	.text
	.globl	OSSL_SELF_TEST_onend
	.type	OSSL_SELF_TEST_onend, @function
OSSL_SELF_TEST_onend:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L34
	cmpl	$1, -12(%rbp)
	jne	.L32
	leaq	.LC6(%rip), %rax
	jmp	.L33
.L32:
	leaq	.LC7(%rip), %rax
.L33:
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	self_test_setparams
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, 16(%rax)
.L34:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	OSSL_SELF_TEST_onend, .-OSSL_SELF_TEST_onend
	.section	.rodata
.LC9:
	.string	"Corrupt"
	.text
	.globl	OSSL_SELF_TEST_oncorrupt_byte
	.type	OSSL_SELF_TEST_oncorrupt_byte, @function
OSSL_SELF_TEST_oncorrupt_byte:
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
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	self_test_setparams
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L36
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	OSSL_SELF_TEST_oncorrupt_byte, .-OSSL_SELF_TEST_oncorrupt_byte
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
