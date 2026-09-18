	.file	"quic_srtm_test.c"
	.text
	.local	ptrs
	.comm	ptrs,8,8
	.section	.rodata
	.align 16
	.type	token_1, @object
	.size	token_1, 16
token_1:
	.base64	"AQIDBAA="
	.zero	11
	.align 16
	.type	token_2, @object
	.size	token_2, 16
token_2:
	.base64	"AQIDBQA="
	.zero	11
	.align 8
.LC0:
	.string	"srtm = ossl_quic_srtm_new(NULL, NULL)"
.LC1:
	.string	"../test/quic_srtm_test.c"
	.align 8
.LC2:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 0, 0, &token_1)"
	.align 8
.LC3:
	.string	"ossl_quic_srtm_remove(srtm, ptrs + 0, 1)"
	.align 8
.LC4:
	.string	"ossl_quic_srtm_remove(srtm, ptrs + 3, 0)"
	.align 8
.LC5:
	.string	"ossl_quic_srtm_cull(srtm, ptrs + 3)"
	.align 8
.LC6:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 0, 1, &token_1)"
	.align 8
.LC7:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 0, 2, &token_1)"
	.align 8
.LC8:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 0, 3, &token_1)"
	.align 8
.LC9:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 1, 0, &token_1)"
	.align 8
.LC10:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 2, 0, &token_2)"
	.align 8
.LC11:
	.string	"ossl_quic_srtm_add(srtm, ptrs + 3, 3, &token_2)"
	.align 8
.LC12:
	.string	"ossl_quic_srtm_remove(srtm, ptrs + 3, 3)"
	.align 8
.LC13:
	.string	"ossl_quic_srtm_lookup(srtm, &token_1, 0, &opaque, &seq_num)"
.LC14:
	.string	"ptrs + 1"
.LC15:
	.string	"opaque"
.LC16:
	.string	"0"
.LC17:
	.string	"seq_num"
	.align 8
.LC18:
	.string	"ossl_quic_srtm_lookup(srtm, &token_1, 1, &opaque, &seq_num)"
.LC19:
	.string	"ptrs + 0"
.LC20:
	.string	"3"
	.align 8
.LC21:
	.string	"ossl_quic_srtm_lookup(srtm, &token_1, 2, &opaque, &seq_num)"
.LC22:
	.string	"2"
	.align 8
.LC23:
	.string	"ossl_quic_srtm_lookup(srtm, &token_1, 3, &opaque, &seq_num)"
.LC24:
	.string	"1"
	.align 8
.LC25:
	.string	"ossl_quic_srtm_lookup(srtm, &token_1, 4, &opaque, &seq_num)"
	.align 8
.LC26:
	.string	"ossl_quic_srtm_lookup(srtm, &token_1, 5, &opaque, &seq_num)"
	.align 8
.LC27:
	.string	"ossl_quic_srtm_cull(srtm, ptrs + 0)"
	.align 8
.LC28:
	.string	"ossl_quic_srtm_lookup(srtm, &token_2, 0, &opaque, &seq_num)"
.LC29:
	.string	"ptrs + 2"
	.align 8
.LC30:
	.string	"ossl_quic_srtm_remove(srtm, ptrs + 2, 0)"
	.text
	.type	test_srtm, @function
test_srtm:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_srtm_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L7
	leaq	token_1(%rip), %rdx
	leaq	ptrs(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$33, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	token_1(%rip), %rdx
	leaq	ptrs(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$34, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L8
	leaq	ptrs(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$35, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L8
	leaq	3+ptrs(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$36, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L8
	leaq	3+ptrs(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_cull@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$37, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	3+ptrs(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_cull@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$38, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	token_1(%rip), %rdx
	leaq	ptrs(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$39, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	token_1(%rip), %rdx
	leaq	ptrs(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$40, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	token_1(%rip), %rdx
	leaq	ptrs(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$41, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	1+ptrs(%rip), %rsi
	leaq	token_1(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	2+ptrs(%rip), %rsi
	leaq	token_2(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$43, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	3+ptrs(%rip), %rsi
	leaq	token_2(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$44, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	3+ptrs(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$45, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$46, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	1+ptrs(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rsi
	leaq	ptrs(%rip), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$52, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rsi
	leaq	ptrs(%rip), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC22(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$54, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$55, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rsi
	leaq	ptrs(%rip), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rsi
	leaq	ptrs(%rip), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$59, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$61, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L8
	leaq	ptrs(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_cull@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_1(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	1+ptrs(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_2(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	2+ptrs(%rip), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	2+ptrs(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	token_2(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, -4(%rbp)
	jmp	.L3
.L7:
	nop
	jmp	.L3
.L8:
	nop
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_srtm_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_srtm, .-test_srtm
	.section	.rodata
.LC31:
	.string	"test_srtm"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_srtm(%rip), %rdx
	leaq	.LC31(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
