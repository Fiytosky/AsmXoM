	.file	"eng_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"already loaded"
.LC1:
	.string	"argument is not a number"
.LC2:
	.string	"cmd not executable"
.LC3:
	.string	"command takes input"
.LC4:
	.string	"command takes no input"
.LC5:
	.string	"conflicting engine id"
.LC6:
	.string	"ctrl command not implemented"
.LC7:
	.string	"DSO failure"
.LC8:
	.string	"dso not found"
.LC9:
	.string	"engines section error"
.LC10:
	.string	"engine configuration error"
.LC11:
	.string	"engine is not in the list"
.LC12:
	.string	"engine section error"
.LC13:
	.string	"failed loading private key"
.LC14:
	.string	"failed loading public key"
.LC15:
	.string	"finish failed"
.LC16:
	.string	"'id' or 'name' missing"
.LC17:
	.string	"init failed"
.LC18:
	.string	"internal list error"
.LC19:
	.string	"invalid argument"
.LC20:
	.string	"invalid cmd name"
.LC21:
	.string	"invalid cmd number"
.LC22:
	.string	"invalid init value"
.LC23:
	.string	"invalid string"
.LC24:
	.string	"not initialised"
.LC25:
	.string	"not loaded"
.LC26:
	.string	"no control function"
.LC27:
	.string	"no index"
.LC28:
	.string	"no load function"
.LC29:
	.string	"no reference"
.LC30:
	.string	"no such engine"
.LC31:
	.string	"unimplemented cipher"
.LC32:
	.string	"unimplemented digest"
	.align 8
.LC33:
	.string	"unimplemented public key method"
.LC34:
	.string	"version incompatibility"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ENGINE_str_reasons, @object
	.size	ENGINE_str_reasons, 576
ENGINE_str_reasons:
	.quad	318767204
	.quad	.LC0
	.quad	318767237
	.quad	.LC1
	.quad	318767238
	.quad	.LC2
	.quad	318767239
	.quad	.LC3
	.quad	318767240
	.quad	.LC4
	.quad	318767207
	.quad	.LC5
	.quad	318767223
	.quad	.LC6
	.quad	318767208
	.quad	.LC7
	.quad	318767236
	.quad	.LC8
	.quad	318767252
	.quad	.LC9
	.quad	318767206
	.quad	.LC10
	.quad	318767209
	.quad	.LC11
	.quad	318767253
	.quad	.LC12
	.quad	318767232
	.quad	.LC13
	.quad	318767233
	.quad	.LC14
	.quad	318767210
	.quad	.LC15
	.quad	318767212
	.quad	.LC16
	.quad	318767213
	.quad	.LC17
	.quad	318767214
	.quad	.LC18
	.quad	318767247
	.quad	.LC19
	.quad	318767241
	.quad	.LC20
	.quad	318767242
	.quad	.LC21
	.quad	318767255
	.quad	.LC22
	.quad	318767254
	.quad	.LC23
	.quad	318767221
	.quad	.LC24
	.quad	318767216
	.quad	.LC25
	.quad	318767224
	.quad	.LC26
	.quad	318767248
	.quad	.LC27
	.quad	318767229
	.quad	.LC28
	.quad	318767234
	.quad	.LC29
	.quad	318767220
	.quad	.LC30
	.quad	318767250
	.quad	.LC31
	.quad	318767251
	.quad	.LC32
	.quad	318767205
	.quad	.LC33
	.quad	318767249
	.quad	.LC34
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_ENGINE_strings
	.type	ossl_err_load_ENGINE_strings, @function
ossl_err_load_ENGINE_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$318767204, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	ENGINE_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_ENGINE_strings, .-ossl_err_load_ENGINE_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
