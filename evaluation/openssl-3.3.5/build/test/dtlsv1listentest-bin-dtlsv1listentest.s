	.file	"dtlsv1listentest.c"
	.text
	.section	.rodata
	.align 32
	.type	clienthello_nocookie, @object
	.size	clienthello_nocookie, 71
clienthello_nocookie:
	.base64	"Fv7/AAAAAAAAAAAAOgEAAC4AAAAAAAAALv79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYAAAAEAC8A/wEAAAA="
	.align 32
	.type	clienthello_nocookie_frag, @object
	.size	clienthello_nocookie_frag, 61
clienthello_nocookie_frag:
	.base64	"Fv7/AAAAAAAAAAAAMAEAAC4AAAAAAAAAJP79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYAAA=="
	.align 32
	.type	clienthello_nocookie_short, @object
	.size	clienthello_nocookie_short, 60
clienthello_nocookie_short:
	.base64	"Fv7/AAAAAAAAAAAALwEAAC4AAAAAAAAAI/79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYA"
	.align 32
	.type	clienthello_2ndfrag, @object
	.size	clienthello_2ndfrag, 69
clienthello_2ndfrag:
	.base64	"Fv7/AAAAAAAAAAAAOAEAAC4AAAAAAgAALMoYn3bsV87ls6t5kK2sbtFYNQOXFhCCVthV/+GKoy72AAAABAAvAP8BAAAA"
	.align 32
	.type	clienthello_cookie, @object
	.size	clienthello_cookie, 91
clienthello_cookie:
	.base64	"Fv7/AAAAAAAAAAAATgEAAEIAAAAAAAAAQv79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYAFAABAgMEBQYHCAkKCwwNDg8QERITAAQALwD/AQAAAA=="
	.align 32
	.type	clienthello_cookie_frag, @object
	.size	clienthello_cookie_frag, 81
clienthello_cookie_frag:
	.base64	"Fv7/AAAAAAAAAAAARAEAAEIAAAAAAAAAOP79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYAFAABAgMEBQYHCAkKCwwNDg8QERIT"
	.align 32
	.type	clienthello_badcookie, @object
	.size	clienthello_badcookie, 91
clienthello_badcookie:
	.base64	"Fv7/AAAAAAAAAAAATgEAAEIAAAAAAAAAQv79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYAFAEBAgMEBQYHCAkKCwwNDg8QERITAAQALwD/AQAAAA=="
	.align 32
	.type	clienthello_cookie_short, @object
	.size	clienthello_cookie_short, 80
clienthello_cookie_short:
	.base64	"Fv7/AAAAAAAAAAAAQwEAAEIAAAAAAAAAN/79yhifduxXzuWzq3mQraxu0Vg1A5cWEIJW2FX/4YqjLvYAFAABAgMEBQYHCAkKCwwNDg8QERI="
	.align 8
	.type	record_short, @object
	.size	record_short, 11
record_short:
	.base64	"Fv7/AAAAAAAAAAA="
	.align 32
	.type	verify, @object
	.size	verify, 48
verify:
	.base64	"Fv7/AAAAAAAAAAAAIwMAABcAAAAAAAAAF/7/FAABAgMEBQYHCAkKCwwNDg8QERIT"
	.section	.data.rel.local,"aw"
	.align 32
	.type	testpackets, @object
	.size	testpackets, 144
testpackets:
	.quad	clienthello_nocookie
	.long	71
	.long	1
	.quad	clienthello_nocookie_frag
	.long	61
	.long	1
	.quad	clienthello_nocookie_short
	.long	60
	.long	2
	.quad	clienthello_2ndfrag
	.long	69
	.long	2
	.quad	clienthello_cookie
	.long	91
	.long	0
	.quad	clienthello_cookie_frag
	.long	81
	.long	0
	.quad	clienthello_badcookie
	.long	91
	.long	1
	.quad	clienthello_cookie_short
	.long	80
	.long	2
	.quad	record_short
	.long	11
	.long	2
	.text
	.type	cookie_gen, @function
cookie_gen:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
	addq	$1, -32(%rbp)
.L2:
	cmpl	$19, -4(%rbp)
	jbe	.L3
	movq	-40(%rbp), %rax
	movl	$20, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	cookie_gen, .-cookie_gen
	.type	cookie_verify, @function
cookie_verify:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$20, -36(%rbp)
	je	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$0, -4(%rbp)
	jmp	.L8
.L10:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	je	.L9
	movl	$0, %eax
	jmp	.L7
.L9:
	addl	$1, -4(%rbp)
	addq	$1, -32(%rbp)
.L8:
	cmpl	$19, -4(%rbp)
	jbe	.L10
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	cookie_verify, .-cookie_verify
	.section	.rodata
	.align 8
.LC0:
	.string	"ctx = SSL_CTX_new(DTLS_server_method())"
.LC1:
	.string	"../test/dtlsv1listentest.c"
.LC2:
	.string	"peer = BIO_ADDR_new()"
.LC3:
	.string	"ssl = SSL_new(ctx)"
.LC4:
	.string	"outbio = BIO_new(BIO_s_mem())"
	.align 8
.LC5:
	.string	"inbio = BIO_new_mem_buf((char *)tp->in, tp->inlen)"
.LC6:
	.string	"0"
	.align 8
.LC7:
	.string	"ret = DTLSv1_listen(ssl, peer)"
.LC8:
	.string	"ret"
.LC9:
	.string	"verify"
.LC10:
	.string	"data"
	.align 8
.LC11:
	.string	"(ret == 0 && tp->outtype == DROP) || (ret == 1 && tp->outtype == GOOD)"
	.align 8
.LC12:
	.string	"Test %d: unexpected data output"
	.text
	.type	dtls_listen_test, @function
dtls_listen_test:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	testpackets(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -28(%rbp)
	call	DTLS_server_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$301, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	call	BIO_ADDR_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$302, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	leaq	cookie_gen(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_generate_cb@PLT
	leaq	cookie_verify(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cookie_verify_cb@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$308, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$314, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLSv1_listen@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L31
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	jne	.L19
	movl	-60(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$325, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$48
	leaq	verify(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$326, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L21
	jmp	.L32
.L19:
	cmpq	$0, -72(%rbp)
	jne	.L22
	cmpl	$0, -60(%rbp)
	jne	.L23
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	je	.L24
.L23:
	cmpl	$1, -60(%rbp)
	jne	.L25
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L25
.L24:
	movl	$1, %ecx
	jmp	.L26
.L25:
	movl	$0, %ecx
.L26:
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L21
	jmp	.L14
.L22:
	movl	-84(%rbp), %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$333, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L14
.L21:
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movl	$1, -28(%rbp)
	jmp	.L14
.L28:
	nop
	jmp	.L14
.L29:
	nop
	jmp	.L14
.L30:
	nop
	jmp	.L14
.L31:
	nop
	jmp	.L14
.L32:
	nop
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$346, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	dtls_listen_test, .-dtls_listen_test
	.section	.rodata
.LC13:
	.string	"dtls_listen_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dtls_listen_test(%rip), %rsi
	leaq	.LC13(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
