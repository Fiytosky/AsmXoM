	.file	"chacha_internal_test.c"
	.text
	.section	.rodata
	.align 32
	.type	key, @object
	.size	key, 32
key:
	.long	50462976
	.long	117835012
	.long	185207048
	.long	252579084
	.long	319951120
	.long	387323156
	.long	454695192
	.long	522067228
	.align 16
	.type	ivp, @object
	.size	ivp, 16
ivp:
	.long	0
	.long	0
	.long	50462976
	.long	117835012
	.align 32
	.type	ref, @object
	.size	ref, 1024
ref:
	.base64	"95ihifGV5mmCEF/7ZAu3dX9XnaMWAvyT7AGsVvhaw8E0pFR7cztGQTBCyUQASRdpBdO+WeocU/FZFhVcK+gkGjgAi5omvDWUHiREF3yK3maJ3pUmSYbZWIn7YOhGKcm9mlrLHMEYvlY+ubOkpHL4Lgmn53hJK1Yu9xMOiN/gMcedudT3x6iZFRuaR1Aytj/DhSRf4FTj3VqXpfV2/gZAJdPOBCxWarLFB7E424U+PWlZZgmWVGzJxKbq/cd3wEDXDq9G922tOXnlxTYMMxcWahyJTJSjcYdqlN92KP5OqvLMsn1aquCtetD51LatO1QJh0bUUk04QHpt6zq3j6t4"
	.base64	"yUITZou705TF3pO4UxeK3da5f5+h7D5WwAyd3/CkSiBCQRdaTKsPlhulPt6b35YLlPmCmx80FHJkKbNixbU445FSD0ibftjSCuP9SeniWeRDl1FNYYyWxIRr48aAvcEccdy74pzPgNYqCTj6VJOR5upX7L4mBnkOwV0iJK4wfBRCJrfE6ML5fSodZ4UtKb66EQ7dRFGXASBio5OpySgDrTtPMde8YDPM95Ms/tPwGQRNJZBZFndyhvgvmkzB/+Qw/9Hc/Cfe7TJ7n5Yw0vqWn7bwYDzRndmpUZ5nO8/NkBQSUpGkRmnvcoXnTtNym2d/gBw83wWMUJYxaLSWBDcW"
	.base64	"xzB82eDN0Tf8yw8FtHzbuVxfVIMWIsNlKjKyUx/jJrzW4rv1ahlPoZb70aVJUhEPUcc0M4ZfdmS4NmheNmSz2ERK+JokKAXhjJdfEUYySZb94XAHzz5uj052QCJTPtv+B9RzPki7Ny11sO9I7Jg+t4UyFhzFKeWruJg338ymJh27N8fF5qh0eL9B7oWlGMD076m96CjFpxuORll7Y0r9IE08UBM0I5w0FChe1y06kWnqu9TcJdUrt1FtO6cS11rYwK5dSTwZ44p3k556BY1xPpzMylgEX0NrQ0scgNNlRyQG45KVGYfbaQXIDUMdoYRRE1vn6CvKs1jLOXHmFAWy"
	.base64	"/xeYDW5+Z+hh4oIBwe4wtEEED9BoeNZQQslVgqQxgge/xwC+DOMoia7C/+UIXolnkQ2Hn6DowP+F/cUQuf8vv4fPyylXfWgJngT/oF91KnPTd8cNOovC2oDm54DsBXGCwzrR3jhyUiWKHhjm+tkQMnzn9C/R4eBRX5WG4vLvy59HKx29usNUpBYhUenZLHn7CLtN3FbxlEjAF1pG4ubEkf7HFBmqQ6NJvqdoqSx13mj9lZHmgGfzGXCU0/uH7YF4XqB15LZePkx4+B2pt1HF7+AkFSMBxI5jJFtVbExnr/hX5eoVqQjYOh2XBPjlXnNSsgtpS/mXApjmtarTPqIV"
	.ascii	"]\020]N"
.LC0:
	.string	"ref[j]"
.LC1:
	.string	"buf[j]"
	.align 8
.LC2:
	.string	"../test/chacha_internal_test.c"
.LC3:
	.string	"%d failed at %u (%02x)\n"
	.text
	.type	test_cha_cha_internal, @function
test_cha_cha_internal:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movl	%edi, -1044(%rbp)
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	leaq	-1040(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-8(%rbp), %eax
	movl	$1024, %edx
	subq	%rax, %rdx
	movl	-8(%rbp), %eax
	leaq	ref(%rip), %rcx
	addq	%rax, %rcx
	movl	-8(%rbp), %eax
	leaq	-1040(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %edx
	leaq	ivp(%rip), %rdi
	leaq	key(%rip), %rcx
	leaq	-1040(%rbp), %rsi
	leaq	-1040(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	leaq	ref(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %edi
	movl	-4(%rbp), %eax
	movzbl	-1040(%rbp,%rax), %eax
	movzbl	%al, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$175, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	jne	.L3
	movl	-4(%rbp), %eax
	movzbl	-1040(%rbp,%rax), %eax
	movzbl	%al, %esi
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$176, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L6
.L3:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$1023, -4(%rbp)
	jbe	.L5
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_cha_cha_internal, .-test_cha_cha_internal
	.section	.rodata
.LC4:
	.string	"test_cha_cha_internal"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_cha_cha_internal(%rip), %rsi
	leaq	.LC4(%rip), %rax
	movl	$1, %ecx
	movl	$1024, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
