	.file	"quic_lcidm_test.c"
	.text
	.local	ptrs
	.comm	ptrs,8,8
	.section	.rodata
	.align 16
	.type	cid8_1, @object
	.size	cid8_1, 21
cid8_1:
	.byte	8
	.string	"\001"
	.zero	18
	.align 16
	.type	cid8_2, @object
	.size	cid8_2, 21
cid8_2:
	.byte	8
	.string	"\002"
	.zero	18
	.align 16
	.type	cid8_3, @object
	.size	cid8_3, 21
cid8_3:
	.byte	8
	.string	"\003"
	.zero	18
	.align 16
	.type	cid8_4, @object
	.size	cid8_4, 21
cid8_4:
	.byte	8
	.string	"\004"
	.zero	18
	.align 16
	.type	cid8_5, @object
	.size	cid8_5, 21
cid8_5:
	.byte	8
	.string	"\005"
	.zero	18
	.align 8
.LC0:
	.string	"lcidm = ossl_quic_lcidm_new(NULL, lcid_len)"
.LC1:
	.string	"../test/quic_lcidm_test.c"
.LC2:
	.string	"lcid_len"
	.align 8
.LC3:
	.string	"ossl_quic_lcidm_get_lcid_len(lcidm)"
	.align 8
.LC4:
	.string	"ossl_quic_lcidm_enrol_odcid(lcidm, ptrs + 0, &cid8_1)"
	.align 8
.LC5:
	.string	"ossl_quic_lcidm_enrol_odcid(lcidm, ptrs + 0, &cid8_2)"
	.align 8
.LC6:
	.string	"ossl_quic_lcidm_enrol_odcid(lcidm, ptrs + 1, &cid8_1)"
.LC7:
	.string	"0"
	.align 8
.LC8:
	.string	"ossl_quic_lcidm_get_num_active_lcid(lcidm, ptrs + 1)"
	.align 8
.LC9:
	.string	"ossl_quic_lcidm_enrol_odcid(lcidm, ptrs + 1, &cid8_3)"
	.align 8
.LC10:
	.string	"ossl_quic_lcidm_enrol_odcid(lcidm, ptrs + 1, &cid8_4)"
.LC11:
	.string	"1"
	.align 8
.LC12:
	.string	"ossl_quic_lcidm_get_num_active_lcid(lcidm, ptrs + 0)"
	.align 8
.LC13:
	.string	"ossl_quic_lcidm_retire_odcid(lcidm, ptrs + 0)"
	.align 8
.LC14:
	.string	"ossl_quic_lcidm_enrol_odcid(lcidm, ptrs + 0, &cid8_5)"
	.align 8
.LC15:
	.string	"ossl_quic_lcidm_generate_initial(lcidm, ptrs + 2, &lcid_1)"
	.align 8
.LC16:
	.string	"ossl_quic_lcidm_get_num_active_lcid(lcidm, ptrs + 2)"
	.align 8
.LC17:
	.string	"ossl_quic_lcidm_generate_initial(lcidm, ptrs + 2, &lcid_init)"
	.align 8
.LC18:
	.string	"ossl_quic_lcidm_generate(lcidm, ptrs + 2, &ncid_frame_1)"
	.align 8
.LC19:
	.string	"ossl_quic_lcidm_generate(lcidm, ptrs + 2, &ncid_frame_2)"
	.align 8
.LC20:
	.string	"ossl_quic_lcidm_generate(lcidm, ptrs + 2, &ncid_frame_3)"
.LC21:
	.string	"4"
	.align 8
.LC22:
	.string	"ossl_quic_lcidm_lookup(lcidm, &lcid_1, &seq_num, &opaque)"
.LC23:
	.string	"ptrs + 2"
.LC24:
	.string	"opaque"
.LC25:
	.string	"seq_num"
	.align 8
.LC26:
	.string	"ossl_quic_lcidm_lookup(lcidm, &ncid_frame_1.conn_id, &seq_num, &opaque)"
	.align 8
.LC27:
	.string	"ossl_quic_lcidm_lookup(lcidm, &ncid_frame_2.conn_id, &seq_num, &opaque)"
.LC28:
	.string	"2"
	.align 8
.LC29:
	.string	"ossl_quic_lcidm_lookup(lcidm, &ncid_frame_3.conn_id, &seq_num, &opaque)"
.LC30:
	.string	"3"
	.align 8
.LC31:
	.string	"ossl_quic_lcidm_retire(lcidm, ptrs + 2, 2, NULL, &lcid_dummy, &seq_num, &did_retire)"
.LC32:
	.string	"did_retire"
	.align 8
.LC33:
	.string	"ossl_quic_lcidm_lookup(lcidm, &lcid_init, &seq_num, &opaque)"
	.align 8
.LC34:
	.string	"ossl_quic_lcidm_cull(lcidm, ptrs + 2)"
	.text
	.type	test_lcidm, @function
test_lcidm:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movl	$0, -4(%rbp)
	movq	$10, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -112(%rbp)
	movq	%xmm0, -99(%rbp)
	movq	$0, -312(%rbp)
	movq	$-1, -320(%rbp)
	movl	$0, -324(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_quic_lcidm_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$32, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_lcid_len@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$35, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L9
	leaq	cid8_1(%rip), %rdx
	leaq	ptrs(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$38, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	cid8_2(%rip), %rdx
	leaq	ptrs(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$39, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	1+ptrs(%rip), %rcx
	leaq	cid8_1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$40, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	1+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	1+ptrs(%rip), %rcx
	leaq	cid8_3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	1+ptrs(%rip), %rcx
	leaq	cid8_4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$43, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	1+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_retire_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$46, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	cid8_1(%rip), %rdx
	leaq	ptrs(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$48, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	cid8_5(%rip), %rdx
	leaq	ptrs(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_enrol_odcid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$49, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate_initial@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$52, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rcx
	leaq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate_initial@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$54, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rcx
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$55, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rcx
	leaq	-240(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rcx
	leaq	-304(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_generate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$59, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdi
	movq	-312(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	-320(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-176(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdi
	movq	-312(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	-320(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-240(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdi
	movq	-312(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	-320(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-304(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdi
	movq	-312(%rbp), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	-320(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rsi
	leaq	-320(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	-324(%rbp), %rdx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_quic_lcidm_retire@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movl	-324(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rsi
	leaq	-320(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	-324(%rbp), %rdx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_quic_lcidm_retire@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movl	-324(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rsi
	leaq	-320(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	-324(%rbp), %rdx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ossl_quic_lcidm_retire@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movl	-324(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-176(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L10
	leaq	-312(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-240(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_cull@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	leaq	2+ptrs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_get_num_active_lcid@PLT
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, -4(%rbp)
	jmp	.L3
.L8:
	nop
	jmp	.L3
.L9:
	nop
	jmp	.L3
.L10:
	nop
.L3:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_lcidm, .-test_lcidm
	.section	.rodata
.LC35:
	.string	"test_lcidm"
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
	leaq	test_lcidm(%rip), %rdx
	leaq	.LC35(%rip), %rax
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
