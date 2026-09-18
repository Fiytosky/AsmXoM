	.file	"rsa_sp800_56b_test.c"
	.text
	.section	.rodata
	.type	cav_e, @object
	.size	cav_e, 3
cav_e:
	.base64	"AQAB"
	.align 32
	.type	cav_p, @object
	.size	cav_p, 128
cav_p:
	.base64	"z3Ibmv0NIhp0UJcidtjAwv0IgQXdGCGZltZceeMCgdcOPzs02mHJLYSGYh49Xb+SLs01PW65WRbJglBBMEVnqre+7OpLnqDDBbxMAaVLvaQgtSDVWW+CXI9P4DpOfv5E8zzADhQrMuYoi2OHAMNTSltxelsoQMQYtncLq1mkln0="
	.align 32
	.type	cav_q, @object
	.size	cav_q, 128
cav_q:
	.base64	"/qvyfBZK8I0xxgqC4q67A357IE5ksBatPAEa01S/K6QCnsMNYD0fucAN5pdou4yB1cFUlg+Z8Kii88aO7LwxF3CYJKM2UahUxETd937aR0pnRF1OdfBNAGjhSuwfRfnmyjiVSG/cnRujS/0IS1TN6z3vMxFuzuRd76lYXIdNyM8="
	.align 32
	.type	cav_n, @object
	.size	cav_n, 256
cav_n:
	.base64	"zl6NGqMIei20SUjwBrb+ui85fHvgXQktV05UYJzlCEvhGnPBXi+2RteByryY0vnvHJKMjZmFKFLW1atwfp6ph4LIlWTr8GwPP+kCKS5toey/3CPfgk+rOY3MrCFRFPjv7HOAhqPPj9XPIh/MIy+6y/YXzTof2YS5iKd4D6rJBAEgcl0q/lvdFlrtgwKWOUY3MMENh8LIMzjtNXLlKfgfI2DhKlsda1M/B8TZuwQMXD8LxNRhlpTxD0pJrN7S6EKzSgtkejJfK1sPi4vgMyM0ZPi1f2lguHHp/5JCsfcjqKeSBD1r//eruxQfTBCX1WtxEv2ToEo7dXJAlhxfQEBX"
	.ascii	"\023"
	.align 32
	.type	cav_d, @object
	.size	cav_d, 256
cav_d:
	.base64	"R0dJHWYqS2j12Eok/Wy/Vrdw95ohyICe9ITNiAEo6lCrE2Pf6hQ4tQdCgS/a6SQCfq/vdAkOgPr70RlB5boPfAqkFVWiWIw6SCzG3kp2+3K2YebSEERMM7jSdLGdO80vsU/DmL2Dt3516Kdq7sxRjJkXZ38n+Q1qt9SAF4k5nPPXD9+wVYAdr1cu0PBPQmlVvIPWl4N65sYwbT21IafEYgogzl5aF5izb2ua62ujxHXYK9xcb+xdSayopC+4jE8uRiHucmoOIoBxyHZARGEWv6X4icfph9+9LktOwpdT6UkcBbALm58hGUHp9WHXMy4slLiomjrMaiSNGRPuubBI"
	.ascii	"a"
	.text
	.type	bn_load_new, @function
bn_load_new:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	bn_load_new, .-bn_load_new
	.section	.rodata
.LC0:
	.string	"e = BN_new()"
.LC1:
	.string	"../test/rsa_sp800_56b_test.c"
.LC2:
	.string	"BN_set_word(e, 1)"
	.align 8
.LC3:
	.string	"ossl_rsa_check_public_exponent(e)"
.LC4:
	.string	"BN_set_word(e, 65536)"
.LC5:
	.string	"BN_set_word(e, 3)"
.LC6:
	.string	"BN_set_word(e, 17)"
.LC7:
	.string	"BN_set_word(e, 65537)"
	.align 8
.LC8:
	.string	"BN_lshift(e, BN_value_one(), 256)"
.LC9:
	.string	"BN_add(e, e, BN_value_one())"
	.text
	.type	test_check_public_exponent, @function
test_check_public_exponent:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$113, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movl	$65536, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$119, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$123, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$125, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$129, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L5
	movl	$1, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_check_public_exponent, .-test_check_public_exponent
	.section	.rodata
.LC10:
	.string	"p = BN_new()"
	.align 8
.LC11:
	.string	"bn_p1 = bn_load_new(p1, sizeof(p1))"
	.align 8
.LC12:
	.string	"bn_p2 = bn_load_new(p2, sizeof(p2))"
	.align 8
.LC13:
	.string	"bn_p3 = bn_load_new(p3, sizeof(p3))"
	.align 8
.LC14:
	.string	"bn_p4 = bn_load_new(p4, sizeof(p4))"
.LC15:
	.string	"ctx = BN_CTX_new()"
.LC16:
	.string	"BN_set_word(p, 0xA)"
	.align 8
.LC17:
	.string	"ossl_rsa_check_prime_factor_range(p, 8, ctx)"
.LC18:
	.string	"BN_set_word(p, 0x10)"
.LC19:
	.string	"BN_set_word(p, 0xB)"
.LC20:
	.string	"BN_set_word(p, 0xC)"
.LC21:
	.string	"BN_set_word(p, 0xF)"
	.align 8
.LC22:
	.string	"ossl_rsa_check_prime_factor_range(bn_p1, 72, ctx)"
	.align 8
.LC23:
	.string	"ossl_rsa_check_prime_factor_range(bn_p2, 72, ctx)"
	.align 8
.LC24:
	.string	"ossl_rsa_check_prime_factor_range(bn_p3, 72, ctx)"
	.align 8
.LC25:
	.string	"ossl_rsa_check_prime_factor_range(bn_p4, 72, ctx)"
	.text
	.type	test_check_prime_factor_range, @function
test_check_prime_factor_range:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -44(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$151, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	p1.6(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$152, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	p2.5(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$153, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	p3.4(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	leaq	p4.3(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	call	BN_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$156, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$157, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L9
	movq	-56(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L9
	movq	-56(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$161, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L9
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$170, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_check_prime_factor_range, .-test_check_prime_factor_range
	.section	.rodata
.LC26:
	.string	"BN_set_word(e, 0x1)"
	.align 8
.LC27:
	.string	"ossl_rsa_check_prime_factor(bn_p1, e, 72, ctx)"
	.align 8
.LC28:
	.string	"ossl_rsa_check_prime_factor(bn_p2, e, 72, ctx)"
.LC29:
	.string	"BN_set_word(e, 0x2)"
	.align 8
.LC30:
	.string	"ossl_rsa_check_prime_factor(p, e, 72, ctx)"
	.align 8
.LC31:
	.string	"ossl_rsa_check_prime_factor(bn_p3, e, 72, ctx)"
	.text
	.type	test_check_prime_factor, @function
test_check_prime_factor:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -44(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	leaq	p1.2(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	leaq	p2.1(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$195, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	leaq	p3.0(%rip), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$196, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$197, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	call	BN_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$72, %edx
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$72, %edx
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$203, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$72, %edx
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$206, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L13
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$72, %edx
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_check_prime_factor, .-test_check_prime_factor
	.section	.rodata
.LC32:
	.string	"key = RSA_new()"
.LC33:
	.string	"q = BN_new()"
.LC34:
	.string	"BN_set_word(p, 15)"
.LC35:
	.string	"BN_set_word(q, 17)"
.LC36:
	.string	"RSA_set0_factors(key, p, q)"
.LC37:
	.string	"d = BN_new()"
.LC38:
	.string	"n = BN_new()"
.LC39:
	.string	"BN_set_word(e, 5)"
.LC40:
	.string	"BN_set_word(d, 157)"
.LC41:
	.string	"BN_set_word(n, 15*17)"
.LC42:
	.string	"RSA_set0_key(key, n, e, d)"
	.align 8
.LC43:
	.string	"ossl_rsa_check_private_exponent(key, 8, ctx)"
.LC44:
	.string	"BN_set_word(d, 45)"
	.align 8
.LC45:
	.string	"ossl_rsa_check_private_exponent(key, 16, ctx)"
.LC46:
	.string	"BN_set_word(d, 16)"
.LC47:
	.string	"BN_set_word(d, 46)"
	.text
	.type	test_check_private_exponent, @function
test_check_private_exponent:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	call	RSA_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$229, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$230, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$231, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$233, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L20
.L19:
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$242, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$243, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$244, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-64(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$245, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-48(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L23
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L20
.L23:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_private_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	movq	-40(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_private_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$259, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_private_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$261, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	movq	-40(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_private_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	movq	-40(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_private_exponent@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$267, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	movl	%eax, -4(%rbp)
.L20:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	test_check_private_exponent, .-test_check_private_exponent
	.section	.rodata
.LC48:
	.string	"BN_set_word(p, P)"
.LC49:
	.string	"BN_set_word(q, Q)"
.LC50:
	.string	"BN_set_word(e, E)"
.LC51:
	.string	"1"
	.align 8
.LC52:
	.string	"ossl_rsa_sp800_56b_derive_params_from_pq(key, 8, e, ctx)"
.LC53:
	.string	"N"
.LC54:
	.string	"key->n"
.LC55:
	.string	"DP"
.LC56:
	.string	"key->dmp1"
.LC57:
	.string	"DQ"
.LC58:
	.string	"key->dmq1"
.LC59:
	.string	"QINV"
.LC60:
	.string	"key->iqmp"
	.align 8
.LC61:
	.string	"ossl_rsa_check_crt_components(key, ctx)"
.LC62:
	.string	"BN_set_word(key->dmp1, 1)"
.LC63:
	.string	"BN_set_word(key->dmp1, P-1)"
.LC64:
	.string	"BN_set_word(key->dmp1, DP)"
.LC65:
	.string	"BN_set_word(key->dmq1, 1)"
.LC66:
	.string	"BN_set_word(key->dmq1, Q-1)"
.LC67:
	.string	"BN_set_word(key->dmq1, DQ)"
.LC68:
	.string	"BN_set_word(key->iqmp, 1)"
.LC69:
	.string	"BN_set_word(key->iqmp, P)"
.LC70:
	.string	"BN_set_word(key->iqmp, QINV)"
.LC71:
	.string	"BN_set_word(key->dmp1, DP+1)"
.LC72:
	.string	"BN_set_word(key->dmq1, DQ-1)"
	.align 8
.LC73:
	.string	"BN_set_word(key->iqmp, QINV+1)"
	.text
	.type	test_check_crt_components, @function
test_check_crt_components:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$15, -44(%rbp)
	movl	$17, -48(%rbp)
	movl	$5, -52(%rbp)
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$3, -60(%rbp)
	movl	$13, -64(%rbp)
	movl	$8, -68(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	RSA_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$289, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$290, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$291, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$292, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$293, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$296, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$297, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L31
.L30:
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_derive_params_from_pq@PLT
	movl	%eax, %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	-56(%rbp), %eax
	movslq	%eax, %rdi
	movq	-80(%rbp), %rax
	movq	40(%rax), %rsi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L32
	movl	-60(%rbp), %eax
	movslq	%eax, %rdi
	movq	-80(%rbp), %rax
	movq	80(%rax), %rsi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$306, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L32
	movl	-64(%rbp), %eax
	movslq	%eax, %rdi
	movq	-80(%rbp), %rax
	movq	88(%rax), %rsi
	leaq	.LC57(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L32
	movl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movq	-80(%rbp), %rax
	movq	96(%rax), %rsi
	leaq	.LC59(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$308, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$311, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$312, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$313, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$314, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$315, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$317, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$318, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$319, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$320, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$323, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$324, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$325, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$326, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$327, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$329, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$330, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$331, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$333, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$335, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$337, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$338, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L32
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$339, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$341, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	movl	%eax, -4(%rbp)
.L31:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	test_check_crt_components, .-test_check_crt_components
	.section	.rodata
	.align 16
	.type	derive_from_pq_tests, @object
	.size	derive_from_pq_tests, 24
derive_from_pq_tests:
	.long	15
	.long	17
	.long	6
	.long	0
	.long	17
	.long	5
	.align 8
.LC74:
	.string	"BN_set_word(p, derive_from_pq_tests[tst].p)"
	.align 8
.LC75:
	.string	"BN_set_word(q, derive_from_pq_tests[tst].q)"
	.align 8
.LC76:
	.string	"BN_set_word(e, derive_from_pq_tests[tst].e)"
.LC77:
	.string	"0"
	.text
	.type	test_derive_params_from_pq_fail, @function
test_derive_params_from_pq_fail:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	RSA_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$363, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$364, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$365, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$366, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$367, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	derive_from_pq_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$368, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	4+derive_from_pq_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$369, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	8+derive_from_pq_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$370, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$371, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L39
.L38:
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_derive_params_from_pq@PLT
	movl	%eax, %esi
	leaq	.LC77(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$378, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	movl	%eax, -4(%rbp)
.L39:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_derive_params_from_pq_fail, .-test_derive_params_from_pq_fail
	.section	.rodata
.LC78:
	.string	"tmp = BN_new()"
.LC79:
	.string	"BN_set_word(p, 1)"
.LC80:
	.string	"BN_set_word(q, 1+2)"
	.align 8
.LC81:
	.string	"ossl_rsa_check_pminusq_diff(tmp, p, q, 202)"
.LC82:
	.string	"BN_set_word(q, 1+3)"
.LC83:
	.string	"BN_set_word(p, 1+3)"
.LC84:
	.string	"BN_set_word(q, 1)"
	.text
	.type	test_pq_diff, @function
test_pq_diff:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$391, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$392, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$393, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$395, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$396, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$202, %ecx
	movq	%rax, %rdi
	call	ossl_rsa_check_pminusq_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$397, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$399, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$202, %ecx
	movq	%rax, %rdi
	call	ossl_rsa_check_pminusq_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$401, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$402, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$202, %ecx
	movq	%rax, %rdi
	call	ossl_rsa_check_pminusq_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$403, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	test_pq_diff, .-test_pq_diff
	.section	.rodata
	.align 8
.LC85:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, 2048)"
	.align 8
.LC86:
	.string	"p = bn_load_new(cav_p, sizeof(cav_p))"
	.align 8
.LC87:
	.string	"q = bn_load_new(cav_q, sizeof(cav_q))"
	.align 8
.LC88:
	.string	"e = bn_load_new(cav_e, sizeof(cav_e))"
	.align 8
.LC89:
	.string	"n = bn_load_new(cav_n, sizeof(cav_n))"
	.align 8
.LC90:
	.string	"d = bn_load_new(cav_d, sizeof(cav_d))"
	.align 8
.LC91:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, 100, 2048)"
	.align 8
.LC92:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, 112, 1024)"
	.align 8
.LC93:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, 128, 2048)"
	.align 8
.LC94:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, 140, 3072)"
	.align 8
.LC95:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, BN_value_one(), -1, 2048)"
.LC96:
	.string	"BN_add_word(e, 1)"
.LC97:
	.string	"BN_sub_word(e, 1)"
	.align 8
.LC98:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, 3072)"
	.align 8
.LC99:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, e, 112, 2048)"
.LC100:
	.string	"BN_add_word(n, 1)"
.LC101:
	.string	"BN_sub_word(n, 1)"
.LC102:
	.string	"BN_lshift1(n, n)"
	.align 8
.LC103:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, 2049)"
.LC104:
	.string	"BN_rshift1(n, n)"
.LC105:
	.string	"BN_sub_word(p, 2)"
.LC106:
	.string	"BN_mul(n, p, q, ctx)"
.LC107:
	.string	"BN_add_word(p, 2)"
.LC108:
	.string	"BN_sub_word(q, 2)"
.LC109:
	.string	"BN_add_word(q, 2)"
	.text
	.type	test_invalid_keypair, @function
test_invalid_keypair:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -48(%rbp)
	call	RSA_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$417, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$418, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$420, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L46
	leaq	cav_p(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$422, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	leaq	cav_q(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$423, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$424, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L48
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L49
.L48:
	leaq	cav_e(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$431, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	leaq	cav_n(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$432, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	leaq	cav_d(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$433, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movl	$1, %eax
	jmp	.L51
.L50:
	movl	$0, %eax
.L51:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L52
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L49
.L52:
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$100, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$442, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$1024, %ecx
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$443, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$444, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$3072, %ecx
	movl	$140, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$445, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	call	BN_value_one@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$447, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$450, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$451, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$452, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$3072, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$455, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$112, %edx
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$456, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$458, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$459, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$2049, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC103(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$463, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$464, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC105(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$466, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$467, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$468, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$469, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$470, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$472, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$473, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movl	$2048, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$474, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$475, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$476, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movl	$1, %eax
	jmp	.L54
.L53:
	movl	$0, %eax
.L54:
	movl	%eax, -4(%rbp)
.L49:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_invalid_keypair, .-test_invalid_keypair
	.data
	.align 8
	.type	keygen_size, @object
	.size	keygen_size, 8
keygen_size:
	.long	2048
	.long	3072
	.section	.rodata
	.align 8
.LC110:
	.string	"ossl_rsa_sp800_56b_generate_key(key, sz, NULL, NULL)"
	.align 8
.LC111:
	.string	"ossl_rsa_sp800_56b_check_public(key)"
	.align 8
.LC112:
	.string	"ossl_rsa_sp800_56b_check_private(key)"
	.align 8
.LC113:
	.string	"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, sz)"
	.text
	.type	test_sp80056b_keygen, @function
test_sp80056b_keygen:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	keygen_size(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	call	RSA_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$494, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_generate_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$495, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$496, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_private@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$497, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_keypair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$498, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_sp80056b_keygen, .-test_sp80056b_keygen
	.section	.rodata
.LC114:
	.string	"BN_set_word(d, 0)"
.LC115:
	.string	"BN_copy(d, n)"
	.text
	.type	test_check_private_key, @function
test_check_private_key:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	RSA_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$510, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_private@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$512, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	leaq	cav_n(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$514, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	leaq	cav_d(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$515, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	leaq	cav_e(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$516, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L63
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L64
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_private@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$525, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_private@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$528, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L65
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$530, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L65
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_private@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$531, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	movl	%eax, -4(%rbp)
.L64:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_check_private_key, .-test_check_private_key
	.section	.rodata
.LC116:
	.string	"RSA_set0_key(key, n, e, NULL)"
.LC117:
	.string	"BN_add_word(n, 2)"
	.text
	.type	test_check_public_key, @function
test_check_public_key:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	call	RSA_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$543, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$545, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L69
	leaq	cav_e(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$547, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	leaq	cav_n(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	bn_load_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$548, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$549, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L72
.L71:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$556, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$558, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$559, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$560, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$562, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$563, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$564, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$566, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$567, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$568, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$570, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_check_public@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$571, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L73
	movl	$1, %eax
	jmp	.L74
.L73:
	movl	$0, %eax
.L74:
	movl	%eax, -4(%rbp)
.L72:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_check_public_key, .-test_check_public_key
	.section	.rodata
.LC118:
	.string	"test_check_public_exponent"
.LC119:
	.string	"test_check_prime_factor_range"
.LC120:
	.string	"test_check_prime_factor"
.LC121:
	.string	"test_check_private_exponent"
.LC122:
	.string	"test_check_crt_components"
	.align 8
.LC123:
	.string	"test_derive_params_from_pq_fail"
.LC124:
	.string	"test_check_private_key"
.LC125:
	.string	"test_check_public_key"
.LC126:
	.string	"test_invalid_keypair"
.LC127:
	.string	"test_pq_diff"
.LC128:
	.string	"test_sp80056b_keygen"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_check_public_exponent(%rip), %rdx
	leaq	.LC118(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_prime_factor_range(%rip), %rdx
	leaq	.LC119(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_prime_factor(%rip), %rdx
	leaq	.LC120(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_private_exponent(%rip), %rdx
	leaq	.LC121(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_crt_components(%rip), %rdx
	leaq	.LC122(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_derive_params_from_pq_fail(%rip), %rsi
	leaq	.LC123(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_check_private_key(%rip), %rdx
	leaq	.LC124(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_public_key(%rip), %rdx
	leaq	.LC125(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_invalid_keypair(%rip), %rdx
	leaq	.LC126(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pq_diff(%rip), %rdx
	leaq	.LC127(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sp80056b_keygen(%rip), %rsi
	leaq	.LC128(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.type	p1.6, @object
	.size	p1.6, 5
p1.6:
	.ascii	"\013PO3?"
	.type	p2.5, @object
	.size	p2.5, 5
p2.5:
	.base64	"EAAAAAA="
	.type	p3.4, @object
	.size	p3.4, 5
p3.4:
	.ascii	"\013PO3@"
	.type	p4.3, @object
	.size	p4.3, 5
p4.3:
	.base64	"D/////8="
	.type	p1.2, @object
	.size	p1.2, 5
p1.2:
	.ascii	"\013PO3s"
	.type	p2.1, @object
	.size	p2.1, 5
p2.1:
	.ascii	"\013PO3u"
	.type	p3.0, @object
	.size	p3.0, 5
p3.0:
	.base64	"D1AAA3U="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
