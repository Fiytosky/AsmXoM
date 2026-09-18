	.file	"obj_xref.c"
	.text
	.type	sk_nid_triple_value, @function
sk_nid_triple_value:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	sk_nid_triple_value, .-sk_nid_triple_value
	.type	sk_nid_triple_new, @function
sk_nid_triple_new:
.LFB80:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	sk_nid_triple_new, .-sk_nid_triple_new
	.type	sk_nid_triple_free, @function
sk_nid_triple_free:
.LFB84:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	sk_nid_triple_free, .-sk_nid_triple_free
	.type	sk_nid_triple_push, @function
sk_nid_triple_push:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	sk_nid_triple_push, .-sk_nid_triple_push
	.type	sk_nid_triple_pop_free, @function
sk_nid_triple_pop_free:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	sk_nid_triple_pop_free, .-sk_nid_triple_pop_free
	.type	sk_nid_triple_find, @function
sk_nid_triple_find:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	sk_nid_triple_find, .-sk_nid_triple_find
	.type	sk_nid_triple_sort, @function
sk_nid_triple_sort:
.LFB98:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	sk_nid_triple_sort, .-sk_nid_triple_sort
	.section	.rodata
	.align 32
	.type	sigoid_srt, @object
	.size	sigoid_srt, 636
sigoid_srt:
	.long	7
	.long	3
	.long	6
	.long	8
	.long	4
	.long	6
	.long	42
	.long	41
	.long	6
	.long	65
	.long	64
	.long	6
	.long	66
	.long	41
	.long	116
	.long	70
	.long	64
	.long	67
	.long	96
	.long	95
	.long	6
	.long	104
	.long	4
	.long	19
	.long	113
	.long	64
	.long	116
	.long	115
	.long	64
	.long	19
	.long	119
	.long	117
	.long	6
	.long	396
	.long	257
	.long	6
	.long	416
	.long	64
	.long	408
	.long	668
	.long	672
	.long	6
	.long	669
	.long	673
	.long	6
	.long	670
	.long	674
	.long	6
	.long	671
	.long	675
	.long	6
	.long	791
	.long	0
	.long	408
	.long	792
	.long	0
	.long	408
	.long	793
	.long	675
	.long	408
	.long	794
	.long	672
	.long	408
	.long	795
	.long	673
	.long	408
	.long	796
	.long	674
	.long	408
	.long	802
	.long	675
	.long	116
	.long	803
	.long	672
	.long	116
	.long	807
	.long	809
	.long	811
	.long	808
	.long	809
	.long	812
	.long	852
	.long	809
	.long	850
	.long	853
	.long	809
	.long	851
	.long	912
	.long	0
	.long	912
	.long	936
	.long	64
	.long	946
	.long	937
	.long	675
	.long	946
	.long	938
	.long	672
	.long	946
	.long	939
	.long	673
	.long	946
	.long	940
	.long	674
	.long	946
	.long	941
	.long	64
	.long	947
	.long	942
	.long	675
	.long	947
	.long	943
	.long	672
	.long	947
	.long	944
	.long	673
	.long	947
	.long	945
	.long	674
	.long	947
	.long	985
	.long	982
	.long	979
	.long	986
	.long	983
	.long	980
	.long	1087
	.long	0
	.long	1087
	.long	1088
	.long	0
	.long	1088
	.long	1112
	.long	1096
	.long	408
	.long	1113
	.long	1097
	.long	408
	.long	1114
	.long	1098
	.long	408
	.long	1115
	.long	1099
	.long	408
	.long	1116
	.long	1096
	.long	6
	.long	1117
	.long	1097
	.long	6
	.long	1118
	.long	1098
	.long	6
	.long	1119
	.long	1099
	.long	6
	.long	1204
	.long	1143
	.long	1172
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	sigoid_srt_xref, @object
	.size	sigoid_srt_xref, 384
sigoid_srt_xref:
	.quad	sigoid_srt
	.quad	sigoid_srt+12
	.quad	sigoid_srt+84
	.quad	sigoid_srt+24
	.quad	sigoid_srt+48
	.quad	sigoid_srt+36
	.quad	sigoid_srt+108
	.quad	sigoid_srt+60
	.quad	sigoid_srt+96
	.quad	sigoid_srt+144
	.quad	sigoid_srt+360
	.quad	sigoid_srt+420
	.quad	sigoid_srt+72
	.quad	sigoid_srt+120
	.quad	sigoid_srt+132
	.quad	sigoid_srt+156
	.quad	sigoid_srt+288
	.quad	sigoid_srt+240
	.quad	sigoid_srt+384
	.quad	sigoid_srt+444
	.quad	sigoid_srt+168
	.quad	sigoid_srt+252
	.quad	sigoid_srt+396
	.quad	sigoid_srt+456
	.quad	sigoid_srt+180
	.quad	sigoid_srt+264
	.quad	sigoid_srt+408
	.quad	sigoid_srt+468
	.quad	sigoid_srt+192
	.quad	sigoid_srt+276
	.quad	sigoid_srt+228
	.quad	sigoid_srt+372
	.quad	sigoid_srt+432
	.quad	sigoid_srt+300
	.quad	sigoid_srt+312
	.quad	sigoid_srt+324
	.quad	sigoid_srt+336
	.quad	sigoid_srt+480
	.quad	sigoid_srt+492
	.quad	sigoid_srt+576
	.quad	sigoid_srt+528
	.quad	sigoid_srt+588
	.quad	sigoid_srt+540
	.quad	sigoid_srt+600
	.quad	sigoid_srt+552
	.quad	sigoid_srt+612
	.quad	sigoid_srt+564
	.quad	sigoid_srt+624
	.local	sig_app
	.comm	sig_app,8,8
	.local	sigx_app
	.comm	sigx_app,8,8
	.local	sig_lock
	.comm	sig_lock,8,8
	.text
	.type	sig_cmp, @function
sig_cmp:
.LFB141:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	sig_cmp, .-sig_cmp
	.type	sig_cmp_BSEARCH_CMP_FN, @function
sig_cmp_BSEARCH_CMP_FN:
.LFB142:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sig_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	sig_cmp_BSEARCH_CMP_FN, .-sig_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_sig, @function
OBJ_bsearch_sig:
.LFB143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	sig_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$12, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	OBJ_bsearch_sig, .-OBJ_bsearch_sig
	.type	sig_sk_cmp, @function
sig_sk_cmp:
.LFB144:
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
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	sig_sk_cmp, .-sig_sk_cmp
	.type	sigx_cmp, @function
sigx_cmp:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L21
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L21
	movl	-4(%rbp), %eax
	jmp	.L22
.L21:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	sigx_cmp, .-sigx_cmp
	.type	sigx_cmp_BSEARCH_CMP_FN, @function
sigx_cmp_BSEARCH_CMP_FN:
.LFB146:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sigx_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	sigx_cmp_BSEARCH_CMP_FN, .-sigx_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_sigx, @function
OBJ_bsearch_sigx:
.LFB147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	sigx_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	OBJ_bsearch_sigx, .-OBJ_bsearch_sigx
	.local	sig_init
	.comm	sig_init,4,4
	.local	o_sig_init_ossl_ret_
	.comm	o_sig_init_ossl_ret_,4,4
	.type	o_sig_init_ossl_, @function
o_sig_init_ossl_:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	o_sig_init
	movl	%eax, o_sig_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	o_sig_init_ossl_, .-o_sig_init_ossl_
	.type	o_sig_init, @function
o_sig_init:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, sig_lock(%rip)
	movq	sig_lock(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	o_sig_init, .-o_sig_init
	.type	obj_sig_init, @function
obj_sig_init:
.LFB150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	o_sig_init_ossl_(%rip), %rdx
	leaq	sig_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L31
	movl	o_sig_init_ossl_ret_(%rip), %eax
	jmp	.L33
.L31:
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	obj_sig_init, .-obj_sig_init
	.section	.rodata
.LC0:
	.string	"../crypto/objects/obj_xref.c"
	.text
	.type	ossl_obj_find_sigid_algs, @function
ossl_obj_find_sigid_algs:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -40(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L44
.L35:
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
	leaq	sigoid_srt(%rip), %rcx
	leaq	-24(%rbp), %rax
	movl	$53, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_sig
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	call	obj_sig_init
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L44
.L38:
	cmpl	$0, -40(%rbp)
	je	.L39
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786703, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L39:
	movq	sig_app(%rip), %rax
	testq	%rax, %rax
	je	.L40
	movq	sig_app(%rip), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_nid_triple_find
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L40
	movq	sig_app(%rip), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_nid_triple_value
	movq	%rax, -8(%rbp)
.L40:
	cmpl	$0, -40(%rbp)
	je	.L41
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L41:
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L44
.L37:
	cmpq	$0, -48(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L42:
	cmpq	$0, -56(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L43:
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	ossl_obj_find_sigid_algs, .-ossl_obj_find_sigid_algs
	.globl	OBJ_find_sigid_algs
	.type	OBJ_find_sigid_algs, @function
OBJ_find_sigid_algs:
.LFB152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %edi
	call	ossl_obj_find_sigid_algs
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	OBJ_find_sigid_algs, .-OBJ_find_sigid_algs
	.globl	OBJ_find_sigid_by_algs
	.type	OBJ_find_sigid_by_algs, @function
OBJ_find_sigid_by_algs:
.LFB153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L55
.L48:
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -16(%rbp)
	leaq	sigoid_srt_xref(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_sigx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	call	obj_sig_init
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L55
.L51:
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786703, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L52:
	movq	sigx_app(%rip), %rax
	testq	%rax, %rax
	je	.L53
	movq	sigx_app(%rip), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_nid_triple_find
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L53
	movq	sigx_app(%rip), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_nid_triple_value
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L53:
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L55
.L50:
	cmpq	$0, -40(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L54:
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	OBJ_find_sigid_by_algs, .-OBJ_find_sigid_by_algs
	.globl	OBJ_add_sigid
	.type	OBJ_add_sigid, @function
OBJ_add_sigid:
.LFB154:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L57
	cmpl	$0, -44(%rbp)
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L71
.L58:
	call	obj_sig_init
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L71
.L60:
	leaq	.LC0(%rip), %rax
	movl	$158, %edx
	movq	%rax, %rsi
	movl	$12, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L71
.L61:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786704, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$166, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L71
.L62:
	leaq	-20(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	ossl_obj_find_sigid_algs
	testl	%eax, %eax
	je	.L63
	movl	-16(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L64
	movl	-20(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L64
	movl	$1, %eax
	jmp	.L65
.L64:
	movl	$0, %eax
.L65:
	movl	%eax, -12(%rbp)
	jmp	.L66
.L63:
	movq	sig_app(%rip), %rax
	testq	%rax, %rax
	jne	.L67
	leaq	sig_sk_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_nid_triple_new
	movq	%rax, sig_app(%rip)
	movq	sig_app(%rip), %rax
	testq	%rax, %rax
	je	.L72
.L67:
	movq	sigx_app(%rip), %rax
	testq	%rax, %rax
	jne	.L68
	leaq	sigx_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_nid_triple_new
	movq	%rax, sigx_app(%rip)
	movq	sigx_app(%rip), %rax
	testq	%rax, %rax
	je	.L73
.L68:
	movq	sig_app(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_nid_triple_push
	testl	%eax, %eax
	je	.L74
	movq	sigx_app(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_nid_triple_push
	testl	%eax, %eax
	jne	.L70
	movq	$0, -8(%rbp)
	jmp	.L66
.L70:
	movq	sig_app(%rip), %rax
	movq	%rax, %rdi
	call	sk_nid_triple_sort
	movq	sigx_app(%rip), %rax
	movq	%rax, %rdi
	call	sk_nid_triple_sort
	movq	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L66
.L72:
	nop
	jmp	.L66
.L73:
	nop
	jmp	.L66
.L74:
	nop
.L66:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$204, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-12(%rbp), %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	OBJ_add_sigid, .-OBJ_add_sigid
	.type	sid_free, @function
sid_free:
.LFB155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	sid_free, .-sid_free
	.globl	OBJ_sigid_free
	.type	OBJ_sigid_free, @function
OBJ_sigid_free:
.LFB156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	sig_app(%rip), %rax
	leaq	sid_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_nid_triple_pop_free
	movq	sigx_app(%rip), %rax
	movq	%rax, %rdi
	call	sk_nid_triple_free
	movq	sig_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, sig_app(%rip)
	movq	$0, sigx_app(%rip)
	movq	$0, sig_lock(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	OBJ_sigid_free, .-OBJ_sigid_free
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"ossl_obj_find_sigid_algs"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"OBJ_find_sigid_by_algs"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"OBJ_add_sigid"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
