	.file	"basic_output.c"
	.text
	.globl	bio_out
	.bss
	.align 8
	.type	bio_out, @object
	.size	bio_out, 8
bio_out:
	.zero	8
	.globl	bio_err
	.align 8
	.type	bio_err, @object
	.size	bio_err, 8
bio_err:
	.zero	8
	.local	tap_out
	.comm	tap_out,8,8
	.local	tap_err
	.comm	tap_err,8,8
	.local	io_lock
	.comm	io_lock,8,8
	.section	.rodata
.LC0:
	.string	"# "
	.align 8
.LC1:
	.string	"../test/testutil/basic_output.c"
	.align 8
.LC2:
	.string	"assertion failed: bio_out != NULL"
	.align 8
.LC3:
	.string	"assertion failed: bio_err != NULL"
	.align 8
.LC4:
	.string	"assertion failed: io_lock != NULL"
	.text
	.globl	test_open_streams
	.type	test_open_streams, @function
test_open_streams:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, tap_out(%rip)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, tap_err(%rip)
	movq	tap_out(%rip), %rbx
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, tap_out(%rip)
	movq	tap_err(%rip), %rbx
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, tap_err(%rip)
	movq	tap_out(%rip), %rbx
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	bio_out@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	tap_err(%rip), %rbx
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, io_lock(%rip)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$49, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L2:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L3
	leaq	.LC1(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L3:
	movq	io_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L5
	leaq	.LC1(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L5:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_open_streams, .-test_open_streams
	.globl	test_adjust_streams_tap_level
	.type	test_adjust_streams_tap_level, @function
test_adjust_streams_tap_level:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	tap_out(%rip), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	tap_err(%rip), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_adjust_streams_tap_level, .-test_adjust_streams_tap_level
	.globl	test_close_streams
	.type	test_close_streams, @function
test_close_streams:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	tap_out(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	tap_err(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	io_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_close_streams, .-test_close_streams
	.section	.rodata
	.align 8
.LC5:
	.string	"assertion failed: CRYPTO_THREAD_write_lock(io_lock) > 0"
	.text
	.type	test_io_lock, @function
test_io_lock:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	io_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jg	.L10
	leaq	.LC1(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L10:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_io_lock, .-test_io_lock
	.type	test_io_unlock, @function
test_io_unlock:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	io_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_io_unlock, .-test_io_unlock
	.globl	test_vprintf_stdout
	.type	test_vprintf_stdout, @function
test_vprintf_stdout:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	test_io_lock
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_vprintf_stdout, .-test_vprintf_stdout
	.globl	test_vprintf_stderr
	.type	test_vprintf_stderr, @function
test_vprintf_stderr:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	test_io_lock
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_vprintf_stderr, .-test_vprintf_stderr
	.globl	test_flush_stdout
	.type	test_flush_stdout, @function
test_flush_stdout:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_io_lock
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_flush_stdout, .-test_flush_stdout
	.globl	test_flush_stderr
	.type	test_flush_stderr, @function
test_flush_stderr:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_io_lock
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_flush_stderr, .-test_flush_stderr
	.globl	test_vprintf_tapout
	.type	test_vprintf_tapout, @function
test_vprintf_tapout:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	test_io_lock
	movq	tap_out(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_vprintf_tapout, .-test_vprintf_tapout
	.globl	test_vprintf_taperr
	.type	test_vprintf_taperr, @function
test_vprintf_taperr:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	test_io_lock
	movq	tap_err(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_vprintf_taperr, .-test_vprintf_taperr
	.globl	test_flush_tapout
	.type	test_flush_tapout, @function
test_flush_tapout:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_io_lock
	movq	tap_out(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_flush_tapout, .-test_flush_tapout
	.globl	test_flush_taperr
	.type	test_flush_taperr, @function
test_flush_taperr:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_io_lock
	movq	tap_err(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	call	test_io_unlock
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_flush_taperr, .-test_flush_taperr
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
