	.file	"info.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 32
	.type	compiler_flags, @object
	.size	compiler_flags, 227
compiler_flags:
	.string	"compiler: /root/AsmXoM/gcc-15.2.0/build/bin/gcc -fPIC -pthread -m64 -Wa,--noexecstack -O0 -Wa,--keep-locals -Wa,--dsplit -save-temps=obj -fPIC -DOPENSSL_USE_NODELETE -DL_ENDIAN -DOPENSSL_PIC -DOPENSSL_BUILDING_OPENSSL -DNDEBUG"
	.local	seed_sources
	.comm	seed_sources,8,8
	.globl	ossl_cpu_info_str
	.bss
	.align 32
	.type	ossl_cpu_info_str, @object
	.size	ossl_cpu_info_str, 128
ossl_cpu_info_str:
	.zero	128
	.local	init_info
	.comm	init_info,4,4
	.local	init_info_strings_ossl_ret_
	.comm	init_info_strings_ossl_ret_,4,4
	.text
	.type	init_info_strings_ossl_, @function
init_info_strings_ossl_:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	init_info_strings
	movl	%eax, init_info_strings_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	init_info_strings_ossl_, .-init_info_strings_ossl_
	.section	.rodata
	.align 8
.LC0:
	.string	"CPUINFO: OPENSSL_ia32cap=0x%llx:0x%llx"
.LC1:
	.string	"OPENSSL_ia32cap"
.LC2:
	.string	" env:%s"
.LC3:
	.string	" "
.LC4:
	.string	"os-specific"
	.text
	.type	init_info_strings, @function
init_info_strings:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	12(%rax), %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%rdx, %rcx
	orq	%rax, %rcx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L7
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	$128, %edx
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movq	%rbx, %rsi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L7:
	movzbl	seeds.1(%rip), %eax
	testb	%al, %al
	je	.L8
	leaq	.LC3(%rip), %rcx
	leaq	seeds.1(%rip), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L8:
	leaq	.LC4(%rip), %rcx
	leaq	seeds.1(%rip), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	seeds.1(%rip), %rax
	movq	%rax, seed_sources(%rip)
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	init_info_strings, .-init_info_strings
	.section	.rodata
	.align 8
.LC5:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl"
	.align 8
.LC6:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/lib64/engines-3"
	.align 8
.LC7:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/lib64/ossl-modules"
.LC8:
	.string	".so"
.LC9:
	.string	"/"
	.text
	.globl	OPENSSL_info
	.type	OPENSSL_info, @function
OPENSSL_info:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	init_info_strings_ossl_(%rip), %rdx
	leaq	init_info(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	cmpl	$1008, -4(%rbp)
	je	.L11
	cmpl	$1008, -4(%rbp)
	jg	.L23
	cmpl	$1007, -4(%rbp)
	je	.L13
	cmpl	$1007, -4(%rbp)
	jg	.L23
	cmpl	$1006, -4(%rbp)
	je	.L14
	cmpl	$1006, -4(%rbp)
	jg	.L23
	cmpl	$1005, -4(%rbp)
	je	.L15
	cmpl	$1005, -4(%rbp)
	jg	.L23
	cmpl	$1004, -4(%rbp)
	je	.L16
	cmpl	$1004, -4(%rbp)
	jg	.L23
	cmpl	$1003, -4(%rbp)
	je	.L17
	cmpl	$1003, -4(%rbp)
	jg	.L23
	cmpl	$1001, -4(%rbp)
	je	.L18
	cmpl	$1002, -4(%rbp)
	je	.L19
	jmp	.L23
.L18:
	leaq	.LC5(%rip), %rax
	jmp	.L20
.L19:
	leaq	.LC6(%rip), %rax
	jmp	.L20
.L17:
	leaq	.LC7(%rip), %rax
	jmp	.L20
.L16:
	leaq	.LC8(%rip), %rax
	jmp	.L20
.L15:
	leaq	.LC9(%rip), %rax
	jmp	.L20
.L14:
	leaq	list_sep.0(%rip), %rax
	jmp	.L20
.L13:
	movq	seed_sources(%rip), %rax
	jmp	.L20
.L11:
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L24
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rax
	leaq	9(%rax), %rax
	jmp	.L20
.L23:
	nop
	jmp	.L22
.L24:
	nop
.L22:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	OPENSSL_info, .-OPENSSL_info
	.local	seeds.1
	.comm	seeds.1,512,32
	.section	.rodata
	.type	list_sep.0, @object
	.size	list_sep.0, 2
list_sep.0:
	.string	":"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
