	.file	"methods.c"
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
	.globl	TLS_method
	.type	TLS_method, @function
TLS_method:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	TLS_method_data.24(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	TLS_method, .-TLS_method
	.globl	tlsv1_3_method
	.type	tlsv1_3_method, @function
tlsv1_3_method:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_3_method_data.23(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	tlsv1_3_method, .-tlsv1_3_method
	.globl	tlsv1_2_method
	.type	tlsv1_2_method, @function
tlsv1_2_method:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_2_method_data.22(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tlsv1_2_method, .-tlsv1_2_method
	.globl	tlsv1_1_method
	.type	tlsv1_1_method, @function
tlsv1_1_method:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_1_method_data.21(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tlsv1_1_method, .-tlsv1_1_method
	.globl	tlsv1_method
	.type	tlsv1_method, @function
tlsv1_method:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_method_data.20(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	tlsv1_method, .-tlsv1_method
	.globl	TLS_server_method
	.type	TLS_server_method, @function
TLS_server_method:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	TLS_server_method_data.19(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	TLS_server_method, .-TLS_server_method
	.globl	tlsv1_3_server_method
	.type	tlsv1_3_server_method, @function
tlsv1_3_server_method:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_3_server_method_data.18(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	tlsv1_3_server_method, .-tlsv1_3_server_method
	.globl	tlsv1_2_server_method
	.type	tlsv1_2_server_method, @function
tlsv1_2_server_method:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_2_server_method_data.17(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	tlsv1_2_server_method, .-tlsv1_2_server_method
	.globl	tlsv1_1_server_method
	.type	tlsv1_1_server_method, @function
tlsv1_1_server_method:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_1_server_method_data.16(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	tlsv1_1_server_method, .-tlsv1_1_server_method
	.globl	tlsv1_server_method
	.type	tlsv1_server_method, @function
tlsv1_server_method:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_server_method_data.15(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	tlsv1_server_method, .-tlsv1_server_method
	.globl	TLS_client_method
	.type	TLS_client_method, @function
TLS_client_method:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	TLS_client_method_data.14(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	TLS_client_method, .-TLS_client_method
	.globl	tlsv1_3_client_method
	.type	tlsv1_3_client_method, @function
tlsv1_3_client_method:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_3_client_method_data.13(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	tlsv1_3_client_method, .-tlsv1_3_client_method
	.globl	tlsv1_2_client_method
	.type	tlsv1_2_client_method, @function
tlsv1_2_client_method:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_2_client_method_data.12(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	tlsv1_2_client_method, .-tlsv1_2_client_method
	.globl	tlsv1_1_client_method
	.type	tlsv1_1_client_method, @function
tlsv1_1_client_method:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_1_client_method_data.11(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	tlsv1_1_client_method, .-tlsv1_1_client_method
	.globl	tlsv1_client_method
	.type	tlsv1_client_method, @function
tlsv1_client_method:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	tlsv1_client_method_data.10(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	tlsv1_client_method, .-tlsv1_client_method
	.globl	dtlsv1_method
	.type	dtlsv1_method, @function
dtlsv1_method:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtlsv1_method_data.9(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	dtlsv1_method, .-dtlsv1_method
	.globl	dtlsv1_2_method
	.type	dtlsv1_2_method, @function
dtlsv1_2_method:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtlsv1_2_method_data.8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	dtlsv1_2_method, .-dtlsv1_2_method
	.globl	DTLS_method
	.type	DTLS_method, @function
DTLS_method:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	DTLS_method_data.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	DTLS_method, .-DTLS_method
	.globl	dtlsv1_server_method
	.type	dtlsv1_server_method, @function
dtlsv1_server_method:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtlsv1_server_method_data.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	dtlsv1_server_method, .-dtlsv1_server_method
	.globl	dtlsv1_2_server_method
	.type	dtlsv1_2_server_method, @function
dtlsv1_2_server_method:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtlsv1_2_server_method_data.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	dtlsv1_2_server_method, .-dtlsv1_2_server_method
	.globl	DTLS_server_method
	.type	DTLS_server_method, @function
DTLS_server_method:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	DTLS_server_method_data.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	DTLS_server_method, .-DTLS_server_method
	.globl	dtlsv1_client_method
	.type	dtlsv1_client_method, @function
dtlsv1_client_method:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtlsv1_client_method_data.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	dtlsv1_client_method, .-dtlsv1_client_method
	.globl	dtls_bad_ver_client_method
	.type	dtls_bad_ver_client_method, @function
dtls_bad_ver_client_method:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtls_bad_ver_client_method_data.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	dtls_bad_ver_client_method, .-dtls_bad_ver_client_method
	.globl	dtlsv1_2_client_method
	.type	dtlsv1_2_client_method, @function
dtlsv1_2_client_method:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtlsv1_2_client_method_data.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	dtlsv1_2_client_method, .-dtlsv1_2_client_method
	.globl	DTLS_client_method
	.type	DTLS_client_method, @function
DTLS_client_method:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	DTLS_client_method_data.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	DTLS_client_method, .-DTLS_client_method
	.globl	TLSv1_2_method
	.type	TLSv1_2_method, @function
TLSv1_2_method:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_2_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	TLSv1_2_method, .-TLSv1_2_method
	.globl	TLSv1_2_server_method
	.type	TLSv1_2_server_method, @function
TLSv1_2_server_method:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_2_server_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	TLSv1_2_server_method, .-TLSv1_2_server_method
	.globl	TLSv1_2_client_method
	.type	TLSv1_2_client_method, @function
TLSv1_2_client_method:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_2_client_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	TLSv1_2_client_method, .-TLSv1_2_client_method
	.globl	TLSv1_1_method
	.type	TLSv1_1_method, @function
TLSv1_1_method:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_1_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	TLSv1_1_method, .-TLSv1_1_method
	.globl	TLSv1_1_server_method
	.type	TLSv1_1_server_method, @function
TLSv1_1_server_method:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_1_server_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	TLSv1_1_server_method, .-TLSv1_1_server_method
	.globl	TLSv1_1_client_method
	.type	TLSv1_1_client_method, @function
TLSv1_1_client_method:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_1_client_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	TLSv1_1_client_method, .-TLSv1_1_client_method
	.globl	TLSv1_method
	.type	TLSv1_method, @function
TLSv1_method:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	TLSv1_method, .-TLSv1_method
	.globl	TLSv1_server_method
	.type	TLSv1_server_method, @function
TLSv1_server_method:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_server_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	TLSv1_server_method, .-TLSv1_server_method
	.globl	TLSv1_client_method
	.type	TLSv1_client_method, @function
TLSv1_client_method:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tlsv1_client_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	TLSv1_client_method, .-TLSv1_client_method
	.globl	DTLSv1_2_method
	.type	DTLSv1_2_method, @function
DTLSv1_2_method:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	dtlsv1_2_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	DTLSv1_2_method, .-DTLSv1_2_method
	.globl	DTLSv1_2_server_method
	.type	DTLSv1_2_server_method, @function
DTLSv1_2_server_method:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	dtlsv1_2_server_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	DTLSv1_2_server_method, .-DTLSv1_2_server_method
	.globl	DTLSv1_2_client_method
	.type	DTLSv1_2_client_method, @function
DTLSv1_2_client_method:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	dtlsv1_2_client_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	DTLSv1_2_client_method, .-DTLSv1_2_client_method
	.globl	DTLSv1_method
	.type	DTLSv1_method, @function
DTLSv1_method:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	dtlsv1_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	DTLSv1_method, .-DTLSv1_method
	.globl	DTLSv1_server_method
	.type	DTLSv1_server_method, @function
DTLSv1_server_method:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	dtlsv1_server_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	DTLSv1_server_method, .-DTLSv1_server_method
	.globl	DTLSv1_client_method
	.type	DTLSv1_client_method, @function
DTLSv1_client_method:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	dtlsv1_client_method@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	DTLSv1_client_method, .-DTLSv1_client_method
	.section	.data.rel.ro,"aw"
	.align 32
	.type	TLS_method_data.24, @object
	.size	TLS_method_data.24, 248
TLS_method_data.24:
	.long	65536
	.long	0
	.quad	0
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_3_method_data.23, @object
	.size	tlsv1_3_method_data.23, 248
tlsv1_3_method_data.23:
	.long	772
	.long	0
	.quad	536870912
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_3_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_2_method_data.22, @object
	.size	tlsv1_2_method_data.22, 248
tlsv1_2_method_data.22:
	.long	771
	.long	0
	.quad	134217728
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_1_method_data.21, @object
	.size	tlsv1_1_method_data.21, 248
tlsv1_1_method_data.21:
	.long	770
	.long	2
	.quad	268435456
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_method_data.20, @object
	.size	tlsv1_method_data.20, 248
tlsv1_method_data.20:
	.long	769
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	TLS_server_method_data.19, @object
	.size	TLS_server_method_data.19, 248
TLS_server_method_data.19:
	.long	65536
	.long	0
	.quad	0
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_3_server_method_data.18, @object
	.size	tlsv1_3_server_method_data.18, 248
tlsv1_3_server_method_data.18:
	.long	772
	.long	0
	.quad	536870912
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_3_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_2_server_method_data.17, @object
	.size	tlsv1_2_server_method_data.17, 248
tlsv1_2_server_method_data.17:
	.long	771
	.long	0
	.quad	134217728
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_1_server_method_data.16, @object
	.size	tlsv1_1_server_method_data.16, 248
tlsv1_1_server_method_data.16:
	.long	770
	.long	2
	.quad	268435456
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_server_method_data.15, @object
	.size	tlsv1_server_method_data.15, 248
tlsv1_server_method_data.15:
	.long	769
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	TLS_client_method_data.14, @object
	.size	TLS_client_method_data.14, 248
TLS_client_method_data.14:
	.long	65536
	.long	0
	.quad	0
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_3_client_method_data.13, @object
	.size	tlsv1_3_client_method_data.13, 248
tlsv1_3_client_method_data.13:
	.long	772
	.long	0
	.quad	536870912
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_3_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_2_client_method_data.12, @object
	.size	tlsv1_2_client_method_data.12, 248
tlsv1_2_client_method_data.12:
	.long	771
	.long	0
	.quad	134217728
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_1_client_method_data.11, @object
	.size	tlsv1_1_client_method_data.11, 248
tlsv1_1_client_method_data.11:
	.long	770
	.long	2
	.quad	268435456
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	tlsv1_client_method_data.10, @object
	.size	tlsv1_client_method_data.10, 248
tlsv1_client_method_data.10:
	.long	769
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	tls1_new
	.quad	tls1_clear
	.quad	tls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	ssl3_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	ssl3_read_bytes
	.quad	ssl3_write_bytes
	.quad	ssl3_dispatch_alert
	.quad	ssl3_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	tls1_default_timeout
	.quad	TLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtlsv1_method_data.9, @object
	.size	dtlsv1_method_data.9, 248
dtlsv1_method_data.9:
	.long	65279
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtlsv1_2_method_data.8, @object
	.size	dtlsv1_2_method_data.8, 248
dtlsv1_2_method_data.8:
	.long	65277
	.long	0
	.quad	134217728
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	DTLS_method_data.7, @object
	.size	DTLS_method_data.7, 248
DTLS_method_data.7:
	.long	131071
	.long	0
	.quad	0
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ossl_statem_accept
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtlsv1_server_method_data.6, @object
	.size	dtlsv1_server_method_data.6, 248
dtlsv1_server_method_data.6:
	.long	65279
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtlsv1_2_server_method_data.5, @object
	.size	dtlsv1_2_server_method_data.5, 248
dtlsv1_2_server_method_data.5:
	.long	65277
	.long	0
	.quad	134217728
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	DTLS_server_method_data.4, @object
	.size	DTLS_server_method_data.4, 248
DTLS_server_method_data.4:
	.long	131071
	.long	0
	.quad	0
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ossl_statem_accept
	.quad	ssl_undefined_function
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtlsv1_client_method_data.3, @object
	.size	dtlsv1_client_method_data.3, 248
dtlsv1_client_method_data.3:
	.long	65279
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtls_bad_ver_client_method_data.2, @object
	.size	dtls_bad_ver_client_method_data.2, 248
dtls_bad_ver_client_method_data.2:
	.long	256
	.long	2
	.quad	67108864
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	dtlsv1_2_client_method_data.1, @object
	.size	dtlsv1_2_client_method_data.1, 248
dtlsv1_2_client_method_data.1:
	.long	65277
	.long	0
	.quad	134217728
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.align 32
	.type	DTLS_client_method_data.0, @object
	.size	DTLS_client_method_data.0, 248
DTLS_client_method_data.0:
	.long	131071
	.long	0
	.quad	0
	.quad	ossl_ssl_connection_new
	.quad	ossl_ssl_connection_free
	.quad	ossl_ssl_connection_reset
	.quad	dtls1_new
	.quad	dtls1_clear
	.quad	dtls1_free
	.quad	ssl_undefined_function
	.quad	ossl_statem_connect
	.quad	ssl3_read
	.quad	ssl3_peek
	.quad	ssl3_write
	.quad	dtls1_shutdown
	.quad	ssl3_renegotiate
	.quad	ssl3_renegotiate_check
	.quad	dtls1_read_bytes
	.quad	dtls1_write_app_data_bytes
	.quad	dtls1_dispatch_alert
	.quad	dtls1_ctrl
	.quad	ssl3_ctx_ctrl
	.quad	ssl3_get_cipher_by_char
	.quad	ssl3_put_cipher_by_char
	.quad	ssl3_pending
	.quad	ssl3_num_ciphers
	.quad	ssl3_get_cipher
	.quad	dtls1_default_timeout
	.quad	DTLSv1_2_enc_data
	.quad	ssl_undefined_void_function
	.quad	ssl3_callback_ctrl
	.quad	ssl3_ctx_callback_ctrl
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
