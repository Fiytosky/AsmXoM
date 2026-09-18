	.file	"bioprinttest.c"
	.text
	.local	justprint
	.comm	justprint,4,4
	.section	.rodata
.LC0:
	.string	"0.0000e+00"
.LC1:
	.string	"0.0000"
.LC2:
	.string	"0"
.LC3:
	.string	"0.0000E+00"
.LC4:
	.string	"6.7000e-01"
.LC5:
	.string	"0.6700"
.LC6:
	.string	"0.67"
.LC7:
	.string	"6.7000E-01"
.LC8:
	.string	"6.6667e-01"
.LC9:
	.string	"0.6667"
.LC10:
	.string	"6.6667E-01"
.LC11:
	.string	"6.6667e-04"
.LC12:
	.string	"0.0007"
.LC13:
	.string	"0.0006667"
.LC14:
	.string	"6.6667E-04"
.LC15:
	.string	"6.6667e-05"
.LC16:
	.string	"0.0001"
.LC17:
	.string	"6.667e-05"
.LC18:
	.string	"6.6667E-05"
.LC19:
	.string	"6.667E-05"
.LC20:
	.string	"6.6667e+00"
.LC21:
	.string	"6.6667"
.LC22:
	.string	"6.667"
.LC23:
	.string	"6.6667E+00"
.LC24:
	.string	"6.6667e+01"
.LC25:
	.string	"66.6667"
.LC26:
	.string	"66.67"
.LC27:
	.string	"6.6667E+01"
.LC28:
	.string	"6.6667e+02"
.LC29:
	.string	"666.6667"
.LC30:
	.string	"666.7"
.LC31:
	.string	"6.6667E+02"
.LC32:
	.string	"6.6667e+03"
.LC33:
	.string	"6666.6667"
.LC34:
	.string	"6667"
.LC35:
	.string	"6.6667E+03"
.LC36:
	.string	"6.6667e+04"
.LC37:
	.string	"66666.6667"
.LC38:
	.string	"6.667e+04"
.LC39:
	.string	"6.6667E+04"
.LC40:
	.string	"6.667E+04"
.LC41:
	.string	"-6.6667e+04"
.LC42:
	.string	"-66666.6667"
.LC43:
	.string	"-6.667e+04"
.LC44:
	.string	"-6.6667E+04"
.LC45:
	.string	"-6.667E+04"
.LC46:
	.string	"0.00000e+00"
.LC47:
	.string	"0.00000"
.LC48:
	.string	"0.00000E+00"
.LC49:
	.string	"6.70000e-01"
.LC50:
	.string	"0.67000"
.LC51:
	.string	"6.70000E-01"
.LC52:
	.string	"6.66667e-01"
.LC53:
	.string	"0.66667"
.LC54:
	.string	"6.66667E-01"
.LC55:
	.string	"6.66667e-04"
.LC56:
	.string	"0.00067"
.LC57:
	.string	"0.00066667"
.LC58:
	.string	"6.66667E-04"
.LC59:
	.string	"6.66667e-05"
.LC60:
	.string	"0.00007"
.LC61:
	.string	"6.66667E-05"
.LC62:
	.string	"6.66667e+00"
.LC63:
	.string	"6.66667"
.LC64:
	.string	"6.66667E+00"
.LC65:
	.string	"6.66667e+01"
.LC66:
	.string	"66.66667"
.LC67:
	.string	"66.667"
.LC68:
	.string	"6.66667E+01"
.LC69:
	.string	"6.66667e+02"
.LC70:
	.string	"666.66667"
.LC71:
	.string	"666.67"
.LC72:
	.string	"6.66667E+02"
.LC73:
	.string	"6.66667e+03"
.LC74:
	.string	"6666.66667"
.LC75:
	.string	"6666.7"
.LC76:
	.string	"6.66667E+03"
.LC77:
	.string	"6.66667e+04"
.LC78:
	.string	"66666.66667"
.LC79:
	.string	"66667"
.LC80:
	.string	"6.66667E+04"
.LC81:
	.string	"-6.66667e+04"
.LC82:
	.string	"-66666.66667"
.LC83:
	.string	"-66667"
.LC84:
	.string	"-6.66667E+04"
.LC85:
	.string	"  0.0000e+00"
.LC86:
	.string	"      0.0000"
.LC87:
	.string	"           0"
.LC88:
	.string	"  0.0000E+00"
.LC89:
	.string	"  6.7000e-01"
.LC90:
	.string	"      0.6700"
.LC91:
	.string	"        0.67"
.LC92:
	.string	"  6.7000E-01"
.LC93:
	.string	"  6.6667e-01"
.LC94:
	.string	"      0.6667"
.LC95:
	.string	"  6.6667E-01"
.LC96:
	.string	"  6.6667e-04"
.LC97:
	.string	"      0.0007"
.LC98:
	.string	"   0.0006667"
.LC99:
	.string	"  6.6667E-04"
.LC100:
	.string	"  6.6667e-05"
.LC101:
	.string	"      0.0001"
.LC102:
	.string	"   6.667e-05"
.LC103:
	.string	"  6.6667E-05"
.LC104:
	.string	"   6.667E-05"
.LC105:
	.string	"  6.6667e+00"
.LC106:
	.string	"      6.6667"
.LC107:
	.string	"       6.667"
.LC108:
	.string	"  6.6667E+00"
.LC109:
	.string	"  6.6667e+01"
.LC110:
	.string	"     66.6667"
.LC111:
	.string	"       66.67"
.LC112:
	.string	"  6.6667E+01"
.LC113:
	.string	"  6.6667e+02"
.LC114:
	.string	"    666.6667"
.LC115:
	.string	"       666.7"
.LC116:
	.string	"  6.6667E+02"
.LC117:
	.string	"  6.6667e+03"
.LC118:
	.string	"   6666.6667"
.LC119:
	.string	"        6667"
.LC120:
	.string	"  6.6667E+03"
.LC121:
	.string	"  6.6667e+04"
.LC122:
	.string	"  66666.6667"
.LC123:
	.string	"   6.667e+04"
.LC124:
	.string	"  6.6667E+04"
.LC125:
	.string	"   6.667E+04"
.LC126:
	.string	" -6.6667e+04"
.LC127:
	.string	" -66666.6667"
.LC128:
	.string	"  -6.667e+04"
.LC129:
	.string	" -6.6667E+04"
.LC130:
	.string	"  -6.667E+04"
.LC131:
	.string	" 0.00000e+00"
.LC132:
	.string	"     0.00000"
.LC133:
	.string	" 0.00000E+00"
.LC134:
	.string	" 6.70000e-01"
.LC135:
	.string	"     0.67000"
.LC136:
	.string	" 6.70000E-01"
.LC137:
	.string	" 6.66667e-01"
.LC138:
	.string	"     0.66667"
.LC139:
	.string	" 6.66667E-01"
.LC140:
	.string	" 6.66667e-04"
.LC141:
	.string	"     0.00067"
.LC142:
	.string	"  0.00066667"
.LC143:
	.string	" 6.66667E-04"
.LC144:
	.string	" 6.66667e-05"
.LC145:
	.string	"     0.00007"
.LC146:
	.string	" 6.66667E-05"
.LC147:
	.string	" 6.66667e+00"
.LC148:
	.string	"     6.66667"
.LC149:
	.string	" 6.66667E+00"
.LC150:
	.string	" 6.66667e+01"
.LC151:
	.string	"    66.66667"
.LC152:
	.string	"      66.667"
.LC153:
	.string	" 6.66667E+01"
.LC154:
	.string	" 6.66667e+02"
.LC155:
	.string	"   666.66667"
.LC156:
	.string	"      666.67"
.LC157:
	.string	" 6.66667E+02"
.LC158:
	.string	" 6.66667e+03"
.LC159:
	.string	"  6666.66667"
.LC160:
	.string	"      6666.7"
.LC161:
	.string	" 6.66667E+03"
.LC162:
	.string	" 6.66667e+04"
.LC163:
	.string	" 66666.66667"
.LC164:
	.string	"       66667"
.LC165:
	.string	" 6.66667E+04"
.LC166:
	.string	"      -66667"
.LC167:
	.string	"0e+00"
.LC168:
	.string	"0E+00"
.LC169:
	.string	"7e-01"
.LC170:
	.string	"1"
.LC171:
	.string	"0.7"
.LC172:
	.string	"7E-01"
.LC173:
	.string	"7e-04"
.LC174:
	.string	"7E-04"
.LC175:
	.string	"7e-05"
.LC176:
	.string	"7E-05"
.LC177:
	.string	"7e+00"
.LC178:
	.string	"7"
.LC179:
	.string	"7E+00"
.LC180:
	.string	"7e+01"
.LC181:
	.string	"67"
.LC182:
	.string	"7E+01"
.LC183:
	.string	"7e+02"
.LC184:
	.string	"667"
.LC185:
	.string	"7E+02"
.LC186:
	.string	"7e+03"
.LC187:
	.string	"7E+03"
.LC188:
	.string	"7e+04"
.LC189:
	.string	"7E+04"
.LC190:
	.string	"-7e+04"
.LC191:
	.string	"-7E+04"
.LC192:
	.string	"0.000000e+00"
.LC193:
	.string	"0.000000"
.LC194:
	.string	"0.000000E+00"
.LC195:
	.string	"6.700000e-01"
.LC196:
	.string	"0.670000"
.LC197:
	.string	"6.700000E-01"
.LC198:
	.string	"6.666667e-01"
.LC199:
	.string	"0.666667"
.LC200:
	.string	"6.666667E-01"
.LC201:
	.string	"6.666667e-04"
.LC202:
	.string	"0.000667"
.LC203:
	.string	"0.000666667"
.LC204:
	.string	"6.666667E-04"
.LC205:
	.string	"6.666667e-05"
.LC206:
	.string	"0.000067"
.LC207:
	.string	"6.666667E-05"
.LC208:
	.string	"6.666667e+00"
.LC209:
	.string	"6.666667"
.LC210:
	.string	"6.666667E+00"
.LC211:
	.string	"6.666667e+01"
.LC212:
	.string	"66.666667"
.LC213:
	.string	"6.666667E+01"
.LC214:
	.string	"6.666667e+02"
.LC215:
	.string	"666.666667"
.LC216:
	.string	"666.667"
.LC217:
	.string	"6.666667E+02"
.LC218:
	.string	"6.666667e+03"
.LC219:
	.string	"6666.666667"
.LC220:
	.string	"6666.67"
.LC221:
	.string	"6.666667E+03"
.LC222:
	.string	"6.666667e+04"
.LC223:
	.string	"66666.666667"
.LC224:
	.string	"66666.7"
.LC225:
	.string	"6.666667E+04"
.LC226:
	.string	"-6.666667e+04"
.LC227:
	.string	"-66666.666667"
.LC228:
	.string	"-66666.7"
.LC229:
	.string	"-6.666667E+04"
.LC230:
	.string	"000.0000"
.LC231:
	.string	"00000000"
.LC232:
	.string	"000.6700"
.LC233:
	.string	"00000.67"
.LC234:
	.string	"000.6667"
.LC235:
	.string	"000.0007"
.LC236:
	.string	"000.0001"
.LC237:
	.string	"006.6667"
.LC238:
	.string	"0006.667"
.LC239:
	.string	"066.6667"
.LC240:
	.string	"00066.67"
.LC241:
	.string	"000666.7"
.LC242:
	.string	"00006667"
	.section	.data.rel.local,"aw"
	.align 32
	.type	fpexpected, @object
	.size	fpexpected, 3080
fpexpected:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC2
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC6
	.quad	.LC8
	.quad	.LC9
	.quad	.LC9
	.quad	.LC10
	.quad	.LC9
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC13
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC22
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC26
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC30
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC34
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC2
	.quad	.LC48
	.quad	.LC2
	.quad	.LC49
	.quad	.LC50
	.quad	.LC6
	.quad	.LC51
	.quad	.LC6
	.quad	.LC52
	.quad	.LC53
	.quad	.LC53
	.quad	.LC54
	.quad	.LC53
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC57
	.quad	.LC59
	.quad	.LC60
	.quad	.LC15
	.quad	.LC61
	.quad	.LC18
	.quad	.LC62
	.quad	.LC63
	.quad	.LC21
	.quad	.LC64
	.quad	.LC21
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC67
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC71
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC75
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC79
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC83
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC87
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC91
	.quad	.LC93
	.quad	.LC94
	.quad	.LC94
	.quad	.LC95
	.quad	.LC94
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC98
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.quad	.LC107
	.quad	.LC108
	.quad	.LC107
	.quad	.LC109
	.quad	.LC110
	.quad	.LC111
	.quad	.LC112
	.quad	.LC111
	.quad	.LC113
	.quad	.LC114
	.quad	.LC115
	.quad	.LC116
	.quad	.LC115
	.quad	.LC117
	.quad	.LC118
	.quad	.LC119
	.quad	.LC120
	.quad	.LC119
	.quad	.LC121
	.quad	.LC122
	.quad	.LC123
	.quad	.LC124
	.quad	.LC125
	.quad	.LC126
	.quad	.LC127
	.quad	.LC128
	.quad	.LC129
	.quad	.LC130
	.quad	.LC131
	.quad	.LC132
	.quad	.LC87
	.quad	.LC133
	.quad	.LC87
	.quad	.LC134
	.quad	.LC135
	.quad	.LC91
	.quad	.LC136
	.quad	.LC91
	.quad	.LC137
	.quad	.LC138
	.quad	.LC138
	.quad	.LC139
	.quad	.LC138
	.quad	.LC140
	.quad	.LC141
	.quad	.LC142
	.quad	.LC143
	.quad	.LC142
	.quad	.LC144
	.quad	.LC145
	.quad	.LC100
	.quad	.LC146
	.quad	.LC103
	.quad	.LC147
	.quad	.LC148
	.quad	.LC106
	.quad	.LC149
	.quad	.LC106
	.quad	.LC150
	.quad	.LC151
	.quad	.LC152
	.quad	.LC153
	.quad	.LC152
	.quad	.LC154
	.quad	.LC155
	.quad	.LC156
	.quad	.LC157
	.quad	.LC156
	.quad	.LC158
	.quad	.LC159
	.quad	.LC160
	.quad	.LC161
	.quad	.LC160
	.quad	.LC162
	.quad	.LC163
	.quad	.LC164
	.quad	.LC165
	.quad	.LC164
	.quad	.LC81
	.quad	.LC82
	.quad	.LC166
	.quad	.LC84
	.quad	.LC166
	.quad	.LC167
	.quad	.LC2
	.quad	.LC2
	.quad	.LC168
	.quad	.LC2
	.quad	.LC169
	.quad	.LC170
	.quad	.LC171
	.quad	.LC172
	.quad	.LC171
	.quad	.LC169
	.quad	.LC170
	.quad	.LC171
	.quad	.LC172
	.quad	.LC171
	.quad	.LC173
	.quad	.LC2
	.quad	.LC12
	.quad	.LC174
	.quad	.LC12
	.quad	.LC175
	.quad	.LC2
	.quad	.LC175
	.quad	.LC176
	.quad	.LC176
	.quad	.LC177
	.quad	.LC178
	.quad	.LC178
	.quad	.LC179
	.quad	.LC178
	.quad	.LC180
	.quad	.LC181
	.quad	.LC180
	.quad	.LC182
	.quad	.LC182
	.quad	.LC183
	.quad	.LC184
	.quad	.LC183
	.quad	.LC185
	.quad	.LC185
	.quad	.LC186
	.quad	.LC34
	.quad	.LC186
	.quad	.LC187
	.quad	.LC187
	.quad	.LC188
	.quad	.LC79
	.quad	.LC188
	.quad	.LC189
	.quad	.LC189
	.quad	.LC190
	.quad	.LC83
	.quad	.LC190
	.quad	.LC191
	.quad	.LC191
	.quad	.LC192
	.quad	.LC193
	.quad	.LC2
	.quad	.LC194
	.quad	.LC2
	.quad	.LC195
	.quad	.LC196
	.quad	.LC6
	.quad	.LC197
	.quad	.LC6
	.quad	.LC198
	.quad	.LC199
	.quad	.LC199
	.quad	.LC200
	.quad	.LC199
	.quad	.LC201
	.quad	.LC202
	.quad	.LC203
	.quad	.LC204
	.quad	.LC203
	.quad	.LC205
	.quad	.LC206
	.quad	.LC59
	.quad	.LC207
	.quad	.LC61
	.quad	.LC208
	.quad	.LC209
	.quad	.LC63
	.quad	.LC210
	.quad	.LC63
	.quad	.LC211
	.quad	.LC212
	.quad	.LC25
	.quad	.LC213
	.quad	.LC25
	.quad	.LC214
	.quad	.LC215
	.quad	.LC216
	.quad	.LC217
	.quad	.LC216
	.quad	.LC218
	.quad	.LC219
	.quad	.LC220
	.quad	.LC221
	.quad	.LC220
	.quad	.LC222
	.quad	.LC223
	.quad	.LC224
	.quad	.LC225
	.quad	.LC224
	.quad	.LC226
	.quad	.LC227
	.quad	.LC228
	.quad	.LC229
	.quad	.LC228
	.quad	.LC0
	.quad	.LC230
	.quad	.LC231
	.quad	.LC3
	.quad	.LC231
	.quad	.LC4
	.quad	.LC232
	.quad	.LC233
	.quad	.LC7
	.quad	.LC233
	.quad	.LC8
	.quad	.LC234
	.quad	.LC234
	.quad	.LC10
	.quad	.LC234
	.quad	.LC11
	.quad	.LC235
	.quad	.LC13
	.quad	.LC14
	.quad	.LC13
	.quad	.LC15
	.quad	.LC236
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC237
	.quad	.LC238
	.quad	.LC23
	.quad	.LC238
	.quad	.LC24
	.quad	.LC239
	.quad	.LC240
	.quad	.LC27
	.quad	.LC240
	.quad	.LC28
	.quad	.LC29
	.quad	.LC241
	.quad	.LC31
	.quad	.LC241
	.quad	.LC32
	.quad	.LC33
	.quad	.LC242
	.quad	.LC35
	.quad	.LC242
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.section	.rodata
.LC243:
	.string	"%zu"
.LC244:
	.string	"18446744073709551615"
.LC245:
	.string	"%zi"
.LC246:
	.string	"-9223372036854775808"
	.section	.data.rel.local
	.align 32
	.type	zu_data, @object
	.size	zu_data, 96
zu_data:
	.quad	-1
	.quad	.LC243
	.quad	.LC244
	.quad	-9223372036854775808
	.quad	.LC245
	.quad	.LC246
	.quad	0
	.quad	.LC243
	.quad	.LC2
	.quad	0
	.quad	.LC245
	.quad	.LC2
	.section	.rodata
.LC247:
	.string	"data->expected"
.LC248:
	.string	"bio_buf"
.LC249:
	.string	"../test/bioprinttest.c"
	.text
	.type	test_zu, @function
test_zu:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	zu_data(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-96(%rbp), %rsi
	leaq	.LC247(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC249(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_zu, .-test_zu
	.section	.rodata
.LC250:
	.string	"%ju"
.LC251:
	.string	"%jx"
.LC252:
	.string	"ffffffffffffffff"
.LC253:
	.string	"9223372036854775808"
.LC254:
	.string	"%ji"
	.section	.data.rel.local
	.align 32
	.type	jf_data, @object
	.size	jf_data, 96
jf_data:
	.quad	-1
	.quad	.LC250
	.quad	.LC244
	.quad	-1
	.quad	.LC251
	.quad	.LC252
	.quad	-9223372036854775808
	.quad	.LC250
	.quad	.LC253
	.quad	-9223372036854775808
	.quad	.LC254
	.quad	.LC246
	.text
	.type	test_j, @function
test_j:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	jf_data(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-96(%rbp), %rsi
	leaq	.LC247(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC249(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L8
.L6:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_j, .-test_j
	.section	.rodata
.LC255:
	.string	""
.LC256:
	.string	"12"
.LC257:
	.string	"08"
	.section	.data.rel.local
	.align 32
	.type	pw_params, @object
	.size	pw_params, 112
pw_params:
	.long	4
	.zero	4
	.quad	.LC255
	.long	5
	.zero	4
	.quad	.LC255
	.long	4
	.zero	4
	.quad	.LC256
	.long	5
	.zero	4
	.quad	.LC256
	.long	0
	.zero	4
	.quad	.LC255
	.long	-1
	.zero	4
	.quad	.LC255
	.long	4
	.zero	4
	.quad	.LC257
	.section	.rodata
.LC258:
	.string	"%%%s.%d%s"
.LC259:
	.string	"%%%s%s"
.LC260:
	.string	"    /*  %d.%02d */ { \"%s\""
.LC261:
	.string	", \"%s\""
.LC262:
	.string	"result"
.LC263:
	.string	"fpexpected[test][sub][i]"
	.align 8
.LC264:
	.string	"test %d format=|%s| exp=|%s|, ret=|%s|"
.LC265:
	.string	" },"
	.text
	.type	dofptest, @function
dofptest:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -180(%rbp)
	movl	%esi, -184(%rbp)
	movsd	%xmm0, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	%ecx, -204(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L10
.L16:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	fspecs.1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -204(%rbp)
	js	.L11
	movq	-16(%rbp), %rdi
	movl	-204(%rbp), %ecx
	movq	-200(%rbp), %rdx
	leaq	.LC258(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L12
.L11:
	movq	-16(%rbp), %rcx
	movq	-200(%rbp), %rdx
	leaq	.LC259(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L12:
	movq	-192(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rcx, %xmm0
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	BIO_snprintf@PLT
	movl	justprint(%rip), %eax
	testl	%eax, %eax
	je	.L13
	cmpl	$0, -8(%rbp)
	jne	.L14
	leaq	-176(%rbp), %rcx
	movl	-184(%rbp), %edx
	movl	-180(%rbp), %eax
	leaq	.LC260(%rip), %rdi
	movl	%eax, %esi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L14:
	leaq	-176(%rbp), %rax
	leaq	.LC261(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L13:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-180(%rbp), %eax
	cltq
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$55, %rax, %rsi
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	fpexpected(%rip), %rax
	movq	(%rdx,%rax), %rsi
	leaq	-176(%rbp), %rdi
	leaq	.LC262(%rip), %rcx
	leaq	.LC263(%rip), %rdx
	leaq	.LC249(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$217, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L15
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-180(%rbp), %eax
	cltq
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$55, %rax, %rsi
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	fpexpected(%rip), %rax
	movq	(%rdx,%rax), %r8
	leaq	-96(%rbp), %rsi
	movl	-180(%rbp), %eax
	leaq	.LC264(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	subq	$8, %rsp
	leaq	-176(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	%eax, %ecx
	movl	$218, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
.L15:
	addl	$1, -8(%rbp)
.L10:
	cmpl	$4, -8(%rbp)
	jle	.L16
	movl	justprint(%rip), %eax
	testl	%eax, %eax
	je	.L17
	leaq	.LC265(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L17:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	dofptest, .-dofptest
	.section	.rodata
.LC267:
	.string	"    {"
	.align 8
.LC269:
	.string	"dofptest(i, t++, 0.0, pwp->w, pwp->p)"
	.align 8
.LC271:
	.string	"dofptest(i, t++, 0.67, pwp->w, pwp->p)"
	.align 8
.LC272:
	.string	"dofptest(i, t++, frac, pwp->w, pwp->p)"
	.align 8
.LC274:
	.string	"dofptest(i, t++, frac / 1000, pwp->w, pwp->p)"
	.align 8
.LC276:
	.string	"dofptest(i, t++, frac / 10000, pwp->w, pwp->p)"
	.align 8
.LC278:
	.string	"dofptest(i, t++, 6.0 + frac, pwp->w, pwp->p)"
	.align 8
.LC280:
	.string	"dofptest(i, t++, 66.0 + frac, pwp->w, pwp->p)"
	.align 8
.LC282:
	.string	"dofptest(i, t++, 666.0 + frac, pwp->w, pwp->p)"
	.align 8
.LC284:
	.string	"dofptest(i, t++, 6666.0 + frac, pwp->w, pwp->p)"
	.align 8
.LC286:
	.string	"dofptest(i, t++, 66666.0 + frac, pwp->w, pwp->p)"
	.align 8
.LC288:
	.string	"dofptest(i, t++, -66666.0 - frac, pwp->w, pwp->p)"
.LC289:
	.string	"    },"
	.text
	.type	test_fp, @function
test_fp:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movsd	.LC266(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	pw_params(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	justprint(%rip), %eax
	testl	%eax, %eax
	je	.L20
	leaq	.LC267(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L20:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	leal	1(%rax), %esi
	movl	%esi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	.LC268(%rip), %rsi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC269(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$236, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	leal	1(%rax), %esi
	movl	%esi, -4(%rbp)
	movq	.LC270(%rip), %rsi
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC271(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$237, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	leal	1(%rax), %esi
	movl	%esi, -4(%rbp)
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC272(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$238, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm0
	movsd	.LC273(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC274(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm0
	movsd	.LC275(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC276(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm1
	movsd	.LC277(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC278(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$241, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm1
	movsd	.LC279(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC280(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$242, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm1
	movsd	.LC281(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC282(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$243, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm1
	movsd	.LC283(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC284(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	-16(%rbp), %xmm1
	movsd	.LC285(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC286(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$245, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movsd	.LC287(%rip), %xmm0
	subsd	-16(%rbp), %xmm0
	movq	%xmm0, %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	movl	%edi, -4(%rbp)
	movl	-36(%rbp), %edi
	movq	%rsi, %xmm0
	movl	%eax, %esi
	call	dofptest
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC288(%rip), %rdx
	leaq	.LC249(%rip), %rdi
	movl	%eax, %ecx
	movl	$246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	movl	%eax, -28(%rbp)
	movl	justprint(%rip), %eax
	testl	%eax, %eax
	je	.L23
	leaq	.LC289(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L23:
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_fp, .-test_fp
	.section	.rodata
.LC291:
	.string	"%f\n"
.LC292:
	.string	"-1"
	.align 8
.LC293:
	.string	"BIO_snprintf(buf, sizeof(buf), \"%f\\n\", 2 * (double)ULONG_MAX)"
	.text
	.type	test_big, @function
test_big:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	.LC290(%rip), %rdx
	leaq	.LC291(%rip), %rcx
	leaq	-80(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rcx, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	BIO_snprintf@PLT
	movl	%eax, %esi
	leaq	.LC292(%rip), %rcx
	leaq	.LC293(%rip), %rdx
	leaq	.LC249(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$257, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L28
.L26:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_big, .-test_big
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB473:
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
.LFE473:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC294:
	.string	"test_big"
.LC295:
	.string	"test_fp"
.LC296:
	.string	"test_zu"
.LC297:
	.string	"test_j"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L32
.L37:
	cmpl	$1, -4(%rbp)
	je	.L33
	cmpl	$0, -4(%rbp)
	jle	.L34
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L34
	jmp	.L38
.L33:
	movl	$1, justprint(%rip)
	jmp	.L32
.L38:
	jmp	.L32
.L34:
	movl	$0, %eax
	jmp	.L36
.L32:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L37
	leaq	test_big(%rip), %rdx
	leaq	.LC294(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fp(%rip), %rsi
	leaq	.LC295(%rip), %rax
	movl	$1, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_zu(%rip), %rsi
	leaq	.LC296(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_j(%rip), %rsi
	leaq	.LC297(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.globl	bio_out
	.bss
	.align 8
	.type	bio_out, @object
	.size	bio_out, 8
bio_out:
	.zero	8
	.globl	bio_err
	.align 8
	.type	bio_err, @object
	.size	bio_err, 8
bio_err:
	.zero	8
	.local	tap_level
	.comm	tap_level,4,4
	.text
	.globl	test_open_streams
	.type	test_open_streams, @function
test_open_streams:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_open_streams, .-test_open_streams
	.globl	test_adjust_streams_tap_level
	.type	test_adjust_streams_tap_level, @function
test_adjust_streams_tap_level:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, tap_level(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_adjust_streams_tap_level, .-test_adjust_streams_tap_level
	.globl	test_close_streams
	.type	test_close_streams, @function
test_close_streams:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_close_streams, .-test_close_streams
	.section	.rodata
.LC298:
	.string	"%*s# "
	.text
	.globl	test_vprintf_stdout
	.type	test_vprintf_stdout, @function
test_vprintf_stdout:
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	tap_level(%rip), %edx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC255(%rip), %rcx
	leaq	.LC298(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	%eax, %ebx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	addl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_vprintf_stdout, .-test_vprintf_stdout
	.globl	test_vprintf_stderr
	.type	test_vprintf_stderr, @function
test_vprintf_stderr:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	tap_level(%rip), %edx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC255(%rip), %rcx
	leaq	.LC298(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	%eax, %ebx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	addl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_vprintf_stderr, .-test_vprintf_stderr
	.globl	test_flush_stdout
	.type	test_flush_stdout, @function
test_flush_stdout:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_flush_stdout, .-test_flush_stdout
	.globl	test_flush_stderr
	.type	test_flush_stderr, @function
test_flush_stderr:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_flush_stderr, .-test_flush_stderr
	.section	.rodata
.LC299:
	.string	"%*s"
	.text
	.globl	test_vprintf_tapout
	.type	test_vprintf_tapout, @function
test_vprintf_tapout:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	tap_level(%rip), %edx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC255(%rip), %rcx
	leaq	.LC299(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	%eax, %ebx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	addl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_vprintf_tapout, .-test_vprintf_tapout
	.globl	test_vprintf_taperr
	.type	test_vprintf_taperr, @function
test_vprintf_taperr:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	tap_level(%rip), %edx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC255(%rip), %rcx
	leaq	.LC299(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	%eax, %ebx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	addl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_vprintf_taperr, .-test_vprintf_taperr
	.globl	test_flush_tapout
	.type	test_flush_tapout, @function
test_flush_tapout:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_flush_tapout, .-test_flush_tapout
	.globl	test_flush_taperr
	.type	test_flush_taperr, @function
test_flush_taperr:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_flush_taperr, .-test_flush_taperr
	.section	.rodata
.LC300:
	.string	"e"
.LC301:
	.string	"f"
.LC302:
	.string	"g"
.LC303:
	.string	"E"
.LC304:
	.string	"G"
	.section	.data.rel.local
	.align 32
	.type	fspecs.1, @object
	.size	fspecs.1, 40
fspecs.1:
	.quad	.LC300
	.quad	.LC301
	.quad	.LC302
	.quad	.LC303
	.quad	.LC304
	.section	.rodata
.LC305:
	.string	"Usage: %s [options]\n"
.LC306:
	.string	"Valid options are:\n"
.LC307:
	.string	"help"
.LC308:
	.string	"Display this summary"
.LC309:
	.string	"list"
	.align 8
.LC310:
	.string	"Display the list of tests available"
.LC311:
	.string	"test"
	.align 8
.LC312:
	.string	"Run a single test by id or name"
.LC313:
	.string	"iter"
	.align 8
.LC314:
	.string	"Run a single iteration of a test"
.LC315:
	.string	"indent"
	.align 8
.LC316:
	.string	"Number of tabs added to output"
.LC317:
	.string	"seed"
	.align 8
.LC318:
	.string	"Seed value to randomize tests with"
.LC319:
	.string	"expected"
.LC320:
	.string	"Output values"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 240
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC305
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC306
	.quad	.LC307
	.long	500
	.long	45
	.quad	.LC308
	.quad	.LC309
	.long	501
	.long	45
	.quad	.LC310
	.quad	.LC311
	.long	502
	.long	115
	.quad	.LC312
	.quad	.LC313
	.long	503
	.long	110
	.quad	.LC314
	.quad	.LC315
	.long	504
	.long	112
	.quad	.LC316
	.quad	.LC317
	.long	505
	.long	110
	.quad	.LC318
	.quad	.LC319
	.long	1
	.long	45
	.quad	.LC320
	.quad	0
	.zero	16
	.section	.rodata
	.align 8
.LC266:
	.long	1431655765
	.long	1071994197
	.align 8
.LC268:
	.long	0
	.long	0
	.align 8
.LC270:
	.long	-687194767
	.long	1072001187
	.align 8
.LC273:
	.long	0
	.long	1083129856
	.align 8
.LC275:
	.long	0
	.long	1086556160
	.align 8
.LC277:
	.long	0
	.long	1075314688
	.align 8
.LC279:
	.long	0
	.long	1079017472
	.align 8
.LC281:
	.long	0
	.long	1082445824
	.align 8
.LC283:
	.long	0
	.long	1085934080
	.align 8
.LC285:
	.long	0
	.long	1089488544
	.align 8
.LC287:
	.long	0
	.long	-1057995104
	.align 8
.LC290:
	.long	0
	.long	1140850688
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
