	.file	"client.c"
	.text
	.type	ossl_check_SSL_COMP_sk_type, @function
ossl_check_SSL_COMP_sk_type:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ossl_check_SSL_COMP_sk_type, .-ossl_check_SSL_COMP_sk_type
	.local	idx
	.comm	idx,4,4
	.globl	time
	.type	time, @function
time:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	movq	-8(%rbp), %rax
	movq	$1485898104, (%rax)
.L4:
	movl	$1485898104, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	time, .-time
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	FuzzerSetRand@PLT
	movl	$0, %esi
	movl	$258, %edi
	call	OPENSSL_init_crypto@PLT
	movl	$0, %esi
	movl	$2097152, %edi
	call	OPENSSL_init_ssl@PLT
	call	ERR_clear_error@PLT
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	movl	%eax, idx(%rip)
	call	SSL_COMP_get_compression_methods@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_COMP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
.L7:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/client.c"
	.align 8
.LC1:
	.string	"assertion failed: SSL_set_min_proto_version(client, 0) == 1"
.LC2:
	.string	"ALL:eNULL:@SECLEVEL=0"
	.align 8
.LC3:
	.string	"assertion failed: SSL_set_cipher_list(client, \"ALL:eNULL:@SECLEVEL=0\") == 1"
.LC4:
	.string	"localhost"
	.align 8
.LC5:
	.string	"assertion failed: (size_t)BIO_write(in, buf, len) == len"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -1072(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	call	TLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	cmpq	$1, %rax
	je	.L15
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L15:
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	cmpl	$1, %eax
	je	.L16
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$75, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L16:
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L13
.L18:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-1072(%rbp), %rax
	movl	%eax, %edx
	movq	-1064(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cltq
	cmpq	%rax, -1072(%rbp)
	je	.L19
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$87, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L19:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	cmpl	$1, %eax
	jne	.L26
.L22:
	leaq	-1056(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	testl	%eax, %eax
	jle	.L27
	jmp	.L22
.L23:
	nop
	jmp	.L13
.L24:
	nop
	jmp	.L13
.L25:
	nop
	jmp	.L13
.L26:
	nop
	jmp	.L13
.L27:
	nop
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	$0, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
