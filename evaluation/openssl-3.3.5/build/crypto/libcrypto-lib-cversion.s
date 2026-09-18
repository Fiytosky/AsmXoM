	.file	"cversion.c"
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
	.section	.rodata
	.align 32
	.type	compiler_flags, @object
	.size	compiler_flags, 227
compiler_flags:
	.string	"compiler: /root/AsmXoM/gcc-15.2.0/build/bin/gcc -fPIC -pthread -m64 -Wa,--noexecstack -O0 -Wa,--keep-locals -Wa,--dsplit -save-temps=obj -fPIC -DOPENSSL_USE_NODELETE -DL_ENDIAN -DOPENSSL_PIC -DOPENSSL_BUILDING_OPENSSL -DNDEBUG"
	.text
	.globl	OpenSSL_version_num
	.type	OpenSSL_version_num, @function
OpenSSL_version_num:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$808452176, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	OpenSSL_version_num, .-OpenSSL_version_num
	.globl	OPENSSL_version_major
	.type	OPENSSL_version_major, @function
OPENSSL_version_major:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	OPENSSL_version_major, .-OPENSSL_version_major
	.globl	OPENSSL_version_minor
	.type	OPENSSL_version_minor, @function
OPENSSL_version_minor:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	OPENSSL_version_minor, .-OPENSSL_version_minor
	.globl	OPENSSL_version_patch
	.type	OPENSSL_version_patch, @function
OPENSSL_version_patch:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$5, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	OPENSSL_version_patch, .-OPENSSL_version_patch
	.section	.rodata
.LC0:
	.string	""
	.text
	.globl	OPENSSL_version_pre_release
	.type	OPENSSL_version_pre_release, @function
OPENSSL_version_pre_release:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	OPENSSL_version_pre_release, .-OPENSSL_version_pre_release
	.globl	OPENSSL_version_build_metadata
	.type	OPENSSL_version_build_metadata, @function
OPENSSL_version_build_metadata:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	OPENSSL_version_build_metadata, .-OPENSSL_version_build_metadata
	.section	.rodata
.LC1:
	.string	"OpenSSL 3.3.5 30 Sep 2025"
.LC2:
	.string	"3.3.5"
	.align 8
.LC3:
	.string	"built on: Fri Sep 18 08:37:03 2026 UTC"
.LC4:
	.string	"platform: linux-x86_64"
	.align 8
.LC5:
	.string	"OPENSSLDIR: \"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl\""
	.align 8
.LC6:
	.string	"ENGINESDIR: \"/root/AsmXoM/evaluation/openssl-3.3.5/build/lib64/engines-3\""
	.align 8
.LC7:
	.string	"MODULESDIR: \"/root/AsmXoM/evaluation/openssl-3.3.5/build/lib64/ossl-modules\""
.LC8:
	.string	"CPUINFO: N/A"
.LC9:
	.string	"not available"
	.text
	.globl	OpenSSL_version
	.type	OpenSSL_version, @function
OpenSSL_version:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	je	.L18
	cmpl	$9, -4(%rbp)
	jg	.L19
	cmpl	$8, -4(%rbp)
	je	.L20
	cmpl	$8, -4(%rbp)
	jg	.L19
	cmpl	$7, -4(%rbp)
	je	.L21
	cmpl	$7, -4(%rbp)
	jg	.L19
	cmpl	$6, -4(%rbp)
	je	.L22
	cmpl	$6, -4(%rbp)
	jg	.L19
	cmpl	$5, -4(%rbp)
	je	.L23
	cmpl	$5, -4(%rbp)
	jg	.L19
	cmpl	$4, -4(%rbp)
	je	.L24
	cmpl	$4, -4(%rbp)
	jg	.L19
	cmpl	$3, -4(%rbp)
	je	.L25
	cmpl	$3, -4(%rbp)
	jg	.L19
	cmpl	$2, -4(%rbp)
	je	.L26
	cmpl	$2, -4(%rbp)
	jg	.L19
	cmpl	$0, -4(%rbp)
	je	.L27
	cmpl	$1, -4(%rbp)
	je	.L28
	jmp	.L19
.L27:
	leaq	.LC1(%rip), %rax
	jmp	.L29
.L22:
	leaq	.LC2(%rip), %rax
	jmp	.L29
.L21:
	leaq	.LC2(%rip), %rax
	jmp	.L29
.L26:
	leaq	.LC3(%rip), %rax
	jmp	.L29
.L28:
	leaq	compiler_flags(%rip), %rax
	jmp	.L29
.L25:
	leaq	.LC4(%rip), %rax
	jmp	.L29
.L24:
	leaq	.LC5(%rip), %rax
	jmp	.L29
.L23:
	leaq	.LC6(%rip), %rax
	jmp	.L29
.L20:
	leaq	.LC7(%rip), %rax
	jmp	.L29
.L18:
	movl	$1008, %edi
	call	OPENSSL_info@PLT
	testq	%rax, %rax
	je	.L30
	movq	ossl_cpu_info_str@GOTPCREL(%rip), %rax
	jmp	.L29
.L30:
	leaq	.LC8(%rip), %rax
	jmp	.L29
.L19:
	leaq	.LC9(%rip), %rax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	OpenSSL_version, .-OpenSSL_version
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
