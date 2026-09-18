	.file	"enginetest.c"
	.text
	.section	.rodata
.LC0:
	.string	"#%d: id = \"%s\", name = \"%s\""
.LC1:
	.string	"../test/enginetest.c"
	.text
	.type	display_engine_list, @function
display_engine_list:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$0, -28(%rbp)
	call	ENGINE_get_first@PLT
	movq	%rax, -24(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rcx
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %r9
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$36, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -24(%rbp)
.L2:
	cmpq	$0, -24(%rbp)
	jne	.L3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	display_engine_list, .-display_engine_list
	.section	.rodata
.LC2:
	.string	"new_h1 = ENGINE_new()"
.LC3:
	.string	"test_id0"
	.align 8
.LC4:
	.string	"ENGINE_set_id(new_h1, \"test_id0\")"
.LC5:
	.string	"First test item"
	.align 8
.LC6:
	.string	"ENGINE_set_name(new_h1, \"First test item\")"
.LC7:
	.string	"new_h2 = ENGINE_new()"
.LC8:
	.string	"test_id1"
	.align 8
.LC9:
	.string	"ENGINE_set_id(new_h2, \"test_id1\")"
.LC10:
	.string	"Second test item"
	.align 8
.LC11:
	.string	"ENGINE_set_name(new_h2, \"Second test item\")"
.LC12:
	.string	"new_h3 = ENGINE_new()"
.LC13:
	.string	"test_id2"
	.align 8
.LC14:
	.string	"ENGINE_set_id(new_h3, \"test_id2\")"
.LC15:
	.string	"Third test item"
	.align 8
.LC16:
	.string	"ENGINE_set_name(new_h3, \"Third test item\")"
.LC17:
	.string	"new_h4 = ENGINE_new()"
.LC18:
	.string	"test_id3"
	.align 8
.LC19:
	.string	"ENGINE_set_id(new_h4, \"test_id3\")"
.LC20:
	.string	"Fourth test item"
	.align 8
.LC21:
	.string	"ENGINE_set_name(new_h4, \"Fourth test item\")"
.LC22:
	.string	"Engines:"
.LC23:
	.string	"ENGINE_add(new_h1)"
.LC24:
	.string	"ENGINE_remove(ptr)"
.LC25:
	.string	"ENGINE_add(new_h3)"
.LC26:
	.string	"ENGINE_add(new_h2)"
.LC27:
	.string	"ENGINE_remove(new_h2)"
.LC28:
	.string	"ENGINE_add(new_h4)"
.LC29:
	.string	"ENGINE_remove(new_h3)"
.LC30:
	.string	"ENGINE_remove(new_h4)"
	.align 8
.LC31:
	.string	"Remove failed - probably no hardware support present"
.LC32:
	.string	"ENGINE_remove(new_h1)"
	.align 8
.LC33:
	.string	"About to beef up the engine-type list"
.LC34:
	.string	"id%d"
.LC35:
	.string	"Fake engine type %d"
.LC36:
	.string	"block[loop] = ENGINE_new()"
	.align 8
.LC37:
	.string	"ENGINE_set_id(block[loop], eid[loop])"
	.align 8
.LC38:
	.string	"ENGINE_set_name(block[loop], ename[loop])"
.LC39:
	.string	"ENGINE_add(block[loop])"
.LC40:
	.string	"Adding stopped at %d, (%s,%s)"
	.align 8
.LC41:
	.string	"About to empty the engine-type list"
	.text
	.type	test_engines, @function
test_engines:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$12600, %rsp
	.cfi_offset 3, -24
	movl	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-4160(%rbp), %rax
	movl	$4096, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	ENGINE_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC3(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$65, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC5(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$66, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	call	ENGINE_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$67, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC8(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	call	ENGINE_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$70, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC13(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC15(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	call	ENGINE_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC18(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC20(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$75, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	call	ENGINE_get_first@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$93, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$109, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L43
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L44
	call	ERR_clear_error@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$123, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	call	ENGINE_get_first@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L18
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	jne	.L18
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L18:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	display_engine_list
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$144, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$145, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -20(%rbp)
	jmp	.L21
.L24:
	movl	-20(%rbp), %edx
	leaq	.LC34(%rip), %rsi
	leaq	-12608(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	.LC1(%rip), %rcx
	leaq	-12608(%rbp), %rax
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -8256(%rbp,%rdx,8)
	movl	-20(%rbp), %edx
	leaq	.LC35(%rip), %rsi
	leaq	-12608(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	.LC1(%rip), %rcx
	leaq	-12608(%rbp), %rax
	movl	$153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -12352(%rbp,%rdx,8)
	call	ENGINE_new@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -4160(%rbp,%rdx,8)
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	movl	-20(%rbp), %eax
	cltq
	movq	-8256(%rbp,%rax,8), %rdx
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movl	-20(%rbp), %eax
	cltq
	movq	-12352(%rbp,%rax,8), %rdx
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$156, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	addl	$1, -20(%rbp)
.L21:
	cmpl	$511, -20(%rbp)
	jle	.L24
	movl	$0, -20(%rbp)
	jmp	.L25
.L28:
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L26
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ENGINE_get_name@PLT
	movq	%rax, %rbx
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	leaq	.LC40(%rip), %rdi
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L27
.L26:
	addl	$1, -20(%rbp)
.L25:
	cmpl	$511, -20(%rbp)
	jle	.L28
	nop
.L27:
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L29
.L31:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$170, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
.L29:
	call	ENGINE_get_first@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L31
	movl	$0, -20(%rbp)
	jmp	.L32
.L33:
	movl	-20(%rbp), %eax
	cltq
	movq	-8256(%rbp,%rax,8), %rax
	leaq	.LC1(%rip), %rcx
	movl	$175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	cltq
	movq	-12352(%rbp,%rax,8), %rax
	leaq	.LC1(%rip), %rcx
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -20(%rbp)
.L32:
	cmpl	$511, -20(%rbp)
	jle	.L33
	movl	$1, -24(%rbp)
	jmp	.L7
.L37:
	nop
	jmp	.L7
.L38:
	nop
	jmp	.L7
.L39:
	nop
	jmp	.L7
.L40:
	nop
	jmp	.L7
.L41:
	nop
	jmp	.L7
.L42:
	nop
	jmp	.L7
.L43:
	nop
	jmp	.L7
.L44:
	nop
	jmp	.L7
.L45:
	nop
	jmp	.L7
.L46:
	nop
	jmp	.L7
.L47:
	nop
	jmp	.L7
.L48:
	nop
	jmp	.L7
.L49:
	nop
.L7:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, -20(%rbp)
	jmp	.L34
.L35:
	movl	-20(%rbp), %eax
	cltq
	movq	-4160(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	addl	$1, -20(%rbp)
.L34:
	cmpl	$511, -20(%rbp)
	jle	.L35
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_engines, .-test_engines
	.local	test_rsa
	.comm	test_rsa,8,8
	.local	called_encrypt
	.comm	called_encrypt,4,4
	.type	test_encrypt, @function
test_encrypt:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$1, called_encrypt(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_encrypt, .-test_encrypt
	.type	test_pkey_meths, @function
test_pkey_meths:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L53
	movq	-24(%rbp), %rax
	leaq	rnid.3(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L54
.L53:
	cmpl	$6, -28(%rbp)
	jne	.L55
	movq	test_rsa(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L54
.L55:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_pkey_meths, .-test_pkey_meths
	.type	get_test_pkey, @function
get_test_pkey:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	call	RSA_new@PLT
	movq	%rax, -24(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L57
	cmpq	$0, -32(%rbp)
	je	.L57
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L58
.L57:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L59
.L58:
	leaq	e.2(%rip), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	n.1(%rip), %rax
	movl	$0, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	jne	.L60
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L59
.L60:
	movq	-32(%rbp), %rax
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	get_test_pkey, .-get_test_pkey
	.section	.rodata
.LC42:
	.string	"pkey = get_test_pkey()"
.LC43:
	.string	"tmp = OPENSSL_malloc(len)"
	.align 8
.LC44:
	.string	"ctx = EVP_PKEY_CTX_new(pkey, NULL)"
	.align 8
.LC45:
	.string	"EVP_PKEY_encrypt test: no redirection"
.LC46:
	.string	"0"
.LC47:
	.string	"EVP_PKEY_encrypt_init(ctx)"
	.align 8
.LC48:
	.string	"EVP_PKEY_encrypt(ctx, tmp, &len, pt, sizeof(pt))"
.LC49:
	.string	"called_encrypt"
.LC50:
	.string	"e = ENGINE_new()"
.LC51:
	.string	"Test redirect engine"
	.align 8
.LC52:
	.string	"ENGINE_set_id(e, \"Test redirect engine\")"
	.align 8
.LC53:
	.string	"ENGINE_set_name(e, \"Test redirect engine\")"
	.align 8
.LC54:
	.string	"ctx = EVP_PKEY_CTX_new(pkey, e)"
.LC55:
	.string	"EVP_PKEY_set1_engine(pkey, e)"
	.align 8
.LC56:
	.string	"test_rsa = EVP_PKEY_meth_new(EVP_PKEY_RSA, 0)"
	.align 8
.LC57:
	.string	"EVP_PKEY_encrypt test: redirection via EVP_PKEY_CTX_new()"
	.align 8
.LC58:
	.string	"EVP_PKEY_encrypt test: redirection via EVP_PKEY_set1_engine()"
	.text
	.type	test_redirect, @function
test_redirect:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movabsq	$8022916924116329800, %rax
	movq	%rax, -53(%rbp)
	movabsq	$2925166706251552, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	call	get_test_pkey
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$266, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$266, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L85
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$269, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L86
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L87
	leaq	-53(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$13, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$274, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L87
	movl	called_encrypt(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$275, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	call	ENGINE_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC51(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$282, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC51(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$291, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_engine@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$292, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L89
	movl	$0, %esi
	movl	$6, %edi
	call	EVP_PKEY_meth_new@PLT
	movq	%rax, test_rsa(%rip)
	movq	test_rsa(%rip), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$296, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L90
	leaq	test_pkey_meths(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_pkey_meths@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$301, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	movq	test_rsa(%rip), %rax
	leaq	test_encrypt(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_meth_set_encrypt@PLT
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$312, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$313, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$316, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L94
	leaq	-53(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$13, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$317, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L94
	movl	called_encrypt(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$318, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	movl	$0, called_encrypt(%rip)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$326, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$327, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L95
	leaq	-53(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$13, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$328, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L95
	movl	called_encrypt(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$329, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L95
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_engine@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L96
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$342, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$343, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-53(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$13, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$344, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L97
	movl	called_encrypt(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$345, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movl	$1, -28(%rbp)
	jmp	.L63
.L84:
	nop
	jmp	.L63
.L85:
	nop
	jmp	.L63
.L86:
	nop
	jmp	.L63
.L87:
	nop
	jmp	.L63
.L88:
	nop
	jmp	.L63
.L89:
	nop
	jmp	.L63
.L90:
	nop
	jmp	.L63
.L91:
	nop
	jmp	.L63
.L92:
	nop
	jmp	.L63
.L93:
	nop
	jmp	.L63
.L94:
	nop
	jmp	.L63
.L95:
	nop
	jmp	.L63
.L96:
	nop
	jmp	.L63
.L97:
	nop
.L63:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$354, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_redirect, .-test_redirect
	.section	.rodata
.LC59:
	.string	"r"
	.align 8
.LC60:
	.string	"b = BIO_new_file(test_get_argument(0), \"r\")"
	.align 8
.LC61:
	.string	"cert = PEM_read_bio_X509(b, NULL, NULL, NULL)"
.LC62:
	.string	"dupcert = X509_dup(cert)"
	.align 8
.LC63:
	.string	"pubkey = X509_get_X509_PUBKEY(cert)"
	.align 8
.LC64:
	.string	"duppubkey = X509_PUBKEY_dup(pubkey)"
.LC65:
	.string	"pubkey"
.LC66:
	.string	"duppubkey"
.LC67:
	.string	"X509_PUBKEY_get0(pubkey)"
.LC68:
	.string	"X509_PUBKEY_get0(duppubkey)"
.LC69:
	.string	"Test dummy engine"
	.align 8
.LC70:
	.string	"ENGINE_set_id(e, \"Test dummy engine\")"
	.align 8
.LC71:
	.string	"ENGINE_set_name(e, \"Test dummy engine\")"
	.align 8
.LC72:
	.string	"rsameth = RSA_meth_dup(RSA_get_default_method())"
.LC73:
	.string	"ENGINE_set_default_RSA(e)"
.LC74:
	.string	"BIO_seek(b, 0)"
	.text
	.type	test_x509_dup_w_engine, @function
test_x509_dup_w_engine:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, %rdx
	leaq	.LC59(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$367, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L116
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$368, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L116
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$372, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$377, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_dup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$378, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC65(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$379, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L118
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$380, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L118
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -32(%rbp)
	call	ENGINE_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$390, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L119
	leaq	.LC69(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$391, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	leaq	.LC69(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$392, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	call	RSA_get_default_method@PLT
	movq	%rax, %rdi
	call	RSA_meth_dup@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$395, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_RSA@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_RSA@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$403, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L122
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$404, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L122
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$408, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L123
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$411, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_dup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$412, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC65(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$413, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L124
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$414, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L124
	movl	$1, -52(%rbp)
	jmp	.L101
.L116:
	nop
	jmp	.L101
.L117:
	nop
	jmp	.L101
.L118:
	nop
	jmp	.L101
.L119:
	nop
	jmp	.L101
.L120:
	nop
	jmp	.L101
.L121:
	nop
	jmp	.L101
.L122:
	nop
	jmp	.L101
.L123:
	nop
	jmp	.L101
.L124:
	nop
.L101:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_unregister_RSA@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
.L114:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_meth_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_x509_dup_w_engine, .-test_x509_dup_w_engine
	.globl	global_init
	.type	global_init, @function
global_init:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$128, %edi
	call	OPENSSL_init_crypto@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	global_init, .-global_init
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC75:
	.string	"Error parsing test options\n"
.LC76:
	.string	"test_engines"
.LC77:
	.string	"test_redirect"
.LC78:
	.string	"test_x509_dup_w_engine"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L130
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$452, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L131
.L130:
	call	test_get_argument_count@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L132
	movl	$0, %eax
	jmp	.L131
.L132:
	leaq	test_engines(%rip), %rdx
	leaq	.LC76(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_redirect(%rip), %rdx
	leaq	.LC77(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_dup_w_engine(%rip), %rdx
	leaq	.LC78(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 4
	.type	rnid.3, @object
	.size	rnid.3, 4
rnid.3:
	.long	6
	.data
	.type	e.2, @object
	.size	e.2, 2
e.2:
	.string	"\021"
	.align 32
	.type	n.1, @object
	.size	n.1, 66
n.1:
	.base64	"AKo2q86IrP3/VVI8f8RSP5DvoA3zd0olny5itMXZnLWtswCgKF5TAZMODHD7aHaTnOYWzmJKEeAIbTQevKygofUA"
	.section	.rodata
.LC79:
	.string	"Usage: %s [options] certfile\n"
.LC80:
	.string	"Valid options are:\n"
.LC81:
	.string	"help"
.LC82:
	.string	"Display this summary"
.LC83:
	.string	"list"
	.align 8
.LC84:
	.string	"Display the list of tests available"
.LC85:
	.string	"test"
	.align 8
.LC86:
	.string	"Run a single test by id or name"
.LC87:
	.string	"iter"
	.align 8
.LC88:
	.string	"Run a single iteration of a test"
.LC89:
	.string	"indent"
	.align 8
.LC90:
	.string	"Number of tabs added to output"
.LC91:
	.string	"seed"
	.align 8
.LC92:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC79
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC80
	.quad	.LC81
	.long	500
	.long	45
	.quad	.LC82
	.quad	.LC83
	.long	501
	.long	45
	.quad	.LC84
	.quad	.LC85
	.long	502
	.long	115
	.quad	.LC86
	.quad	.LC87
	.long	503
	.long	110
	.quad	.LC88
	.quad	.LC89
	.long	504
	.long	112
	.quad	.LC90
	.quad	.LC91
	.long	505
	.long	110
	.quad	.LC92
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
