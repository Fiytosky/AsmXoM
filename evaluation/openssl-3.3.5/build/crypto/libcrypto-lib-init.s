	.file	"init.c"
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
	.local	stopped
	.comm	stopped,4,4
	.local	optsdone
	.comm	optsdone,8,8
	.local	stop_handlers
	.comm	stop_handlers,8,8
	.local	optsdone_lock
	.comm	optsdone_lock,8,8
	.local	init_lock
	.comm	init_lock,8,8
	.local	in_init_config_local
	.comm	in_init_config_local,4,4
	.local	base
	.comm	base,4,4
	.local	base_inited
	.comm	base_inited,4,4
	.local	ossl_init_base_ossl_ret_
	.comm	ossl_init_base_ossl_ret_,4,4
	.type	ossl_init_base_ossl_, @function
ossl_init_base_ossl_:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_base
	movl	%eax, ossl_init_base_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	ossl_init_base_ossl_, .-ossl_init_base_ossl_
	.type	ossl_init_base, @function
ossl_init_base:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, optsdone_lock(%rip)
	movq	optsdone_lock(%rip), %rax
	testq	%rax, %rax
	je	.L13
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, init_lock(%rip)
	movq	init_lock(%rip), %rax
	testq	%rax, %rax
	je	.L13
	call	OPENSSL_cpuid_setup@PLT
	call	ossl_init_thread@PLT
	testl	%eax, %eax
	je	.L14
	leaq	in_init_config_local(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	je	.L15
	movl	$1, base_inited(%rip)
	movl	$1, %eax
	jmp	.L12
.L13:
	nop
	jmp	.L9
.L14:
	nop
	jmp	.L9
.L15:
	nop
.L9:
	movq	optsdone_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, optsdone_lock(%rip)
	movq	init_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, init_lock(%rip)
	movl	$0, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_init_base, .-ossl_init_base
	.local	register_atexit
	.comm	register_atexit,4,4
	.local	ossl_init_register_atexit_ossl_ret_
	.comm	ossl_init_register_atexit_ossl_ret_,4,4
	.type	ossl_init_register_atexit_ossl_, @function
ossl_init_register_atexit_ossl_:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_register_atexit
	movl	%eax, ossl_init_register_atexit_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ossl_init_register_atexit_ossl_, .-ossl_init_register_atexit_ossl_
	.type	ossl_init_register_atexit, @function
ossl_init_register_atexit:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	OPENSSL_cleanup@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	testl	%eax, %eax
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movl	$1, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	ossl_init_register_atexit, .-ossl_init_register_atexit
	.type	ossl_init_no_register_atexit_ossl_, @function
ossl_init_no_register_atexit_ossl_:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_no_register_atexit
	movl	%eax, ossl_init_register_atexit_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	ossl_init_no_register_atexit_ossl_, .-ossl_init_no_register_atexit_ossl_
	.type	ossl_init_no_register_atexit, @function
ossl_init_no_register_atexit:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	ossl_init_no_register_atexit, .-ossl_init_no_register_atexit
	.local	load_crypto_nodelete
	.comm	load_crypto_nodelete,4,4
	.local	ossl_init_load_crypto_nodelete_ossl_ret_
	.comm	ossl_init_load_crypto_nodelete_ossl_ret_,4,4
	.type	ossl_init_load_crypto_nodelete_ossl_, @function
ossl_init_load_crypto_nodelete_ossl_:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_load_crypto_nodelete
	movl	%eax, ossl_init_load_crypto_nodelete_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	ossl_init_load_crypto_nodelete_ossl_, .-ossl_init_load_crypto_nodelete_ossl_
	.type	ossl_init_load_crypto_nodelete, @function
ossl_init_load_crypto_nodelete:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	ossl_init_load_crypto_nodelete, .-ossl_init_load_crypto_nodelete
	.local	load_crypto_strings
	.comm	load_crypto_strings,4,4
	.local	ossl_init_load_crypto_strings_ossl_ret_
	.comm	ossl_init_load_crypto_strings_ossl_ret_,4,4
	.type	ossl_init_load_crypto_strings_ossl_, @function
ossl_init_load_crypto_strings_ossl_:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_load_crypto_strings
	movl	%eax, ossl_init_load_crypto_strings_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	ossl_init_load_crypto_strings_ossl_, .-ossl_init_load_crypto_strings_ossl_
	.type	ossl_init_load_crypto_strings, @function
ossl_init_load_crypto_strings:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	err_shelve_state@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L30
.L28:
	call	ossl_err_load_crypto_strings@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	err_unshelve_state@PLT
	movl	-4(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	ossl_init_load_crypto_strings, .-ossl_init_load_crypto_strings
	.type	ossl_init_no_load_crypto_strings_ossl_, @function
ossl_init_no_load_crypto_strings_ossl_:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_no_load_crypto_strings
	movl	%eax, ossl_init_load_crypto_strings_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	ossl_init_no_load_crypto_strings_ossl_, .-ossl_init_no_load_crypto_strings_ossl_
	.type	ossl_init_no_load_crypto_strings, @function
ossl_init_no_load_crypto_strings:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	ossl_init_no_load_crypto_strings, .-ossl_init_no_load_crypto_strings
	.local	add_all_ciphers
	.comm	add_all_ciphers,4,4
	.local	ossl_init_add_all_ciphers_ossl_ret_
	.comm	ossl_init_add_all_ciphers_ossl_ret_,4,4
	.type	ossl_init_add_all_ciphers_ossl_, @function
ossl_init_add_all_ciphers_ossl_:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_add_all_ciphers
	movl	%eax, ossl_init_add_all_ciphers_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	ossl_init_add_all_ciphers_ossl_, .-ossl_init_add_all_ciphers_ossl_
	.type	ossl_init_add_all_ciphers, @function
ossl_init_add_all_ciphers:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	openssl_add_all_ciphers_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	ossl_init_add_all_ciphers, .-ossl_init_add_all_ciphers
	.type	ossl_init_no_add_all_ciphers_ossl_, @function
ossl_init_no_add_all_ciphers_ossl_:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_no_add_all_ciphers
	movl	%eax, ossl_init_add_all_ciphers_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	ossl_init_no_add_all_ciphers_ossl_, .-ossl_init_no_add_all_ciphers_ossl_
	.type	ossl_init_no_add_all_ciphers, @function
ossl_init_no_add_all_ciphers:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ossl_init_no_add_all_ciphers, .-ossl_init_no_add_all_ciphers
	.local	add_all_digests
	.comm	add_all_digests,4,4
	.local	ossl_init_add_all_digests_ossl_ret_
	.comm	ossl_init_add_all_digests_ossl_ret_,4,4
	.type	ossl_init_add_all_digests_ossl_, @function
ossl_init_add_all_digests_ossl_:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_add_all_digests
	movl	%eax, ossl_init_add_all_digests_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_init_add_all_digests_ossl_, .-ossl_init_add_all_digests_ossl_
	.type	ossl_init_add_all_digests, @function
ossl_init_add_all_digests:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	openssl_add_all_digests_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ossl_init_add_all_digests, .-ossl_init_add_all_digests
	.type	ossl_init_no_add_all_digests_ossl_, @function
ossl_init_no_add_all_digests_ossl_:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_no_add_all_digests
	movl	%eax, ossl_init_add_all_digests_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ossl_init_no_add_all_digests_ossl_, .-ossl_init_no_add_all_digests_ossl_
	.type	ossl_init_no_add_all_digests, @function
ossl_init_no_add_all_digests:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_init_no_add_all_digests, .-ossl_init_no_add_all_digests
	.local	config
	.comm	config,4,4
	.local	config_inited
	.comm	config_inited,4,4
	.local	conf_settings
	.comm	conf_settings,8,8
	.local	ossl_init_config_ossl_ret_
	.comm	ossl_init_config_ossl_ret_,4,4
	.type	ossl_init_config_ossl_, @function
ossl_init_config_ossl_:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_config
	movl	%eax, ossl_init_config_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ossl_init_config_ossl_, .-ossl_init_config_ossl_
	.type	ossl_init_config, @function
ossl_init_config:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	ossl_config_int@PLT
	movl	%eax, -4(%rbp)
	movl	$1, config_inited(%rip)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ossl_init_config, .-ossl_init_config
	.type	ossl_init_config_settings_ossl_, @function
ossl_init_config_settings_ossl_:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_config_settings
	movl	%eax, ossl_init_config_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	ossl_init_config_settings_ossl_, .-ossl_init_config_settings_ossl_
	.type	ossl_init_config_settings, @function
ossl_init_config_settings:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	conf_settings(%rip), %rax
	movq	%rax, %rdi
	call	ossl_config_int@PLT
	movl	%eax, -4(%rbp)
	movl	$1, config_inited(%rip)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	ossl_init_config_settings, .-ossl_init_config_settings
	.type	ossl_init_no_config_ossl_, @function
ossl_init_no_config_ossl_:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_no_config
	movl	%eax, ossl_init_config_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ossl_init_no_config_ossl_, .-ossl_init_no_config_ossl_
	.type	ossl_init_no_config, @function
ossl_init_no_config:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_no_config_int@PLT
	movl	$1, config_inited(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ossl_init_no_config, .-ossl_init_no_config
	.local	async
	.comm	async,4,4
	.local	async_inited
	.comm	async_inited,4,4
	.local	ossl_init_async_ossl_ret_
	.comm	ossl_init_async_ossl_ret_,4,4
	.type	ossl_init_async_ossl_, @function
ossl_init_async_ossl_:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_async
	movl	%eax, ossl_init_async_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ossl_init_async_ossl_, .-ossl_init_async_ossl_
	.type	ossl_init_async, @function
ossl_init_async:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	async_init@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movl	$1, async_inited(%rip)
	movl	$1, %eax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	ossl_init_async, .-ossl_init_async
	.local	engine_openssl
	.comm	engine_openssl,4,4
	.local	ossl_init_engine_openssl_ossl_ret_
	.comm	ossl_init_engine_openssl_ossl_ret_,4,4
	.type	ossl_init_engine_openssl_ossl_, @function
ossl_init_engine_openssl_ossl_:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_engine_openssl
	movl	%eax, ossl_init_engine_openssl_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	ossl_init_engine_openssl_ossl_, .-ossl_init_engine_openssl_ossl_
	.type	ossl_init_engine_openssl, @function
ossl_init_engine_openssl:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	engine_load_openssl_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ossl_init_engine_openssl, .-ossl_init_engine_openssl
	.local	engine_rdrand
	.comm	engine_rdrand,4,4
	.local	ossl_init_engine_rdrand_ossl_ret_
	.comm	ossl_init_engine_rdrand_ossl_ret_,4,4
	.type	ossl_init_engine_rdrand_ossl_, @function
ossl_init_engine_rdrand_ossl_:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_engine_rdrand
	movl	%eax, ossl_init_engine_rdrand_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ossl_init_engine_rdrand_ossl_, .-ossl_init_engine_rdrand_ossl_
	.type	ossl_init_engine_rdrand, @function
ossl_init_engine_rdrand:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	engine_load_rdrand_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ossl_init_engine_rdrand, .-ossl_init_engine_rdrand
	.local	engine_dynamic
	.comm	engine_dynamic,4,4
	.local	ossl_init_engine_dynamic_ossl_ret_
	.comm	ossl_init_engine_dynamic_ossl_ret_,4,4
	.type	ossl_init_engine_dynamic_ossl_, @function
ossl_init_engine_dynamic_ossl_:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_engine_dynamic
	movl	%eax, ossl_init_engine_dynamic_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ossl_init_engine_dynamic_ossl_, .-ossl_init_engine_dynamic_ossl_
	.type	ossl_init_engine_dynamic, @function
ossl_init_engine_dynamic:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	engine_load_dynamic_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_init_engine_dynamic, .-ossl_init_engine_dynamic
	.local	engine_padlock
	.comm	engine_padlock,4,4
	.local	ossl_init_engine_padlock_ossl_ret_
	.comm	ossl_init_engine_padlock_ossl_ret_,4,4
	.type	ossl_init_engine_padlock_ossl_, @function
ossl_init_engine_padlock_ossl_:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_engine_padlock
	movl	%eax, ossl_init_engine_padlock_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_init_engine_padlock_ossl_, .-ossl_init_engine_padlock_ossl_
	.type	ossl_init_engine_padlock, @function
ossl_init_engine_padlock:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	engine_load_padlock_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ossl_init_engine_padlock, .-ossl_init_engine_padlock
	.local	engine_afalg
	.comm	engine_afalg,4,4
	.local	ossl_init_engine_afalg_ossl_ret_
	.comm	ossl_init_engine_afalg_ossl_ret_,4,4
	.type	ossl_init_engine_afalg_ossl_, @function
ossl_init_engine_afalg_ossl_:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_engine_afalg
	movl	%eax, ossl_init_engine_afalg_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ossl_init_engine_afalg_ossl_, .-ossl_init_engine_afalg_ossl_
	.type	ossl_init_engine_afalg, @function
ossl_init_engine_afalg:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	engine_load_afalg_int@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ossl_init_engine_afalg, .-ossl_init_engine_afalg
	.section	.rodata
.LC0:
	.string	"../crypto/init.c"
	.text
	.globl	OPENSSL_cleanup
	.type	OPENSSL_cleanup, @function
OPENSSL_cleanup:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	base_inited(%rip), %eax
	testl	%eax, %eax
	je	.L81
	movl	stopped(%rip), %eax
	testl	%eax, %eax
	jne	.L82
	movl	$1, stopped(%rip)
	call	OPENSSL_thread_stop@PLT
	movq	stop_handlers(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L78
.L79:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$382, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L78:
	cmpq	$0, -8(%rbp)
	jne	.L79
	movq	$0, stop_handlers(%rip)
	movq	optsdone_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, optsdone_lock(%rip)
	movq	init_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, init_lock(%rip)
	leaq	in_init_config_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	call	ossl_comp_zlib_cleanup@PLT
	call	ossl_comp_brotli_cleanup@PLT
	call	ossl_comp_zstd_cleanup@PLT
	movl	async_inited(%rip), %eax
	testl	%eax, %eax
	je	.L80
	call	async_deinit@PLT
.L80:
	call	ossl_rand_cleanup_int@PLT
	call	ossl_config_modules_free@PLT
	call	engine_cleanup_int@PLT
	call	ossl_store_cleanup_int@PLT
	call	ossl_lib_ctx_default_deinit@PLT
	call	ossl_cleanup_thread@PLT
	call	bio_cleanup@PLT
	call	evp_cleanup_int@PLT
	call	ossl_obj_cleanup_int@PLT
	call	err_cleanup@PLT
	call	CRYPTO_secure_malloc_done@PLT
	call	OSSL_CMP_log_close@PLT
	call	ossl_trace_cleanup@PLT
	movl	$0, base_inited(%rip)
	jmp	.L74
.L81:
	nop
	jmp	.L74
.L82:
	nop
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	OPENSSL_cleanup, .-OPENSSL_cleanup
	.globl	OPENSSL_init_crypto
	.type	OPENSSL_init_crypto, @function
OPENSSL_init_crypto:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	stopped(%rip), %eax
	testl	%eax, %eax
	je	.L84
	movq	-40(%rbp), %rax
	andl	$262144, %eax
	testq	%rax, %rax
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$483, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L85:
	movl	$0, %eax
	jmp	.L137
.L84:
	leaq	-24(%rbp), %rax
	leaq	optsdone(%rip), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_atomic_load@PLT
	testl	%eax, %eax
	je	.L87
	movq	-24(%rbp), %rax
	andq	-40(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L88
	movl	$1, %eax
	jmp	.L137
.L88:
	movl	$1, -4(%rbp)
.L87:
	leaq	ossl_init_base_ossl_(%rip), %rdx
	leaq	base(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L89
	movl	ossl_init_base_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L90
.L89:
	movl	$0, %eax
	jmp	.L137
.L90:
	movq	-40(%rbp), %rax
	andl	$262144, %eax
	testq	%rax, %rax
	je	.L91
	movl	$1, %eax
	jmp	.L137
.L91:
	cmpl	$0, -4(%rbp)
	jne	.L92
	movq	optsdone_lock(%rip), %rdx
	leaq	-24(%rbp), %rax
	leaq	optsdone(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_atomic_load@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L137
.L93:
	movq	-24(%rbp), %rax
	andq	-40(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L92
	movl	$1, %eax
	jmp	.L137
.L92:
	movq	-40(%rbp), %rax
	andl	$524288, %eax
	testq	%rax, %rax
	je	.L94
	leaq	ossl_init_no_register_atexit_ossl_(%rip), %rdx
	leaq	register_atexit(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L95
	movl	ossl_init_register_atexit_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L96
.L95:
	movl	$0, %eax
	jmp	.L137
.L94:
	leaq	ossl_init_register_atexit_ossl_(%rip), %rdx
	leaq	register_atexit(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L97
	movl	ossl_init_register_atexit_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L96
.L97:
	movl	$0, %eax
	jmp	.L137
.L96:
	leaq	ossl_init_load_crypto_nodelete_ossl_(%rip), %rdx
	leaq	load_crypto_nodelete(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L98
	movl	ossl_init_load_crypto_nodelete_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L99
.L98:
	movl	$0, %eax
	jmp	.L137
.L99:
	movq	-40(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L100
	leaq	ossl_init_no_load_crypto_strings_ossl_(%rip), %rdx
	leaq	load_crypto_strings(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L101
	movl	ossl_init_load_crypto_strings_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L100
.L101:
	movl	$0, %eax
	jmp	.L137
.L100:
	movq	-40(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L102
	leaq	ossl_init_load_crypto_strings_ossl_(%rip), %rdx
	leaq	load_crypto_strings(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L103
	movl	ossl_init_load_crypto_strings_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L102
.L103:
	movl	$0, %eax
	jmp	.L137
.L102:
	movq	-40(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L104
	leaq	ossl_init_no_add_all_ciphers_ossl_(%rip), %rdx
	leaq	add_all_ciphers(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L105
	movl	ossl_init_add_all_ciphers_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L104
.L105:
	movl	$0, %eax
	jmp	.L137
.L104:
	movq	-40(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L106
	leaq	ossl_init_add_all_ciphers_ossl_(%rip), %rdx
	leaq	add_all_ciphers(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L107
	movl	ossl_init_add_all_ciphers_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L106
.L107:
	movl	$0, %eax
	jmp	.L137
.L106:
	movq	-40(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L108
	leaq	ossl_init_no_add_all_digests_ossl_(%rip), %rdx
	leaq	add_all_digests(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L109
	movl	ossl_init_add_all_digests_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L108
.L109:
	movl	$0, %eax
	jmp	.L137
.L108:
	movq	-40(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L110
	leaq	ossl_init_add_all_digests_ossl_(%rip), %rdx
	leaq	add_all_digests(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L111
	movl	ossl_init_add_all_digests_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L110
.L111:
	movl	$0, %eax
	jmp	.L137
.L110:
	movq	-40(%rbp), %rax
	andl	$131072, %eax
	testq	%rax, %rax
	je	.L112
	call	openssl_init_fork_handlers@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L137
.L112:
	movq	-40(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L113
	leaq	ossl_init_no_config_ossl_(%rip), %rdx
	leaq	config(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L114
	movl	ossl_init_config_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L113
.L114:
	movl	$0, %eax
	jmp	.L137
.L113:
	movq	-40(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L115
	leaq	in_init_config_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L115
	leaq	in_init_config_local(%rip), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L137
.L116:
	cmpq	$0, -48(%rbp)
	jne	.L117
	leaq	ossl_init_config_ossl_(%rip), %rdx
	leaq	config(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L118
	movl	ossl_init_config_ossl_ret_(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.L119
.L118:
	movl	$0, -8(%rbp)
	jmp	.L119
.L117:
	movq	init_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L137
.L120:
	movq	-48(%rbp), %rax
	movq	%rax, conf_settings(%rip)
	leaq	ossl_init_config_settings_ossl_(%rip), %rdx
	leaq	config(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L121
	movl	ossl_init_config_ossl_ret_(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.L122
.L121:
	movl	$0, -8(%rbp)
.L122:
	movq	$0, conf_settings(%rip)
	movq	init_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L119:
	cmpl	$0, -8(%rbp)
	jg	.L115
	movl	$0, %eax
	jmp	.L137
.L115:
	movq	-40(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L123
	leaq	ossl_init_async_ossl_(%rip), %rdx
	leaq	async(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L124
	movl	ossl_init_async_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L123
.L124:
	movl	$0, %eax
	jmp	.L137
.L123:
	movq	-40(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L125
	leaq	ossl_init_engine_openssl_ossl_(%rip), %rdx
	leaq	engine_openssl(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L126
	movl	ossl_init_engine_openssl_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L125
.L126:
	movl	$0, %eax
	jmp	.L137
.L125:
	movq	-40(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L127
	leaq	ossl_init_engine_rdrand_ossl_(%rip), %rdx
	leaq	engine_rdrand(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L128
	movl	ossl_init_engine_rdrand_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L127
.L128:
	movl	$0, %eax
	jmp	.L137
.L127:
	movq	-40(%rbp), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	je	.L129
	leaq	ossl_init_engine_dynamic_ossl_(%rip), %rdx
	leaq	engine_dynamic(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L130
	movl	ossl_init_engine_dynamic_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L129
.L130:
	movl	$0, %eax
	jmp	.L137
.L129:
	movq	-40(%rbp), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	je	.L131
	leaq	ossl_init_engine_padlock_ossl_(%rip), %rdx
	leaq	engine_padlock(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L132
	movl	ossl_init_engine_padlock_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L131
.L132:
	movl	$0, %eax
	jmp	.L137
.L131:
	movq	-40(%rbp), %rax
	andl	$32768, %eax
	testq	%rax, %rax
	je	.L133
	leaq	ossl_init_engine_afalg_ossl_(%rip), %rdx
	leaq	engine_afalg(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L134
	movl	ossl_init_engine_afalg_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L133
.L134:
	movl	$0, %eax
	jmp	.L137
.L133:
	movq	-40(%rbp), %rax
	andl	$65024, %eax
	testq	%rax, %rax
	je	.L135
	call	ENGINE_register_all_complete@PLT
.L135:
	movq	optsdone_lock(%rip), %rcx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	optsdone(%rip), %rdi
	movq	%rax, %rsi
	call	CRYPTO_atomic_or@PLT
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L137
.L136:
	movl	$1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	OPENSSL_init_crypto, .-OPENSSL_init_crypto
	.globl	OPENSSL_atexit
	.type	OPENSSL_atexit, @function
OPENSSL_atexit:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$722, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L139
	movl	$0, %eax
	jmp	.L140
.L139:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	stop_handlers(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, stop_handlers(%rip)
	movl	$1, %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	OPENSSL_atexit, .-OPENSSL_atexit
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"OPENSSL_init_crypto"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
