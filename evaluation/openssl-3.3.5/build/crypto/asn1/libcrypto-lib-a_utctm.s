	.file	"a_utctm.c"
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
	.globl	ASN1_UTCTIME_dup
	.type	ASN1_UTCTIME_dup, @function
ASN1_UTCTIME_dup:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_UTCTIME_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ASN1_UTCTIME_dup, .-ASN1_UTCTIME_dup
	.globl	ossl_asn1_utctime_to_tm
	.type	ossl_asn1_utctime_to_tm, @function
ossl_asn1_utctime_to_tm:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_to_tm@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	ossl_asn1_utctime_to_tm, .-ossl_asn1_utctime_to_tm
	.globl	ASN1_UTCTIME_check
	.type	ASN1_UTCTIME_check, @function
ASN1_UTCTIME_check:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_asn1_utctime_to_tm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ASN1_UTCTIME_check, .-ASN1_UTCTIME_check
	.globl	ASN1_UTCTIME_set_string
	.type	ASN1_UTCTIME_set_string, @function
ASN1_UTCTIME_set_string:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$23, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTCTIME_check@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L16
.L13:
	cmpq	$0, -40(%rbp)
	je	.L15
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_copy@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ASN1_UTCTIME_set_string, .-ASN1_UTCTIME_set_string
	.globl	ASN1_UTCTIME_set
	.type	ASN1_UTCTIME_set, @function
ASN1_UTCTIME_set:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ASN1_UTCTIME_adj@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ASN1_UTCTIME_set, .-ASN1_UTCTIME_set
	.globl	ASN1_UTCTIME_adj
	.type	ASN1_UTCTIME_adj, @function
ASN1_UTCTIME_adj:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L24
.L20:
	cmpl	$0, -84(%rbp)
	jne	.L22
	cmpq	$0, -96(%rbp)
	je	.L23
.L22:
	movq	-96(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OPENSSL_gmtime_adj@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_from_tm@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ASN1_UTCTIME_adj, .-ASN1_UTCTIME_adj
	.globl	ASN1_UTCTIME_cmp_time_t
	.type	ASN1_UTCTIME_cmp_time_t, @function
ASN1_UTCTIME_cmp_time_t:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-152(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_utctime_to_tm@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$-2, %eax
	jmp	.L34
.L26:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	testq	%rax, %rax
	jne	.L28
	movl	$-2, %eax
	jmp	.L34
.L28:
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	leaq	-132(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_gmtime_diff@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$-2, %eax
	jmp	.L34
.L29:
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jg	.L30
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	jle	.L31
.L30:
	movl	$1, %eax
	jmp	.L34
.L31:
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	js	.L32
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	jns	.L33
.L32:
	movl	$-1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ASN1_UTCTIME_cmp_time_t, .-ASN1_UTCTIME_cmp_time_t
	.globl	ASN1_UTCTIME_print
	.type	ASN1_UTCTIME_print, @function
ASN1_UTCTIME_print:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	je	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ASN1_UTCTIME_print, .-ASN1_UTCTIME_print
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
