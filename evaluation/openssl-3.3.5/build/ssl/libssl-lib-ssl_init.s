	.file	"ssl_init.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	stopped
	.comm	stopped,4,4
	.local	ssl_base
	.comm	ssl_base,4,4
	.local	ssl_base_inited
	.comm	ssl_base_inited,4,4
	.local	ossl_init_ssl_base_ossl_ret_
	.comm	ossl_init_ssl_base_ossl_ret_,4,4
	.type	ossl_init_ssl_base_ossl_, @function
ossl_init_ssl_base_ossl_:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_ssl_base
	movl	%eax, ossl_init_ssl_base_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ossl_init_ssl_base_ossl_, .-ossl_init_ssl_base_ossl_
	.type	ossl_init_ssl_base, @function
ossl_init_ssl_base:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	SSL_COMP_get_compression_methods@PLT
	call	ssl_sort_cipher_list@PLT
	leaq	ssl_library_stop(%rip), %rax
	movq	%rax, %rdi
	call	OPENSSL_atexit@PLT
	movl	$1, ssl_base_inited(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ossl_init_ssl_base, .-ossl_init_ssl_base
	.local	ssl_strings
	.comm	ssl_strings,4,4
	.local	ossl_init_load_ssl_strings_ossl_ret_
	.comm	ossl_init_load_ssl_strings_ossl_ret_,4,4
	.type	ossl_init_load_ssl_strings_ossl_, @function
ossl_init_load_ssl_strings_ossl_:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_load_ssl_strings
	movl	%eax, ossl_init_load_ssl_strings_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ossl_init_load_ssl_strings_ossl_, .-ossl_init_load_ssl_strings_ossl_
	.type	ossl_init_load_ssl_strings, @function
ossl_init_load_ssl_strings:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_err_load_SSL_strings@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ossl_init_load_ssl_strings, .-ossl_init_load_ssl_strings
	.type	ossl_init_no_load_ssl_strings_ossl_, @function
ossl_init_no_load_ssl_strings_ossl_:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_init_no_load_ssl_strings
	movl	%eax, ossl_init_load_ssl_strings_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ossl_init_no_load_ssl_strings_ossl_, .-ossl_init_no_load_ssl_strings_ossl_
	.type	ossl_init_no_load_ssl_strings, @function
ossl_init_no_load_ssl_strings:
.LFB734:
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
.LFE734:
	.size	ossl_init_no_load_ssl_strings, .-ossl_init_no_load_ssl_strings
	.type	ssl_library_stop, @function
ssl_library_stop:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	stopped(%rip), %eax
	testl	%eax, %eax
	jne	.L25
	movl	$1, stopped(%rip)
	movl	ssl_base_inited(%rip), %eax
	testl	%eax, %eax
	je	.L22
	call	ssl_comp_free_compression_methods_int@PLT
	jmp	.L22
.L25:
	nop
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ssl_library_stop, .-ssl_library_stop
	.section	.rodata
.LC0:
	.string	"../ssl/ssl_init.c"
	.text
	.globl	OPENSSL_init_ssl
	.type	OPENSSL_init_ssl, @function
OPENSSL_init_ssl:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	stopped(%rip), %eax
	testl	%eax, %eax
	je	.L27
	movl	stoperrset.1(%rip), %eax
	testl	%eax, %eax
	jne	.L28
	movl	$1, stoperrset.1(%rip)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L28:
	movl	$0, %eax
	jmp	.L29
.L27:
	orq	$12, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	jne	.L30
	orq	$64, -8(%rbp)
.L30:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L29
.L31:
	leaq	ossl_init_ssl_base_ossl_(%rip), %rdx
	leaq	ssl_base(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L32
	movl	ossl_init_ssl_base_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L29
.L33:
	movq	-8(%rbp), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L34
	leaq	ossl_init_no_load_ssl_strings_ossl_(%rip), %rdx
	leaq	ssl_strings(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L35
	movl	ossl_init_load_ssl_strings_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L34
.L35:
	movl	$0, %eax
	jmp	.L29
.L34:
	movq	-8(%rbp), %rax
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L36
	leaq	ossl_init_load_ssl_strings_ossl_(%rip), %rdx
	leaq	ssl_strings(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L37
	movl	ossl_init_load_ssl_strings_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L36
.L37:
	movl	$0, %eax
	jmp	.L29
.L36:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	OPENSSL_init_ssl, .-OPENSSL_init_ssl
	.local	stoperrset.1
	.comm	stoperrset.1,4,4
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"OPENSSL_init_ssl"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
