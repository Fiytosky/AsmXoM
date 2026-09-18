	.file	"ui_openssl.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	savsig
	.comm	savsig,4864,32
	.local	tty_orig
	.comm	tty_orig,60,32
	.local	tty_new
	.comm	tty_new,60,32
	.local	tty_in
	.comm	tty_in,8,8
	.local	tty_out
	.comm	tty_out,8,8
	.local	is_a_tty
	.comm	is_a_tty,4,4
	.type	write_string, @function
write_string:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_string_type@PLT
	cmpl	$3, %eax
	jbe	.L9
	subl	$4, %eax
	cmpl	$1, %eax
	ja	.L7
	movq	tty_out(%rip), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_output_string@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	movq	tty_out(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	jmp	.L7
.L9:
	nop
.L7:
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	write_string, .-write_string
	.section	.rodata
.LC0:
	.string	"Verifying - %s"
.LC1:
	.string	"Verify failure\n"
	.text
	.type	read_string, @function
read_string:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_string_type@PLT
	cmpl	$5, %eax
	ja	.L11
	cmpl	$4, %eax
	jnb	.L19
	cmpl	$3, %eax
	je	.L13
	cmpl	$3, %eax
	ja	.L11
	cmpl	$2, %eax
	je	.L14
	cmpl	$2, %eax
	ja	.L11
	testl	%eax, %eax
	je	.L19
	cmpl	$1, %eax
	je	.L15
	jmp	.L11
.L13:
	movq	tty_out(%rip), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_output_string@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	movq	tty_out(%rip), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_action_string@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	movq	tty_out(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_input_flags@PLT
	andl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	read_string_inner
	jmp	.L16
.L15:
	movq	tty_out(%rip), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_output_string@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	movq	tty_out(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_input_flags@PLT
	andl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	read_string_inner
	jmp	.L16
.L14:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_output_string@PLT
	movq	%rax, %rdx
	movq	tty_out(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	tty_out(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_input_flags@PLT
	andl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	read_string_inner
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L17
	movl	-20(%rbp), %eax
	jmp	.L16
.L17:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_test_string@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_result_string@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
	movq	tty_out(%rip), %rax
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$15, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	tty_out(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movl	$0, %eax
	jmp	.L16
.L19:
	nop
	jmp	.L11
.L20:
	nop
.L11:
	movl	$1, %eax
.L16:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	read_string, .-read_string
	.type	read_till_nl, @function
read_till_nl:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L24:
	movq	-24(%rbp), %rdx
	leaq	-5(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L22
	movl	$0, %eax
	jmp	.L25
.L22:
	leaq	-5(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L24
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	read_till_nl, .-read_till_nl
	.local	intr_signal
	.comm	intr_signal,4,4
	.type	read_string_inner, @function
read_string_inner:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8256, %rsp
	movq	%rdi, -8232(%rbp)
	movq	%rsi, -8240(%rbp)
	movl	%edx, -8244(%rbp)
	movl	%ecx, -8248(%rbp)
	movl	$8191, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -8244(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	$0, intr_signal(%rip)
	movl	$0, -4(%rbp)
	movl	$0, ps.1(%rip)
	call	pushsig
	movl	$1, ps.1(%rip)
	cmpl	$0, -8244(%rbp)
	jne	.L27
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	noecho_console
	testl	%eax, %eax
	je	.L39
.L27:
	movl	$2, ps.1(%rip)
	movb	$0, -8224(%rbp)
	movq	tty_in(%rip), %rdx
	movl	-8(%rbp), %ecx
	leaq	-8224(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L41
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L42
	leaq	-8224(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L32
	cmpl	$0, -8248(%rbp)
	je	.L33
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L33
.L32:
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	read_till_nl
	testl	%eax, %eax
	je	.L43
.L33:
	leaq	-8224(%rbp), %rdx
	movq	-8240(%rbp), %rcx
	movq	-8232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	UI_set_result@PLT
	testl	%eax, %eax
	js	.L44
	movl	$1, -4(%rbp)
	jmp	.L28
.L39:
	nop
	jmp	.L28
.L40:
	nop
	jmp	.L28
.L41:
	nop
	jmp	.L28
.L42:
	nop
	jmp	.L28
.L43:
	nop
	jmp	.L28
.L44:
	nop
.L28:
	movl	intr_signal(%rip), %eax
	cmpl	$2, %eax
	jne	.L34
	movl	$-1, -4(%rbp)
.L34:
	cmpl	$0, -20(%rbp)
	je	.L35
	movq	tty_out(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L35:
	movl	ps.1(%rip), %eax
	cmpl	$1, %eax
	jle	.L36
	cmpl	$0, -8244(%rbp)
	jne	.L36
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	echo_console
	testl	%eax, %eax
	jne	.L36
	movl	$0, -4(%rbp)
.L36:
	movl	ps.1(%rip), %eax
	testl	%eax, %eax
	jle	.L37
	call	popsig
.L37:
	leaq	-8224(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	read_string_inner, .-read_string_inner
	.section	.rodata
.LC2:
	.string	"r"
.LC3:
	.string	"/dev/tty"
.LC4:
	.string	"w"
.LC5:
	.string	"../crypto/ui/ui_openssl.c"
.LC6:
	.string	"errno=%d"
	.text
	.type	open_console, @function
open_console:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	$1, is_a_tty(%rip)
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, tty_in(%rip)
	movq	tty_in(%rip), %rax
	testq	%rax, %rax
	jne	.L48
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, tty_in(%rip)
.L48:
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, tty_out(%rip)
	movq	tty_out(%rip), %rax
	testq	%rax, %rax
	jne	.L49
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, tty_out(%rip)
.L49:
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edx
	leaq	tty_orig(%rip), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	tcgetattr@PLT
	cmpl	$-1, %eax
	jne	.L50
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$25, %eax
	jne	.L51
	movl	$0, is_a_tty(%rip)
	jmp	.L50
.L51:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$22, %eax
	jne	.L52
	movl	$0, is_a_tty(%rip)
	jmp	.L50
.L52:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L53
	movl	$0, is_a_tty(%rip)
	jmp	.L50
.L53:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L54
	movl	$0, is_a_tty(%rip)
	jmp	.L50
.L54:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L55
	movl	$0, is_a_tty(%rip)
	jmp	.L50
.L55:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$19, %eax
	jne	.L56
	movl	$0, is_a_tty(%rip)
	jmp	.L50
.L56:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, %ecx
	movl	$108, %esi
	movl	$40, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L50:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	open_console, .-open_console
	.type	noecho_console, @function
noecho_console:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	tty_orig(%rip), %rax
	movq	8+tty_orig(%rip), %rdx
	movq	%rax, tty_new(%rip)
	movq	%rdx, 8+tty_new(%rip)
	movq	16+tty_orig(%rip), %rax
	movq	24+tty_orig(%rip), %rdx
	movq	%rax, 16+tty_new(%rip)
	movq	%rdx, 24+tty_new(%rip)
	movq	32+tty_orig(%rip), %rax
	movq	40+tty_orig(%rip), %rdx
	movq	%rax, 32+tty_new(%rip)
	movq	%rdx, 40+tty_new(%rip)
	movq	44+tty_orig(%rip), %rax
	movq	52+tty_orig(%rip), %rdx
	movq	%rax, 44+tty_new(%rip)
	movq	%rdx, 52+tty_new(%rip)
	movl	12+tty_new(%rip), %eax
	andl	$-9, %eax
	movl	%eax, 12+tty_new(%rip)
	movl	is_a_tty(%rip), %eax
	testl	%eax, %eax
	je	.L58
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %ecx
	leaq	tty_new(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	tcsetattr@PLT
	cmpl	$-1, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	noecho_console, .-noecho_console
	.type	echo_console, @function
echo_console:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	tty_orig(%rip), %rax
	movq	8+tty_orig(%rip), %rdx
	movq	%rax, tty_new(%rip)
	movq	%rdx, 8+tty_new(%rip)
	movq	16+tty_orig(%rip), %rax
	movq	24+tty_orig(%rip), %rdx
	movq	%rax, 16+tty_new(%rip)
	movq	%rdx, 24+tty_new(%rip)
	movq	32+tty_orig(%rip), %rax
	movq	40+tty_orig(%rip), %rdx
	movq	%rax, 32+tty_new(%rip)
	movq	%rdx, 40+tty_new(%rip)
	movq	44+tty_orig(%rip), %rax
	movq	52+tty_orig(%rip), %rdx
	movq	%rax, 44+tty_new(%rip)
	movq	%rdx, 52+tty_new(%rip)
	movl	is_a_tty(%rip), %eax
	testl	%eax, %eax
	je	.L61
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %ecx
	leaq	tty_new(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	tcsetattr@PLT
	cmpl	$-1, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	echo_console, .-echo_console
	.type	close_console, @function
close_console:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	tty_in(%rip), %rdx
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L64
	movq	tty_in(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L64:
	movq	tty_out(%rip), %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L65
	movq	tty_out(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L65:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	close_console, .-close_console
	.type	pushsig, @function
pushsig:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	leaq	-160(%rbp), %rax
	movl	$152, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	recsig(%rip), %rax
	movq	%rax, -160(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L68
.L73:
	cmpl	$10, -4(%rbp)
	je	.L74
	cmpl	$12, -4(%rbp)
	je	.L75
	cmpl	$9, -4(%rbp)
	je	.L76
	movl	-4(%rbp), %eax
	cltq
	imulq	$152, %rax, %rax
	leaq	savsig(%rip), %rdx
	addq	%rax, %rdx
	leaq	-160(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
	jmp	.L70
.L74:
	nop
	jmp	.L70
.L75:
	nop
	jmp	.L70
.L76:
	nop
.L70:
	addl	$1, -4(%rbp)
.L68:
	cmpl	$31, -4(%rbp)
	jle	.L73
	movl	$0, %esi
	movl	$28, %edi
	call	signal@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	pushsig, .-pushsig
	.type	popsig, @function
popsig:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L78
.L82:
	cmpl	$10, -4(%rbp)
	je	.L83
	cmpl	$12, -4(%rbp)
	je	.L84
	movl	-4(%rbp), %eax
	cltq
	imulq	$152, %rax, %rax
	leaq	savsig(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
	jmp	.L80
.L83:
	nop
	jmp	.L80
.L84:
	nop
.L80:
	addl	$1, -4(%rbp)
.L78:
	cmpl	$31, -4(%rbp)
	jle	.L82
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	popsig, .-popsig
	.type	recsig, @function
recsig:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, intr_signal(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	recsig, .-recsig
	.section	.rodata
	.align 8
.LC7:
	.string	"OpenSSL default user interface"
	.section	.data.rel.local,"aw"
	.align 32
	.type	ui_openssl, @object
	.size	ui_openssl, 88
ui_openssl:
	.quad	.LC7
	.quad	open_console
	.quad	write_string
	.quad	0
	.quad	read_string
	.quad	close_console
	.quad	0
	.zero	32
	.text
	.globl	UI_OpenSSL
	.type	UI_OpenSSL, @function
UI_OpenSSL:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ui_openssl(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	UI_OpenSSL, .-UI_OpenSSL
	.section	.data.rel.local
	.align 8
	.type	default_UI_meth, @object
	.size	default_UI_meth, 8
default_UI_meth:
	.quad	ui_openssl
	.text
	.globl	UI_set_default_method
	.type	UI_set_default_method, @function
UI_set_default_method:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, default_UI_meth(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	UI_set_default_method, .-UI_set_default_method
	.globl	UI_get_default_method
	.type	UI_get_default_method, @function
UI_get_default_method:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	default_UI_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	UI_get_default_method, .-UI_get_default_method
	.local	ps.1
	.comm	ps.1,4,4
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"open_console"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
