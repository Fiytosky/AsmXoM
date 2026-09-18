	.file	"uint_set.c"
	.text
	.type	ossl_list_uint_set_init, @function
ossl_list_uint_set_init:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ossl_list_uint_set_init, .-ossl_list_uint_set_init
	.type	ossl_list_uint_set_init_elem, @function
ossl_list_uint_set_init_elem:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ossl_list_uint_set_init_elem, .-ossl_list_uint_set_init_elem
	.type	ossl_list_uint_set_is_empty, @function
ossl_list_uint_set_is_empty:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ossl_list_uint_set_is_empty, .-ossl_list_uint_set_is_empty
	.type	ossl_list_uint_set_head, @function
ossl_list_uint_set_head:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ossl_list_uint_set_head, .-ossl_list_uint_set_head
	.type	ossl_list_uint_set_tail, @function
ossl_list_uint_set_tail:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ossl_list_uint_set_tail, .-ossl_list_uint_set_tail
	.type	ossl_list_uint_set_next, @function
ossl_list_uint_set_next:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ossl_list_uint_set_next, .-ossl_list_uint_set_next
	.type	ossl_list_uint_set_prev, @function
ossl_list_uint_set_prev:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ossl_list_uint_set_prev, .-ossl_list_uint_set_prev
	.type	ossl_list_uint_set_remove, @function
ossl_list_uint_set_remove:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L14
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L15
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L15:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L16:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L17:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ossl_list_uint_set_remove, .-ossl_list_uint_set_remove
	.type	ossl_list_uint_set_insert_head, @function
ossl_list_uint_set_insert_head:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L20:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ossl_list_uint_set_insert_head, .-ossl_list_uint_set_insert_head
	.type	ossl_list_uint_set_insert_tail, @function
ossl_list_uint_set_insert_tail:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L22:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L23:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ossl_list_uint_set_insert_tail, .-ossl_list_uint_set_insert_tail
	.type	ossl_list_uint_set_insert_before, @function
ossl_list_uint_set_insert_before:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L25:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L26
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L26:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ossl_list_uint_set_insert_before, .-ossl_list_uint_set_insert_before
	.type	ossl_list_uint_set_insert_after, @function
ossl_list_uint_set_insert_after:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L28:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L29
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L29:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ossl_list_uint_set_insert_after, .-ossl_list_uint_set_insert_after
	.globl	ossl_uint_set_init
	.type	ossl_uint_set_init, @function
ossl_uint_set_init:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_init
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	ossl_uint_set_init, .-ossl_uint_set_init
	.section	.rodata
.LC0:
	.string	"../ssl/quic/uint_set.c"
	.text
	.globl	ossl_uint_set_destroy
	.type	ossl_uint_set_destroy, @function
ossl_uint_set_destroy:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	%rax, -8(%rbp)
	jmp	.L32
.L33:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_next
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L32:
	cmpq	$0, -8(%rbp)
	jne	.L33
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ossl_uint_set_destroy, .-ossl_uint_set_destroy
	.type	uint_set_merge_adjacent, @function
uint_set_merge_adjacent:
.LFB48:
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
	movq	%rax, %rdi
	call	ossl_list_uint_set_prev
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L38
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L39
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_remove
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L34
.L38:
	nop
	jmp	.L34
.L39:
	nop
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	uint_set_merge_adjacent, .-uint_set_merge_adjacent
	.type	u64_min, @function
u64_min:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	u64_min, .-u64_min
	.type	u64_max, @function
u64_max:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	u64_max, .-u64_max
	.type	uint_range_overlaps, @function
uint_range_overlaps:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	u64_min
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	u64_max
	cmpq	%rax, %rbx
	setnb	%al
	movzbl	%al, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	uint_range_overlaps, .-uint_range_overlaps
	.type	create_set_item, @function
create_set_item:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$114, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_init_elem
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	create_set_item, .-create_set_item
	.globl	ossl_uint_set_insert
	.type	ossl_uint_set_insert, @function
ossl_uint_set_insert:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_is_empty
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_set_item
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L51
.L53:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_insert_head
	movl	$1, %eax
	jmp	.L51
.L52:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L54
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	cmpq	%rax, -32(%rbp)
	jne	.L55
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
	jmp	.L51
.L55:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_set_item
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L51
.L56:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_insert_tail
	movl	$1, %eax
	jmp	.L51
.L54:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L57
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L57
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_head
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_next
	movq	%rax, -8(%rbp)
	jmp	.L58
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_next
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_remove
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L58:
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$1, %eax
	jmp	.L51
.L57:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L62
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L62
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_prev
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L63
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-40(%rbp), %rax
	jb	.L63
	movl	$1, %eax
	jmp	.L51
.L63:
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	uint_range_overlaps
	testl	%eax, %eax
	je	.L64
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	u64_max
	movq	-64(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	.L65
.L67:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_prev
	movq	%rax, -24(%rbp)
.L65:
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	uint_range_overlaps
	testl	%eax, %eax
	jne	.L67
.L66:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	u64_min
	movq	-64(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L68
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_next
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_remove
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L68:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L69
	jmp	.L70
.L64:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L71
	cmpq	$0, -24(%rbp)
	je	.L72
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L71
.L72:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L73
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uint_set_merge_adjacent
	jmp	.L70
.L73:
	cmpq	$0, -24(%rbp)
	je	.L75
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	cmpq	%rax, -32(%rbp)
	jne	.L75
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uint_set_merge_adjacent
	jmp	.L70
.L75:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_set_item
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L51
.L76:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_insert_before
	jmp	.L70
.L71:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L62:
	cmpq	$0, -16(%rbp)
	jne	.L77
.L70:
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	ossl_uint_set_insert, .-ossl_uint_set_insert
	.globl	ossl_uint_set_remove
	.type	ossl_uint_set_remove, @function
ossl_uint_set_remove:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	%rax, -8(%rbp)
	jmp	.L81
.L88:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_prev
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L89
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L84
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L84
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_remove
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$280, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L85
.L84:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.L86
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L86
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L85
.L86:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L87
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L83
.L87:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L85
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L85
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	create_set_item
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_list_uint_set_insert_after
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L83
.L85:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L81:
	cmpq	$0, -8(%rbp)
	jne	.L88
	jmp	.L83
.L89:
	nop
.L83:
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	ossl_uint_set_remove, .-ossl_uint_set_remove
	.globl	ossl_uint_set_query
	.type	ossl_uint_set_query, @function
ossl_uint_set_query:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_is_empty
	testl	%eax, %eax
	je	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_tail
	movq	%rax, -8(%rbp)
	jmp	.L93
.L96:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L94
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L94
	movl	$1, %eax
	jmp	.L92
.L94:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L95
	movl	$0, %eax
	jmp	.L92
.L95:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_uint_set_prev
	movq	%rax, -8(%rbp)
.L93:
	cmpq	$0, -8(%rbp)
	jne	.L96
	movl	$0, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	ossl_uint_set_query, .-ossl_uint_set_query
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
