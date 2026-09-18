	.file	"evp_xof_test.c"
	.text
	.section	.rodata
	.align 32
	.type	shake256_input, @object
	.size	shake256_input, 32
shake256_input:
	.base64	"jYAB4sCW8biOfJIkoIbv1Hl/v3SoAzotQiora49nR+Q="
	.align 32
	.type	shake256_output, @object
	.size	shake256_output, 250
shake256_output:
	.base64	"LpdfaooU8HBNUbE2Z9gZXCGfceY0VpbEn6S50I6SJdPTk5NCUVLJfnHdJGAcEavPoPEvU8aAvTrnV7gTSpwQ1ClhWGkhf91YhcTbF0mFcDptbelKZn6sMCNEOoM3rhvGAbdtfTjsPDRGMQXw05SdeOVioDnkRpVItgk5XeWk/UPEbKn9buKa2l78B9hNVTJJRQ2rSknEg97SUMkzj4XNk3rma7Q287QCboWf2hylcUMvO/wJ58A8pNGDt0ERHKBIPQ7avAP+sjsX7kjoRLokCNnc/QE50ujHMQElrugBxhq3kA0e/EfAeCgXZvNhxeYRE0YjXh3DgyVmbA=="
	.align 32
	.type	shake256_largemsg_input, @object
	.size	shake256_largemsg_input, 684
shake256_largemsg_input:
	.base64	"stI4Za+PJW5kQOINSY4+ZEbSA6QZ43uA9ysy4nYB/t2qMz3kjuFeOaaSo6fjgSR0xzgYkslgUBX72ATq6gTSxcZoBFvDdRLSvqJndSS/aK0QhrMss3SkbPnXHlhpJ4hJTpkVMxTySSH0mbne1PES9WjlXNyexYBtOVAIlbsSJ1CJ8PnVSgELDZCfHkq6vig2GX2cClH76wACbEsKqGy3xMCSN6ctSWGA2dsgIZ/PtFdpdfoclb/uDZ5Sbh743UGMO6pXE4RzUmIYdkbMS8u9QKH2/3syuZB8Uyz5OHIPy5BCXuKAGSbnmZaYGLGGW0zZCCcxj/CQ2TVqH3XC4Kdg"
	.base64	"uB3WX1ayCycOmGcfORgnaAroMRvAl+zRICpVaSMIUAXsEztW/BjJGqlpDuLMyNYZu4c7Qnfud4Em3fZdw7KwxBRttU/cEwnIU1Cz6tNfEWfUL24wGr7W8C3JKdkKqG+kGHRr011qczrylH+9tKZ/Wz0m8mwTz7QmHjgXZmCxNq7gbYZp5+eud29+meXZYsn83rTufsjptyzicOiLLZSt6FSjLZriUGOHs1Yp6qhellOfI4rvo9SHCV+6w9HZGntcXV2J7bZuOXOlZFlSi2GPZmm58EUKV83Ff13Qv8wLSBLh4sLqzAnZQizvT6fpMlw/IsBFC2c8MWkpozndbi++"
	.base64	"EMl7/xmK6er8MkEzcCqapOa0frTGIUla/EXSI7MoTYNg/nBoA1nVFaqeoC42tWEPYQU8YgCgR/GGujO4ymAvPwpnCScvopYCUlhVaID0T0e6/0F6QEz9nRByDiCpf5ubFOuOYSXL9Fj/R6cI1k4r8fmJ1yIPjTUHoFSrg9juWj6IdEZBbj63wLZV4DbAK7+4JIpEgvTLtddBSFEI4BQ00m3peuyRYafhgWlHHMfz"
	.align 32
	.type	shake256_largemsg_output, @object
	.size	shake256_largemsg_output, 32
shake256_largemsg_output:
	.base64	"ZOokaquAN54I4hmeCWni7hpd0Who7I1C0Pi4RHRUhz4="
	.align 8
.LC0:
	.string	"md = EVP_MD_fetch(NULL, name, NULL)"
.LC1:
	.string	"../test/evp_xof_test.c"
.LC2:
	.string	"ctx = EVP_MD_CTX_new()"
	.align 8
.LC3:
	.string	"EVP_DigestInit_ex2(ctx, md, NULL)"
	.text
	.type	shake_setup, @function
shake_setup:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$166, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L7
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L3
.L7:
	nop
	jmp	.L5
.L8:
	nop
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	shake_setup, .-shake_setup
	.section	.rodata
.LC4:
	.string	"SHAKE256"
.LC5:
	.string	"ctx = shake_setup(\"SHAKE256\")"
	.align 8
.LC6:
	.string	"EVP_DigestUpdate(ctx, shake256_input, sizeof(shake256_input))"
	.align 8
.LC7:
	.string	"EVP_DigestFinalXOF(ctx, out, sizeof(out))"
.LC8:
	.string	"shake256_output"
.LC9:
	.string	"out"
	.align 8
.LC10:
	.string	"EVP_DigestSqueeze(ctx, out, sizeof(out))"
	.text
	.type	shake_kat_test, @function
shake_kat_test:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$184, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L15
.L10:
	leaq	shake256_input(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-272(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$188, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-272(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$250
	leaq	shake256_output(%rip), %rsi
	pushq	%rsi
	movl	$250, %r9d
	movq	%rdi, %r8
	movl	$189, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L16
	leaq	-272(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-272(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSqueeze@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L16
	movl	$1, -4(%rbp)
	jmp	.L14
.L16:
	nop
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	shake_kat_test, .-shake_kat_test
	.section	.rodata
	.align 8
.LC11:
	.string	"EVP_DigestFinal(ctx, out, &digest_length)"
.LC12:
	.string	"32"
.LC13:
	.string	"digest_length"
	.text
	.type	shake_kat_digestfinal_test, @function
shake_kat_digestfinal_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L23
.L18:
	leaq	shake256_input(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	leaq	-20(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$213, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movl	-20(%rbp), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$32, %r9d
	movl	%esi, %r8d
	movl	$214, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L24
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movl	%eax, %r8d
	leaq	-272(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	shake256_output(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L24
	leaq	-272(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$217, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L24
	movl	$1, -4(%rbp)
	jmp	.L22
.L24:
	nop
.L22:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	shake_kat_digestfinal_test, .-shake_kat_digestfinal_test
	.section	.rodata
.LC14:
	.string	"xoflen"
.LC15:
	.string	"1"
	.align 8
.LC16:
	.string	"EVP_MD_CTX_set_params(ctx, params)"
.LC17:
	.string	"(unsigned int)sz"
.LC18:
	.string	"0"
.LC19:
	.string	"out[digest_length]"
	.text
	.type	shake_kat_digestfinal_xoflen_test, @function
shake_kat_digestfinal_xoflen_test:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	movq	$12, -360(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$238, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L31
.L26:
	leaq	-272(%rbp), %rax
	movl	$250, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-416(%rbp), %rax
	leaq	-360(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, -312(%rbp)
	movq	%rdx, -304(%rbp)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-352(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$245, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	leaq	shake256_input(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-20(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$248, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-360(%rbp), %rax
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movl	%eax, %r8d
	leaq	-272(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	shake256_output(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$250, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L32
	movl	-20(%rbp), %eax
	movl	%eax, %eax
	movzbl	-272(%rbp,%rax), %eax
	movzbl	%al, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$252, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, -4(%rbp)
	jmp	.L30
.L32:
	nop
.L30:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	shake_kat_digestfinal_xoflen_test, .-shake_kat_digestfinal_xoflen_test
	.section	.rodata
	.align 8
.LC20:
	.string	"EVP_DigestUpdate(ctx, shake256_largemsg_input + i, sz)"
.LC21:
	.string	"shake256_largemsg_output"
	.align 8
.LC22:
	.string	"EVP_DigestInit_ex2(ctx, NULL, NULL)"
	.text
	.type	shake_absorb_test, @function
shake_absorb_test:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$684, -48(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$272, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L46
.L34:
	movq	$1, -24(%rbp)
	jmp	.L36
.L45:
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L37
.L41:
	movq	-24(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L38
	movq	-48(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L38:
	leaq	shake256_largemsg_input(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$281, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
.L37:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L41
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-80(%rbp), %rdi
	leaq	.LC21(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$32
	leaq	shake256_largemsg_output(%rip), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$286, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$290, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	addq	$1, -24(%rbp)
.L36:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L45
	movl	$1, -4(%rbp)
	jmp	.L40
.L47:
	nop
	jmp	.L40
.L48:
	nop
	jmp	.L40
.L49:
	nop
.L40:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	shake_absorb_test, .-shake_absorb_test
	.section	.rodata
	.align 32
	.type	stride_tests, @object
	.size	stride_tests, 512
stride_tests:
	.quad	1
	.quad	1
	.quad	1
	.quad	136
	.quad	1
	.quad	68
	.quad	1
	.quad	67
	.quad	1
	.quad	69
	.quad	1
	.quad	408
	.quad	8
	.quad	8
	.quad	9
	.quad	9
	.quad	10
	.quad	10
	.quad	67
	.quad	136
	.quad	67
	.quad	135
	.quad	67
	.quad	137
	.quad	68
	.quad	136
	.quad	68
	.quad	135
	.quad	68
	.quad	137
	.quad	69
	.quad	136
	.quad	69
	.quad	135
	.quad	69
	.quad	137
	.quad	136
	.quad	2
	.quad	136
	.quad	136
	.quad	135
	.quad	136
	.quad	135
	.quad	135
	.quad	135
	.quad	137
	.quad	137
	.quad	136
	.quad	137
	.quad	135
	.quad	137
	.quad	137
	.quad	408
	.quad	136
	.quad	408
	.quad	137
	.quad	408
	.quad	135
	.quad	408
	.quad	68
	.quad	408
	.quad	69
	.quad	408
	.quad	67
	.align 8
.LC23:
	.string	"out = OPENSSL_malloc(expected_outlen)"
	.align 8
.LC24:
	.string	"EVP_DigestUpdate(ctx, in, inlen)"
	.align 8
.LC25:
	.string	"EVP_DigestSqueeze(ctx, out + i, sz)"
.LC26:
	.string	"expected_out"
	.text
	.type	do_shake_squeeze_test, @function
do_shake_squeeze_test:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	stride_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$358, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	leaq	.LC1(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$360, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$362, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	jmp	.L56
.L59:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -88(%rbp)
	jnb	.L57
	movq	-88(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L57:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSqueeze@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$368, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+stride_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
.L56:
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L59
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L64
	movl	$1, -4(%rbp)
	jmp	.L54
.L61:
	nop
	jmp	.L54
.L62:
	nop
	jmp	.L54
.L63:
	nop
	jmp	.L54
.L64:
	nop
.L54:
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$377, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	do_shake_squeeze_test, .-do_shake_squeeze_test
	.type	shake_squeeze_kat_test, @function
shake_squeeze_kat_test:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	shake256_output(%rip), %rdx
	leaq	shake256_input(%rip), %rsi
	movl	-4(%rbp), %eax
	movl	$250, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	%eax, %edi
	call	do_shake_squeeze_test
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	shake_squeeze_kat_test, .-shake_squeeze_kat_test
	.section	.rodata
.LC27:
	.string	"RAND_bytes(msg, sizeof(msg))"
	.align 8
.LC28:
	.string	"EVP_DigestUpdate(ctx, msg, sizeof(msg))"
	.text
	.type	shake_squeeze_large_test, @function
shake_squeeze_large_test:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2048, %rsp
	movl	%edi, -2036(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$401, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L72
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$402, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$403, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	leaq	-2032(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$2000, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$404, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	leaq	-2032(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movl	-2036(%rbp), %eax
	movl	$2000, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	%eax, %edi
	call	do_shake_squeeze_test
	movl	%eax, -4(%rbp)
	jmp	.L70
.L72:
	nop
.L70:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	shake_squeeze_large_test, .-shake_squeeze_large_test
	.section	.rodata
	.align 32
	.type	dupoffset_tests, @object
	.size	dupoffset_tests, 56
dupoffset_tests:
	.quad	1
	.quad	135
	.quad	136
	.quad	137
	.quad	407
	.quad	408
	.quad	409
.LC29:
	.string	"ctx = shake_setup(alg)"
	.align 8
.LC30:
	.string	"EVP_DigestSqueeze(cur, out + i, sz)"
.LC31:
	.string	"dupctx = EVP_MD_CTX_dup(ctx)"
	.text
	.type	do_shake_squeeze_dup_test, @function
do_shake_squeeze_dup_test:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$10, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dupoffset_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$429, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$432, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$432, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L85
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L86
	jmp	.L79
.L83:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -112(%rbp)
	jnb	.L80
	movq	-112(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.L80:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSqueeze@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$440, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L79
	movq	-32(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L79
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$445, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L79:
	movq	-32(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L83
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-112(%rbp)
	pushq	-104(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$450, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L89
	movl	$1, -4(%rbp)
	jmp	.L77
.L85:
	nop
	jmp	.L77
.L86:
	nop
	jmp	.L77
.L87:
	nop
	jmp	.L77
.L88:
	nop
	jmp	.L77
.L89:
	nop
.L77:
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$454, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	do_shake_squeeze_dup_test, .-do_shake_squeeze_dup_test
	.section	.rodata
.LC32:
	.string	"SHAKE128"
	.text
	.type	shake_squeeze_dup_test, @function
shake_squeeze_dup_test:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movl	%edi, -1060(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$469, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L95
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	shake_setup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$470, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$471, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	leaq	-1056(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1000, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$472, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	leaq	-1056(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-1060(%rbp), %eax
	movl	$1000, %r9d
	movq	%rcx, %r8
	movl	$16, %ecx
	movl	%eax, %edi
	call	do_shake_squeeze_dup_test
	movl	%eax, -4(%rbp)
	jmp	.L93
.L95:
	nop
.L93:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	shake_squeeze_dup_test, .-shake_squeeze_dup_test
	.section	.rodata
.LC33:
	.string	"shake_kat_test"
.LC34:
	.string	"shake_kat_digestfinal_test"
	.align 8
.LC35:
	.string	"shake_kat_digestfinal_xoflen_test"
.LC36:
	.string	"shake_absorb_test"
.LC37:
	.string	"shake_squeeze_kat_test"
.LC38:
	.string	"shake_squeeze_large_test"
.LC39:
	.string	"shake_squeeze_dup_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	shake_kat_test(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	shake_kat_digestfinal_test(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	shake_kat_digestfinal_xoflen_test(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	shake_absorb_test(%rip), %rdx
	leaq	.LC36(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	shake_squeeze_kat_test(%rip), %rsi
	leaq	.LC37(%rip), %rax
	movl	$1, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	shake_squeeze_large_test(%rip), %rsi
	leaq	.LC38(%rip), %rax
	movl	$1, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	shake_squeeze_dup_test(%rip), %rsi
	leaq	.LC39(%rip), %rax
	movl	$1, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
