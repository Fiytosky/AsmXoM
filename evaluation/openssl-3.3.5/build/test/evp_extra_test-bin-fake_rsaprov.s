	.file	"fake_rsaprov.c"
	.text
	.local	has_selection
	.comm	has_selection,4,4
	.local	imptypes_selection
	.comm	imptypes_selection,4,4
	.local	exptypes_selection
	.comm	exptypes_selection,4,4
	.local	query_id
	.comm	query_id,4,4
	.local	key_deleted
	.comm	key_deleted,4,4
	.globl	fake_rsa_query_operation_name
	.bss
	.align 4
	.type	fake_rsa_query_operation_name, @object
	.size	fake_rsa_query_operation_name, 4
fake_rsa_query_operation_name:
	.zero	4
	.text
	.globl	fake_rsa_restore_store_state
	.type	fake_rsa_restore_store_state, @function
fake_rsa_restore_store_state:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, key_deleted(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	fake_rsa_restore_store_state, .-fake_rsa_restore_store_state
	.section	.rodata
.LC9:
	.string	"../test/fake_rsaprov.c"
	.align 8
.LC10:
	.string	"key = OPENSSL_zalloc(sizeof(struct fake_rsa_keydata))"
	.text
	.type	fake_rsa_keymgmt_new, @function
fake_rsa_keymgmt_new:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC9(%rip), %rax
	movl	$51, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L3
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	$0, has_selection(%rip)
	movl	$0, imptypes_selection(%rip)
	movl	$0, exptypes_selection(%rip)
	movl	$0, query_id(%rip)
	movq	-8(%rbp), %rax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	fake_rsa_keymgmt_new, .-fake_rsa_keymgmt_new
	.type	fake_rsa_keymgmt_free, @function
fake_rsa_keymgmt_free:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC9(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	fake_rsa_keymgmt_free, .-fake_rsa_keymgmt_free
	.type	fake_rsa_keymgmt_has, @function
fake_rsa_keymgmt_has:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, has_selection(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	fake_rsa_keymgmt_has, .-fake_rsa_keymgmt_has
	.section	.rodata
.LC11:
	.string	"RSA"
	.text
	.type	fake_rsa_keymgmt_query, @function
fake_rsa_keymgmt_query:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, query_id(%rip)
	movq	fake_rsa_query_operation_name@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L9
	leaq	.LC11(%rip), %rax
	jmp	.L11
.L9:
	movl	$0, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	fake_rsa_keymgmt_query, .-fake_rsa_keymgmt_query
	.type	fake_rsa_keymgmt_import, @function
fake_rsa_keymgmt_import:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	fake_rsa_keymgmt_import, .-fake_rsa_keymgmt_import
	.data
	.align 32
	.type	fake_rsa_n, @object
	.size	fake_rsa_n, 66
fake_rsa_n:
	.base64	"AKo2q86IrP3/VVI8f8RSP5DvoA3zd0olny5itMXZnLWtswCgKF5TAZMODHD7aHaTnOYWzmJKEeAIbTQevKygofUA"
	.type	fake_rsa_e, @object
	.size	fake_rsa_e, 2
fake_rsa_e:
	.string	"\021"
	.align 32
	.type	fake_rsa_d, @object
	.size	fake_rsa_d, 65
fake_rsa_d:
	.base64	"CgM3SGJkh2lfXzC8OLmLRMLNLf9DQJjNINihONCQv2R5fD+nos3LPNHgvbomVLT5346K5Z1zPZ8zswFiSv0dUQA="
	.align 32
	.type	fake_rsa_p, @object
	.size	fake_rsa_p, 34
fake_rsa_p:
	.base64	"ANhAtBZmtC6S6g2jtDIEtc/OM1JSTQQWpaRB5wCvRhINAA=="
	.align 32
	.type	fake_rsa_q, @object
	.size	fake_rsa_q, 34
fake_rsa_q:
	.base64	"AMl/sfAn9FP2NBIz6qrR2TU/bELQiGax0FoPIDUCi52JAA=="
	.align 32
	.type	fake_rsa_dmp1, @object
	.size	fake_rsa_dmp1, 33
fake_rsa_dmp1:
	.base64	"WQuVcqLCqcQGBZ3Cqy8dr+t+i08Qp1Seju31tPzgngUA"
	.align 32
	.type	fake_rsa_dmq1, @object
	.size	fake_rsa_dmq1, 34
fake_rsa_dmq1:
	.base64	"AI48BSH+FeDqBqNv8PEMmVLDW3p1FP0yOLgKrVKYYo1RAA=="
	.align 32
	.type	fake_rsa_iqmp, @object
	.size	fake_rsa_iqmp, 33
fake_rsa_iqmp:
	.base64	"Nj/3GJ2o6QsdNB9x0Jt2qKlD4R0Qsk0kny3q/vgMGCYA"
	.section	.rodata
.LC0:
	.string	"n"
.LC1:
	.string	"e"
.LC2:
	.string	"d"
.LC3:
	.string	"rsa-factor1"
.LC4:
	.string	"rsa-factor2"
.LC5:
	.string	"rsa-exponent1"
.LC6:
	.string	"rsa-exponent2"
.LC7:
	.string	"rsa-coefficient1"
	.data
	.align 32
.LC12:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	fake_rsa_n
	.quad	65
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	fake_rsa_e
	.quad	1
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	fake_rsa_d
	.quad	64
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	fake_rsa_p
	.quad	33
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	fake_rsa_q
	.quad	33
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	fake_rsa_dmp1
	.quad	32
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	fake_rsa_dmq1
	.quad	33
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	fake_rsa_iqmp
	.quad	32
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	fake_rsa_key_params
	.type	fake_rsa_key_params, @function
fake_rsa_key_params:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movl	%edi, -372(%rbp)
	cmpl	$0, -372(%rbp)
	je	.L15
	leaq	-368(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movl	$45, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	jmp	.L16
.L15:
	leaq	.LC0(%rip), %rax
	movq	%rax, -368(%rbp)
	movl	$2, -360(%rbp)
	leaq	fake_rsa_n(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	$65, -344(%rbp)
	movq	$-1, -336(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -328(%rbp)
	movl	$2, -320(%rbp)
	leaq	fake_rsa_e(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	$1, -304(%rbp)
	movq	$-1, -296(%rbp)
	movq	$0, -288(%rbp)
	movl	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	fake_rsa_key_params, .-fake_rsa_key_params
	.section	.rodata
	.align 8
.LC13:
	.string	"params = fake_rsa_key_params(0)"
	.text
	.type	fake_rsa_keymgmt_export, @function
fake_rsa_keymgmt_export:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movl	$0, %edi
	call	fake_rsa_key_params@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$178, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L20:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-12(%rbp), %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	fake_rsa_keymgmt_export, .-fake_rsa_keymgmt_export
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	fake_rsa_import_key_types, @object
	.size	fake_rsa_import_key_types, 360
fake_rsa_import_key_types:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	fake_rsa_keymgmt_imptypes, @function
fake_rsa_keymgmt_imptypes:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, imptypes_selection(%rip)
	leaq	fake_rsa_import_key_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	fake_rsa_keymgmt_imptypes, .-fake_rsa_keymgmt_imptypes
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_export_key_types, @object
	.size	fake_rsa_export_key_types, 120
fake_rsa_export_key_types:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	fake_rsa_keymgmt_exptypes, @function
fake_rsa_keymgmt_exptypes:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, exptypes_selection(%rip)
	leaq	fake_rsa_export_key_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	fake_rsa_keymgmt_exptypes, .-fake_rsa_keymgmt_exptypes
	.type	fake_rsa_keymgmt_load, @function
fake_rsa_keymgmt_load:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$8, -32(%rbp)
	je	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	je	.L28
	movl	$0, %eax
	jmp	.L27
.L28:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	fake_rsa_keymgmt_load, .-fake_rsa_keymgmt_load
	.section	.rodata
.LC14:
	.string	"gctx = OPENSSL_malloc(1)"
	.text
	.type	fake_rsa_gen_init, @function
fake_rsa_gen_init:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC9(%rip), %rax
	movl	$242, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$242, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	movq	-8(%rbp), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	fake_rsa_gen_init, .-fake_rsa_gen_init
	.section	.rodata
.LC15:
	.string	"gctx"
.LC16:
	.string	"inited"
	.align 8
.LC17:
	.string	"keydata = fake_rsa_keymgmt_new(NULL)"
	.text
	.type	fake_rsa_gen, @function
fake_rsa_gen:
.LFB480:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$256, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	-8(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC9(%rip), %rax
	pushq	$1
	leaq	inited.1(%rip), %rsi
	pushq	%rsi
	movl	$1, %r9d
	movq	%rdi, %r8
	movl	$257, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$0, %edi
	call	fake_rsa_keymgmt_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$260, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L35
.L36:
	movq	-16(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-16(%rbp), %rax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	fake_rsa_gen, .-fake_rsa_gen
	.type	fake_rsa_gen_cleanup, @function
fake_rsa_gen_cleanup:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC9(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$269, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	fake_rsa_gen_cleanup, .-fake_rsa_gen_cleanup
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_keymgmt_funcs, @object
	.size	fake_rsa_keymgmt_funcs, 208
fake_rsa_keymgmt_funcs:
	.long	1
	.zero	4
	.quad	fake_rsa_keymgmt_new
	.long	10
	.zero	4
	.quad	fake_rsa_keymgmt_free
	.long	21
	.zero	4
	.quad	fake_rsa_keymgmt_has
	.long	20
	.zero	4
	.quad	fake_rsa_keymgmt_query
	.long	40
	.zero	4
	.quad	fake_rsa_keymgmt_import
	.long	41
	.zero	4
	.quad	fake_rsa_keymgmt_imptypes
	.long	42
	.zero	4
	.quad	fake_rsa_keymgmt_export
	.long	43
	.zero	4
	.quad	fake_rsa_keymgmt_exptypes
	.long	8
	.zero	4
	.quad	fake_rsa_keymgmt_load
	.long	2
	.zero	4
	.quad	fake_rsa_gen_init
	.long	6
	.zero	4
	.quad	fake_rsa_gen
	.long	7
	.zero	4
	.quad	fake_rsa_gen_cleanup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC18:
	.string	"RSA:rsaEncryption"
.LC19:
	.string	"provider=fake-rsa"
.LC20:
	.string	"Fake RSA Key Management"
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_keymgmt_algs, @object
	.size	fake_rsa_keymgmt_algs, 64
fake_rsa_keymgmt_algs:
	.quad	.LC18
	.quad	.LC19
	.quad	fake_rsa_keymgmt_funcs
	.quad	.LC20
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC21:
	.string	"sigctx"
	.text
	.type	fake_rsa_sig_newctx, @function
fake_rsa_sig_newctx:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC9(%rip), %rax
	movl	$303, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$305, %esi
	call	test_ptr@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	fake_rsa_sig_newctx, .-fake_rsa_sig_newctx
	.type	fake_rsa_sig_freectx, @function
fake_rsa_sig_freectx:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC9(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	fake_rsa_sig_freectx, .-fake_rsa_sig_freectx
	.section	.rodata
.LC22:
	.string	"keydata"
.LC23:
	.string	"0"
.LC24:
	.string	"keydata->status"
	.text
	.type	fake_rsa_sig_sign_init, @function
fake_rsa_sig_sign_init:
.LFB484:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$322, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$326, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$326, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L45
.L44:
	movl	$0, %eax
	jmp	.L43
.L45:
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	fake_rsa_sig_sign_init, .-fake_rsa_sig_sign_init
	.section	.rodata
.LC25:
	.string	"1"
.LC26:
	.string	"*sigctx"
.LC27:
	.string	"*siglen"
.LC28:
	.string	"sigsize"
	.text
	.type	fake_rsa_sig_sign, @function
fake_rsa_sig_sign:
.LFB485:
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
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$341, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$341, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L48
.L47:
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-40(%rbp), %rax
	movq	$256, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L50
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$347, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L49
.L51:
	movq	-8(%rbp), %rax
	movb	$2, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L50:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	fake_rsa_sig_sign, .-fake_rsa_sig_sign
	.section	.rodata
.LC29:
	.string	"newctx = OPENSSL_zalloc(1)"
	.text
	.type	fake_rsa_sig_dupctx, @function
fake_rsa_sig_dupctx:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$160, %eax
	testl	%eax, %eax
	je	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	leaq	.LC9(%rip), %rax
	movl	$371, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$371, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L54
.L55:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	fake_rsa_sig_dupctx, .-fake_rsa_sig_dupctx
	.section	.rodata
.LC30:
	.string	"NO_DUP"
	.text
	.type	fake_rsa_dgstsgnvfy_init, @function
fake_rsa_dgstsgnvfy_init:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movb	%al, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$385, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$389, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$389, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L58
.L60:
	movq	-8(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, (%rax)
	cmpq	$0, -64(%rbp)
	je	.L61
	leaq	.LC30(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L61
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	orl	$-96, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L61:
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	fake_rsa_dgstsgnvfy_init, .-fake_rsa_dgstsgnvfy_init
	.type	fake_rsa_dgstsgn_init, @function
fake_rsa_dgstsgn_init:
.LFB488:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fake_rsa_dgstsgnvfy_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	fake_rsa_dgstsgn_init, .-fake_rsa_dgstsgn_init
	.type	fake_rsa_dgstvfy_init, @function
fake_rsa_dgstvfy_init:
.LFB489:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fake_rsa_dgstsgnvfy_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	fake_rsa_dgstvfy_init, .-fake_rsa_dgstvfy_init
	.type	fake_rsa_dgstsgnvfy_update, @function
fake_rsa_dgstsgnvfy_update:
.LFB490:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$427, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L70
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L71
.L70:
	movl	$0, %eax
	jmp	.L69
.L71:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	fake_rsa_dgstsgnvfy_update, .-fake_rsa_dgstsgnvfy_update
	.type	fake_rsa_dgstsgnvfy_final, @function
fake_rsa_dgstsgnvfy_final:
.LFB491:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$443, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L75
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L76
.L75:
	movl	$0, %eax
	jmp	.L74
.L76:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L77
	cmpq	$0, -40(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L74
.L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L78
	cmpq	$0, -40(%rbp)
	je	.L78
	movl	$0, %eax
	jmp	.L74
.L78:
	cmpq	$0, -40(%rbp)
	je	.L79
	movq	-40(%rbp), %rax
	movq	$256, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L79
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$460, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L74
.L80:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L79:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$160, %eax
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L81:
	movl	$1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	fake_rsa_dgstsgnvfy_final, .-fake_rsa_dgstsgnvfy_final
	.type	fake_rsa_dgstvfy_final, @function
fake_rsa_dgstvfy_final:
.LFB492:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fake_rsa_dgstsgnvfy_final
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	fake_rsa_dgstvfy_final, .-fake_rsa_dgstvfy_final
	.type	fake_rsa_dgstsgn, @function
fake_rsa_dgstsgn:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fake_rsa_dgstsgnvfy_update
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_dgstsgnvfy_final
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	fake_rsa_dgstsgn, .-fake_rsa_dgstsgn
	.type	fake_rsa_dgstvfy, @function
fake_rsa_dgstvfy:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fake_rsa_dgstsgnvfy_update
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fake_rsa_dgstvfy_final
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	fake_rsa_dgstvfy, .-fake_rsa_dgstvfy
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_sig_funcs, @object
	.size	fake_rsa_sig_funcs, 224
fake_rsa_sig_funcs:
	.long	1
	.zero	4
	.quad	fake_rsa_sig_newctx
	.long	16
	.zero	4
	.quad	fake_rsa_sig_freectx
	.long	2
	.zero	4
	.quad	fake_rsa_sig_sign_init
	.long	3
	.zero	4
	.quad	fake_rsa_sig_sign
	.long	17
	.zero	4
	.quad	fake_rsa_sig_dupctx
	.long	8
	.zero	4
	.quad	fake_rsa_dgstsgn_init
	.long	9
	.zero	4
	.quad	fake_rsa_dgstsgnvfy_update
	.long	10
	.zero	4
	.quad	fake_rsa_dgstsgnvfy_final
	.long	11
	.zero	4
	.quad	fake_rsa_dgstsgn
	.long	12
	.zero	4
	.quad	fake_rsa_dgstvfy_init
	.long	13
	.zero	4
	.quad	fake_rsa_dgstsgnvfy_update
	.long	14
	.zero	4
	.quad	fake_rsa_dgstvfy_final
	.long	15
	.zero	4
	.quad	fake_rsa_dgstvfy
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC31:
	.string	"Fake RSA Signature"
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_sig_algs, @object
	.size	fake_rsa_sig_algs, 64
fake_rsa_sig_algs:
	.quad	.LC18
	.quad	.LC19
	.quad	fake_rsa_sig_funcs
	.quad	.LC31
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	fake_rsa_scheme, @object
	.size	fake_rsa_scheme, 10
fake_rsa_scheme:
	.string	"fake_rsa:"
	.align 16
	.type	fake_rsa_openpwtest, @object
	.size	fake_rsa_openpwtest, 20
fake_rsa_openpwtest:
	.string	"fake_rsa:openpwtest"
	.align 16
	.type	fake_rsa_prompt, @object
	.size	fake_rsa_prompt, 17
fake_rsa_prompt:
	.string	"Fake Prompt Info"
.LC32:
	.string	"Passphrase Testing"
.LC33:
	.string	"info"
	.align 8
.LC34:
	.string	"fake_rsa_open_ex failed passphrase callback"
	.align 8
.LC35:
	.string	"fake_rsa_open_ex failed passphrase check"
.LC36:
	.string	"storectx"
.LC37:
	.string	"fake_rsa_open_ex called"
	.text
	.type	fake_rsa_st_open_ex, @function
fake_rsa_st_open_ex:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	$0, -8(%rbp)
	leaq	fake_rsa_scheme(%rip), %rcx
	movq	-160(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	leaq	fake_rsa_openpwtest(%rip), %rcx
	movq	-160(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L93
	leaq	.LC32(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -144(%rbp)
	movl	$4, -136(%rbp)
	leaq	fake_rsa_prompt(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$16, -120(%rbp)
	movq	$-1, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L92
.L94:
	movq	-184(%rbp), %rsi
	leaq	-144(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	-176(%rbp), %r9
	movq	%rsi, %r8
	movl	$20, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L96
	leaq	.LC34(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$570, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L92
.L96:
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L93
	leaq	.LC35(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$574, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L92
.L93:
	leaq	.LC9(%rip), %rax
	movl	$579, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$580, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L92
.L98:
	leaq	.LC37(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$583, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	fake_rsa_st_open_ex, .-fake_rsa_st_open_ex
	.section	.rodata
.LC38:
	.string	"fake_rsa_open called"
	.text
	.type	fake_rsa_st_open, @function
fake_rsa_st_open:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fake_rsa_st_open_ex
	movq	%rax, -8(%rbp)
	leaq	.LC38(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$594, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	fake_rsa_st_open, .-fake_rsa_st_open
	.type	fake_rsa_st_settable_ctx_params, @function
fake_rsa_st_settable_ctx_params:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	known_settable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	fake_rsa_st_settable_ctx_params, .-fake_rsa_st_settable_ctx_params
	.type	fake_rsa_st_set_ctx_params, @function
fake_rsa_st_set_ctx_params:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	fake_rsa_st_set_ctx_params, .-fake_rsa_st_set_ctx_params
	.section	.rodata
	.align 8
.LC39:
	.string	"key = fake_rsa_keymgmt_new(NULL)"
	.align 8
.LC40:
	.string	"fake_rsa_keymgmt_import(key, 0, NULL)"
.LC41:
	.string	"type"
.LC42:
	.string	"data-type"
.LC43:
	.string	"reference"
	.align 8
.LC44:
	.string	"fake_rsa_load() called in error state"
	.align 8
.LC45:
	.string	"fake_rsa_load() called in eof state"
.LC46:
	.string	"fake_rsa_load called - rv: %d"
	.text
	.type	fake_rsa_st_load, @function
fake_rsa_st_load:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$2, -180(%rbp)
	movq	$0, -192(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L106
	cmpl	$2, %eax
	je	.L107
	jmp	.L115
.L106:
	movl	key_deleted(%rip), %eax
	cmpl	$1, %eax
	jne	.L109
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L110
.L109:
	movl	$0, %edi
	call	fake_rsa_keymgmt_new
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$631, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L116
	movq	-192(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fake_rsa_keymgmt_import
	movl	%eax, %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$633, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L117
	leaq	-288(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC42(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-288(%rbp), %rax
	leaq	-192(%rbp), %rdx
	leaq	.LC43(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-216(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L110
.L107:
	leaq	.LC44(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$650, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L110
.L115:
	leaq	.LC45(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$654, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L110
.L116:
	nop
	jmp	.L110
.L117:
	nop
.L110:
	movl	-4(%rbp), %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$658, %esi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$0, -4(%rbp)
	jne	.L113
	movl	key_deleted(%rip), %eax
	testl	%eax, %eax
	jne	.L113
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	fake_rsa_keymgmt_free
	movq	-16(%rbp), %rax
	movb	$2, (%rax)
.L113:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	fake_rsa_st_load, .-fake_rsa_st_load
	.type	fake_rsa_st_delete, @function
fake_rsa_st_delete:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$1, key_deleted(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	fake_rsa_st_delete, .-fake_rsa_st_delete
	.type	fake_rsa_st_eof, @function
fake_rsa_st_eof:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	fake_rsa_st_eof, .-fake_rsa_st_eof
	.type	fake_rsa_st_close, @function
fake_rsa_st_close:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC9(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$685, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	fake_rsa_st_close, .-fake_rsa_st_close
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_store_funcs, @object
	.size	fake_rsa_store_funcs, 144
fake_rsa_store_funcs:
	.long	1
	.zero	4
	.quad	fake_rsa_st_open
	.long	10
	.zero	4
	.quad	fake_rsa_st_open_ex
	.long	3
	.zero	4
	.quad	fake_rsa_st_settable_ctx_params
	.long	4
	.zero	4
	.quad	fake_rsa_st_set_ctx_params
	.long	5
	.zero	4
	.quad	fake_rsa_st_load
	.long	6
	.zero	4
	.quad	fake_rsa_st_eof
	.long	7
	.zero	4
	.quad	fake_rsa_st_close
	.long	9
	.zero	4
	.quad	fake_rsa_st_delete
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC47:
	.string	"fake_rsa"
	.section	.data.rel.ro.local
	.align 32
	.type	fake_rsa_store_algs, @object
	.size	fake_rsa_store_algs, 64
fake_rsa_store_algs:
	.quad	.LC47
	.quad	.LC19
	.quad	fake_rsa_store_funcs
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	fake_rsa_query, @function
fake_rsa_query:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$22, -12(%rbp)
	je	.L125
	cmpl	$22, -12(%rbp)
	jg	.L126
	cmpl	$10, -12(%rbp)
	je	.L127
	cmpl	$12, -12(%rbp)
	jne	.L126
	leaq	fake_rsa_sig_algs(%rip), %rax
	jmp	.L128
.L127:
	leaq	fake_rsa_keymgmt_algs(%rip), %rax
	jmp	.L128
.L125:
	leaq	fake_rsa_store_algs(%rip), %rax
	jmp	.L128
.L126:
	movl	$0, %eax
.L128:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	fake_rsa_query, .-fake_rsa_query
	.section	.data.rel.ro,"aw"
	.align 32
	.type	fake_rsa_method, @object
	.size	fake_rsa_method, 48
fake_rsa_method:
	.long	1024
	.zero	4
	.quad	OSSL_LIB_CTX_free
	.long	1027
	.zero	4
	.quad	fake_rsa_query
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC48:
	.string	"*provctx = OSSL_LIB_CTX_new()"
	.text
	.type	fake_rsa_provider_init, @function
fake_rsa_provider_init:
.LFB504:
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
	call	OSSL_LIB_CTX_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$736, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	leaq	fake_rsa_method(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	fake_rsa_provider_init, .-fake_rsa_provider_init
	.section	.rodata
.LC49:
	.string	"fake-rsa"
	.align 8
.LC50:
	.string	"OSSL_PROVIDER_add_builtin(libctx, \"fake-rsa\", fake_rsa_provider_init)"
	.align 8
.LC51:
	.string	"p = OSSL_PROVIDER_try_load(libctx, \"fake-rsa\", 1)"
	.text
	.globl	fake_rsa_start
	.type	fake_rsa_start, @function
fake_rsa_start:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	fake_rsa_provider_init(%rip), %rdx
	leaq	.LC49(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$746, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L133
	leaq	.LC49(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_try_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$748, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L134
.L133:
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	-8(%rbp), %rax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	fake_rsa_start, .-fake_rsa_start
	.globl	fake_rsa_finish
	.type	fake_rsa_finish, @function
fake_rsa_finish:
.LFB506:
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
	call	OSSL_PROVIDER_unload@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	fake_rsa_finish, .-fake_rsa_finish
	.section	.rodata
	.type	inited.1, @object
	.size	inited.1, 1
inited.1:
	.ascii	"\001"
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 40
known_settable_ctx_params.0:
	.zero	40
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
