	.file	"speed.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
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
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.data
	.align 32
	.type	test512, @object
	.size	test512, 318
test512:
	.base64	"MIIBOgIBAAJBANYzucj7Tzx9wAGG0OegVfKVk8xPt1tnW5RoyTQV3qUuHDPCbvw0XnETt9bu2KVlBXKHqLB3/lf1/F9Vg4fdV0kCAwEAAQJBAKf3kcUPhFfcB/dqf2BSs3LxZh99lzuetgqPjM9CIwAE1CgOHJDEESUlpZOlL3AC34GcSQOg+G1ULibeqoVZqDECIQDrR9c79sPdWkbFuSuaoAmPpvvzeHozcJ0PQmsTaCTTFQIhAOkQsLMN4oJod4pufNq8PlOD+9Yi57WuboDaAFWXwdBlAiBM+HOxakkpYR9GEA3zx+dY14gVXpSbv3uiQlhFQQzLAQIgEhG6"
	.base64	"MVedPREOW4wvX+ICTwVHjBWOs1Y/uPut1PT8EMUCIBihKZlb2cjU/El6KiEsSeRP6+9R8att+0sU6UtStYIs"
	.align 32
	.type	test1024, @object
	.size	test1024, 608
test1024:
	.base64	"MIICXAIBAAKBgQDcmEPoPUNb5AXN0Kk+y4N19rWln2vpNEEpGPpqVU1w/OyuhzgKIKnARXduV2BX9O2WIsuP4TM6Fx/tN6Vv66a8EoAdU71w6yF2PskvGkUkgv/NWTIGLhI7I3jtEj3gjflnTzdORwJMLcBPH7OU4UEuLZAQ/IKRiw8i1PL8LKtTVQIDAQABAoGAK8w/j1i6iwAW9uo68DDQBRfasOuaLU8msNY4wev12D0fcPd/9OLPUVF5iProMg57LZfy+ronxZzZxeuKeVI8ZDR9ws8ox07VQwvRpsptAy1yI7xtBfoWCS8uXLbudN3SSI42DAY9TeUQgutq"
	.base64	"80uf1u0RsW7s9P6OdZQgL8usRvECQQD5jKOFsd0pr2XBM/OVxVJoC9Tx5Q4Cn0/6d9xGnsem5BYp2rAHz1upEordYwreLoxmi4zcGaN+9DvQGoykwuHTAkEA4kwF8gSGTmFD27C5loZSLMqNe6sLEw1+OFviLnsO5xmZOOfyIb2FheP9KHcgMXEs0P/7Lq+FtIbK87vKqg+VNwJADkGaleizWc5LYd417Dh5nLgQUkFjq4KubwCp9N7dSQt+uKVlqQyPj/kfNcaSuF6wZqtSQMC2Nmp9gEYEAuWfQQJBAMCtzE4h7h0kkfungI2atrMuj8Lhgt9pGLRx/6Zl3u2E"
	.base64	"jUK3syFpVhwHYFEpBP80Bt25Zyx8BJMORhW7Krcb54cCQHjaXQdRDBZ6nykghA1C+tcA2Hd+sLBr1ltTuJt6zccruGpjqftvpHK/TF0AFLr6WYjt5OCMouwUfi3i8EZJlUU="
	.align 32
	.type	test2048, @object
	.size	test2048, 1191
test2048:
	.base64	"MIIEowIBAAKCAQEAwMDOPjxTZz9PxS+kwlovWP0nUmroz0pzR40lD18DJnjv8CIS095HshwLOGMabIV6gMaPoEGvYsRnMoj4ppz1Ix3krD8p+ezhiyYDLLKr8321yknAjxzfMzpg2jywFvipEo9krCMMaWSXXZnUCYObYdOs8N7dXp9ElNs6TZfoUin325QHRZB4HjELgPdXrRx5xcsysM7NdLPilMV4LzQaRfeMUqW8jezRLzE78ElZXoidFZI1MsHnYexQSHy6Bfn4+KeMg+hmW+v+2E/dbTbAspAPuFL5BJtALCfWNo7CG0TzktUVnpq8830D1wIUIOkQkv35"
	.base64	"/I/lGOGVzJ5gpvo4TQIDAQABAoIBAADDww20J5CNS7+4hKrQuMddmb5V9j58SSDLio4ZDmYkrK8DM5frldU7D0BWBFDR5r6ECyXTnOKDbPViXborfT16bOHSDlSTgAGRUQnoW45HvWTkDgODVc9aN/AltX0h12nfb8LPEMmKQJ96cMDo6MDmmhUKjU5Gy3rbs8uDAsTwq+sCAQ4j/B3EvdSqXTFGmc6e+AR1EGfEU0dE+sIlc37QjlnRslr0xxiSLzmrzaO1wrnHuRufSPoTxphNyoScBsrniQEExGz9KVk15/PdzmRZvyETqZ8Oxf+9MwDsrGsR71FerQcV3rhf"
	.base64	"xrmjImVGgxTf0PFEiuGcIzO0lzPma4ECgYEA7BKnWXRq3j6t2DaAUKLVIYEH8dCR8mwSL50aJvgwZd/owJtqMJiCh+yiVodib+ef9lbmcY9JhpNaTTRY/tkEE695t60R0TCaFAag+rdV3GxaTCxZVvbona8KeJkGBp7nnFFVQ/w7bAu/LUGnr7fg6CgYtBPR5pfQn2qAyt0afhUCgYEA0QYMH+PQq9bKfLx9EzXOJ83YSVFjZA/KBhL8Bz6vYW3iUzknrsMRnpQBT+PzZ/l3+eeVOm/iIHM+pHoo1GGX9hegIxArzoRXfiUf9KhU0mWUzJUKqzDBWR9hjrlr1065"
	.base64	"g0N5hRG8D64lIAW80kihaAmE9hKaZrkru3YDF0ZOl1kCgYAJTPrW5WVIeEO1HwCTLLck6MZ9WnBFkshso83h9ylA+j9bR0Q5wehynnoO2qqgKgn9VJMjqjeFW8zU+dj/wWENvX4YJHNtQHLxkwlIl2yEkKhGFAE5EeU8QScydSTtodkSKYoocYmNyjCwAcQvghkUTHAcuCMu6JBJl5KXa3qduQKBgA8OoXb2oUSPr3x204e7u4MQiAEYFNHTdVkkqvUWpemd0czu9BXZxX4n6URJBnK5/NOKxCw2fRKbWqrche5urVSz9PwxoQY6cFcM85VbPuj9Gk/2eJNGatcx"
	.base64	"tIRkhQk4iZKUHL/iPCrg/5mj8CsxwjbNYL+dLXQy6JyTbruRe/3ZAoGBAKJxJTjrKuk3zf5EzpA/UoeEUhuujSKUzjjmBIh2hZrTFAnlaZr/WJICan18Hiz9qMoyFE8NhA03Q7/kXRLIJJEnjUbZVFPnYnGoK3FBjXX4OqBhKUam5YL6OtkI+vxj/WswvPROnowlDLZV5zzUTgv9i8MOHZxEV48fhvfVG+SV"
	.align 32
	.type	test3072, @object
	.size	test3072, 1767
test3072:
	.base64	"MIIG4wIBAAKCAYEAvDsjwDOni6rKo4yU8kxSCIWA/DYV+gMGttY/YIqJDboaUQsS6nF39jowIT0k+C7QFzqFlCVCif9qaN8fhq6lu5p59mmU/t7+zhsurh2Ry7nxLdgAglGO+f2s8Q5/t5WFNfnLvl/TWOOhVJ4wsY0Bl4IGjnf7zlAvv/H/VwpCA/0Ouh7KhcGbpZ0JDum7xXNHDTk8ZAaaeT9Qh5wYLWIB/O3BWCghlB75LZZP0Lzx4Ir6TbZ4St4XWbAioJrTcLbCvryWykFfWE7O72RF3T+BksxAefwZ4rx3L0P7jq2CSguxvAmKgMMP79IG00sMf65gPy5S"
	.base64	"tOTCXKZxwBOcyqYNE9e3FJQ/DYsGcC8Vgo1HRaYAihSR3i9QF+MdNCmM5Fd0KjqCZSb3jcwbj6/lheW+hda3BOj11HTiVBTdWM8fEYqfgqIB+cLfe4Sx2FtwuyTn0Cp1PVWsRemrxoSK520mEom1Z+hGnUYa+i3AW2BGi7cyA/917p883bY1ToK9mXNRAgMBAAECggGAQu6kn8u+YCOzOsTake4hnXYbj5OL7QL2eD1m++VHJuJuSTMu3r7KcXvvcWJUqwu6YwgkR7GYH4n7RJ9Sjom71SHxDHYuzRJueMuhpbhOB6tu32ZXh/+IX8ycmnsVXyqD29WfZWqdtJX8"
	.base64	"4CIAHqKNVlqeCjsQByTsVcyvhzvWjaSGgBhC250kw5c7iVoDswpy0XjwyICwnTyuXgpbbofTPSUuAzMB/bGl2VgBua/2Mmo45zljPPwMQZAoQAPN+96AdCGqrljplxiFWD0r1mH26LxtKvO46oxkRMbTnwB7slIYEQSWtwW7wjhbpwqEtk8CY6RXAOPe5PKzVdkAqdJcaZ/lgE8jfNmnd0q7CW1FAs8ykP0QtrOT2TsdV2a1s7FuU18EYCnN6LirYoIzQMf4ZGAOqwY+oKNiET9nXSSeYCncTNUT7j23hJMntWr58N1QrEY85tXs97efIzmciIxaYj+NStfrXh5J"
	.base64	"+KlTEXXQQx7HKSKAH8WDjSAEh39XjPWhAoHBAPeq9aUA29YR/AdtIiQrS8VnDzel24844gVDmkQFP6msTJg8cjjDiTNYc1HMXS+PbT+hIp77mrS4eZWvg89atxQUDFGKEebWIR4XE9NpejrVrz+4JQHLK+b8A9jU9yDgIe8aymHrjpZFjlzmgQstBTL5QWK0M5gQOs3weosaSNc7AfUYZY88wjE706cXX3wM5yUYWgjhCYkTp8USq4gwzQb5um/KnIraPlOQ1xYu/Lyt1j3AZkwCPTH9bNsc35YzIwKBwQDCkEfE+1nwxRR1Kfp3oY3UkKENPxaI40yPjxiMnIrV"
	.base64	"p0GZ84COsbhj2D+V0NAr9eaT6P7Qc9W9tO5RGWoQysi6pE2EVDgXtdCodSLFG2GmUYhj8E/RiNkWSTDhqEfJMB1cddiJth1F2A+UibPkUfoh/2+2MG8zJLwJmOkgAgve/8UGtiijoQfo4dLC8dEja0w6roXs+f+nmyW4lR2oFIFPeU/WOV3mX9I0VIseQEwVWkXODLDfoRe4sGqCpZeScPsCgcB3RkQrBPDadarUwMAyfw9ssCdp+1xz60celeITZBu20R3KK0IvCCxpJ+3RtQQjxYUtoaKUwkNNSZJ0fiSSlfOZndYY5s+cRf+JCEAqDqAo+YP+weZAqOIpybDo"
	.base64	"mheyI370MgjJg7IVuMXJA9Gd2j6ov9W3fWVjlF1dlLTPjQcLcIWOzgMLKo2zPEbAL8dybJxdBw9FO2tmMqsXg9hMLIRxGY+qCv+890IQ6K5NJq/dBjMpZiFd9a4XBx+Hnq4nHdUCgcBWF0+aivnePuZxfZS1sMe4YhLRcLQA+ErdTx02wuHv7iVqAMRG377Od1aTbSVf/lv74OI3zLmsSs4VFqDHM2OkqqUeQ8HaQ/pDQCmVfCs2U+d9CU3YUqx0XwiBIVw6Ws7zJbYeIXZMfHFQcaonAlsjBgshW8cooz2NJZsqLZ2hHB3LfXj4Bn4gfyQqXKQE/ypo4Oaj2G9W"
	.base64	"c6E6TskjoYcianR4P0QcdxPlUe+JADxqSlqO9TCik36Sm4VVr/4kr1cCgcEApMJqWUXqcX1Mr6/WVZdzxaE89lkjth9enJYPl2aCkUg2cAJn3jSmlXtRQ2akFkVZEts1GUu/HavzP7S0b2awZ8Z3LEaoA2SaE51AIlZ2Gnwe4tp/Cc8Q4/L0KjtGx2Gb70oYYIwycbndrKDGjT+rwyEs65GPx0MNDGeeq+aNti1BykPYyzD7O0ANEJuxVZNzi2DvwO7Apnp5kP1MJdRPZ773hjxdK32XPaKRpQZp9nq4d+ZwqdiGS6bPZx0zz/4+"
	.align 32
	.type	test4096, @object
	.size	test4096, 2349
test4096:
	.base64	"MIIJKQIBAAKCAgEAwHGsGhOIgkM7UVdxjbYrgmUhU18oKU+NfIq5RLMoQU/T+mr4uShQOWdTLDzXy5ZBQDK763CuH7Bl9zrZIv0Qrr0C4t3zwnk8xvx1u69OOjbCT+ol3xMWSyD+S2kWxH8aQ6YXG7kK8wmGKInPLNDUga/GbeYhje7v6ty3xjtjnw6tiXgjGL9wfoTgN+zbjpw+ahnMmXLmtX1t+uXT5JC1srIScE7K+BD4oxTCSBnrYJm7Kh+xerE9JPugKdq9G9ekv+9gLSLKZZjxxOHJAmsWKC+hqnkA2tx8Q/dCPKDvaPffuWn7jgHtAUK1TlemJrjQe1Zt"
	.base64	"A8ZAjIwqVdecNQCUk+wD6yLvd7t5Ez8VoY/K3/3TuOHUzAk/PCzb0Ul/OAeDbesIZukGRBKslSKQI2fUCMz0t9zMh9SsaTVMtTk2zaTSlcoNxdrCxSIyKAjj0os4MNyMdU9q7HqsFj6o1GpF4ahPLoA0qlQbApV9im3MecrypC6N+/4VURAOTYixx/R52/C0VkQ3ylrBjEisrkiAgwE/3tnTLFFGsUG2xpFy+YNVG4y683PlLHRQOr7FL6eybYyeE3ejE81tjEXh/Au3aeknvGXD+pvQ7/7oH7NeNPSM6vzTgb89MLK0AehDD7oCI0J2gjFzke0HRmENOYNAznrU"
	.base64	"24AsHw3RNNSS49TxwgECAwEAAQKCAgEAl2zabupPz6/3TNnxkAB32/KXdnK5t0fRnN3LSjNuyXV25uSlMYx3E7QpzfVSF+/zCADjvS681FKI6TB1CwL1zYkMbFcZJz0ehbTBLx2SAFx2KUuk4RKzyAn+DnhyYcthbzmRlU7VPsePuPY2/pyTmjglevRKEtSgE735HRI+ITn7cuAFPcPlUKhdhaPqXxyyP+ptA5FV2BkKIRIW2RLE5gcYWyakru0rt6bt+K3sd+Z/T3YAwPoVkrQsIsLraq0UBbLlip6Fg8wE8VZ4RF7e4GAaZXkxIwW7Af/dLrezqnTgpZSvS95Y"
	.base64	"D1XeM/bj1jQ2V9Z5kS6+O9lOtp0hXNNIFH9KxGCpKfhTf4gRLbXFLW/uhQv3jZq+sELyLnGvGTFt7M1vKyPftECvLArDG319Ax1L87XghdjfkWsKaffyaWZb8c9Gfelw+m1+dU6pd+aMAvcUTaVBjz/BYh5xXji01ubhS8IsMIOBb0kulubJmvddCaBVAqU6JSPQksOj4w4SL03v81VavuYZhjGrdZrT8CzFQZLZH18RjHUcY9ACgCxoy5P7UXNJtGDa4iavqUYSuOxQ3RIGX85Z5vYc4FQQrfbNmMwP+8tBFJ3t5LR0XwlgxxL2ezyPpyC85LHv66STxQbKmied"
	.base64	"h/PeyuXn9hwBZVv7GXluCCbFyCgOtjsHCMECggEBAOgcc6a44A5tjRu5U+1YlOYdYBRcdkPEWBnEJOi8GzsLEyRFVA7MN/DgY33D9/uBdIHEDxohSK/OwcSUGAZEjdPSIi0tPlox3JWO9EH8WMlAkhdf49qsnj8cKmtYX0h4ILGvJJs8IIuTJZ7ma7wTQhRsNjH/etHBGiYUf6l2pwz4zO0HatLfYu4KfITLSZCyAw2iggZ38c1n8kchAj9DIfBGMGJRcrHnSMZnEs2e1hXlIe36jzCmQf62+o80FBnoEfeldz63+TkHjGcqq3sI+LAGqOovj/rMzEDO83BPP3/i"
	.base64	"DOp2SjVOR60rp5dddEOXkNL72fmWATMF7XsDBa34SQMCggEBANRAF2YQkpXI7GKpesuTjuZT1IBIJ0tBzmHfv5SkPXEDC+0lcZik1tVKV/VsG9ohfTVFs/Nq2dND6FxUHIMbtF/ylyQu3EDekiNZjrzSofLgTN0L0eeuZby19VuY6dfCtw5VcQ48CiRrpuYUYRH9M0KZK4R3dJKR9Xl5z62OBO+AHlf0FPU1CXSyE3FYa+oyXfPTdkg5ECOEnb6Sd0rtcD4aomyzgQDDyeRSyCSIDEGth1rqo3qFHF4xf8M1xvoQyHUQxJaZ5/4BtHTbtBHDyIz29ztmUPzb68pH"
	.base64	"hYnhZdliNDxw2C60L2U8SqYq58fYQY+KQ79C8k28/J4nlft1/6sCggEAQS9EV20SF1syxrdsV3qKDnnvcqho2i045LuN9gJlz1YT4RrLOYCmsTIDHt27NdmsQ4kxCJCSXjU9e5xvhssX3YXk7TUIjsH0BdhoxmM89//3RzM5xT63Dlg1nYHq+GosHFpoeGQRa8E+Tnq9hMsPwraFHdN2xZNqaYlWNNxKm7z/qA1uNZxgpyMwxwZkOYuUie66f2CN+raXdtxRSjzrOhQsIGBpSob+jCGESVSzIOEBf1jff7UhUYxHn5Hrlz7yVM8WRvnZtudkydBU6i+hz6V/KI2E"
	.base64	"7NU5A3ZbLY5D8gEkyW/A9WlvfbWF0l9/eEAHfwkVtR8oZRDkGajGno3cywKCAQATAe5WgJNwAH9S0pShmIRKkiVMm6mRLsJ5t1zjxdWOwlQWF61VmyV2EmNQIi9YWHlrBOP5n48EQWeUpR+sihWcJhBs+BlXYdc6fTGwLTi9lGKtxPo2QkLwJGdlnYsLfG+CRBqMyMmru0xF/Hs47jDh/O+NvFjfK10NVOBJTZeZjyKog75Au1AueCgPlXiMj5gkVsKX8yxD0gOCZoFyX1MW7LGxBF5AIEh7PwKXauuWEiE1/h9HwJXqxYoIhE9eY5RgD3Fbf0rsT2DGukok8SCL"
	.base64	"py46zo3gJx21jrQhxeKmFgpRg1WI0TARY9XXja4WEoLEhQBOJ4OlfJAu5aKj00xjAoIBAQCGCJiYpQAFOXfZZrPPyqBxs1DOPbGTlTXE1C6Q3w/8YMGUaGFDypojSh5Fcpm1HmGNdw+gu9d3tCoVEYgts1ZhXmrtpEZKP1AR1rq215VlU8Ohj+Cj9Rz9r25D1xen04EbpN/gl4pGA9NGDoNITtICy8CteZWMlrpANBFxXukR+cVKXpGd9ZJP68ZwAi09BKrpOo7VqK33zg0WsuwKnPWUObmK/B75zPJfITF0cmtkrjVhjQ3L59o5yvMhZguV1wp8yqGpWuis4HFU"
	.base64	"ryjP1XCJ4POeQ2yNe5kBaE2hRUYMQ7zMLN3FRshODr7tuSarLtvrj//bsMZVr/gqkZ1QRCEX"
	.align 32
	.type	test7680, @object
	.size	test7680, 4365
test7680:
	.base64	"MIIRCQIBAAKCA8EA4ydGmbUXq/plBXoGgRTOQyFJDwjxcLTBENGH+CmRNmYtvnsdogsgONmOeCfPtUVYPfTa8NwhF1LNaOKBrIhhELywf+TzeLcobF9cwo09sIdBFS4JX+oGf+k1GJBQrfa5/TMCGpmepX0sOyTnMTVzmrD+A/zGmHjZZpWlErwegrzxxTHNprEMAr9/t69f1u33wVmGOjWVVCGNarPRK3H18WYAsYjuO6RBUhr1DjK2v1KrUVWRMk+vkaz3/447K2HpbR1ogJB5NJbKSUN8iU5eMbXOAZsJr5IGJOciNcyiC/tbh2Vx/2Q++egzoMNOskGYVOsT"
	.base64	"mfsyeH7aT9NGarV4gT8EE19nr4ilng3F8+dMUfVRSqRYZNmiMlQ2zjjYwg4NYI4yf5CKvIi+asBHDwJB/zt+xaYzHRnR1WdsvxawfoAQv3/d0PTDlCyaLNppTtZ7QE0qJ8ta5S0/fVGdn3DeULHT0jhNHMrCHoDQNoIE5hd5ny7J7SvVG/p9GoC1Di8Fvkob/gqtAd6RyPmBvsev54ftnbhsrWXtXtNnjGI65/1n4LtXr1brSlhurfK+w3Ap+OtoRaC9zaW02QG3ROuX8wxW5CbQpbGjSW6I8iLie1g62VKksUxcfPCIe58G6TJO8mSDi6LqHSXxjRaL4KvS6eRr"
	.base64	"fXaYIlMxa8zx5R3XpbDqazgUDAYQJ9gz85qulN0LtG3lkd3xDyeklFXw3gcp5j8mGaHd0QaZ2lQjPPVcLpapISMlLm/x+RFU5Xu5HxHinmthi6OLwSCb+1Hvu7n2r2azLCXvdsu/epMv4RdWwQAztdmRBTHMcs1Kk5rjIUKeuE5sJ5PwfyLb5bOj9+eAu5HK9+hSuBFkZiWU+G8LO7f/gJ426YguqwW/mZ8rT8axE1sG/wp7vH8HoDXCLUQ+rUTLRxgmcXsXyW21S8/fFCxs3yHOk0k0aUn9PnFb+gfFfl5UGjymKbW/DfHGpGHWFx3woniPvH4MtPAeBeq1rWiV"
	.base64	"Cye0KXxwKpoKOdR2t3IwXq6cSlXHRtdfvhBhJRh6n9MFPW+aHuwrA+BJapzW28Kh4Qq7MULIQ058qXxg6r7xi+iykIMUIeSzDXxjPJhVxkSmqB5Ct4movbg0PQmAmXOfrxdW8nM+Hm7pGKBbac79PXeBlTvx3ibpJ++SKpfclaWjsPuWiU/mwUIL/bRtCp+bMdghOIrutlwSqLQHeUGnfxN0rQvuKFKsL00wHMWmpWFCveFP0+xm8mP0k9s1LTtxJQne2kba4qej382/WAUlAgMBAAECggPAX9UVGwnkp8Cm2A2oKtMdRgMH8JjkS5lmjnLnu1HGGr429FK6qL+q"
	.base64	"43EdgyHApohP9yuTJuSn7VAYqvRMov6SfN4uVHbCJR6YpkgBOW8fJJebZJUcjWONRG+d3/QapZoe02yuqYw/+y949qbWBtO3Jv8e243MN01c4sOldeb5tEyEb55YVcgB+jLSbitF8sZIrUDYuTwb+PeC0w5z47FbgnF3P282muDsUfhfhJLuuH7nGhRQgnpN5tajdiSKX/4Z3df3W64YBJDNXOVk6ASxBqXd+J1xE6o2f2En9KyVfRqZfeDVnFqtmv9UsLFVRS0ZWFIo3eC1ZVKXRfArmB9hbJ2qWYX5l3u965WB+ymM8FLf7e6yADI1FKikypH/GLeW+zJiqaDQ"
	.base64	"d0P1mdHu6K0aLNTr4fUBQXjAJxlQLroi0euzpScL7Pkmfh/nF585qHIiY3lqnIlVmrRhQbyqFDcpA8BSTjFEjy4XgYj0ztpBuNUUkYzK0g2ZBgnCt+iu+gHqmWJott/IJ66/sJtbGqLiWnrlS5If/3OuFkB4Qii7E168cXp4PtgbwizW3Po5cviiLIscXau4B8euKZNov2HppDeDfRPHGPB9pCBHFGiVRlZt1XvhUY+WwXs1CXqJDt8S1eGcKpSVQ5NIpiPm2PK4DrptYQOvQGMrL+5hTMRwPXjBT44LmwY1bW2DN7s5fX8zk8Trjvza8FT+HcTTg5nfZe4AfYYn"
	.base64	"1Dpr5oKOWC0DOO9sgocYO0fnvOFYcE1GljRglhUJPIRAr4AydccjbPsdV3MZCegaTAJcfk6+dfhz/y1UGVX19BvJvMIZy7dOag3/yn3QiJGLmyGkokMNvJ5zfVR9lcxjXsG45if/IAfobn7yD1oJ7+VNgDmV1fTuO8p8c/g5WsEdfZRyMq1Y4vxxbmaqoVnWrKu+jFOZzegttbNGWC4W102LfUqxTIWRG1dU+BRZ28QsnAhtPdf2puazKucpHKu07RMZ+LZgkkRT1Kl+uiGi3G6lXlNZPFJhe18ZrchtaI16ydbv62dPyuf2KTaX+z43lYVxcPZjhiop15qWdqdH"
	.base64	"mE4GMa/zTyplkGpLjkN54t3OCBwB7DhB3RnY8zYDNQOvHEU8rBOqNhZId7O+o7OdfyDKdGWsk6dUrchoDvhEH60st5qaB+XNh+AUta/T188Tnzu9/ikLcvVMVJTHZuyoQZY9F+0ZwII+X5qR/tEvuJSqWGiVMYdXmnWUTTh9VoKBnLk0K+dA2Tx3W5VRBhFB44u3MuvhBRsQqA6hAoIB4QD6ODT+VYdxYkcAM2RncHl23/7DKDjfkNTA7pi/nZuF2GFlpXD10iy/L7VVeZITuk08Ob/VMRN6MfSLzvjQ05vi7jHbuswauhyN7urL01qth9b5FS9uAAZ0JY3/yKYR"
	.base64	"HOgWGt5TBblTVSiDPb5hDMSYffbsNsPl5x0UZMsNYl16zYj8Zk75NkeVGDpIKv9ij2ziwunTakVc9YlTXL7PrYcinDFI29jk5TiuwrDSurcwUy2xNfFYD4oGUXa5LDLg0aqCNGlxHF81qJ0RrBPbe/aT47m92bKG/2GIK3JchOEMcqtE/yMTr9Fa0+pz/tWkfZ5OrAOTchQtlm/utM1Oq+pxk4HgPc1hliV2vcS13XzxueEsWBukRksSV1iqOq6Jo7PPH41n321+jvrFCXNGVlWQ63dOFk9oex9hI+ypcTAzJcdOJi5OK8JkX/WPekscBrOR9ptRt7BkcgTl+hQv"
	.base64	"7WEpA3MZFW4siw7sTfHjb1h8yUhnP1G1tyZGpyV5Vf46RLRE/LgUNEfXow5254OaAsPPK9mDk9XumXRFYiOmAsnAEHAKmSkMeQRMdyGW8KUXIr6rm9dC0+nAQkR9nck9+TaXG3VSj+m5jKdkGVtdYLRClcnbggPGsChyZANBTY/G0M0CggHhAOhmp/kPWiH8iE6R1Urw9DLlDfMGldBORwwEZnf9uJMN/4+XoEo2N6ZelXnIsiGYgfG49FKvPIyGhVVW/JDjMlB8VAee7fzUuVyYIvty14Pw0WEQvWhdcsHOkkN3n7iNjvLjYkqTA9PZAaiZb6NMbXryno5rvOSd"
	.base64	"juclhqSpwu/fu249S1eVgW9oPxmo/1oIeuRMTrTq9Mgv74xezWIcjJNgXaMRZAvrbSG8OltcDKeKxqjhSIEBtWWrLr44lPemM8FuC4g45xsEmhAtHT9fX8jvzcUW3ITAZuCj/PqWx7fsT0AKxb5tOUp+kU/hA9I5vIdpofBtEfW0na52a8a/5Ee8TROIqIP1rh37TUxEA9ikLk34X0WUWNfZS0fY/DUF7bS2wjYuutJ6umk0v/GhXhdxidNUVwUrguMKZFw7jGvHEIq109eQ69sdoL9r6s0xeo1kzFjAB6RuFAvz6j6Hn3y4HCImin2Q3VcoOMwOcZKJ7nmIvAUh"
	.base64	"2kKSUmasSuX1bkfVujfTfInU2G/eY0S1iN2xMLRtzb/INCdZfXnclluOwIfATkAHE5FrOhIDZHCvgCQcXPv1wHRerwYYBGdKvazXyr5OoRlIfaZZ9hpiUFNGpFucWv2JndTe9Kc9iHOluQKCAeEA53BZw+3Ea6GlXpAqjGrCTqv87vIjONazkwieDI5xLano3KXcB+OxM92i8j6SWOD3U39u6niMNXhDY5W7Gxy/kXUUdNMguo/unXGhh4ok02FT++wWhL5NOd0KrM4gnK+KE/giL9SZiHS6Fjpj/0xaA1pvrCkzpVDR2u0ny2dyY4X88MiIv4XvS/6u2dW7hqR2"
	.base64	"6H+027HuGn+Z15tvepRc7Cxgga2nvoAun6bA+wltK6ukFcd5RiSJXDK5h6lUHhKQjgKAjPjbL7yYG6J4c4kDl+MJCIt1z9wjkFnvW5gkuOjPdfAvt6PmFwbwUv4hChaO+OGuJRFdjJUbT0W4qM3m+cqgVJOVhm/kkyIP8s+9I7D0j5mnZ5kFEx/riPjiO7lJNYlPuAY3Ntp1JQ8KqsJsPrEtFvMX2+IWMjmSS1/AX27QHH7AUdmz4jfH4EATfQbNzXK2Uy1+YEn+MeHQDkyYk+D28vqZf2XYFcY6uE1jIXjkGWu93kBbjPpJdSOPFMI7o5vFgBqjYNcXJ/AYD7oC"
	.base64	"93rtpAB33kvd+dc+de0aQyZxG7xy9XByA3Alh4Fqki23AvAQeWWdThF9XFs3qrT6Q2ZIbGdknhV1NuclVQd/dB8sKHbnmz2RC81qHVrqY9D5AoIB4D4x8vQpkqKT1drJFn722zOfr0sB0SgtOsBRkSa9pR7d2S4RkxkpR11j5Lbx6hIpoWUSbXiPYzHsclRzciZIV1fI3ign9WL7fxvzrzEB/AFYeoBynW4HzEVnxib+JaWbZM1F4zE4BQc2BUacwY6/TnFf6uUMmkHIlMzxcwYwVHYjtyJ6juZCoaAyEukIHEZ5DIJ6lXm/g4Drqz0yxd5i65ApcwXICrFR8SPd"
	.base64	"HvUCPnS8JAxgNiooTeaGmHzZ4awhM6qpi7aKG/dUFPMNT8189cJtwvDi/GMepqmp2XMq1Qo42MC34VHkIzf3hWYOPxqMzxKiR29zkSHjk2t0T8Wh5zL3ht0abpbaMh3d+kLV1P2ueqHtPXn+iIRDp+zzehOqoYICgxlDCkZ4B9lN/6xn1imJ/iurX5qHmYCvcEpquVrCrH+ix63iH+zFEhcIh48glb6vYizCP4lW2FCWl3LikuEq2ISfMeMG2OWRYxnhJ63i8gpeeIsbEzFLvXey1lySgVACN9Lm62ZrqvzNVF24A4fo+rLey/huWN7LCVSKn0ajfo0V/xsNicQa"
	.base64	"ITFe7QtnPHDtkkjv7PB3wnlsBgmqq/ZMzfp+SojcqJvTaZSICR0wQ54sywEdSjsE7A6x3gmtKQKCAeEAnwITetCpinqgBbtEb6/349Q173M51eCiDxolqPfCpexX+A0qtmQDjCIP55ihEv4k72Eon6cia22rjX0qi66L/cvVC3kbictbeozc6I3dNZ8GaWQS60Z534IsiXWeeuyt5Ygx+oaTyvEtm2Ja6UMJ84zlx8DOhufbx00n1e52zjUwR+8AG2maP6UqyQermboq5/upTrmuLFD8NUnml3g8sVnXHU5O6t6g0MQdsdNTHvm/s2oXtNrMJxnGNego0+N2OtzQ"
	.base64	"dci0bL6EKkXRQyJU18XQ13M1a6j6rWDAZMFYiQmBCgvqM5Gw71NQQa7Z7r6e8AugfL8/yUvgSNgQ1S7O8HzYBd4JfoxjTNuLkc1/tmutzrEXbPcIDXzaTwoH0K5yPGdKRFRHzuEXBxLeUu/vTCtCfQmANjTcRW+wLaugDFiuNdObN8Ed6/7DBMkd5z0WZO316N+ZpPuteYjVjGIznjWmf522GkBtw4lde+LI0xYTB5o4IjMDrHA+zjJWC1hWuOnYQjVsuQKzZOuqCT+sZgi0Xz607DmxmeRdHTIUwUiPbGWHNFCk9JtbLrV5DRFipDWcb5LQaAfdaYVI410QNK/q"
	.base64	"QXJacQD45kd/oG+RlkAAQHD7Y8/JNgQcOxEIKYGf"
	.align 32
	.type	test15360, @object
	.size	test15360, 8684
test15360:
	.base64	"MIIh6AIBAAKCB4EArT+q3IyFy2DS9TChDybs3/yROb0+j5lkHlHSJ152zYYzB/m9OwbDPIXLfpEUsAt3IjBxuLt0MDM1VjRHEI+I4m/cO+lYnQzcj3BBehLSmjW+ClcTDOm/d1QAdLcaPqfptudPHqTAfExmxc6tlhviGvE9i1DP4hUhbYOVAO6XxK7JOGJssud/FQqrhrnZivjriF3cDB7F5qF7v/EC46347RefgxExO620+Y0dVpusaFUKdCDuV+ccbQWhTqURmbSG21jn9rZPklhXm3QE5dEdfEu4H10Ok+5EGLZYDqELji6ZTHKR+vriIgVdKy3YYNUbCFYr"
	.base64	"tSHbGuaoOaL0WMvS+c7AHhv5pzfKo3dusa8ztW1fMy4aNNtCvl/5Cbef1An7hxM84ie48x1+kt2HhlVpm1XN73pxXYE62fd/3uCS2XgPHUOxHinBSbZehYPZBP152EcDLoUZ/WPnpIvAlA63VJfWRF1jEv/d3iwADsnKfqJlJbAdqSBP3eo6tegP87K3AEropINJvXjfrCw3gbPztxOTPrJ5VfLYnPfy8dVsnP/s9OoIPGU1twkDbZkdW3MGYbTwxds+4B2oW3pbW5wRdYMd9HMn83nygtYoRVgjbCnTUFEbOO+JkISiTDV7MF69GtXfzc10Py4B6jMHdPuGdSAO"
	.base64	"T79l1BUZb403zbZvUJ1eBIF97Na7QBvg9dWGJsVBhA4+c7ekvir+1+RNXC1qBObdKKB1TOAjLK3sqnL9A8Bl+sQ8JRCuPwmWTv/+x+Se7LVu7PN6g3qLu5GNqzxNfzR3vgyH8sPWy8z6Hq8hJOmqiWEMehx9AIdpMKC0O5YcABQHuD9ZYjo/+2i4gX1KnRyiB6OxQnv6m7yUMH7q50B+1A8zO1fai21k1eSRg/A9rouR8M2xoOAN4bsieB865VMo8DWuceb9Y7KcP92Ve8TpL9mTOhBCHJCr+9MC6Vm8U37z4VIVpliewaYOLjUHOsMfqljnxjNqOUshFT2STl75"
	.base64	"AdYPKGEV3+1vdcSPyxZVCccksgxJJY1e8Q7g4sTMH05gXF7Gf2h/2xoBZwexVpPyJoHAM7hI+SxcGCnt4GygrNKQS1KHu7UF2FbFuI8/SVKaotBAgFsWFbx0jgAQr/ttusu85hN1zieuhVdswIqEbzQW1DXSzFUAwdgoLJyEeL/wOw2fgdTvmXdT0o5DUvAyfrq/tg6dmwDQUFVnWiyLmyn7QXRMt9iYovtzB5bvzUcTHeKxrPPPR5h7b/YyREF4CY5kDL/iD4xEL05V4Mb9BXQYGrn6y9P6aVBjzivvkg8R1JtTbO3FC3y9oV3fq8+qg16oxf6RKyMfOT1xdL+i"
	.base64	"8dovKQKb6kgsr+ep9Wirjxi5eyjwkvsH171DzX/8uV8k+EguvkKHgDh4noxSbfouRjV6WYi5Pst5tIqe1dAwjLIMnY0tZAv26/He6nT8vAEYSE41AoMBslCgRBkwABJKoG1ri/HO2i4WNVIm+b6xN/wKi28GEXv3qEC9jZSkouC232LAb7NdhLmqL8E7yyDGaGkVdLzbQ5xK/HLB9YeA6GzVwS40XpZ2CD5F5KBKesFnOPIxH3sPVL0NH56OmYtY2ZSHqouCXV7oUPTyx+mFa9LvE8HtVyrF1l2kOym6qxuqIUHp3EeI7wz8stz321VNcMfiiorh3s/lyiM2KeX8"
	.base64	"VGba6atYILKOsn1duMdsSFMrR+ASAA7+pZM0+T6mP1aqQ2W7WnA+Yqw/W5ACUF0FqNVnGmLs1N4pBKxtFV2g7PJXEw4XlgwyasXgqP+FpKPjDjVd0SiEqsSEzSVjhYI+EjAXV0W4tDQBOqJ3Ycg9H8UOSrv2oF15S8jznIcFL+olKJFpd3y66kp1LisXg1AyQ0/N8XexIgqLaVgJNQdtYUqNGGVum2IH0GqSOQWAFPock4QMtYxBkU5I8PK6HXMvHqFVwwKMsfI3ppprzUUuCJAmY5H/Il7NrpsZHhBiTh8tgWlPQeWU/37MFTYeKVk352RAFxoyugEmMIBgB4Zu"
	.base64	"1LPiRBYz8kyEDrFKx5Kmo0I2BT50qLHFY1kNHjZFKzZeyquXSdOrrmMK0QNXiKSkPNoVSRpd5l65giPAg5b+OAuADt4i613kVjK+4MBuaWMnTgBYgHDZzE6ubF5qQ4H9RbKkbPCcZlx9XHhVM0s8Ox0YWHlqAuzOU2nAF+1Xr3FbQhtJ2OiWgLZIG3z4dByxxBC39Jd+a49Uuje5NZ57FxabiTmuTy4YZbR2IJpY4lduHD+OmrvY/EzWLcGmRqwTHqf3HSg69NZI++WzhJRHkq6aWMWsIxu1zZbSXrJB/JquGfF7S1Mb+qUMSW3/9FGIGQTZhY7iOmIxXG7oTQQd"
	.base64	"2MJ7UedZvIVcxMyty5NpGORxnmMzmbY7IxEXej1vuWvx8qcD/fDNW7XamtmVAnbYONO9oEqaq3DexvmlGZzE+QdN6hXCkU1UqSzK36rRxMAYdygqLMN8Jr3YDVGhTa12dqqpRYJPdvsa03E8VaJc4NbaNb4lIyZRxrTzPixUCcdvpQiBunXay00F3cqTSDDoSh/9AgMBAAECggeAJS+8SfizozLWNSDKAUmWoIFC3sTbD9GZ5tQjKqYhE/5RJ84YKvpJn80MH8+eRCdB3AnP7xn1V382XJl+A3T7qbbe69ErXxJqqTMsKrqtj8InV2rXQPdPTJqwOl0u+fHqvYKq"
	.base64	"veYZFtUDXkP9iHHVt3i+gA/JfzqP4UTUD84mr2Xg9QRTVpdP9MFEjfeIVUcWrz+OQt+8FMPmnw1pVFt8Sc+/Qk/HZIrlhIcgm/1wJTjTtJd48U8/D7ucoxfVTkusgppzt8XsEHp723cssfOPw6UxETJVNbV30mIZRpKUu2EPMJSK9vcw4KKMG/+MKUS0t7ZfTVLGB+EojK6IiiK91zbkj9HrZVQZX7r7/JGhpLikLYUgxOWnTtukxcwvN0EpRxX/BIAIN87F41o/g7sDnv7s5BFBEhPyAOUaAknr21fkzqA//TxzK5JEeZ4ST/rkU2LysOKK8JOoHe6NWHpMKZEp"
	.base64	"waTV5jcbdVu2a3Yuy72pvkwuIaY43mYvUepMuj9K/noVs3Imus+eGwOmqmVo04wVF+kRGDy2+AJUmEn6NTzNrMgrGmOTAwWhQb4SyhVHcmN3JtDnjw1unKwHvgMi0DljjZvGIIG1ZxX2sOO5Prc/j0bJdBAeU/HUME1ucrRzHLZ5gmAuKn2ClbV8TUTL2IoX6FAp2DrrKcGDD9mvzPrqOkddMx/oM1uIjtvVHq9KX8D68LWjW9o4tzhezoFE92ZiZB0E8IpPooB2gyOJYWvDt+61BjOtYwR4yd4y3s8YubA77gpY6q28Hnegk/eunrYxWY6xA4+7pCUMLtfiYlzx"
	.base64	"aOl21yMURa/LCVAFP6D5w56JBag7VFUydJFGwSyWfmCt+rvNCXs5EIKKwFoNq7NxRa05juxNkY3ajfqwrUQ8ySFWIvzTurc8443aWTRC3QRbjivHlNVC4EpvNVongtiCQO4Ppu/kcOMwty3Uuyeyv61JRbzrvrfY47Hz60EgmyFUw6ivnyBcFY4lvLxpkf7areU3fbBRFK6PNRUK1Emn2SBwpPL0JGZS0aUi6inZsoKNNmZ1btWMVAgh8u54xx+cY12IVtGggDNgVSNy1rAaUN4lcLV3QvgZGBWP/QxqRh+/52CR57slY2b/EZe7/ToXlHe0xSG6MJTd5esdAbr5"
	.base64	"sDDbEZO3+nnoXrM59FFoMc7pDpPe/+wnvaYaTOCSXNQH0qHdEoPSmnmzPPsH4xgaoySAtMz0xqVsJdeZGjDwqfwug0SsZHY0sKZvIFoU8genb02r9fyd1j6CSDElR8kOHduYkVb1/maNSPBMbCyWVEPsdvLhdmjI4d4Njm/8FdWTkv7KmzBhAwvKmS/TFelmgb1WFxRKLvE0hFWdwCunSu7xfGfH8wgebWtbzIGRXJQagNo6zjYFsHro0LRXnPnq8yYdy/jdZa/3zfehPfyaOwi5+jwWSUrxuk0x3V5PPWYiGwiRfcavFQc8ofcH/T6Qu2966eEvue6RjhjMjR0i"
	.base64	"oKAoJfzUlNOqz87QhYJvIJ9VDuVyDRc+NMcsChRFJ+LHL4ahVT54A+l4LtOZ7qAU+ONs6z+a8xXO1Xb2OoYwdvmIMPVKUFiA6dnUuTRCpk6cGgcWnu7kiASOqOfN6EceVEXSZdjuS73Qhar7BlORfuBZIFdq7tifd3/XQGO7IXV2ESfPBbtBMJi/3F/GpB4woVPUNn8uhtfZlSnVRhhgJ+Rvy/Ti/v8+/xXG8jH5KsgFTnwukshBT54jIU10+MNEOcJpSy52XkQSZTGYvgoQERIsZz2FLtOXVB62rdlFEVMEfD/0yayCG4T0IGvx9XIEJMHTQkNSnS3TiY7YKLmi"
	.base64	"tO28dodVZznZtyBq7Oy4FFGRuZYPejoS3hQ7g89BW13/M2jbU2STscOKRqhEnBQSbJJvrsNFsqFngTwiR/2kenmoCvt6kW7pU+yYgletBThVwc46BE0ScjdKNlQ/Z4ru2fOA1de4/G5PYCtapMUF2+UJ4+uiUTMwlkYBJo84yZcyLbRZFRU4Zmb+y+7B9k6333tj5j/gHJfthvPSrUIpICimWVh9j1xDB9F+g7qcG/4XnsgJY5otYTNRRgGo6UMeTv5hGigRZXBDn/whHXZ7QAgY0+jC44znJ8LssAg+a493bZ6mq86a+I93s/Toi+fZoZVAa8ohmP/c3JbDCIFy"
	.base64	"mt3iz5WZpqNeniVgo8M591Rs8nWpOBI4TULo7BMloPgEuPZmC1bh+yYD5qXxTX+lnVhx2MdqvtyQibE2tLa0u69uQxCm6u4SywgsTmbwH/S/0+tjSNC+iu0k2w8jHS4wlw/YxjsELzN4IG6xMwMnrAo3FTHvTUPMoEmA44zA8/ctNx3TkF+tMbWVF2lL7ISdK43dm1gEuigOKMFUbLAlDE+YR/eTwq4vbSmcPeO14yhDFOaSTHmQWXV3VkParKlC18qVcyZUHzqKN2TXz+Ex90BZ/f/qcv3E3uNNivWAwGEhvb2OQtVM5PR4Mcrx7Hx7hWoFVL44VC8f2p+Y4nnX"
	.base64	"Qsq6hSHiyyuuSk41+889xa4nMKlF5jtDPjXj8g1TMiv25sfVAoIDwQDUBJvvXViwo6rSq1NlmQNJSE31310WFBFgRRv/SmArN2P2p4qo/wiXCPy7syCjzdlY2xYbiAIeD0ObFn6+sZwTENyhVv+j/15pMO5+dl+ElOuPWPjPu5lu8Ngy9s5Ib3zIj9OGIkmf3hEFpNyS+w/6CU0XGuJ2Z0CpWxtUZkj3w1nUz1XQfzuwotjst4jnsDByQmXikaeb9gdFUlGqvjI15Igj58s8HPsLltWzkoZ5W0eT1r3HIRfQycdphICYryxj0e9uyoQwMoMtSbsfKv5AfAPURdz+"
	.base64	"lPnkNkf6fi6TA/gV+c7DW3YQ7ImMziWld5rFHt0HG1usb9uUhd8CItGpAY5joe6UnNu0GkPhH04vaFAML1vFG+GNS+BjjXowvrcuAsYCrKi4ZcYo7uTsmaGa/R+1hXqUFuLndAZUG9CvWE5QftbkMdIM153iADC+JjBImZhYVFrECmyhBuk45nk5AJ624/cBzy+CXsMhG3mTteQ5nTKdcqSoyZDOr8AArSCHJsfTXy7wXviLhaPGZtgvhv59jSKlbWg+h2738fAHxOPxhMSTQgYggGSzUlylz+7+pAlBvqp4UnY/9+ihawq8Ir7fcnvqkEPuwgsm3AImp1AEegaR"
	.base64	"rpPV0smh4fy5jJTKqBwsV5c+UO2TRXosWXs0j83WF5PY3uiwnicVxbulu8Iwm8cnAhjY26SEN2T39/HIhkxklwjpTg62kulMe3/hzKBxpzRIRrs3zrBNOagOq/YvfIiuz5DGAdNbN+mxKEIUv1k1BKtGbqgp4np3Dgdn5CsD0gI2FteBXTicaJz1nkl9mf3NHdLfPDYZhaqxMHohsYMWz9F1pZ3XwWCo2x65PpwSQuhHSRifXBLRadV9qDzaNYpsY7hiimH68mERHrbzXGKdp2IMh5PiI2w9qSxL1X/+cic2BstlOO8TV2rJxk9R0JAGoCNllc4Wj42y+X88LDBa"
	.base64	"OPFieUvl1wo/g19GJpe3CIxbuAIo8k3fk5fFlEsOQsM1kWtpYXZ/lM8LgTP/8wzHAZSUqe3NS8jLkfl6R815PKbeUtJHXBBiu+Uy3oPPqFKz5/nsFzS/M12yTlb3KdlcG4MBu7krlVIIq6RRA6H7alDNqJ2Vb36xgB6dgQEmQXg2PIpE9JiIHF0G09KyWH2hRRu/jPZq+v0IKT6RV/E9IO1JbpxG1QiNm/jvozqYy7TLWzAlIMwEoevr7hs2hcGTFlox39YOc55jbpaQVNLCU2mT1VTK2IT3j5rRgA1XqCa+RWTVK7tFtQi5N1cCggPBANEwLreb510TdB9S8gIY"
	.base64	"6QeHnu3eg5LPc2EhxGIwbKI2veLFGfbfUXvK1ORRg0kn3b2wEHk53Q49Za1to5VShdsYlGCqwMiL2/758Ib5M4rXvo1Dg03kFytGVEQbvlJkRwJsSmS0PyEvu+NyfCYU34BQ1JTpxn1x2K/7dDYzvlhjrcvfwHOeGbBl4dEQRPHwCKMJJevVy92Y3bwJLO/BjUMVQcKhhDdwWtX1smofu8wwudnHNiHzaT6ROE2lxPeEkDQOR34m8pglJtrwTlXqTZuKSuEfoAeQnllkrtnWfnKhxOp9vR99K9ks3IvA2lIM0dBWt5PHJnlx0A2uqqfkwVknaJea/z02B1V3B5dp"
	.base64	"85mRP2P9cIyh68Uho/6ZlhE3ueaT+NCxo1d6qGPdCVawO6ZZx4lUFukteH2vTgpbYjsLyySJThw94b1aPsX9FT0IODNeN0zj4+nEHSvUWCVYI47Gg5rzmnjpp8rX3YkgbgLqazd02qDCWiuAHCiRDVBk8BLnxH7dKDsmmvQ5VqRyTctnPGiyb/DQFZDICLsLCGuK3kFXvGMOAI343ZPOWHuouWQmBudxIw9B8beuWS7Qc8XZ3A4cAlhpsxVtlivbeztsODJr2AiyvadJQ+uQQnDFus1KRI+DDRdRWpWiV5oWGZG7kFwqFugmEDy3EFz4xRUrcHVpuns9C1esORIu"
	.base64	"1tkTdI6oCxfhA3q6HQeRjCo6jeAqlNQWNWSLkiwvpBj+PwIZjLnrrwEGqDd/4kQQzuuN0HPEHj0sr3ey7+WVi98C/JO4qSeIHR2Cn7bkEgV5thxBDcFTSY89ya2EywuIfv5zWSFkxVBT3JjGQ7j1w6H1stiG6a6Y+TuZwOfXSu2siYSwjtOr7AMCEktEF02YJh5RxbvN3FCrgzdJkB40rYEibOTdGQEJJS2eUpByoWg9DEmZGXVayghpodKIjOrPnLwjrT+5/LkwDdbZZQx+mWg1JgfRVb+O3ufnAcvKCjkuzBnsd/OrsuYOVAYBUHfTYTYFkOTYxB31x/pl8EZq"
	.base64	"X6fDjG8Ef8+XuWiSMQkCnyLJ+OZ+qJVba/6cTmMtjBpMixR5CNWWdtG0L65dkYh83dIGhs8Kg2/aynF85+U0qJpTjaWqXbUXgTRvvru2WCKQgPacHLB5j5JbfRxxX7SHNr6BjUr8KHKBr1+9X5njyTewbq1wlvrjmfcIFCEhtxqq6Ae2/aN6LZNkj4kscUlxuEXK4HwAjb24HDqUoqdtCi6Er72rBZVkiwXIyU7qtZZKR93yywKCA8BZs9mF3Ki5k4WivHn8clDBoKXbcTWhMbxoTtUZng4yOq1AnoI8His0O8kyYQdeRqm+vnMMEu9SaILiCxJ0/BBcwLWYTYa7"
	.base64	"jEAVoW5Gcy7WmWtQqwQaX/T6y0utxF5ip0jUUoXcKoWb7gilqqroRPDtiSHktKs8DVN+U92sR9p3eV94eoCERlCq2zuMa9qwrArTTORuh9GyWtWYrst+whncU2SGTHvgYyKUNK0V3NioX8ZY9nI03fuFitmj+zutXfAaC6iR530mJzj44EkbVsVb4xx7o1NtIvrXY1/wy5JJAVTld1vTq864Olu4B0BGUeRZokVBzIFs46azoDBKZxDtwIrN/KVEm1kZSkON7ADYbfnwLdlV/AXiEkhN1n3sQcSe4u2EFCkOW4ELsIeK0zVcrdvMoTzLiyNVafGDhIE2rtXzmLay"
	.base64	"taF5bYCPLiVxThb/oHykYoxEhWSQfKwQNvLy+yAroSfQzCf9sLo+N7GonTyCY9AWbXrdLurlh9ZkcttgUzgYZh0l9giSf2hbeQfek+74j84oz7FbQ1Hf9azonJUUimfhJf4RokD43c/1F5S2iBCikFjvr3P4fJsgMHnKP6kiQP3MsF0Nl2vAdTUzxXZFbpt457QEs7o7k7Gpj6EkXRwOZsDGzNa3iJ24ReOqyWz9N9yF1Un97+v5ej96T4ZJqp8IEgsRNVzV09oUUAMsJCYOKRjMHQp8lIvAoD/q+PipHWUxbzum0PwmsE46ZucyEC6ER62pGPyji3SET9Qlkw/b"
	.base64	"Lq6Ijij4D6pg1L6tZgwNAb2NxPxI73gUNO6zvNS7H3wSXJvrdz4sbjFZ5njF6KTd8e9dJ0UxE9AhoRPOrH67+zLrdjHEut/7WhvJnnSgniaC1W4dww7RbdtDswsUy/GtYjRJuNMIypPxQrJLI3mT3hhY82b63KvKMyIrXIwSwXsuUnKneEpJoVMCdi0u+EM86Pq3/zntdJ4RYTPeKlXmSueXprLDQEFSZs+/+I4I6pZNA8m+PE42jG9NHs0xbVPqnvCONZc3VOkPuCMlaVu1/8NaLRBqwLjuDTFb5GlAYqcbFvrWuLrIaqMp3ZtN15bvMXSsNxCRMAwVPwm2fSL7"
	.base64	"jG/Dk6OYpiOkVeCeIwapeOmziMm3gwVGEToKuXRboLUGloa29J0NhkOoQEsIk3ytsFC00Oet0FReFa+tNBKGsyk7IMmt68Jl81wt5f/9gXn1EW/3ygx28NQCnbd2OW0yargwpAHMEO+xDkEiglsiyzIZLqMKzgXd6EpYkuECggPAIg+VW8If3vDe9Ia97wd9UgOMJjEX/VyX7dXgsxgtaBA/xN/RBXiBPQXeujpnhQ7ftRYo6IQ6cSogFygF/bdNIkqTRlYnQ8A6Fv89YczLzqyoUzoN9C3Sc/JkoB5gU+wN/+AAEPukV9P85ODsRAscBTmkE4cpEZ3q6WSpHHY6"
	.base64	"ZQv97XdGT80LY8SDC1Z502cBEQLZUNgj9LYCTK61yWgbhzO73GQOMjSyJap23X7DRlEcwdAFCWwn088zerkmJCNKk59LlsfislFCTV3Zc3XOIyhWXueWWAT9M5MIQWICfsnGVWQZ2jm4XQlH89137uo1c5XbGE3R/u5AMSoikWnW7ZxUFHNhYecdNJZH/yh6SKP0zWQj4lIvII8Es9zwKWeIdnnbhqeV8BWBu5ju/1V8sO5nZf3yKQ+FUfmsXFVa3kBiWFWfCUwuKHW8SOKXhbOD6yFJIdTtdE/BbDSMEbCTQZkjLqTBnzR0ZLvXT4+fOgxPXt1BB/H9Wp3md9h+"
	.base64	"cXut93YTcZCzD0aO7nszl10hO6BYnreHMI/BIyze9w2p1lDrNXqCqyJJhtRhx8JOd/wWC6+BakfqrH5RTFYwIUZBw5JgmU+INjsntLJ+RC/dleReFh+nMmtgJA/y5jU8DD611t1j4nY1OHm/pSOk3esBSNBghhE4X55rAGfSW0EKXhMPoZ6QhaZ/5Uuek05bH0disCO+gqnZti79sRDK4Mld9oUYbJwdH3z2VQmAz6z+N2pPlqpAeYtK8pZ5EhomhwY1TdQ+FDnlbDkPhLNf7fT/iVIFAPHRw89UECR8prWVqG4TPkpAbPljkERSB1O3UdkYRy6wTg8JmTqXJlOm"
	.base64	"AgYOk+ELxakU09aKKXXNtntkfN1+tAqHSEobDnRM0w6WDlPEPXsch2oV2He65qAvLBqd3nn9q0SA8DeaO/jePSnLiWRLV+drhAknFy+yuj0JyTyJ5hlzg/fGGRiWsn0en3Af/B/itWke9GWRzkvcdEkhZIszUNLBM2Jb3gpyvsAFURWA7TI6ZKJzaFsWz3BcmOVnRWBXK0cKInPDVjM+FB0M0QMIkiErqW5r+Qweht21u6SlgpmYSTbsmJiVrMKgH6V+Z9HPavQWCHqNC64SUeaO5s2hqm3kVNRpGwlqul4LEZyDs1xnuy34ZhwzuCJYEJbpma8LKvHgy1b7bQRA"
	.base64	"7DdnHgh6HOnYVPfUxzxFIyt20mLCU87+AsTZ9jztSUch+QM6oBY6/gwvVH6FKXvAr6hdMSXap+OSG2QBGz9uR8VahFIXAoIDwQCBmS5yQW6G629C0ThuqhrVCq1Rsc7WNb402MHkX98u5JDyYSFGxv6rD2yXeM1VhoNhmUkUhsaG8UFmyTlSmUkH1p23QDRf5zr6leuhA7dScZMwC1FYggcvRKlPmxvz1iE9aO8/r8JvoNUruHOEZzaLpCXghtkUXGzYYeEKbK+7nPZ0yloErIXBG03yB7Yel3t135uKMcaQ1Y05wlT04oNXEhn1stJTgW3wCcmAiwd8Wc14ANZE"
	.base64	"f+TbdwIAJXmRyd7Q7T/8Nzbq8FZQ5zjK4WcSllU+/5flpwNbcoDWpSM5eAfIgxl0+3nCnr35rwkPvT006ESJsfErpf8iyUfiMbVrimVfgV+JsANdUw7d++VwqtI3TaF88uR/8UqvEtGD3LKewZU9BJ+jrcx4FJr5WDkIFdoblFAtRMAjHDZfFgij355PuwfN44y/8cM+mPhJeVjJD0fAqy8hY/bm/orqvDJjynX4pBts/ppuaB9IWfs0QxDVDYBUy2chxxOFOAz5QC4uSgWeUa7duiODZiq/f8qcbC1rfWhSgVYv6vnn8VUW/CnipR4KBuCFTqZdIJ0roq2q1pvS"
	.base64	"mClFXFXAkaJlzazGGlOhRhP5/hr236UaWHyBLkZG9y/WqiGwDn6suMZ2YoI7Cja+lxbVeVUVZCq+GU6TO0R84vwYToM3+yZ4bSRrSCFn3vUAIprsQBaWij/Vpl4DhLsVTVVxAJDCliUBq+ZHRG/5U4ArqIPIFHcTAGbufnqgKGXzMbas14eEKe1bzXTAiVERmtV74JzQjXLjd9oKwtxvrUkD+uZ+piQy5o/ZcPpZcKmjCH2JxJZhwvXltTsN7Lic7gl3J701ZpCeRve9psUx1GpSF10KDiw0emohrELwMd5I4CfQeckGlHtRS1sCahm6cUWc3+YwnqqtoYf2N96i"
	.base64	"l2ggLVrc3ZFjX3namSA6S+VDDhJwV5H67sS2trHxBr3PjSoFwAcjhIXvnLtvX0qaJ5+fMpfoJLlkLDn/L0vEfmX+u1ygsm7EtpMrUZ4uH9jPYOB1FfmgZ5mIK3bOQUIQKYm/yrdhCJTuoLM6CcVvBPkbtWSZCOTMzt9xZYptYt52HW1reCIyY91TfeztnYKpLFyKF92F+dKsbphgLgjUBnb0l8qxclBbg+q7OQ8Ys7gD7nyEqWnNHb3it87ibwNJUmegGyNDkix8O2XoYZnetfFjc5JscIuDELQGLJkSc+yHkglnltacnzVISDtEAHMcWeuBe9Hads/CTfGiWy9f"
	.base64	"kSluCDfWqtL4T14AFlI="
	.align 16
	.type	dsa512_priv, @object
	.size	dsa512_priv, 20
dsa512_priv:
	.base64	"ZeXHOGAktYnUnOtMnB16Ir3RwtI="
	.align 32
	.type	dsa512_pub, @object
	.size	dsa512_pub, 65
dsa512_pub:
	.base64	"AJWnDeyTaLpf918H8jutawHcvuzeBHo6J7PsSf0IQz1+qCxee7v89G7rbLBu+AISjDhdg1Z97lMFPiSEvroKa8g="
	.align 32
	.type	dsa512_p, @object
	.size	dsa512_p, 64
dsa512_p:
	.base64	"nRtpjibb8isRcBmG9hnI+BnyGFOURgbQYlAzSwI8UjADizv5X9EkBk97TLqqQJv9luQ3M7stWtdaEUBmonZ9MQ=="
	.align 16
	.type	dsa512_q, @object
	.size	dsa512_q, 20
dsa512_q:
	.base64	"+1PvULRAkjFWhlN66Isimkn7cY8="
	.align 32
	.type	dsa512_g, @object
	.size	dsa512_g, 64
dsa512_g:
	.base64	"gz6I5cWJc847bAFJv7PHnwrqRJHlMKrZvltftxDXibeOdPvPKR7rqCxUUbgQ3qDOL8wka5B33qJoplISogOdIA=="
	.align 16
	.type	dsa1024_priv, @object
	.size	dsa1024_priv, 20
dsa1024_priv:
	.base64	"fSHau2IVRzYHZxLojKoczTgSYRg="
	.align 32
	.type	dsa1024_pub, @object
	.size	dsa1024_pub, 128
dsa1024_pub:
	.base64	"PE6cKn8WwSXrrHhjkBSMi/RoQzwt7mVQfZyPjIpR1hErma8ekJe106YgJdb+QwLVkX2njNvJhaM2SPdoqmCx9wVoOqM/0xmC2IJ6d/vv9BUK6wYEf1MHDLzLLYPbPtEopaEx4Gf6UN6bB4N+LAvDE1Bh5a29NriXTkB96IMNvEs="
	.align 32
	.type	dsa1024_p, @object
	.size	dsa1024_p, 128
dsa1024_p:
	.base64	"pz9uhb9Bail98J9HGTCQmgkd2mozHsU9hpazFeBTLo/gWYJzkD51MZlHelL7heTZpns4m2iKhJuHxh61foZLU1tZz3FlGYhuzmaua4g2++wo3MLXpbvlLDkmS9qacBiVN5UQViP2Fe26BF7eOU/9t0MftaRlb82AEeRwlVtQzUk="
	.align 16
	.type	dsa1024_q, @object
	.size	dsa1024_q, 20
dsa1024_q:
	.base64	"9wcx7fpsBgPVhYocrJxl51BmZW8="
	.align 32
	.type	dsa1024_g, @object
	.size	dsa1024_g, 128
dsa1024_g:
	.base64	"Td9MA6aRivUZb1BGJZnlaG8w42nh5bNdmLsohkj83pkEP1+IDJxzJA0gXbkqmj8YlifkYofBe3RiU/xhJ6h6kQmdtvFNnFQPWAbuSXQHzlV+I84W9srcWmEBfslxtU323DQph2j2XiCTs9v15AlsQReVkusBtXOlan7YMu0OArg="
	.align 16
	.type	dsa2048_priv, @object
	.size	dsa2048_priv, 20
dsa2048_priv:
	.base64	"MmeS9sTi4uigi2tFDIp2sO7Pkac="
	.align 32
	.type	dsa2048_pub, @object
	.size	dsa2048_pub, 256
dsa2048_pub:
	.base64	"F4+oEYSS7INHx2qwkq9aIDejZHnS0D3N4GGIiCHMdF3OTFFH8MVcTIJ6r3KtueBT8ni38LVIf4o6GNGfi32lR7eVq5j4e3RQVo5X8O71t7qrhYb5K+9BVqCkn7c4AEYKpvH8H9hOhUSSQyFdbszCyyYxDSHEvY0kvNkYGdfc8eeTUEgDLK4u50mIX5NXJ5k2tCCr/Kcr8tmY19Q0nZZQWJrqVPPu9WMU7oWDdHbhUpXD9+sEBHunKBvM6kpOhNrYnHnYm2aJL8+s13n5qdhFE3i5ABTJfiJRhmewnyYRI8g413AdFY5NT5WXQKHCfgEYcvQQ5o1SFn/yyfgzizO3"
	.ascii	"\316"
	.align 32
	.type	dsa2048_p, @object
	.size	dsa2048_p, 256
dsa2048_p:
	.base64	"oCX6rfSOueWZ811vT4M04n7Pb78wr2+B6/jEE9mgXYtcjtzCHQtBMrAf/u8MwqJ+aFwoIen1sVgSY0wZTv8CS5Lt0gcRTYxYFlxVjq2jZ325hm4L5lRvQK4OZ0z5Els8CHr3/GeGaecKlEC/i3b+JtHyoRqEoUNWKLyaX9c7aYmKNixR3xJ3L1d7oKrdf6FiO0B7aBqPDTi7IV0Y/A9G96OwHSPD0sdyURjfRpV52b21GQIsh9znV4J+8YsGPQCle2smJ5EPanfk1QTkEixC/9KIu9OSoPnIUWQUXNj5bEeCtBx/CbjwJYMdPz8FsyEKXafYVMNlfcOwHb+u+GjP"
	.ascii	"\233"
	.align 16
	.type	dsa2048_q, @object
	.size	dsa2048_q, 20
dsa2048_q:
	.base64	"l+czTdOUPgvbYnTGoQjdGaN1Fxs="
	.align 32
	.type	dsa2048_g, @object
	.size	dsa2048_g, 256
dsa2048_g:
	.base64	"LHgWWTRj9POS/LWlTxPeLxykPK6tOD9+kL+Wpq4lkHL1joAMORzZ7LqQWzroWGyeMEI3AjGCvGrfagkp48BG0cuF7AwwXurIOY4inyIQ0jRhaDc9LkpbmvXBSMb23GMa05ZkujTJ0aDRrmwvSBeTFEPt8CEwGcMbX96j8HB4GOGo5O4uAKXksxfIDH1uQty3RgA2TdRGqj08RolAvx2Edwp184cdCEym0akcHhIe4ccwKHalf2yFlitv24BmJq71k8eOrprt5MoE6jty79yH7Q2lTErdcSJkWWlOjr9D3KuOZrsBtvTn/dKtnzbBoCmZ0ZZwWQZ4Nb1lVVKe+LLl"
	.ascii	"8"
	.section	.rodata
.LC0:
	.string	"DSA"
.LC1:
	.string	"p"
.LC2:
	.string	"q"
.LC3:
	.string	"g"
.LC4:
	.string	"priv"
.LC5:
	.string	"pub"
	.text
	.globl	get_dsa
	.type	get_dsa, @function
get_dsa:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$2048, -148(%rbp)
	je	.L12
	cmpl	$2048, -148(%rbp)
	jg	.L13
	cmpl	$512, -148(%rbp)
	je	.L14
	cmpl	$1024, -148(%rbp)
	je	.L15
	jmp	.L13
.L14:
	leaq	dsa512_priv(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	dsa512_pub(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	dsa512_p(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	dsa512_g(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	dsa512_q(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	$20, -104(%rbp)
	movl	$65, -100(%rbp)
	movl	$64, -96(%rbp)
	movl	$64, -92(%rbp)
	movl	$20, -88(%rbp)
	jmp	.L16
.L15:
	leaq	dsa1024_priv(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	dsa1024_pub(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	dsa1024_p(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	dsa1024_g(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	dsa1024_q(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	$20, -104(%rbp)
	movl	$128, -100(%rbp)
	movl	$128, -96(%rbp)
	movl	$128, -92(%rbp)
	movl	$20, -88(%rbp)
	jmp	.L16
.L12:
	leaq	dsa2048_priv(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	dsa2048_pub(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	dsa2048_p(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	dsa2048_g(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	dsa2048_q(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	$20, -104(%rbp)
	movl	$256, -100(%rbp)
	movl	$256, -96(%rbp)
	movl	$256, -92(%rbp)
	movl	$20, -88(%rbp)
	jmp	.L16
.L13:
	movl	$0, %eax
	jmp	.L25
.L16:
	leaq	.LC0(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L25
.L18:
	movl	-104(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movl	-100(%rbp), %ecx
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movl	-96(%rbp), %ecx
	movq	-128(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movl	-88(%rbp), %ecx
	movq	-112(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movl	-92(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L26
	cmpq	$0, -40(%rbp)
	je	.L26
	cmpq	$0, -48(%rbp)
	je	.L26
	cmpq	$0, -56(%rbp)
	je	.L26
	cmpq	$0, -64(%rbp)
	je	.L26
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L27
	movq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L27
	movq	-64(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L27
	movq	-32(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L27
	movq	-40(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jle	.L24
	movq	-16(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jg	.L28
.L24:
	movq	$0, -72(%rbp)
	jmp	.L21
.L26:
	nop
	jmp	.L21
.L27:
	nop
	jmp	.L21
.L28:
	nop
.L21:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-72(%rbp), %rax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	get_dsa, .-get_dsa
	.local	run
	.comm	run,4,4
	.local	mr
	.comm	mr,4,4
	.data
	.align 4
	.type	usertime, @object
	.size	usertime, 4
usertime:
	.long	1
	.local	domlock
	.comm	domlock,4,4
	.section	.rodata
	.align 16
	.type	lengths_list, @object
	.size	lengths_list, 24
lengths_list:
	.long	16
	.long	64
	.long	256
	.long	1024
	.long	8192
	.long	16384
	.section	.data.rel.local,"aw"
	.align 8
	.type	lengths, @object
	.size	lengths, 8
lengths:
	.quad	lengths_list
	.section	.rodata
	.align 16
	.type	aead_lengths_list, @object
	.size	aead_lengths_list, 24
aead_lengths_list:
	.long	2
	.long	31
	.long	136
	.long	1024
	.long	8192
	.long	16384
	.text
	.type	alarmed, @function
alarmed:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	alarmed(%rip), %rax
	movq	%rax, %rsi
	movl	$14, %edi
	call	signal@PLT
	movl	$0, run(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	alarmed, .-alarmed
	.type	Time_F, @function
Time_F:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	usertime(%rip), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	app_tminterval@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L31
	movl	$0, %edi
	call	alarm@PLT
.L31:
	movsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	Time_F, .-Time_F
	.type	opt_found, @function
opt_found:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L34
.L37:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L36
.L35:
	addl	$1, -4(%rbp)
	addq	$16, -40(%rbp)
.L34:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L37
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	opt_found, .-opt_found
	.globl	speed_options
	.section	.rodata
	.align 8
.LC6:
	.string	"Usage: %s [options] [algorithm...]\nAll +int options consider prefix '0' as base-8 input, prefix '0x'/'0X' as base-16 input.\n"
.LC7:
	.string	"General options:\n"
.LC8:
	.string	"help"
.LC9:
	.string	"Display this summary"
.LC10:
	.string	"mb"
	.align 8
.LC11:
	.string	"Enable (tls1>=1) multi-block mode on EVP-named cipher"
.LC12:
	.string	"mr"
	.align 8
.LC13:
	.string	"Produce machine readable output"
.LC14:
	.string	"multi"
.LC15:
	.string	"Run benchmarks in parallel"
.LC16:
	.string	"async_jobs"
	.align 8
.LC17:
	.string	"Enable async mode and start specified number of jobs"
.LC18:
	.string	"engine"
	.align 8
.LC19:
	.string	"Use engine, possibly a hardware device"
.LC20:
	.string	"primes"
	.align 8
.LC21:
	.string	"Specify number of primes (for RSA only)"
.LC22:
	.string	"mlock"
	.align 8
.LC23:
	.string	"Lock memory for better result determinism"
.LC24:
	.string	"config"
	.align 8
.LC25:
	.string	"Load a configuration file (this may load modules)"
.LC26:
	.string	"Selection options:\n"
.LC27:
	.string	"evp"
	.align 8
.LC28:
	.string	"Use EVP-named cipher or digest"
.LC29:
	.string	"hmac"
.LC30:
	.string	"HMAC using EVP-named digest"
.LC31:
	.string	"cmac"
.LC32:
	.string	"CMAC using EVP-named cipher"
.LC33:
	.string	"decrypt"
	.align 8
.LC34:
	.string	"Time decryption instead of encryption (only EVP)"
.LC35:
	.string	"aead"
	.align 8
.LC36:
	.string	"Benchmark EVP-named AEAD cipher in TLS-like sequence"
.LC37:
	.string	"kem-algorithms"
.LC38:
	.string	"Benchmark KEM algorithms"
.LC39:
	.string	"signature-algorithms"
	.align 8
.LC40:
	.string	"Benchmark signature algorithms"
.LC41:
	.string	"Timing options:\n"
.LC42:
	.string	"elapsed"
	.align 8
.LC43:
	.string	"Use wall-clock time instead of CPU user time as divisor"
.LC44:
	.string	"seconds"
	.align 8
.LC45:
	.string	"Run benchmarks for specified amount of seconds"
.LC46:
	.string	"bytes"
	.align 8
.LC47:
	.string	"Run [non-PKI] benchmarks on custom-sized buffer"
.LC48:
	.string	"misalign"
	.align 8
.LC49:
	.string	"Use specified offset to mis-align buffers"
.LC50:
	.string	"Random state options:\n"
.LC51:
	.string	"rand"
	.align 8
.LC52:
	.string	"Load the given file(s) into the random number generator"
.LC53:
	.string	"writerand"
	.align 8
.LC54:
	.string	"Write random data to the specified file"
.LC55:
	.string	"Provider options:\n"
.LC56:
	.string	"provider-path"
	.align 8
.LC57:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC58:
	.string	"provider"
	.align 8
.LC59:
	.string	"Provider to load (can be specified multiple times)"
.LC60:
	.string	"propquery"
	.align 8
.LC61:
	.string	"Property query used when fetching algorithms"
.LC62:
	.string	"Parameters:\n"
.LC63:
	.string	"algorithm"
	.align 8
.LC64:
	.string	"Algorithm(s) to test (optional; otherwise tests all)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	speed_options, @object
	.size	speed_options, 816
speed_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC6
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	1
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	9
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	8
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	7
	.long	112
	.quad	.LC15
	.quad	.LC16
	.long	11
	.long	112
	.quad	.LC17
	.quad	.LC18
	.long	6
	.long	115
	.quad	.LC19
	.quad	.LC20
	.long	1606
	.long	112
	.quad	.LC21
	.quad	.LC22
	.long	1611
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	1605
	.long	60
	.quad	.LC25
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	3
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	4
	.long	115
	.quad	.LC30
	.quad	.LC31
	.long	1610
	.long	115
	.quad	.LC32
	.quad	.LC33
	.long	5
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	1609
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	1612
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	1613
	.long	45
	.quad	.LC40
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	2
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	1607
	.long	112
	.quad	.LC45
	.quad	.LC46
	.long	1608
	.long	112
	.quad	.LC47
	.quad	.LC48
	.long	10
	.long	112
	.quad	.LC49
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC50
	.quad	.LC51
	.long	1501
	.long	115
	.quad	.LC52
	.quad	.LC53
	.long	1502
	.long	62
	.quad	.LC54
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC55
	.quad	.LC56
	.long	1602
	.long	115
	.quad	.LC57
	.quad	.LC58
	.long	1601
	.long	115
	.quad	.LC59
	.quad	.LC60
	.long	1603
	.long	115
	.quad	.LC61
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC62
	.quad	.LC63
	.long	0
	.long	0
	.quad	.LC64
	.quad	0
	.zero	16
	.section	.rodata
.LC65:
	.string	"md2"
.LC66:
	.string	"mdc2"
.LC67:
	.string	"md4"
.LC68:
	.string	"md5"
.LC69:
	.string	"sha1"
.LC70:
	.string	"rmd160"
.LC71:
	.string	"sha256"
.LC72:
	.string	"sha512"
.LC73:
	.string	"whirlpool"
.LC74:
	.string	"hmac(sha256)"
.LC75:
	.string	"des-cbc"
.LC76:
	.string	"des-ede3"
.LC77:
	.string	"rc4"
.LC78:
	.string	"idea-cbc"
.LC79:
	.string	"seed-cbc"
.LC80:
	.string	"rc2-cbc"
.LC81:
	.string	"rc5-cbc"
.LC82:
	.string	"blowfish"
.LC83:
	.string	"cast-cbc"
.LC84:
	.string	"aes-128-cbc"
.LC85:
	.string	"aes-192-cbc"
.LC86:
	.string	"aes-256-cbc"
.LC87:
	.string	"camellia-128-cbc"
.LC88:
	.string	"camellia-192-cbc"
.LC89:
	.string	"camellia-256-cbc"
.LC90:
	.string	"ghash"
.LC91:
	.string	"kmac128"
.LC92:
	.string	"kmac256"
	.section	.data.rel.local
	.align 32
	.type	names, @object
	.size	names, 248
names:
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC27
	.quad	.LC90
	.quad	.LC51
	.quad	.LC31
	.quad	.LC91
	.quad	.LC92
	.section	.rodata
.LC93:
	.string	"ripemd"
.LC94:
	.string	"ripemd160"
.LC95:
	.string	"rc2"
.LC96:
	.string	"rc5"
.LC97:
	.string	"idea"
.LC98:
	.string	"seed"
.LC99:
	.string	"bf-cbc"
.LC100:
	.string	"bf"
.LC101:
	.string	"cast"
.LC102:
	.string	"cast5"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	doit_choices, @object
	.size	doit_choices, 624
doit_choices:
	.quad	.LC65
	.long	0
	.zero	4
	.quad	.LC66
	.long	1
	.zero	4
	.quad	.LC67
	.long	2
	.zero	4
	.quad	.LC68
	.long	3
	.zero	4
	.quad	.LC29
	.long	9
	.zero	4
	.quad	.LC69
	.long	4
	.zero	4
	.quad	.LC71
	.long	6
	.zero	4
	.quad	.LC72
	.long	7
	.zero	4
	.quad	.LC73
	.long	8
	.zero	4
	.quad	.LC93
	.long	5
	.zero	4
	.quad	.LC70
	.long	5
	.zero	4
	.quad	.LC94
	.long	5
	.zero	4
	.quad	.LC77
	.long	12
	.zero	4
	.quad	.LC75
	.long	10
	.zero	4
	.quad	.LC76
	.long	11
	.zero	4
	.quad	.LC84
	.long	19
	.zero	4
	.quad	.LC85
	.long	20
	.zero	4
	.quad	.LC86
	.long	21
	.zero	4
	.quad	.LC87
	.long	22
	.zero	4
	.quad	.LC88
	.long	23
	.zero	4
	.quad	.LC89
	.long	24
	.zero	4
	.quad	.LC80
	.long	15
	.zero	4
	.quad	.LC95
	.long	15
	.zero	4
	.quad	.LC81
	.long	16
	.zero	4
	.quad	.LC96
	.long	16
	.zero	4
	.quad	.LC78
	.long	13
	.zero	4
	.quad	.LC97
	.long	13
	.zero	4
	.quad	.LC79
	.long	14
	.zero	4
	.quad	.LC98
	.long	14
	.zero	4
	.quad	.LC99
	.long	17
	.zero	4
	.quad	.LC82
	.long	17
	.zero	4
	.quad	.LC100
	.long	17
	.zero	4
	.quad	.LC83
	.long	18
	.zero	4
	.quad	.LC101
	.long	18
	.zero	4
	.quad	.LC102
	.long	18
	.zero	4
	.quad	.LC90
	.long	26
	.zero	4
	.quad	.LC51
	.long	27
	.zero	4
	.quad	.LC91
	.long	29
	.zero	4
	.quad	.LC92
	.long	30
	.zero	4
	.local	results
	.comm	results,1488,32
	.section	.rodata
.LC103:
	.string	"dsa1024"
.LC104:
	.string	"dsa2048"
	.section	.data.rel.ro.local
	.align 32
	.type	dsa_choices, @object
	.size	dsa_choices, 32
dsa_choices:
	.quad	.LC103
	.long	0
	.zero	4
	.quad	.LC104
	.long	1
	.zero	4
	.local	dsa_results
	.comm	dsa_results,32,32
	.section	.rodata
.LC105:
	.string	"rsa512"
.LC106:
	.string	"rsa1024"
.LC107:
	.string	"rsa2048"
.LC108:
	.string	"rsa3072"
.LC109:
	.string	"rsa4096"
.LC110:
	.string	"rsa7680"
.LC111:
	.string	"rsa15360"
	.section	.data.rel.ro.local
	.align 32
	.type	rsa_choices, @object
	.size	rsa_choices, 112
rsa_choices:
	.quad	.LC105
	.long	0
	.zero	4
	.quad	.LC106
	.long	1
	.zero	4
	.quad	.LC107
	.long	2
	.zero	4
	.quad	.LC108
	.long	3
	.zero	4
	.quad	.LC109
	.long	4
	.zero	4
	.quad	.LC110
	.long	5
	.zero	4
	.quad	.LC111
	.long	6
	.zero	4
	.local	rsa_results
	.comm	rsa_results,224,32
	.section	.rodata
.LC112:
	.string	"ffdh2048"
.LC113:
	.string	"ffdh3072"
.LC114:
	.string	"ffdh4096"
.LC115:
	.string	"ffdh6144"
.LC116:
	.string	"ffdh8192"
	.section	.data.rel.ro.local
	.align 32
	.type	ffdh_choices, @object
	.size	ffdh_choices, 80
ffdh_choices:
	.quad	.LC112
	.long	0
	.zero	4
	.quad	.LC113
	.long	1
	.zero	4
	.quad	.LC114
	.long	2
	.zero	4
	.quad	.LC115
	.long	3
	.zero	4
	.quad	.LC116
	.long	4
	.zero	4
	.local	ffdh_results
	.comm	ffdh_results,40,32
	.section	.rodata
.LC117:
	.string	"ecdsap160"
.LC118:
	.string	"ecdsap192"
.LC119:
	.string	"ecdsap224"
.LC120:
	.string	"ecdsap256"
.LC121:
	.string	"ecdsap384"
.LC122:
	.string	"ecdsap521"
.LC123:
	.string	"ecdsak163"
.LC124:
	.string	"ecdsak233"
.LC125:
	.string	"ecdsak283"
.LC126:
	.string	"ecdsak409"
.LC127:
	.string	"ecdsak571"
.LC128:
	.string	"ecdsab163"
.LC129:
	.string	"ecdsab233"
.LC130:
	.string	"ecdsab283"
.LC131:
	.string	"ecdsab409"
.LC132:
	.string	"ecdsab571"
.LC133:
	.string	"ecdsabrp256r1"
.LC134:
	.string	"ecdsabrp256t1"
.LC135:
	.string	"ecdsabrp384r1"
.LC136:
	.string	"ecdsabrp384t1"
.LC137:
	.string	"ecdsabrp512r1"
.LC138:
	.string	"ecdsabrp512t1"
	.section	.data.rel.ro.local
	.align 32
	.type	ecdsa_choices, @object
	.size	ecdsa_choices, 352
ecdsa_choices:
	.quad	.LC117
	.long	0
	.zero	4
	.quad	.LC118
	.long	1
	.zero	4
	.quad	.LC119
	.long	2
	.zero	4
	.quad	.LC120
	.long	3
	.zero	4
	.quad	.LC121
	.long	4
	.zero	4
	.quad	.LC122
	.long	5
	.zero	4
	.quad	.LC123
	.long	6
	.zero	4
	.quad	.LC124
	.long	7
	.zero	4
	.quad	.LC125
	.long	8
	.zero	4
	.quad	.LC126
	.long	9
	.zero	4
	.quad	.LC127
	.long	10
	.zero	4
	.quad	.LC128
	.long	11
	.zero	4
	.quad	.LC129
	.long	12
	.zero	4
	.quad	.LC130
	.long	13
	.zero	4
	.quad	.LC131
	.long	14
	.zero	4
	.quad	.LC132
	.long	15
	.zero	4
	.quad	.LC133
	.long	16
	.zero	4
	.quad	.LC134
	.long	17
	.zero	4
	.quad	.LC135
	.long	18
	.zero	4
	.quad	.LC136
	.long	19
	.zero	4
	.quad	.LC137
	.long	20
	.zero	4
	.quad	.LC138
	.long	21
	.zero	4
	.section	.rodata
.LC139:
	.string	"ecdhp160"
.LC140:
	.string	"ecdhp192"
.LC141:
	.string	"ecdhp224"
.LC142:
	.string	"ecdhp256"
.LC143:
	.string	"ecdhp384"
.LC144:
	.string	"ecdhp521"
.LC145:
	.string	"ecdhk163"
.LC146:
	.string	"ecdhk233"
.LC147:
	.string	"ecdhk283"
.LC148:
	.string	"ecdhk409"
.LC149:
	.string	"ecdhk571"
.LC150:
	.string	"ecdhb163"
.LC151:
	.string	"ecdhb233"
.LC152:
	.string	"ecdhb283"
.LC153:
	.string	"ecdhb409"
.LC154:
	.string	"ecdhb571"
.LC155:
	.string	"ecdhbrp256r1"
.LC156:
	.string	"ecdhbrp256t1"
.LC157:
	.string	"ecdhbrp384r1"
.LC158:
	.string	"ecdhbrp384t1"
.LC159:
	.string	"ecdhbrp512r1"
.LC160:
	.string	"ecdhbrp512t1"
.LC161:
	.string	"ecdhx25519"
.LC162:
	.string	"ecdhx448"
	.section	.data.rel.ro.local
	.align 32
	.type	ecdh_choices, @object
	.size	ecdh_choices, 384
ecdh_choices:
	.quad	.LC139
	.long	0
	.zero	4
	.quad	.LC140
	.long	1
	.zero	4
	.quad	.LC141
	.long	2
	.zero	4
	.quad	.LC142
	.long	3
	.zero	4
	.quad	.LC143
	.long	4
	.zero	4
	.quad	.LC144
	.long	5
	.zero	4
	.quad	.LC145
	.long	6
	.zero	4
	.quad	.LC146
	.long	7
	.zero	4
	.quad	.LC147
	.long	8
	.zero	4
	.quad	.LC148
	.long	9
	.zero	4
	.quad	.LC149
	.long	10
	.zero	4
	.quad	.LC150
	.long	11
	.zero	4
	.quad	.LC151
	.long	12
	.zero	4
	.quad	.LC152
	.long	13
	.zero	4
	.quad	.LC153
	.long	14
	.zero	4
	.quad	.LC154
	.long	15
	.zero	4
	.quad	.LC155
	.long	16
	.zero	4
	.quad	.LC156
	.long	17
	.zero	4
	.quad	.LC157
	.long	18
	.zero	4
	.quad	.LC158
	.long	19
	.zero	4
	.quad	.LC159
	.long	20
	.zero	4
	.quad	.LC160
	.long	21
	.zero	4
	.quad	.LC161
	.long	22
	.zero	4
	.quad	.LC162
	.long	23
	.zero	4
	.local	ecdh_results
	.comm	ecdh_results,192,32
	.local	ecdsa_results
	.comm	ecdsa_results,352,32
	.section	.rodata
.LC163:
	.string	"ed25519"
.LC164:
	.string	"ed448"
	.section	.data.rel.ro.local
	.align 32
	.type	eddsa_choices, @object
	.size	eddsa_choices, 32
eddsa_choices:
	.quad	.LC163
	.long	0
	.zero	4
	.quad	.LC164
	.long	1
	.zero	4
	.local	eddsa_results
	.comm	eddsa_results,32,32
	.section	.rodata
.LC165:
	.string	"curveSM2"
	.section	.data.rel.ro.local
	.align 16
	.type	sm2_choices, @object
	.size	sm2_choices, 16
sm2_choices:
	.quad	.LC165
	.long	0
	.zero	4
	.local	sm2_results
	.comm	sm2_results,16,16
	.local	kems_algs_len
	.comm	kems_algs_len,8,8
	.local	kems_algname
	.comm	kems_algname,888,32
	.local	kems_results
	.comm	kems_results,2664,32
	.local	sigs_algs_len
	.comm	sigs_algs_len,8,8
	.local	sigs_algname
	.comm	sigs_algname,888,32
	.local	sigs_results
	.comm	sigs_results,2664,32
	.local	mode_op
	.comm	mode_op,4,4
	.local	aead
	.comm	aead,4,4
	.local	aead_iv
	.comm	aead_iv,12,8
	.data
	.align 8
	.type	aad, @object
	.size	aad, 13
aad:
	.string	"\314"
	.zero	11
	.align 4
	.type	aead_ivlen, @object
	.size	aead_ivlen, 4
aead_ivlen:
	.long	12
	.local	testnum
	.comm	testnum,4,4
	.section	.data.rel.local
	.align 8
	.type	evp_mac_mdname, @object
	.size	evp_mac_mdname, 8
evp_mac_mdname:
	.quad	.LC71
	.local	evp_hmac_name
	.comm	evp_hmac_name,8,8
	.local	evp_md_name
	.comm	evp_md_name,8,8
	.align 8
	.type	evp_mac_ciphername, @object
	.size	evp_mac_ciphername, 8
evp_mac_ciphername:
	.quad	.LC84
	.local	evp_cmac_name
	.comm	evp_cmac_name,8,8
	.text
	.type	have_md, @function
have_md:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md_silent@PLT
	testl	%eax, %eax
	je	.L39
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	jle	.L40
	movl	$1, -4(%rbp)
.L40:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L39:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	have_md, .-have_md
	.type	have_cipher, @function
have_cipher:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_silent@PLT
	testl	%eax, %eax
	je	.L43
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L44
	movl	$1, -4(%rbp)
.L44:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
.L43:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	have_cipher, .-have_cipher
	.type	EVP_Digest_loop, @function
EVP_Digest_loop:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -104(%rbp)
	leaq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md_silent@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$-1, %eax
	jmp	.L53
.L47:
	movl	$0, -4(%rbp)
	jmp	.L49
.L52:
	movq	-104(%rbp), %rcx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$-1, -4(%rbp)
	jmp	.L51
.L50:
	addl	$1, -4(%rbp)
.L49:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L51
	cmpl	$2147483647, -4(%rbp)
	jne	.L52
.L51:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	EVP_Digest_loop, .-EVP_Digest_loop
	.type	EVP_Digest_md_loop, @function
EVP_Digest_md_loop:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	evp_md_name(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$25, %esi
	movq	%rax, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	EVP_Digest_md_loop, .-EVP_Digest_md_loop
	.type	EVP_Digest_MD2_loop, @function
EVP_Digest_MD2_loop:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC65(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	EVP_Digest_MD2_loop, .-EVP_Digest_MD2_loop
	.type	EVP_Digest_MDC2_loop, @function
EVP_Digest_MDC2_loop:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC66(%rip), %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	EVP_Digest_MDC2_loop, .-EVP_Digest_MDC2_loop
	.type	EVP_Digest_MD4_loop, @function
EVP_Digest_MD4_loop:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC67(%rip), %rcx
	movq	%rax, %rdx
	movl	$2, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	EVP_Digest_MD4_loop, .-EVP_Digest_MD4_loop
	.type	MD5_loop, @function
MD5_loop:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC68(%rip), %rcx
	movq	%rax, %rdx
	movl	$3, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	MD5_loop, .-MD5_loop
	.type	mac_setup, @function
mac_setup:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MAC_fetch@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movl	$0, -20(%rbp)
	jmp	.L67
.L70:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	imulq	$13664, %rdx, %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, 1224(%rbx)
	movl	-20(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	1224(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L66
.L68:
	movl	-20(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	1224(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L66
.L69:
	addl	$1, -20(%rbp)
.L67:
	movl	-20(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	.L70
	movl	$1, %eax
.L66:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	mac_setup, .-mac_setup
	.type	mac_teardown, @function
mac_teardown:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L72
.L73:
	movl	-4(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	1224(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	addl	$1, -4(%rbp)
.L72:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L73
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	mac_teardown, .-mac_teardown
	.type	EVP_MAC_loop, @function
EVP_MAC_loop:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	1224(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L76
.L81:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L77
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L77
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$64, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L78
.L77:
	movl	$-1, %eax
	jmp	.L82
.L78:
	addl	$1, -4(%rbp)
.L76:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L80
	cmpl	$2147483647, -4(%rbp)
	jne	.L81
.L80:
	movl	-4(%rbp), %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	EVP_MAC_loop, .-EVP_MAC_loop
	.type	HMAC_loop, @function
HMAC_loop:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	EVP_MAC_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	HMAC_loop, .-HMAC_loop
	.type	CMAC_loop, @function
CMAC_loop:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$28, %edi
	call	EVP_MAC_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	CMAC_loop, .-CMAC_loop
	.type	KMAC128_loop, @function
KMAC128_loop:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$29, %edi
	call	EVP_MAC_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	KMAC128_loop, .-KMAC128_loop
	.type	KMAC256_loop, @function
KMAC256_loop:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$30, %edi
	call	EVP_MAC_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	KMAC256_loop, .-KMAC256_loop
	.type	SHA1_loop, @function
SHA1_loop:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC69(%rip), %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	SHA1_loop, .-SHA1_loop
	.type	SHA256_loop, @function
SHA256_loop:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC71(%rip), %rcx
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	SHA256_loop, .-SHA256_loop
	.type	SHA512_loop, @function
SHA512_loop:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC72(%rip), %rcx
	movq	%rax, %rdx
	movl	$7, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	SHA512_loop, .-SHA512_loop
	.type	WHIRLPOOL_loop, @function
WHIRLPOOL_loop:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC73(%rip), %rcx
	movq	%rax, %rdx
	movl	$8, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	WHIRLPOOL_loop, .-WHIRLPOOL_loop
	.type	EVP_Digest_RMD160_loop, @function
EVP_Digest_RMD160_loop:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC94(%rip), %rcx
	movq	%rax, %rdx
	movl	$5, %esi
	movq	%rcx, %rdi
	call	EVP_Digest_loop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	EVP_Digest_RMD160_loop, .-EVP_Digest_RMD160_loop
	.local	algindex
	.comm	algindex,4,4
	.type	EVP_Cipher_loop, @function
EVP_Cipher_loop:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	jne	.L102
	movl	$-1, %eax
	jmp	.L103
.L102:
	movl	$0, -4(%rbp)
	jmp	.L104
.L107:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	1216(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L105
	movl	$-1, %eax
	jmp	.L103
.L105:
	addl	$1, -4(%rbp)
.L104:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L106
	cmpl	$2147483647, -4(%rbp)
	jne	.L107
.L106:
	movl	-4(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	EVP_Cipher_loop, .-EVP_Cipher_loop
	.type	GHASH_loop, @function
GHASH_loop:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	1224(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L109
.L113:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	jne	.L110
	movl	$-1, %eax
	jmp	.L111
.L110:
	addl	$1, -4(%rbp)
.L109:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L112
	cmpl	$2147483647, -4(%rbp)
	jne	.L113
.L112:
	movl	-4(%rbp), %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	GHASH_loop, .-GHASH_loop
	.local	iv
	.comm	iv,32,32
	.type	init_evp_cipher_ctx, @function
init_evp_cipher_ctx:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_silent@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L121
.L115:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L119
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L118
.L119:
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jg	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L118
.L120:
	leaq	iv(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L118
.L122:
	nop
	jmp	.L118
.L123:
	nop
.L118:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	init_evp_cipher_ctx, .-init_evp_cipher_ctx
	.type	RAND_bytes_loop, @function
RAND_bytes_loop:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L125
.L127:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	addl	$1, -4(%rbp)
.L125:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L126
	cmpl	$2147483647, -4(%rbp)
	jne	.L127
.L126:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	RAND_bytes_loop, .-RAND_bytes_loop
	.local	decrypt
	.comm	decrypt,4,4
	.section	.rodata
.LC166:
	.string	"Error finalizing cipher loop\n"
	.text
	.type	EVP_Update_loop, @function
EVP_Update_loop:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	1216(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	decrypt(%rip), %eax
	testl	%eax, %eax
	je	.L130
	movl	$0, -4(%rbp)
	jmp	.L131
.L134:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	je	.L132
	leaq	iv(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	movl	%eax, -8(%rbp)
.L132:
	addl	$1, -4(%rbp)
.L131:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L133
	cmpl	$2147483647, -4(%rbp)
	jne	.L134
	jmp	.L133
.L130:
	movl	$0, -4(%rbp)
	jmp	.L135
.L137:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	je	.L136
	leaq	iv(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	movl	%eax, -8(%rbp)
.L136:
	addl	$1, -4(%rbp)
.L135:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L133
	cmpl	$2147483647, -4(%rbp)
	jne	.L137
.L133:
	movl	decrypt(%rip), %eax
	testl	%eax, %eax
	je	.L138
	leaq	-36(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	movl	%eax, -8(%rbp)
	jmp	.L139
.L138:
	leaq	-36(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	movl	%eax, -8(%rbp)
.L139:
	cmpl	$0, -8(%rbp)
	jne	.L140
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC166(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L140:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	EVP_Update_loop, .-EVP_Update_loop
	.section	.rodata
.LC167:
	.string	"\nFailed to set iv length\n"
.LC168:
	.string	"\nFailed to set tag length\n"
.LC169:
	.string	"\nFailed to set key and iv\n"
	.align 8
.LC170:
	.string	"\nCouldn't set input text length\n"
	.align 8
.LC171:
	.string	"\nCouldn't insert AAD when encrypting\n"
.LC172:
	.string	"\nFailed to encrypt the data\n"
	.text
	.type	EVP_Update_loop_aead_enc, @function
EVP_Update_loop_aead_enc:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	1216(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L143
.L152:
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L144
	movl	aead_ivlen(%rip), %edx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L144
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L144:
	movl	mode_op(%rip), %eax
	cmpl	$6, %eax
	je	.L145
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L145
	movl	mode_op(%rip), %eax
	cmpl	$65541, %eax
	je	.L145
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L145
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC168(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L145:
	leaq	aead_iv(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L146
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC169(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L146:
	movl	mode_op(%rip), %eax
	cmpl	$7, %eax
	jne	.L147
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	leaq	-44(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L147
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC170(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L147:
	movl	aead(%rip), %eax
	testl	%eax, %eax
	je	.L148
	leaq	aad(%rip), %rcx
	leaq	-44(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$13, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L148
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC171(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L148:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L149
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC172(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L149:
	leaq	-44(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	je	.L150
	addl	$1, -8(%rbp)
.L150:
	addl	$1, -4(%rbp)
.L143:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L151
	cmpl	$2147483647, -4(%rbp)
	jne	.L152
.L151:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	EVP_Update_loop_aead_enc, .-EVP_Update_loop_aead_enc
	.section	.rodata
.LC173:
	.string	"\nFailed to set iv\n"
.LC174:
	.string	"\nFailed to set tag\n"
	.align 8
.LC175:
	.string	"\nCouldn't set cipher text length\n"
	.align 8
.LC176:
	.string	"\nCouldn't insert AAD when decrypting\n"
.LC177:
	.string	"\nFailed to decrypt the data\n"
	.text
	.type	EVP_Update_loop_aead_dec, @function
EVP_Update_loop_aead_dec:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	1216(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L155
.L166:
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L156
	movl	aead_ivlen(%rip), %edx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L156
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L156:
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L157
	movl	mode_op(%rip), %eax
	cmpl	$6, %eax
	je	.L157
	movl	mode_op(%rip), %eax
	cmpl	$65541, %eax
	je	.L157
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L157
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC168(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L157:
	leaq	aead_iv(%rip), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$-1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L158
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC169(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L158:
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L159
	leaq	aead_iv(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L159
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC173(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L159:
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L160
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC174(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L160:
	movl	mode_op(%rip), %eax
	cmpl	$7, %eax
	jne	.L161
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	leaq	-68(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	jne	.L161
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC175(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L161:
	movl	aead(%rip), %eax
	testl	%eax, %eax
	je	.L162
	leaq	aad(%rip), %rcx
	leaq	-68(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$13, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	jne	.L162
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC176(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L162:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rcx
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	jne	.L163
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC177(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L163:
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	je	.L164
	addl	$1, -8(%rbp)
.L164:
	addl	$1, -4(%rbp)
.L155:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L165
	cmpl	$2147483647, -4(%rbp)
	jne	.L166
.L165:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	EVP_Update_loop_aead_dec, .-EVP_Update_loop_aead_dec
	.section	.rodata
.LC178:
	.string	"RSA sign failure\n"
	.text
	.type	RSA_sign_loop, @function
RSA_sign_loop:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L169
.L172:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$36, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L170
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC178(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L171
.L170:
	addl	$1, -4(%rbp)
.L169:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L171
	cmpl	$2147483647, -4(%rbp)
	jne	.L172
.L171:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	RSA_sign_loop, .-RSA_sign_loop
	.section	.rodata
.LC179:
	.string	"RSA verify failure\n"
	.text
	.type	RSA_verify_loop, @function
RSA_verify_loop:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L175
.L178:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$36, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L176
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC179(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L177
.L176:
	addl	$1, -4(%rbp)
.L175:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L177
	cmpl	$2147483647, -4(%rbp)
	jne	.L178
.L177:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	RSA_verify_loop, .-RSA_verify_loop
	.section	.rodata
.LC180:
	.string	"RSA encrypt failure\n"
	.text
	.type	RSA_encrypt_loop, @function
RSA_encrypt_loop:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$88, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$208, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L181
.L184:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$36, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L182
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC180(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L183
.L182:
	addl	$1, -4(%rbp)
.L181:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L183
	cmpl	$2147483647, -4(%rbp)
	jne	.L184
.L183:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	RSA_encrypt_loop, .-RSA_encrypt_loop
	.section	.rodata
.LC181:
	.string	"RSA decrypt failure\n"
	.text
	.type	RSA_decrypt_loop, @function
RSA_decrypt_loop:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$264, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L187
.L190:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L188
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC181(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L189
.L188:
	addl	$1, -4(%rbp)
.L187:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L189
	cmpl	$2147483647, -4(%rbp)
	jne	.L190
.L189:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	RSA_decrypt_loop, .-RSA_decrypt_loop
	.type	FFDH_derive_key_loop, @function
FFDH_derive_key_loop:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$144, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	1200(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L193
.L195:
	movq	$1024, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	addl	$1, -4(%rbp)
.L193:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L194
	cmpl	$2147483647, -4(%rbp)
	jne	.L195
.L194:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	FFDH_derive_key_loop, .-FFDH_derive_key_loop
	.section	.rodata
.LC182:
	.string	"DSA sign failure\n"
	.text
	.type	DSA_sign_loop, @function
DSA_sign_loop:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$320, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L198
.L201:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L199
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC182(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L200
.L199:
	addl	$1, -4(%rbp)
.L198:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L200
	cmpl	$2147483647, -4(%rbp)
	jne	.L201
.L200:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	DSA_sign_loop, .-DSA_sign_loop
	.section	.rodata
.LC183:
	.string	"DSA verify failure\n"
	.text
	.type	DSA_verify_loop, @function
DSA_verify_loop:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$336, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L204
.L207:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L205
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC183(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L206
.L205:
	addl	$1, -4(%rbp)
.L204:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L206
	cmpl	$2147483647, -4(%rbp)
	jne	.L207
.L206:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	DSA_verify_loop, .-DSA_verify_loop
	.section	.rodata
.LC184:
	.string	"ECDSA sign failure\n"
	.text
	.type	ECDSA_sign_loop, @function
ECDSA_sign_loop:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$352, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L210
.L213:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L211
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC184(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L212
.L211:
	addl	$1, -4(%rbp)
.L210:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L212
	cmpl	$2147483647, -4(%rbp)
	jne	.L213
.L212:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	ECDSA_sign_loop, .-ECDSA_sign_loop
	.section	.rodata
.LC185:
	.string	"ECDSA verify failure\n"
	.text
	.type	ECDSA_verify_loop, @function
ECDSA_verify_loop:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$528, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L216
.L219:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L217
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC185(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L218
.L217:
	addl	$1, -4(%rbp)
.L216:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L218
	cmpl	$2147483647, -4(%rbp)
	jne	.L219
.L218:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	ECDSA_verify_loop, .-ECDSA_verify_loop
	.type	ECDH_EVP_derive_key_loop, @function
ECDH_EVP_derive_key_loop:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$88, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	addq	$120, %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L222
.L224:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	addl	$1, -4(%rbp)
.L222:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L223
	cmpl	$2147483647, -4(%rbp)
	jne	.L224
.L223:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	ECDH_EVP_derive_key_loop, .-ECDH_EVP_derive_key_loop
	.section	.rodata
.LC186:
	.string	"EdDSA sign init failure\n"
.LC187:
	.string	"EdDSA sign failure\n"
	.text
	.type	EdDSA_sign_loop, @function
EdDSA_sign_loop:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$896, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L227
.L231:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L228
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC186(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L229
.L228:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L230
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC187(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L229
.L230:
	addl	$1, -4(%rbp)
.L227:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L229
	cmpl	$2147483647, -4(%rbp)
	jne	.L231
.L229:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	EdDSA_sign_loop, .-EdDSA_sign_loop
	.section	.rodata
.LC188:
	.string	"EdDSA verify init failure\n"
.LC189:
	.string	"EdDSA verify failure\n"
	.text
	.type	EdDSA_verify_loop, @function
EdDSA_verify_loop:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$912, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L234
.L238:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L235
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC188(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L236
.L235:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	je	.L237
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC189(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L236
.L237:
	addl	$1, -4(%rbp)
.L234:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L236
	cmpl	$2147483647, -4(%rbp)
	jne	.L238
.L236:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	EdDSA_verify_loop, .-EdDSA_verify_loop
	.section	.rodata
.LC190:
	.string	"SM2 init sign failure\n"
.LC191:
	.string	"SM2 sign failure\n"
	.text
	.type	SM2_sign_loop, @function
SM2_sign_loop:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$928, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	addq	$944, %rax
	movq	%rax, -64(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	cltq
	movq	%rax, -72(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L241
.L245:
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	call	EVP_sm3@PLT
	movq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rbx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	jne	.L242
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC190(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -20(%rbp)
	jmp	.L243
.L242:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L244
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC191(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -20(%rbp)
	jmp	.L243
.L244:
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 80(%rax)
	addl	$1, -20(%rbp)
.L241:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L243
	cmpl	$2147483647, -20(%rbp)
	jne	.L245
.L243:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	SM2_sign_loop, .-SM2_sign_loop
	.section	.rodata
.LC192:
	.string	"SM2 verify init failure\n"
.LC193:
	.string	"SM2 verify failure\n"
	.text
	.type	SM2_verify_loop, @function
SM2_verify_loop:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$936, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	addq	$944, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L248
.L252:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	call	EVP_sm3@PLT
	movq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rbx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	jne	.L249
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC192(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -20(%rbp)
	jmp	.L250
.L249:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -76(%rbp)
	cmpl	$1, -76(%rbp)
	je	.L251
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC193(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -20(%rbp)
	jmp	.L250
.L251:
	addl	$1, -20(%rbp)
.L248:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L250
	cmpl	$2147483647, -20(%rbp)
	jne	.L252
.L250:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	SM2_verify_loop, .-SM2_verify_loop
	.type	KEM_keygen_loop, @function
KEM_keygen_loop:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$154, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L255
.L259:
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L256
	movl	$-1, %eax
	jmp	.L260
.L256:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -32(%rbp)
	addl	$1, -4(%rbp)
.L255:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L258
	cmpl	$2147483647, -4(%rbp)
	jne	.L259
.L258:
	movl	-4(%rbp), %eax
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	KEM_keygen_loop, .-KEM_keygen_loop
	.type	KEM_encaps_loop, @function
KEM_encaps_loop:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$264, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$486, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -48(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$598, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -56(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$708, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$820, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L262
.L266:
	leaq	-56(%rbp), %rdi
	movq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	testl	%eax, %eax
	jg	.L263
	movl	$-1, %eax
	jmp	.L267
.L263:
	addl	$1, -4(%rbp)
.L262:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L265
	cmpl	$2147483647, -4(%rbp)
	jne	.L266
.L265:
	movl	-4(%rbp), %eax
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	KEM_encaps_loop, .-KEM_encaps_loop
	.type	KEM_decaps_loop, @function
KEM_decaps_loop:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$376, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$486, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$598, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -56(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$708, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -40(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$820, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L269
.L273:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	testl	%eax, %eax
	jg	.L270
	movl	$-1, %eax
	jmp	.L274
.L270:
	addl	$1, -4(%rbp)
.L269:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L272
	cmpl	$2147483647, -4(%rbp)
	jne	.L273
.L272:
	movl	-4(%rbp), %eax
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	KEM_decaps_loop, .-KEM_decaps_loop
	.type	SIG_keygen_loop, @function
SIG_keygen_loop:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1042, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L276
.L278:
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -32(%rbp)
	addl	$1, -4(%rbp)
.L276:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L277
	cmpl	$2147483647, -4(%rbp)
	jne	.L278
.L277:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	SIG_keygen_loop, .-SIG_keygen_loop
	.section	.rodata
.LC194:
	.string	"sig sign loop"
.LC195:
	.string	"SIG sign failure at count %d\n"
.LC196:
	.string	"../apps/speed.c"
	.text
	.type	SIG_sign_loop, @function
SIG_sign_loop:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1152, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1374, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	.LC194(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$32, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L281
.L284:
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1374, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L282
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	leaq	.LC195(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L283
.L282:
	addl	$1, -4(%rbp)
.L281:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L283
	cmpl	$2147483647, -4(%rbp)
	jne	.L284
.L283:
	leaq	.LC196(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1468, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	SIG_sign_loop, .-SIG_sign_loop
	.section	.rodata
	.align 8
.LC197:
	.string	"SIG verify failure at count %d\n"
	.text
	.type	SIG_verify_loop, @function
SIG_verify_loop:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1264, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1486, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	movl	testnum(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edx
	addq	$1596, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$32, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L287
.L290:
	movq	-48(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L288
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	leaq	.LC197(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$-1, -4(%rbp)
	jmp	.L289
.L288:
	addl	$1, -4(%rbp)
.L287:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L289
	cmpl	$2147483647, -4(%rbp)
	jne	.L290
.L289:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	SIG_verify_loop, .-SIG_verify_loop
	.section	.rodata
.LC198:
	.string	"\nInvalid cipher!\n"
	.align 8
.LC199:
	.string	"\nRequested encryption length not a multiple of block size for %s!\n"
	.text
	.type	check_block_size, @function
check_block_size:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L293
	cmpl	$0, -12(%rbp)
	jg	.L294
.L293:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC198(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L295
.L294:
	movl	-28(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L296
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC199(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L295
.L296:
	movl	$1, %eax
.L295:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	check_block_size, .-check_block_size
	.section	.rodata
.LC200:
	.string	"Failure in the job\n"
	.align 8
.LC201:
	.string	"Too many fds in ASYNC_WAIT_CTX\n"
	.align 8
.LC202:
	.string	"Error: max_fd (%d) must be smaller than FD_SETSIZE (%d). Decrease the value of async_jobs\n"
.LC203:
	.string	"Failure in the select\n"
	.text
	.type	run_benchmark, @function
run_benchmark:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$0, -196(%rbp)
	jne	.L298
	leaq	-216(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L340
.L298:
	movl	$0, -16(%rbp)
	jmp	.L300
.L308:
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-216(%rbp), %rcx
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$13664, %rdx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movq	-208(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movl	$8, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASYNC_start_job@PLT
	movl	%eax, -24(%rbp)
	cmpl	$3, -24(%rbp)
	je	.L301
	cmpl	$3, -24(%rbp)
	jg	.L302
	cmpl	$1, -24(%rbp)
	jg	.L303
	cmpl	$0, -24(%rbp)
	jns	.L304
	jmp	.L302
.L303:
	cmpl	$2, -24(%rbp)
	jne	.L302
	addl	$1, -8(%rbp)
	jmp	.L302
.L301:
	movl	-40(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L305
	movl	$1, -12(%rbp)
	jmp	.L302
.L305:
	movl	-40(%rbp), %eax
	addl	%eax, -4(%rbp)
	jmp	.L302
.L304:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -12(%rbp)
	nop
.L302:
	addl	$1, -16(%rbp)
.L300:
	movl	-16(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.L309
	cmpl	$0, -12(%rbp)
	je	.L308
	jmp	.L309
.L337:
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-192(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 1563 "../apps/speed.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L310
.L316:
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L341
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L313
	movq	-56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L314
.L313:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -12(%rbp)
	jmp	.L315
.L314:
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	movl	-44(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-192(%rbp,%rax,8), %rax
	movl	-44(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rax, %rdx
	movslq	%esi, %rax
	movq	%rdx, -192(%rbp,%rax,8)
	movl	-44(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L312
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L312
.L341:
	nop
.L312:
	addl	$1, -16(%rbp)
.L310:
	movl	-16(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.L315
	cmpl	$0, -8(%rbp)
	jg	.L316
.L315:
	cmpl	$1023, -20(%rbp)
	jle	.L317
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	leaq	.LC202(%rip), %rsi
	movl	$1024, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -12(%rbp)
	jmp	.L336
.L317:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edi
	leaq	-192(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	select@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L319
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L342
.L319:
	cmpl	$-1, -28(%rbp)
	jne	.L321
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC203(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -12(%rbp)
	jmp	.L336
.L321:
	cmpl	$0, -28(%rbp)
	je	.L343
	movl	$0, -16(%rbp)
	jmp	.L323
.L335:
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L344
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L326
	movq	-56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L327
.L326:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC201(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -12(%rbp)
	jmp	.L309
.L327:
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	movq	-56(%rbp), %rax
	cmpq	$1, %rax
	jne	.L329
	movl	-44(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	cltq
	movq	-192(%rbp,%rax,8), %rdx
	movl	-44(%rbp), %eax
	andl	$63, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L345
.L329:
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	leaq	(%rdx,%rax), %rsi
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-216(%rbp), %rcx
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$13664, %rdx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	movq	-208(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movl	$13664, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASYNC_start_job@PLT
	movl	%eax, -24(%rbp)
	cmpl	$3, -24(%rbp)
	je	.L330
	cmpl	$3, -24(%rbp)
	jg	.L325
	cmpl	$1, -24(%rbp)
	jg	.L331
	cmpl	$0, -24(%rbp)
	jns	.L332
	jmp	.L325
.L331:
	cmpl	$2, -24(%rbp)
	jmp	.L325
.L330:
	movl	-40(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L333
	movl	$1, -12(%rbp)
	jmp	.L334
.L333:
	movl	-40(%rbp), %eax
	addl	%eax, -4(%rbp)
.L334:
	subl	$1, -8(%rbp)
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	jmp	.L325
.L332:
	subl	$1, -8(%rbp)
	movq	-216(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$13664, %rax, %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC200(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -12(%rbp)
	jmp	.L325
.L344:
	nop
	jmp	.L325
.L345:
	nop
.L325:
	addl	$1, -16(%rbp)
.L323:
	movl	-16(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jl	.L335
	jmp	.L309
.L342:
	nop
	jmp	.L309
.L343:
	nop
.L309:
	cmpl	$0, -8(%rbp)
	jg	.L337
.L336:
	cmpl	$0, -12(%rbp)
	jne	.L338
	movl	-4(%rbp), %eax
	jmp	.L340
.L338:
	movl	$-1, %eax
.L340:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	run_benchmark, .-run_benchmark
	.section	.rodata
	.align 8
.LC204:
	.string	"WARNING: the error queue contains previous unhandled errors.\n"
	.align 8
.LC205:
	.string	"Unhandled error in the error queue during EC key setup.\n"
.LC206:
	.string	"EC"
.LC207:
	.string	"EC params init failure.\n"
.LC208:
	.string	"EC key generation failure.\n"
	.text
	.type	get_ecdsa, @function
get_ecdsa:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	je	.L347
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L347:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L348
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	call	ERR_peek_error@PLT
	movq	%rax, -24(%rbp)
	call	ERR_peek_last_error@PLT
	cmpq	%rax, -24(%rbp)
	jne	.L349
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$6, %eax
	jne	.L349
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$156, %eax
	je	.L350
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$524556, %eax
	jne	.L349
.L350:
	call	ERR_get_error@PLT
.L349:
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	je	.L351
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC205(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L358
.L351:
	leaq	.LC206(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L353
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jle	.L353
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	testl	%eax, %eax
	jle	.L353
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	jg	.L354
.L353:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC207(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
	jmp	.L358
.L354:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L348:
	cmpq	$0, -8(%rbp)
	je	.L356
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L356
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L357
.L356:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC208(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$0, -32(%rbp)
.L357:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
.L358:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	get_ecdsa, .-get_ecdsa
	.type	is_signature_fetchable, @function
is_signature_fetchable:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L360
	movl	$0, %eax
	jmp	.L361
.L360:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movl	$1, %eax
.L361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	is_signature_fetchable, .-is_signature_fetchable
	.type	is_kem_fetchable, @function
is_kem_fetchable:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, -8(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_name@PLT
	movq	%rax, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEM_fetch@PLT
	movq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L363
	movl	$0, %eax
	jmp	.L364
.L363:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_free@PLT
	movl	$1, %eax
.L364:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	is_kem_fetchable, .-is_kem_fetchable
	.type	sk_EVP_KEM_num, @function
sk_EVP_KEM_num:
.LFB703:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	sk_EVP_KEM_num, .-sk_EVP_KEM_num
	.type	sk_EVP_KEM_value, @function
sk_EVP_KEM_value:
.LFB704:
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
.LFE704:
	.size	sk_EVP_KEM_value, .-sk_EVP_KEM_value
	.type	sk_EVP_KEM_new, @function
sk_EVP_KEM_new:
.LFB705:
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
.LFE705:
	.size	sk_EVP_KEM_new, .-sk_EVP_KEM_new
	.type	sk_EVP_KEM_push, @function
sk_EVP_KEM_push:
.LFB713:
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
.LFE713:
	.size	sk_EVP_KEM_push, .-sk_EVP_KEM_push
	.type	sk_EVP_KEM_pop_free, @function
sk_EVP_KEM_pop_free:
.LFB717:
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
.LFE717:
	.size	sk_EVP_KEM_pop_free, .-sk_EVP_KEM_pop_free
	.type	kems_cmp, @function
kems_cmp:
.LFB728:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	kems_cmp, .-kems_cmp
	.type	collect_kem, @function
collect_kem:
.LFB729:
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
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_kem_fetchable
	testl	%eax, %eax
	je	.L378
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEM_push
	testl	%eax, %eax
	jle	.L378
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_up_ref@PLT
.L378:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	collect_kem, .-collect_kem
	.type	kem_locate, @function
kem_locate:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L380
.L383:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	kems_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L381
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L382
.L381:
	addl	$1, -4(%rbp)
.L380:
	movl	-4(%rbp), %edx
	movq	kems_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L383
	movl	$0, %eax
.L382:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	kem_locate, .-kem_locate
	.type	sk_EVP_SIGNATURE_num, @function
sk_EVP_SIGNATURE_num:
.LFB731:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	sk_EVP_SIGNATURE_num, .-sk_EVP_SIGNATURE_num
	.type	sk_EVP_SIGNATURE_value, @function
sk_EVP_SIGNATURE_value:
.LFB732:
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
.LFE732:
	.size	sk_EVP_SIGNATURE_value, .-sk_EVP_SIGNATURE_value
	.type	sk_EVP_SIGNATURE_new, @function
sk_EVP_SIGNATURE_new:
.LFB733:
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
.LFE733:
	.size	sk_EVP_SIGNATURE_new, .-sk_EVP_SIGNATURE_new
	.type	sk_EVP_SIGNATURE_push, @function
sk_EVP_SIGNATURE_push:
.LFB741:
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
.LFE741:
	.size	sk_EVP_SIGNATURE_push, .-sk_EVP_SIGNATURE_push
	.type	sk_EVP_SIGNATURE_pop_free, @function
sk_EVP_SIGNATURE_pop_free:
.LFB745:
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
.LFE745:
	.size	sk_EVP_SIGNATURE_pop_free, .-sk_EVP_SIGNATURE_pop_free
	.type	signatures_cmp, @function
signatures_cmp:
.LFB756:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	signatures_cmp, .-signatures_cmp
	.type	collect_signatures, @function
collect_signatures:
.LFB757:
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
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_signature_fetchable
	testl	%eax, %eax
	je	.L397
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_push
	testl	%eax, %eax
	jle	.L397
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_up_ref@PLT
.L397:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	collect_signatures, .-collect_signatures
	.type	sig_locate, @function
sig_locate:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L399
.L402:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	sigs_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L400
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L401
.L400:
	addl	$1, -4(%rbp)
.L399:
	movl	-4(%rbp), %edx
	movq	sigs_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L402
	movl	$0, %eax
.L401:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	sig_locate, .-sig_locate
	.type	get_max, @function
get_max:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L404
.L406:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -12(%rbp)
	jge	.L405
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.L405:
	addq	$1, -8(%rbp)
.L404:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L406
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	get_max, .-get_max
	.section	.rodata
	.align 8
.LC210:
	.string	"assertion failed: ed_curves[EdDSA_NUM - 1].nid == NID_ED448"
	.align 8
.LC211:
	.string	"assertion failed: ec_curves[EC_NUM - 1].nid == NID_X448"
	.align 8
.LC212:
	.string	"assertion failed: ec_curves[ECDSA_NUM - 1].nid == NID_brainpoolP512t1"
	.align 8
.LC213:
	.string	"assertion failed: sm2_curves[SM2_NUM - 1].nid == NID_sm2"
.LC214:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC215:
	.string	"%s: -evp option cannot be used more than once\n"
	.align 8
.LC216:
	.string	"%s: %s is an unknown cipher or digest\n"
.LC217:
	.string	"%s: %s is an unknown digest\n"
.LC218:
	.string	"%s: %s is an unknown cipher\n"
.LC219:
	.string	"%s: multi argument too large\n"
	.align 8
.LC220:
	.string	"%s: async_jobs specified but async not supported\n"
.LC221:
	.string	"%s: too many async_jobs\n"
.LC222:
	.string	"%s: Maximum offset is %d\n"
.LC223:
	.string	"RSA"
	.align 8
.LC224:
	.string	"Too many KEMs registered. Change MAX_KEM_NUM.\n"
.LC225:
	.string	"ECP-256"
.LC226:
	.string	"ECP-384"
.LC227:
	.string	"ECP-521"
	.align 8
.LC228:
	.string	"Too many signatures registered. Change MAX_SIG_NUM.\n"
.LC229:
	.string	"ED25519"
.LC230:
	.string	"ED448"
.LC231:
	.string	"ECDSA"
.LC232:
	.string	"HMAC"
.LC233:
	.string	"SIPHASH"
.LC234:
	.string	"POLY1305"
.LC235:
	.string	"CMAC"
.LC236:
	.string	"SM2"
.LC237:
	.string	"des"
.LC238:
	.string	"sha"
.LC239:
	.string	"openssl"
.LC240:
	.string	"rsa"
.LC241:
	.string	"ffdh"
.LC242:
	.string	"dsa"
.LC243:
	.string	"aes"
.LC244:
	.string	"camellia"
.LC245:
	.string	"ecdsa"
.LC246:
	.string	"ecdh"
.LC247:
	.string	"eddsa"
.LC248:
	.string	"sm2"
.LC249:
	.string	"kmac"
.LC250:
	.string	"%s: Unknown algorithm %s\n"
	.align 8
.LC251:
	.string	"-aead can be used only with an AEAD cipher\n"
.LC252:
	.string	"%s is not an AEAD cipher\n"
	.align 8
.LC253:
	.string	"-mb can be used only with a multi-block capable cipher\n"
	.align 8
.LC254:
	.string	"%s is not a multi-block capable\n"
	.align 8
.LC255:
	.string	"Async mode is not supported with -mb"
	.align 8
.LC256:
	.string	"Error creating the ASYNC job pool\n"
.LC257:
	.string	"array of loopargs"
.LC258:
	.string	"Error: buffer size too large\n"
	.align 8
.LC259:
	.string	"Error creating the ASYNC_WAIT_CTX\n"
.LC260:
	.string	"input buffer"
.LC261:
	.string	"ECDH secret a"
.LC262:
	.string	"ECDH secret b"
.LC263:
	.string	"FFDH secret a"
.LC264:
	.string	"FFDH secret b"
.LC265:
	.string	"GMAC"
	.align 8
.LC266:
	.string	"You have chosen to measure elapsed time instead of user CPU time.\n"
.LC267:
	.string	"HMAC name"
.LC268:
	.string	"hmac(%s)"
.LC269:
	.string	"digest"
.LC270:
	.string	"key"
.LC271:
	.string	"des-ede3-cbc"
.LC272:
	.string	"aes-128-gcm"
.LC273:
	.string	"cipher"
.LC274:
	.string	"iv"
.LC275:
	.string	"\nEVP_CIPHER_CTX_new failure\n"
.LC276:
	.string	"\nCouldn't init the context\n"
.LC277:
	.string	"evp_cipher key"
.LC278:
	.string	"\nFailed to set the key\n"
	.align 8
.LC279:
	.string	"\nFailed to to encrypt the data\n"
	.align 8
.LC280:
	.string	"\nFailed finalize the encryption\n"
.LC281:
	.string	"\nFailed to get the tag\n"
	.align 8
.LC282:
	.string	"\nFailed initializing the context\n"
	.align 8
.LC283:
	.string	"\nRequested CMAC cipher with unsupported key length.\n"
.LC284:
	.string	"CMAC name"
.LC285:
	.string	"cmac(%s)"
.LC286:
	.string	"KMAC-128"
.LC287:
	.string	"KMAC-256"
	.align 8
.LC288:
	.string	"RSA sign setup failure.  No RSA sign will be done.\n"
.LC289:
	.string	"rsa sign"
.LC290:
	.string	"private"
.LC291:
	.string	"+R1:%ld:%d:%.2f\n"
	.align 8
.LC292:
	.string	"%ld %u bits private RSA sign ops in %.2fs\n"
	.align 8
.LC293:
	.string	"RSA verify setup failure.  No RSA verify will be done.\n"
.LC294:
	.string	"rsa verify"
.LC295:
	.string	"public"
.LC296:
	.string	"+R2:%ld:%d:%.2f\n"
	.align 8
.LC297:
	.string	"%ld %u bits public RSA verify ops in %.2fs\n"
	.align 8
.LC298:
	.string	"RSA encrypt setup failure.  No RSA encrypt will be done.\n"
.LC299:
	.string	"rsa encrypt"
.LC300:
	.string	"+R3:%ld:%d:%.2f\n"
	.align 8
.LC301:
	.string	"%ld %u bits public RSA encrypt ops in %.2fs\n"
	.align 8
.LC302:
	.string	"RSA decrypt setup failure.  No RSA decrypt will be done.\n"
.LC303:
	.string	"rsa decrypt"
.LC304:
	.string	"+R4:%ld:%d:%.2f\n"
	.align 8
.LC305:
	.string	"%ld %u bits private RSA decrypt ops in %.2fs\n"
	.align 8
.LC306:
	.string	"DSA sign setup failure.  No DSA sign will be done.\n"
.LC307:
	.string	"sign"
.LC308:
	.string	"+R5:%ld:%u:%.2f\n"
	.align 8
.LC309:
	.string	"%ld %u bits DSA sign ops in %.2fs\n"
	.align 8
.LC310:
	.string	"DSA verify setup failure.  No DSA verify will be done.\n"
.LC311:
	.string	"verify"
.LC312:
	.string	"+R6:%ld:%u:%.2f\n"
	.align 8
.LC313:
	.string	"%ld %u bits DSA verify ops in %.2fs\n"
	.align 8
.LC314:
	.string	"ECDSA sign setup failure.  No ECDSA sign will be done.\n"
.LC315:
	.string	"+R7:%ld:%u:%.2f\n"
	.align 8
.LC316:
	.string	"%ld %u bits ECDSA sign ops in %.2fs\n"
	.align 8
.LC317:
	.string	"ECDSA verify setup failure.  No ECDSA verify will be done.\n"
.LC318:
	.string	"+R8:%ld:%u:%.2f\n"
	.align 8
.LC319:
	.string	"%ld %u bits ECDSA verify ops in %.2fs\n"
.LC320:
	.string	"ECDH key generation failure.\n"
.LC321:
	.string	"ECDH computation failure.\n"
	.align 8
.LC322:
	.string	"ECDH computations don't match.\n"
.LC323:
	.string	""
.LC324:
	.string	"+R9:%ld:%d:%.2f\n"
	.align 8
.LC325:
	.string	"%ld %u-bits ECDH ops in %.2fs\n"
.LC326:
	.string	"EdDSA failure.\n"
	.align 8
.LC327:
	.string	"EdDSA sign failure.  No EdDSA sign will be done.\n"
.LC328:
	.string	"+R10:%ld:%u:%s:%.2f\n"
	.align 8
.LC329:
	.string	"%ld %u bits %s sign ops in %.2fs \n"
	.align 8
.LC330:
	.string	"EdDSA verify failure.  No EdDSA verify will be done.\n"
.LC331:
	.string	"+R11:%ld:%u:%s:%.2f\n"
	.align 8
.LC332:
	.string	"%ld %u bits %s verify ops in %.2fs\n"
.LC333:
	.string	"TLSv1.3+GM+Cipher+Suite"
.LC334:
	.string	"SM2 init failure.\n"
	.align 8
.LC335:
	.string	"SM2 sign failure.  No SM2 sign will be done.\n"
.LC336:
	.string	"+R12:%ld:%u:%s:%.2f\n"
	.align 8
.LC337:
	.string	"SM2 verify failure.  No SM2 verify will be done.\n"
.LC338:
	.string	"+R13:%ld:%u:%s:%.2f\n"
	.align 8
.LC339:
	.string	"Error while initialising EVP_PKEY (out of memory?).\n"
	.align 8
.LC340:
	.string	"Error while allocating EVP_PKEY_CTX.\n"
	.align 8
.LC341:
	.string	"Error while initialising EVP_PKEY_CTX.\n"
	.align 8
.LC342:
	.string	"Error setting DH key size for keygen.\n"
.LC343:
	.string	"FFDH key generation failure.\n"
	.align 8
.LC344:
	.string	"FFDH derivation context init failure.\n"
	.align 8
.LC345:
	.string	"Assigning peer key for derivation failed.\n"
	.align 8
.LC346:
	.string	"Checking size of shared secret failed.\n"
	.align 8
.LC347:
	.string	"Assertion failure: shared secret too large.\n"
	.align 8
.LC348:
	.string	"Shared secret derive failure.\n"
.LC349:
	.string	"FFDH computation failure.\n"
	.align 8
.LC350:
	.string	"FFDH computations don't match.\n"
.LC351:
	.string	"+R14:%ld:%d:%.2f\n"
	.align 8
.LC352:
	.string	"%ld %u-bits FFDH ops in %.2fs\n"
.LC353:
	.string	"rsa%u%s"
.LC354:
	.string	"X25519"
.LC355:
	.string	"X448"
.LC356:
	.string	"bits"
.LC357:
	.string	"group"
	.align 8
.LC358:
	.string	"Error initializing keygen ctx for %s.\n"
	.align 8
.LC359:
	.string	"Error while generating KEM EVP_PKEY.\n"
.LC360:
	.string	"RSASVE"
.LC361:
	.string	"DHKEM"
	.align 8
.LC362:
	.string	"Error while initializing encaps data structs for %s.\n"
.LC363:
	.string	"encaps result"
.LC364:
	.string	"encaps secret"
	.align 8
.LC365:
	.string	"MemAlloc error in encaps for %s.\n"
.LC366:
	.string	"Encaps error for %s.\n"
	.align 8
.LC367:
	.string	"Error while initializing decaps data structs for %s.\n"
.LC368:
	.string	"KEM decaps secret"
	.align 8
.LC369:
	.string	"MemAlloc failure in decaps for %s.\n"
.LC370:
	.string	"Decaps error for %s.\n"
.LC371:
	.string	"keygen"
.LC372:
	.string	"+R15:%ld:%s:%.2f\n"
	.align 8
.LC373:
	.string	"%ld %s KEM keygen ops in %.2fs\n"
.LC374:
	.string	"encaps"
.LC375:
	.string	"+R16:%ld:%s:%.2f\n"
	.align 8
.LC376:
	.string	"%ld %s KEM encaps ops in %.2fs\n"
.LC377:
	.string	"decaps"
.LC378:
	.string	"+R17:%ld:%s:%.2f\n"
	.align 8
.LC379:
	.string	"%ld %s KEM decaps ops in %.2fs\n"
	.align 8
.LC380:
	.string	"Error initializing classic keygen ctx for %s.\n"
	.align 8
.LC381:
	.string	"Error while generating signature EVP_PKEY for %s.\n"
	.align 8
.LC382:
	.string	"Error while initializing signing data structs for %s.\n"
.LC383:
	.string	"signature buffer"
	.align 8
.LC384:
	.string	"MemAlloc error in sign for %s.\n"
.LC385:
	.string	"Signing error for %s.\n"
	.align 8
.LC386:
	.string	"Error while initializing verify data structs for %s.\n"
.LC387:
	.string	"Verify error for %s.\n"
.LC388:
	.string	"Verify 2 error for %s.\n"
.LC389:
	.string	"+R18:%ld:%s:%.2f\n"
	.align 8
.LC390:
	.string	"%ld %s signature keygen ops in %.2fs\n"
.LC391:
	.string	"signs"
.LC392:
	.string	"+R19:%ld:%s:%.2f\n"
	.align 8
.LC393:
	.string	"%ld %s signature sign ops in %.2fs\n"
.LC394:
	.string	"+R20:%ld:%s:%.2f\n"
	.align 8
.LC395:
	.string	"%ld %s signature verify ops in %.2fs\n"
.LC396:
	.string	"version: %s\n"
.LC397:
	.string	"options: %s\n"
.LC398:
	.string	"+H"
	.align 8
.LC399:
	.string	"The 'numbers' are in 1000s of bytes per second processed."
.LC400:
	.string	"type        "
.LC401:
	.string	":%d"
.LC402:
	.string	"%7d bytes"
	.align 8
.LC403:
	.string	"failed to get name of cipher '%s'\n"
.LC404:
	.string	"+F:%u:%s"
.LC405:
	.string	"%-13s"
.LC408:
	.string	" %11.2fk"
.LC409:
	.string	":%.2f"
.LC410:
	.string	" %11.2f "
.LC411:
	.string	" "
	.align 8
.LC412:
	.string	"%19ssign    verify    encrypt   decrypt   sign/s verify/s  encr./s  decr./s\n"
.LC413:
	.string	"+F2:%u:%u:%f:%f:%f:%f\n"
	.align 8
.LC415:
	.string	"rsa %5u bits %8.6fs %8.6fs %8.6fs %8.6fs %8.1f %8.1f %8.1f %8.1f\n"
	.align 8
.LC416:
	.string	"%18ssign    verify    sign/s verify/s\n"
.LC417:
	.string	"+F3:%u:%u:%f:%f\n"
	.align 8
.LC418:
	.string	"dsa %4u bits %8.6fs %8.6fs %8.1f %8.1f\n"
	.align 8
.LC419:
	.string	"%30ssign    verify    sign/s verify/s\n"
.LC420:
	.string	"+F4:%u:%u:%f:%f\n"
	.align 8
.LC421:
	.string	"%4u bits ecdsa (%s) %8.4fs %8.4fs %8.1f %8.1f\n"
.LC422:
	.string	"%30sop      op/s\n"
.LC423:
	.string	"+F5:%u:%u:%f:%f\n"
	.align 8
.LC424:
	.string	"%4u bits ecdh (%s) %8.4fs %8.1f\n"
.LC425:
	.string	"+F6:%u:%u:%s:%f:%f\n"
	.align 8
.LC426:
	.string	"%4u bits EdDSA (%s) %8.4fs %8.4fs %8.1f %8.1f\n"
.LC427:
	.string	"+F7:%u:%u:%s:%f:%f\n"
	.align 8
.LC428:
	.string	"%4u bits SM2 (%s) %8.4fs %8.4fs %8.1f %8.1f\n"
.LC429:
	.string	"%23sop     op/s\n"
.LC430:
	.string	"+F8:%u:%u:%f:%f\n"
.LC431:
	.string	"%4u bits ffdh %8.4fs %8.1f\n"
	.align 8
.LC432:
	.string	"%31skeygen    encaps    decaps keygens/s  encaps/s  decaps/s\n"
.LC433:
	.string	"+F9:%u:%f:%f:%f\n"
	.align 8
.LC434:
	.string	"%27s %8.6fs %8.6fs %8.6fs %9.1f %9.1f %9.1f\n"
	.align 8
.LC435:
	.string	"%31skeygen     signs    verify keygens/s    sign/s  verify/s\n"
.LC436:
	.string	"+F10:%u:%f:%f:%f\n"
	.text
	.globl	speed_main
	.type	speed_main, @function
speed_main:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$1520, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -1476(%rbp)
	movq	%rsi, -1488(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -584(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -256(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	movq	$0, -609(%rbp)
	movq	$0, -601(%rbp)
	movl	$1, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -628(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -264(%rbp)
	movl	$6, -92(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -656(%rbp)
	movl	$0, -124(%rbp)
	movq	$1, -136(%rbp)
	movl	$3, -704(%rbp)
	movl	$10, -700(%rbp)
	movl	$10, -696(%rbp)
	movl	$10, -692(%rbp)
	movl	$10, -688(%rbp)
	movl	$10, -684(%rbp)
	movl	$10, -680(%rbp)
	movl	$10, -676(%rbp)
	movl	$10, -672(%rbp)
	movl	$10, -668(%rbp)
	movl	$0, -711(%rbp)
	movl	$0, -708(%rbp)
	movl	$2, -140(%rbp)
	movl	$0, -716(%rbp)
	movb	$0, -712(%rbp)
	movw	$0, -718(%rbp)
	movb	$0, -719(%rbp)
	movq	$0, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -738(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -776(%rbp)
	movq	$0, -768(%rbp)
	movw	$0, -786(%rbp)
	movq	$0, -912(%rbp)
	movq	$0, -904(%rbp)
	movq	$0, -896(%rbp)
	movq	$0, -888(%rbp)
	movq	$0, -880(%rbp)
	movq	$0, -872(%rbp)
	movq	$0, -864(%rbp)
	movq	$0, -856(%rbp)
	movq	$0, -848(%rbp)
	movq	$0, -840(%rbp)
	movq	$0, -832(%rbp)
	movq	$0, -824(%rbp)
	movq	$0, -817(%rbp)
	movq	$0, -809(%rbp)
	movq	$0, -1024(%rbp)
	movq	$0, -1016(%rbp)
	movq	$0, -1008(%rbp)
	movq	$0, -1000(%rbp)
	movq	$0, -992(%rbp)
	movq	$0, -984(%rbp)
	movq	$0, -976(%rbp)
	movq	$0, -968(%rbp)
	movq	$0, -960(%rbp)
	movq	$0, -952(%rbp)
	movq	$0, -944(%rbp)
	movq	$0, -936(%rbp)
	movq	$0, -929(%rbp)
	movq	$0, -921(%rbp)
	movb	$0, -141(%rbp)
	movb	$0, -142(%rbp)
	movl	32+ed_curves.11(%rip), %eax
	cmpl	$1088, %eax
	je	.L409
	leaq	.LC196(%rip), %rcx
	leaq	.LC210(%rip), %rax
	movl	$1988, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L409:
	movl	560+ec_curves.10(%rip), %eax
	cmpl	$1035, %eax
	je	.L410
	leaq	.LC196(%rip), %rcx
	leaq	.LC211(%rip), %rax
	movl	$1991, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L410:
	movl	512+ec_curves.10(%rip), %eax
	cmpl	$934, %eax
	je	.L411
	leaq	.LC196(%rip), %rcx
	leaq	.LC212(%rip), %rax
	movl	$1994, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L411:
	movl	8+sm2_curves.9(%rip), %eax
	cmpl	$1172, %eax
	je	.L412
	leaq	.LC196(%rip), %rcx
	leaq	.LC213(%rip), %rax
	movl	$1999, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L412:
	movq	speed_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-1488(%rbp), %rcx
	movl	-1476(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -272(%rbp)
	jmp	.L413
.L454:
	cmpl	$1613, -276(%rbp)
	je	.L414
	cmpl	$1613, -276(%rbp)
	jg	.L413
	cmpl	$1612, -276(%rbp)
	je	.L415
	cmpl	$1612, -276(%rbp)
	jg	.L413
	cmpl	$1611, -276(%rbp)
	je	.L416
	cmpl	$1611, -276(%rbp)
	jg	.L413
	cmpl	$1610, -276(%rbp)
	je	.L417
	cmpl	$1610, -276(%rbp)
	jg	.L413
	cmpl	$1609, -276(%rbp)
	je	.L418
	cmpl	$1609, -276(%rbp)
	jg	.L413
	cmpl	$1608, -276(%rbp)
	je	.L419
	cmpl	$1608, -276(%rbp)
	jg	.L413
	cmpl	$1607, -276(%rbp)
	je	.L420
	cmpl	$1607, -276(%rbp)
	jg	.L413
	cmpl	$1606, -276(%rbp)
	je	.L421
	cmpl	$1606, -276(%rbp)
	jg	.L413
	cmpl	$1605, -276(%rbp)
	je	.L422
	cmpl	$1605, -276(%rbp)
	jg	.L413
	cmpl	$1604, -276(%rbp)
	je	.L413
	cmpl	$1604, -276(%rbp)
	jg	.L413
	cmpl	$1603, -276(%rbp)
	jg	.L413
	cmpl	$1601, -276(%rbp)
	jge	.L424
	cmpl	$1600, -276(%rbp)
	je	.L413
	cmpl	$1600, -276(%rbp)
	jg	.L413
	cmpl	$1503, -276(%rbp)
	je	.L413
	cmpl	$1503, -276(%rbp)
	jg	.L413
	cmpl	$1502, -276(%rbp)
	jg	.L413
	cmpl	$1501, -276(%rbp)
	jge	.L426
	cmpl	$1500, -276(%rbp)
	je	.L413
	cmpl	$1500, -276(%rbp)
	jg	.L413
	cmpl	$11, -276(%rbp)
	je	.L427
	cmpl	$11, -276(%rbp)
	jg	.L413
	cmpl	$10, -276(%rbp)
	je	.L428
	cmpl	$10, -276(%rbp)
	jg	.L413
	cmpl	$9, -276(%rbp)
	je	.L429
	cmpl	$9, -276(%rbp)
	jg	.L413
	cmpl	$8, -276(%rbp)
	je	.L430
	cmpl	$8, -276(%rbp)
	jg	.L413
	cmpl	$7, -276(%rbp)
	je	.L431
	cmpl	$7, -276(%rbp)
	jg	.L413
	cmpl	$6, -276(%rbp)
	je	.L432
	cmpl	$6, -276(%rbp)
	jg	.L413
	cmpl	$5, -276(%rbp)
	je	.L433
	cmpl	$5, -276(%rbp)
	jg	.L413
	cmpl	$4, -276(%rbp)
	je	.L434
	cmpl	$4, -276(%rbp)
	jg	.L413
	cmpl	$3, -276(%rbp)
	je	.L435
	cmpl	$3, -276(%rbp)
	jg	.L413
	cmpl	$2, -276(%rbp)
	je	.L436
	cmpl	$2, -276(%rbp)
	jg	.L413
	cmpl	$0, -276(%rbp)
	jg	.L437
	cmpl	$-1, -276(%rbp)
	jge	.L438
	jmp	.L413
.L437:
	cmpl	$1, -276(%rbp)
	je	.L439
	jmp	.L413
.L438:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC214(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L439:
	movq	speed_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -64(%rbp)
	jmp	.L440
.L436:
	movl	$0, usertime(%rip)
	jmp	.L413
.L435:
	movzbl	-599(%rbp), %eax
	testb	%al, %al
	je	.L441
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC215(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L438
.L441:
	call	ERR_set_mark@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-576(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_cipher_silent@PLT
	testl	%eax, %eax
	jne	.L442
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	have_md
	testl	%eax, %eax
	je	.L442
	call	opt_arg@PLT
	movq	%rax, evp_md_name(%rip)
.L442:
	movq	-576(%rbp), %rax
	testq	%rax, %rax
	jne	.L443
	movq	evp_md_name(%rip), %rax
	testq	%rax, %rax
	jne	.L443
	call	ERR_clear_last_mark@PLT
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC216(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L443:
	call	ERR_pop_to_mark@PLT
	movb	$1, -599(%rbp)
	jmp	.L413
.L434:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	have_md
	testl	%eax, %eax
	jne	.L444
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC217(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L444:
	call	opt_arg@PLT
	movq	%rax, evp_mac_mdname(%rip)
	movb	$1, -615(%rbp)
	jmp	.L413
.L417:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	have_cipher
	testl	%eax, %eax
	jne	.L445
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC218(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L445:
	call	opt_arg@PLT
	movq	%rax, evp_mac_ciphername(%rip)
	movb	$1, -596(%rbp)
	jmp	.L413
.L433:
	movl	$1, decrypt(%rip)
	jmp	.L413
.L432:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L413
.L431:
	call	opt_int_arg@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jns	.L413
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC219(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L1112
.L427:
	call	opt_int_arg@PLT
	movl	%eax, -104(%rbp)
	call	ASYNC_is_capable@PLT
	testl	%eax, %eax
	jne	.L448
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC220(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L438
.L448:
	cmpl	$99999, -104(%rbp)
	jbe	.L413
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC221(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L438
.L428:
	call	opt_int_arg@PLT
	movl	%eax, -68(%rbp)
	cmpl	$64, -68(%rbp)
	jle	.L413
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	.LC222(%rip), %rsi
	movl	$64, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L438
.L430:
	movl	$1, mr(%rip)
	jmp	.L413
.L429:
	movl	$1, -56(%rbp)
	jmp	.L413
.L426:
	movl	-276(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L1114
	jmp	.L413
.L424:
	movl	-276(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L1115
	jmp	.L413
.L422:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	app_load_config_modules@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1116
	jmp	.L413
.L421:
	call	opt_int_arg@PLT
	movl	%eax, -140(%rbp)
	jmp	.L413
.L420:
	call	opt_int_arg@PLT
	movl	%eax, -668(%rbp)
	movl	-668(%rbp), %eax
	movl	%eax, -672(%rbp)
	movl	-672(%rbp), %eax
	movl	%eax, -676(%rbp)
	movl	-676(%rbp), %eax
	movl	%eax, -680(%rbp)
	movl	-680(%rbp), %eax
	movl	%eax, -684(%rbp)
	movl	-684(%rbp), %eax
	movl	%eax, -688(%rbp)
	movl	-688(%rbp), %eax
	movl	%eax, -692(%rbp)
	movl	-692(%rbp), %eax
	movl	%eax, -696(%rbp)
	movl	-696(%rbp), %eax
	movl	%eax, -700(%rbp)
	movl	-700(%rbp), %eax
	movl	%eax, -704(%rbp)
	jmp	.L413
.L419:
	call	opt_int_arg@PLT
	movl	%eax, -628(%rbp)
	leaq	-628(%rbp), %rax
	movq	%rax, lengths(%rip)
	movl	$1, -92(%rbp)
	jmp	.L413
.L418:
	movl	$1, aead(%rip)
	jmp	.L413
.L415:
	movb	$1, -141(%rbp)
	jmp	.L413
.L414:
	movb	$1, -142(%rbp)
	jmp	.L413
.L416:
	movl	$1, domlock(%rip)
	nop
.L413:
	call	opt_next@PLT
	movl	%eax, -276(%rbp)
	cmpl	$0, -276(%rbp)
	jne	.L454
	leaq	kems_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEM_new
	movq	%rax, -80(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rax
	leaq	collect_kem(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_KEM_do_all_provided@PLT
	movq	$0, kems_algs_len(%rip)
	movl	$0, -636(%rbp)
	jmp	.L455
.L464:
	movl	-636(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_KEM_value
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC223(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L456
	movq	kems_algs_len(%rip), %rax
	addq	$7, %rax
	cmpq	$110, %rax
	jbe	.L457
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L457:
	movl	$0, -632(%rbp)
	jmp	.L458
.L459:
	movq	kems_algs_len(%rip), %rax
	movb	$1, -912(%rbp,%rax)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	rsa_choices(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	kems_algs_len(%rip), %rbx
	leaq	1(%rbx), %rdx
	movq	%rdx, kems_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	movl	$2176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	kems_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L458:
	movl	-632(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L459
	jmp	.L460
.L456:
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC206(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L461
	movq	kems_algs_len(%rip), %rax
	addq	$3, %rax
	cmpq	$110, %rax
	jbe	.L462
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L462:
	movq	kems_algs_len(%rip), %rax
	movb	$1, -912(%rbp,%rax)
	movq	kems_algs_len(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, kems_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	leaq	.LC225(%rip), %rax
	movl	$2185, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	kems_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	kems_algs_len(%rip), %rax
	movb	$1, -912(%rbp,%rax)
	movq	kems_algs_len(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, kems_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	leaq	.LC226(%rip), %rax
	movl	$2187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	kems_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	kems_algs_len(%rip), %rax
	movb	$1, -912(%rbp,%rax)
	movq	kems_algs_len(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, kems_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	leaq	.LC227(%rip), %rax
	movl	$2189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	kems_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	jmp	.L460
.L461:
	movq	kems_algs_len(%rip), %rax
	addq	$1, %rax
	cmpq	$110, %rax
	jbe	.L463
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L463:
	movq	kems_algs_len(%rip), %rax
	movb	$1, -912(%rbp,%rax)
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEM_get0_name@PLT
	movq	%rax, %rcx
	movq	kems_algs_len(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, kems_algs_len(%rip)
	leaq	.LC196(%rip), %rax
	movl	$2197, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	kems_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
.L460:
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)
.L455:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_KEM_num
	movl	%eax, %edx
	movl	-636(%rbp), %eax
	cmpl	%edx, %eax
	jb	.L464
	movq	EVP_KEM_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEM_pop_free
	movq	$0, -80(%rbp)
	leaq	signatures_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_new
	movq	%rax, -88(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-88(%rbp), %rax
	leaq	collect_signatures(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	EVP_SIGNATURE_do_all_provided@PLT
	movq	$0, sigs_algs_len(%rip)
	movl	$0, -636(%rbp)
	jmp	.L465
.L476:
	movl	-636(%rbp), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_value
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_name@PLT
	movq	%rax, -552(%rbp)
	leaq	.LC223(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L466
	movq	sigs_algs_len(%rip), %rax
	addq	$7, %rax
	cmpq	$110, %rax
	jbe	.L467
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC228(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L467:
	movl	$0, -632(%rbp)
	jmp	.L468
.L469:
	movq	sigs_algs_len(%rip), %rax
	movb	$1, -1024(%rbp,%rax)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	rsa_choices(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	sigs_algs_len(%rip), %rbx
	leaq	1(%rbx), %rdx
	movq	%rdx, sigs_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	movl	$2221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	sigs_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L468:
	movl	-632(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L469
	jmp	.L470
.L466:
	leaq	.LC0(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L471
	movq	sigs_algs_len(%rip), %rax
	addq	$2, %rax
	cmpq	$110, %rax
	jbe	.L472
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC228(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L472:
	movl	$0, -632(%rbp)
	jmp	.L473
.L474:
	movq	sigs_algs_len(%rip), %rax
	movb	$1, -1024(%rbp,%rax)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_choices(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	sigs_algs_len(%rip), %rbx
	leaq	1(%rbx), %rdx
	movq	%rdx, sigs_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	movl	$2232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	sigs_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L473:
	movl	-632(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L474
	jmp	.L470
.L471:
	leaq	.LC229(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC230(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC231(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC232(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC233(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC234(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC235(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	leaq	.LC236(%rip), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L470
	movq	sigs_algs_len(%rip), %rax
	addq	$1, %rax
	cmpq	$110, %rax
	jbe	.L475
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC228(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L475:
	movq	sigs_algs_len(%rip), %rax
	movb	$1, -1024(%rbp,%rax)
	movq	sigs_algs_len(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, sigs_algs_len(%rip)
	leaq	.LC196(%rip), %rcx
	movq	-552(%rbp), %rax
	movl	$2251, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leaq	0(,%rbx,8), %rcx
	leaq	sigs_algname(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
.L470:
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)
.L465:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_num
	movl	%eax, %edx
	movl	-636(%rbp), %eax
	cmpl	%edx, %eax
	jb	.L476
	movq	EVP_SIGNATURE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_pop_free
	movq	$0, -88(%rbp)
	call	opt_num_rest@PLT
	movl	%eax, -1476(%rbp)
	call	opt_rest@PLT
	movq	%rax, -1488(%rbp)
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L1117
	jmp	.L478
.L504:
	movq	-1488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movl	$0, -148(%rbp)
	leaq	doit_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$39, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L479
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$1, -624(%rbp,%rax)
	movl	$1, -148(%rbp)
.L479:
	leaq	.LC237(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L480
	movb	$1, -613(%rbp)
	movzbl	-613(%rbp), %eax
	movb	%al, -614(%rbp)
	movl	$1, -148(%rbp)
.L480:
	leaq	.LC238(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L481
	movb	$1, -617(%rbp)
	movzbl	-617(%rbp), %eax
	movb	%al, -618(%rbp)
	movzbl	-618(%rbp), %eax
	movb	%al, -620(%rbp)
	movl	$1, -148(%rbp)
.L481:
	leaq	.LC239(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L482
	movl	$1, -148(%rbp)
.L482:
	leaq	.LC240(%rip), %rcx
	movq	-536(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L483
	movq	-536(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L484
	leaq	-711(%rbp), %rax
	movl	$7, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -148(%rbp)
.L484:
	leaq	rsa_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L483
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$1, -711(%rbp,%rax)
	movl	$1, -148(%rbp)
.L483:
	leaq	.LC241(%rip), %rcx
	movq	-536(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L485
	movq	-536(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L486
	leaq	-716(%rbp), %rax
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -148(%rbp)
.L486:
	leaq	ffdh_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L485
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$2, -716(%rbp,%rax)
	movl	$1, -148(%rbp)
.L485:
	leaq	.LC242(%rip), %rcx
	movq	-536(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L487
	movq	-536(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L488
	leaq	-718(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -148(%rbp)
.L488:
	leaq	dsa_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L487
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$2, -718(%rbp,%rax)
	movl	$1, -148(%rbp)
.L487:
	leaq	.LC243(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L489
	movb	$1, -603(%rbp)
	movzbl	-603(%rbp), %eax
	movb	%al, -604(%rbp)
	movzbl	-604(%rbp), %eax
	movb	%al, -605(%rbp)
	movl	$1, -148(%rbp)
.L489:
	leaq	.LC244(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L490
	movb	$1, -600(%rbp)
	movzbl	-600(%rbp), %eax
	movb	%al, -601(%rbp)
	movzbl	-601(%rbp), %eax
	movb	%al, -602(%rbp)
	movl	$1, -148(%rbp)
.L490:
	leaq	.LC245(%rip), %rcx
	movq	-536(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L491
	movq	-536(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L492
	leaq	-752(%rbp), %rax
	movl	$22, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -148(%rbp)
.L492:
	leaq	ecdsa_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$22, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L491
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$2, -752(%rbp,%rax)
	movl	$1, -148(%rbp)
.L491:
	leaq	.LC246(%rip), %rcx
	movq	-536(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L493
	movq	-536(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L494
	leaq	-784(%rbp), %rax
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -148(%rbp)
.L494:
	leaq	ecdh_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$24, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L493
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$2, -784(%rbp,%rax)
	movl	$1, -148(%rbp)
.L493:
	leaq	.LC247(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L495
	leaq	-786(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -148(%rbp)
.L495:
	leaq	eddsa_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L496
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$2, -786(%rbp,%rax)
	movl	$1, -148(%rbp)
.L496:
	leaq	.LC248(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L497
	movb	$1, -719(%rbp)
	movl	$1, -148(%rbp)
.L497:
	leaq	sm2_choices(%rip), %rdx
	leaq	-632(%rbp), %rsi
	movq	-536(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	opt_found
	testl	%eax, %eax
	je	.L498
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$2, -719(%rbp,%rax)
	movl	$1, -148(%rbp)
.L498:
	leaq	-636(%rbp), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kem_locate
	testl	%eax, %eax
	je	.L499
	movl	-636(%rbp), %edx
	movl	%edx, %eax
	movzbl	-912(%rbp,%rax), %eax
	addl	$1, %eax
	movl	%edx, %edx
	movb	%al, -912(%rbp,%rdx)
	movb	$1, -141(%rbp)
	movl	$1, -148(%rbp)
.L499:
	leaq	-636(%rbp), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sig_locate
	testl	%eax, %eax
	je	.L500
	movl	-636(%rbp), %edx
	movl	%edx, %eax
	movzbl	-1024(%rbp,%rax), %eax
	addl	$1, %eax
	movl	%edx, %edx
	movb	%al, -1024(%rbp,%rdx)
	movb	$1, -142(%rbp)
	movl	$1, -148(%rbp)
.L500:
	leaq	.LC249(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L501
	movb	$1, -594(%rbp)
	movzbl	-594(%rbp), %eax
	movb	%al, -595(%rbp)
	movl	$1, -148(%rbp)
.L501:
	leaq	.LC31(%rip), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L502
	movb	$1, -596(%rbp)
	movl	$1, -148(%rbp)
.L502:
	cmpl	$0, -148(%rbp)
	jne	.L503
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-536(%rbp), %rcx
	movq	-272(%rbp), %rdx
	leaq	.LC250(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L503:
	addq	$8, -1488(%rbp)
.L478:
	movq	-1488(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L504
	movl	aead(%rip), %eax
	testl	%eax, %eax
	je	.L505
	movq	-576(%rbp), %rax
	testq	%rax, %rax
	jne	.L506
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC251(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L506:
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	jne	.L505
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC252(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L505:
	movq	kems_algs_len(%rip), %rax
	testq	%rax, %rax
	je	.L507
	movq	kems_algs_len(%rip), %rdx
	leaq	-912(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_max
	movl	%eax, -280(%rbp)
	cmpl	$1, -280(%rbp)
	jle	.L507
	movl	$0, -632(%rbp)
	jmp	.L508
.L509:
	movl	-632(%rbp), %edx
	movl	%edx, %eax
	movzbl	-912(%rbp,%rax), %eax
	subl	$1, %eax
	movl	%edx, %edx
	movb	%al, -912(%rbp,%rdx)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L508:
	movl	-632(%rbp), %eax
	movl	%eax, %edx
	movq	kems_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L509
.L507:
	movq	sigs_algs_len(%rip), %rax
	testq	%rax, %rax
	je	.L510
	movq	sigs_algs_len(%rip), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_max
	movl	%eax, -284(%rbp)
	cmpl	$1, -284(%rbp)
	jle	.L510
	movl	$0, -632(%rbp)
	jmp	.L511
.L512:
	movl	-632(%rbp), %edx
	movl	%edx, %eax
	movzbl	-1024(%rbp,%rax), %eax
	subl	$1, %eax
	movl	%edx, %edx
	movb	%al, -1024(%rbp,%rdx)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L511:
	movl	-632(%rbp), %eax
	movl	%eax, %edx
	movq	sigs_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L512
.L510:
	cmpl	$0, -56(%rbp)
	je	.L513
	movq	-576(%rbp), %rax
	testq	%rax, %rax
	jne	.L514
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC253(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L514:
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$4194304, %eax
	testq	%rax, %rax
	jne	.L515
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC254(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L515:
	cmpl	$0, -104(%rbp)
	je	.L513
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC255(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L513:
	cmpl	$0, -104(%rbp)
	je	.L516
	movl	-104(%rbp), %edx
	movl	-104(%rbp), %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASYNC_init_thread@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L516
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC256(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L516:
	cmpl	$0, -104(%rbp)
	je	.L517
	movl	-104(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.L518
.L517:
	movl	$1, -100(%rbp)
.L518:
	movl	-100(%rbp), %eax
	imulq	$13664, %rax, %rax
	leaq	.LC257(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -40(%rbp)
	movl	-100(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	lengths(%rip), %rax
	movl	-92(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -112(%rbp)
	cmpl	$35, -112(%rbp)
	jg	.L519
	movl	$36, -112(%rbp)
.L519:
	cmpl	$2147483583, -112(%rbp)
	jle	.L520
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC258(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L520:
	addl	$64, -112(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L521
.L523:
	cmpl	$0, -104(%rbp)
	je	.L522
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, 8(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L522
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC259(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L522:
	movl	-112(%rbp), %eax
	cltq
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	leaq	.LC260(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, 32(%rbx)
	movl	-112(%rbp), %eax
	cltq
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	leaq	.LC260(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, 40(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rcx
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, 16(%rax)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rcx
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
	movl	-112(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	cltq
	movq	%rax, 72(%rdx)
	movl	-112(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	cltq
	movq	%rax, 80(%rdx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	.LC261(%rip), %rax
	movq	%rax, %rsi
	movl	$256, %edi
	call	app_malloc@PLT
	movq	%rax, 952(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	.LC262(%rip), %rax
	movq	%rax, %rsi
	movl	$256, %edi
	call	app_malloc@PLT
	movq	%rax, 960(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	.LC263(%rip), %rax
	movq	%rax, %rsi
	movl	$1024, %edi
	call	app_malloc@PLT
	movq	%rax, 1200(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	.LC264(%rip), %rax
	movq	%rax, %rsi
	movl	$1024, %edi
	call	app_malloc@PLT
	movq	%rax, 1208(%rbx)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L521:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L523
	cmpl	$0, -124(%rbp)
	je	.L524
	movl	-92(%rbp), %edx
	movl	-124(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	do_multi
	testl	%eax, %eax
	jne	.L1118
.L524:
	movl	$0, -632(%rbp)
	jmp	.L526
.L528:
	movl	domlock(%rip), %eax
	testl	%eax, %eax
	je	.L527
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mlock@PLT
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mlock@PLT
.L527:
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L526:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L528
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -1476(%rbp)
	jne	.L529
	movzbl	-599(%rbp), %eax
	testb	%al, %al
	jne	.L529
	movzbl	-615(%rbp), %eax
	testb	%al, %al
	jne	.L529
	movzbl	-596(%rbp), %eax
	testb	%al, %al
	jne	.L529
	cmpb	$0, -141(%rbp)
	jne	.L529
	cmpb	$0, -142(%rbp)
	jne	.L529
	leaq	-624(%rbp), %rax
	movl	$31, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -596(%rbp)
	movzbl	-596(%rbp), %eax
	movb	%al, -599(%rbp)
	call	ERR_set_mark@PLT
	movl	$0, -632(%rbp)
	jmp	.L530
.L532:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	have_md
	testl	%eax, %eax
	jne	.L531
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$0, -624(%rbp,%rax)
.L531:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L530:
	movl	-632(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L532
	movl	$10, -632(%rbp)
	jmp	.L533
.L535:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	have_cipher
	testl	%eax, %eax
	jne	.L534
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movb	$0, -624(%rbp,%rax)
.L534:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L533:
	movl	-632(%rbp), %eax
	cmpl	$24, %eax
	jbe	.L535
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	.LC265(%rip), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	testq	%rax, %rax
	je	.L536
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	$0, -584(%rbp)
	jmp	.L537
.L536:
	movb	$0, -598(%rbp)
.L537:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	.LC232(%rip), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	testq	%rax, %rax
	je	.L538
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	$0, -584(%rbp)
	jmp	.L539
.L538:
	movb	$0, -615(%rbp)
.L539:
	call	ERR_pop_to_mark@PLT
	leaq	-711(%rbp), %rax
	movl	$7, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-716(%rbp), %rax
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-718(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-752(%rbp), %rax
	movl	$22, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-784(%rbp), %rax
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-786(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$1, -719(%rbp)
	leaq	-912(%rbp), %rax
	movl	$111, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$1, -141(%rbp)
	leaq	-1024(%rbp), %rax
	movl	$111, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$1, -142(%rbp)
.L529:
	movl	$0, -632(%rbp)
	jmp	.L540
.L542:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	movzbl	-624(%rbp,%rax), %eax
	testb	%al, %al
	je	.L541
	addl	$1, -60(%rbp)
.L541:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L540:
	movl	-632(%rbp), %eax
	cmpl	$30, %eax
	jbe	.L542
	movl	usertime(%rip), %eax
	testl	%eax, %eax
	jne	.L543
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L543
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC266(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L543:
	leaq	alarmed(%rip), %rax
	movq	%rax, %rsi
	movl	$14, %edi
	call	signal@PLT
	movzbl	-624(%rbp), %eax
	testb	%al, %al
	je	.L544
	movl	$0, testnum(%rip)
	jmp	.L545
.L547:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Digest_MD2_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$0, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1119
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L545:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L547
	jmp	.L544
.L1119:
	nop
.L544:
	movzbl	-623(%rbp), %eax
	testb	%al, %al
	je	.L548
	movl	$0, testnum(%rip)
	jmp	.L549
.L551:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	8+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Digest_MDC2_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$1, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1120
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L549:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L551
	jmp	.L548
.L1120:
	nop
.L548:
	movzbl	-622(%rbp), %eax
	testb	%al, %al
	je	.L552
	movl	$0, testnum(%rip)
	jmp	.L553
.L555:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	16+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Digest_MD4_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$2, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1121
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L553:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L555
	jmp	.L552
.L1121:
	nop
.L552:
	movzbl	-621(%rbp), %eax
	testb	%al, %al
	je	.L556
	movl	$0, testnum(%rip)
	jmp	.L557
.L559:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	24+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	MD5_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$3, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1122
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L557:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L559
	jmp	.L556
.L1122:
	nop
.L556:
	movzbl	-620(%rbp), %eax
	testb	%al, %al
	je	.L560
	movl	$0, testnum(%rip)
	jmp	.L561
.L563:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	32+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SHA1_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$4, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1123
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L561:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L563
	jmp	.L560
.L1123:
	nop
.L560:
	movzbl	-618(%rbp), %eax
	testb	%al, %al
	je	.L564
	movl	$0, testnum(%rip)
	jmp	.L565
.L567:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	48+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SHA256_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$6, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1124
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L565:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L567
	jmp	.L564
.L1124:
	nop
.L564:
	movzbl	-617(%rbp), %eax
	testb	%al, %al
	je	.L568
	movl	$0, testnum(%rip)
	jmp	.L569
.L571:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	56+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SHA512_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$7, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1125
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L569:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L571
	jmp	.L568
.L1125:
	nop
.L568:
	movzbl	-616(%rbp), %eax
	testb	%al, %al
	je	.L572
	movl	$0, testnum(%rip)
	jmp	.L573
.L575:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	64+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	WHIRLPOOL_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$8, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1126
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L573:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L575
	jmp	.L572
.L1126:
	nop
.L572:
	movzbl	-619(%rbp), %eax
	testb	%al, %al
	je	.L576
	movl	$0, testnum(%rip)
	jmp	.L577
.L579:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	40+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Digest_RMD160_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$5, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1127
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L577:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L579
	jmp	.L576
.L1127:
	nop
.L576:
	movzbl	-615(%rbp), %eax
	testb	%al, %al
	je	.L580
	leaq	hmac_key.8(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -288(%rbp)
	movq	evp_mac_mdname(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$7, %rax
	movq	%rax, -296(%rbp)
	movq	evp_mac_mdname(%rip), %rax
	testq	%rax, %rax
	je	.L1128
	leaq	.LC267(%rip), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, evp_hmac_name(%rip)
	movq	evp_mac_mdname(%rip), %rdx
	movq	evp_hmac_name(%rip), %rax
	leaq	.LC268(%rip), %rdi
	movq	-296(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	evp_hmac_name(%rip), %rax
	movq	%rax, 72+names(%rip)
	movq	evp_mac_mdname(%rip), %rdx
	leaq	-1536(%rbp), %rax
	leaq	.LC269(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1360(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1344(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1328(%rbp)
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	hmac_key.8(%rip), %rdi
	leaq	.LC270(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1320(%rbp)
	movq	%rdx, -1312(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1304(%rbp)
	movq	%rdx, -1296(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1288(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1280(%rbp)
	movq	%rdx, -1272(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1264(%rbp)
	movq	%rdx, -1256(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movl	-100(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	-1360(%rbp), %rdx
	leaq	-584(%rbp), %rax
	leaq	.LC232(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	mac_setup
	testl	%eax, %eax
	jle	.L1129
	movl	$0, testnum(%rip)
	jmp	.L584
.L587:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	72+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	HMAC_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$9, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1130
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L584:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L587
	jmp	.L586
.L1130:
	nop
.L586:
	movl	-100(%rbp), %edx
	movq	-40(%rbp), %rcx
	leaq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_teardown
.L580:
	movzbl	-614(%rbp), %eax
	testb	%al, %al
	je	.L588
	movl	$1, -152(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L589
.L591:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	deskey.7(%rip), %rcx
	leaq	.LC75(%rip), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	init_evp_cipher_ctx
	movq	%rax, 1216(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L589:
	cmpl	$0, -152(%rbp)
	je	.L590
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L591
.L590:
	movl	$10, algindex(%rip)
	movl	$0, testnum(%rip)
	jmp	.L592
.L595:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	1216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_block_size
	testl	%eax, %eax
	je	.L1131
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	80+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Cipher_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$10, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L592:
	cmpl	$0, -152(%rbp)
	je	.L594
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L595
	jmp	.L594
.L1131:
	nop
.L594:
	movl	$0, -632(%rbp)
	jmp	.L596
.L597:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L596:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L597
.L588:
	movzbl	-613(%rbp), %eax
	testb	%al, %al
	je	.L598
	movl	$1, -156(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L599
.L601:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	deskey.7(%rip), %rcx
	leaq	.LC271(%rip), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	init_evp_cipher_ctx
	movq	%rax, 1216(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -156(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L599:
	cmpl	$0, -156(%rbp)
	je	.L600
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L601
.L600:
	movl	$11, algindex(%rip)
	movl	$0, testnum(%rip)
	jmp	.L602
.L605:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	1216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_block_size
	testl	%eax, %eax
	je	.L1132
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	88+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Cipher_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$11, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L602:
	cmpl	$0, -156(%rbp)
	je	.L604
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L605
	jmp	.L604
.L1132:
	nop
.L604:
	movl	$0, -632(%rbp)
	jmp	.L606
.L607:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L606:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L607
.L598:
	movl	$0, -96(%rbp)
	jmp	.L608
.L619:
	movl	-96(%rbp), %eax
	addl	$19, %eax
	movl	%eax, algindex(%rip)
	movl	algindex(%rip), %eax
	cltq
	movzbl	-624(%rbp,%rax), %eax
	testb	%al, %al
	je	.L609
	movl	$1, -160(%rbp)
	movl	-96(%rbp), %eax
	addl	$2, %eax
	sall	$3, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L610
.L612:
	movl	algindex(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-108(%rbp), %edx
	leaq	key32.6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	init_evp_cipher_ctx
	movq	%rax, 1216(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -160(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L610:
	cmpl	$0, -160(%rbp)
	je	.L611
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L612
.L611:
	movl	$0, testnum(%rip)
	jmp	.L613
.L616:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	1216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_block_size
	testl	%eax, %eax
	je	.L1133
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	algindex(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	leaq	names(%rip), %rax
	movq	(%rsi,%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Cipher_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %esi
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movl	algindex(%rip), %eax
	movq	-256(%rbp), %rdx
	movq	%rdx, %xmm0
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L613:
	cmpl	$0, -160(%rbp)
	je	.L615
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L616
	jmp	.L615
.L1133:
	nop
.L615:
	movl	$0, -632(%rbp)
	jmp	.L617
.L618:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L617:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L618
.L609:
	addl	$1, -96(%rbp)
.L608:
	cmpl	$2, -96(%rbp)
	jbe	.L619
	movl	$0, -96(%rbp)
	jmp	.L620
.L631:
	movl	-96(%rbp), %eax
	addl	$22, %eax
	movl	%eax, algindex(%rip)
	movl	algindex(%rip), %eax
	cltq
	movzbl	-624(%rbp,%rax), %eax
	testb	%al, %al
	je	.L621
	movl	$1, -164(%rbp)
	movl	-96(%rbp), %eax
	addl	$2, %eax
	sall	$3, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L622
.L624:
	movl	algindex(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-108(%rbp), %edx
	leaq	key32.6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	init_evp_cipher_ctx
	movq	%rax, 1216(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -164(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L622:
	cmpl	$0, -164(%rbp)
	je	.L623
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L624
.L623:
	movl	$0, testnum(%rip)
	jmp	.L625
.L628:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	1216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_block_size
	testl	%eax, %eax
	je	.L1134
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	algindex(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	leaq	names(%rip), %rax
	movq	(%rsi,%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Cipher_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %esi
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movl	algindex(%rip), %eax
	movq	-256(%rbp), %rdx
	movq	%rdx, %xmm0
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L625:
	cmpl	$0, -164(%rbp)
	je	.L627
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L628
	jmp	.L627
.L1134:
	nop
.L627:
	movl	$0, -632(%rbp)
	jmp	.L629
.L630:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L629:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L630
.L621:
	addl	$1, -96(%rbp)
.L620:
	cmpl	$2, -96(%rbp)
	jbe	.L631
	movl	$12, algindex(%rip)
	jmp	.L632
.L643:
	movl	algindex(%rip), %eax
	cltq
	movzbl	-624(%rbp,%rax), %eax
	testb	%al, %al
	je	.L633
	movl	$1, -168(%rbp)
	movl	$16, -108(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L634
.L636:
	movl	algindex(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-108(%rbp), %edx
	leaq	key32.6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	init_evp_cipher_ctx
	movq	%rax, 1216(%rbx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -168(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L634:
	cmpl	$0, -168(%rbp)
	je	.L635
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L636
.L635:
	movl	$0, testnum(%rip)
	jmp	.L637
.L640:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	1216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_block_size
	testl	%eax, %eax
	je	.L1135
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	algindex(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	leaq	names(%rip), %rax
	movq	(%rsi,%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Cipher_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %esi
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movl	algindex(%rip), %eax
	movq	-256(%rbp), %rdx
	movq	%rdx, %xmm0
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L637:
	cmpl	$0, -168(%rbp)
	je	.L639
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L640
	jmp	.L639
.L1135:
	nop
.L639:
	movl	$0, -632(%rbp)
	jmp	.L641
.L642:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L641:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L642
.L633:
	movl	algindex(%rip), %eax
	addl	$1, %eax
	movl	%eax, algindex(%rip)
.L632:
	movl	algindex(%rip), %eax
	cmpl	$18, %eax
	jle	.L643
	movzbl	-598(%rbp), %eax
	testb	%al, %al
	je	.L644
	leaq	-1536(%rbp), %rax
	leaq	.LC272(%rip), %rdx
	leaq	.LC273(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1360(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1344(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1328(%rbp)
	leaq	-1536(%rbp), %rax
	leaq	gmac_iv.5(%rip), %rdx
	leaq	.LC274(%rip), %rsi
	movl	$12, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1320(%rbp)
	movq	%rdx, -1312(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1304(%rbp)
	movq	%rdx, -1296(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1288(%rbp)
	leaq	-1536(%rbp), %rax
	leaq	key32.6(%rip), %rdx
	leaq	.LC270(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1280(%rbp)
	movq	%rdx, -1272(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1264(%rbp)
	movq	%rdx, -1256(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1248(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1240(%rbp)
	movq	%rdx, -1232(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1224(%rbp)
	movq	%rdx, -1216(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movl	-100(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	-1360(%rbp), %rdx
	leaq	-584(%rbp), %rax
	leaq	.LC265(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	mac_setup
	testl	%eax, %eax
	jle	.L1136
	movl	$0, -632(%rbp)
	jmp	.L647
.L649:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1224(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L1137
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L647:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L649
	movl	$0, testnum(%rip)
	jmp	.L650
.L653:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	208+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	GHASH_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$26, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1138
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L650:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L653
	jmp	.L652
.L1138:
	nop
.L652:
	movl	-100(%rbp), %edx
	movq	-40(%rbp), %rcx
	leaq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_teardown
.L644:
	movzbl	-597(%rbp), %eax
	testb	%al, %al
	je	.L654
	movl	$0, testnum(%rip)
	jmp	.L655
.L656:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	216+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	RAND_bytes_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$27, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L655:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L656
.L654:
	movzbl	-599(%rbp), %eax
	testb	%al, %al
	je	.L657
	movq	-576(%rbp), %rax
	testq	%rax, %rax
	je	.L658
	movl	$0, -1028(%rbp)
	movl	$0, -180(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L659
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$4194304, %eax
	testq	%rax, %rax
	je	.L659
	movl	-628(%rbp), %ecx
	movq	-576(%rbp), %rax
	leaq	-704(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	multiblock_speed
	movl	$0, -64(%rbp)
	jmp	.L440
.L659:
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, 200+names(%rip)
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, mode_op(%rip)
	movl	aead(%rip), %eax
	testl	%eax, %eax
	je	.L660
	movq	lengths(%rip), %rdx
	leaq	lengths_list(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L660
	leaq	aead_lengths_list(%rip), %rax
	movq	%rax, lengths(%rip)
	movl	$6, -92(%rbp)
.L660:
	movl	mode_op(%rip), %eax
	cmpl	$6, %eax
	je	.L661
	movl	mode_op(%rip), %eax
	cmpl	$7, %eax
	je	.L661
	movl	mode_op(%rip), %eax
	cmpl	$65539, %eax
	je	.L661
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L661
	movl	mode_op(%rip), %eax
	cmpl	$65541, %eax
	jne	.L662
.L661:
	movl	$1, -180(%rbp)
	movl	decrypt(%rip), %eax
	testl	%eax, %eax
	je	.L663
	leaq	EVP_Update_loop_aead_dec(%rip), %rax
	movq	%rax, -176(%rbp)
	jmp	.L665
.L663:
	leaq	EVP_Update_loop_aead_enc(%rip), %rax
	movq	%rax, -176(%rbp)
	jmp	.L665
.L662:
	leaq	EVP_Update_loop(%rip), %rax
	movq	%rax, -176(%rbp)
.L665:
	movl	$0, testnum(%rip)
	jmp	.L666
.L691:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	200+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, -96(%rbp)
	jmp	.L667
.L688:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, 1216(%rbx)
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	jne	.L668
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC275(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L668:
	cmpl	$0, -180(%rbp)
	jne	.L669
	movl	decrypt(%rip), %eax
	testl	%eax, %eax
	jne	.L670
.L669:
	movl	$1, %ecx
	jmp	.L671
.L670:
	movl	$0, %ecx
.L671:
	movq	-576(%rbp), %rsi
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L672
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC276(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L672:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	cltq
	movl	-96(%rbp), %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	leaq	.LC277(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, 48(%rbx)
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rdx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	1216(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_rand_key@PLT
	cmpl	$0, -180(%rbp)
	jne	.L673
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rdx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	1216(%rax), %rax
	leaq	iv(%rip), %rcx
	movl	$-1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L674
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC278(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L673:
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L675
	movl	mode_op(%rip), %eax
	cmpl	$65541, %eax
	jne	.L674
.L675:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$39, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
.L674:
	cmpl	$0, -180(%rbp)
	je	.L676
	movl	decrypt(%rip), %eax
	testl	%eax, %eax
	je	.L676
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L677
	movl	aead_ivlen(%rip), %edx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	1216(%rax), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L677
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC167(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L677:
	movl	mode_op(%rip), %eax
	cmpl	$6, %eax
	je	.L678
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L678
	movl	mode_op(%rip), %eax
	cmpl	$65541, %eax
	je	.L678
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L678
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC168(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L678:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rdx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	1216(%rax), %rax
	leaq	aead_iv(%rip), %rcx
	movl	$-1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L679
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC278(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L679:
	movl	mode_op(%rip), %eax
	cmpl	$7, %eax
	jne	.L680
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	leaq	-1028(%rbp), %rdx
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L680
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC170(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L680:
	movl	aead(%rip), %eax
	testl	%eax, %eax
	je	.L681
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	leaq	aad(%rip), %rcx
	leaq	-1028(%rbp), %rdx
	movl	$13, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L681
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC171(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L681:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rsi
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	leaq	-1028(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L682
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC279(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L682:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	leaq	-1028(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	jne	.L683
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC280(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L683:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	56(%rax), %rdx
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	1216(%rax), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L684
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC281(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L684:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, 1216(%rbx)
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	testq	%rax, %rax
	jne	.L685
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC275(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L685:
	movq	-576(%rbp), %rsi
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L686
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC282(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L686:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	movl	mode_op(%rip), %eax
	cmpl	$65540, %eax
	je	.L687
	movl	mode_op(%rip), %eax
	cmpl	$65541, %eax
	jne	.L676
.L687:
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$39, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
.L676:
	addl	$1, -96(%rbp)
.L667:
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L688
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L689
.L690:
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rax
	leaq	.LC196(%rip), %rdx
	movl	$3066, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-96(%rbp), %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	addl	$1, -96(%rbp)
.L689:
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L690
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$25, %edi
	call	print_result
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L666:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L691
	jmp	.L657
.L658:
	movq	evp_md_name(%rip), %rax
	testq	%rax, %rax
	je	.L657
	movq	evp_md_name(%rip), %rax
	movq	%rax, 200+names(%rip)
	movl	$0, testnum(%rip)
	jmp	.L692
.L694:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	200+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EVP_Digest_md_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$25, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1139
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L692:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L694
	jmp	.L657
.L1139:
	nop
.L657:
	movzbl	-596(%rbp), %eax
	testb	%al, %al
	je	.L695
	movq	evp_mac_ciphername(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$7, %rax
	movq	%rax, -304(%rbp)
	movq	$0, -1040(%rbp)
	movq	evp_mac_ciphername(%rip), %rax
	leaq	-1040(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L1140
	movq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -108(%rbp)
	movq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	cmpl	$0, -108(%rbp)
	jle	.L698
	cmpl	$32, -108(%rbp)
	jle	.L699
.L698:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC283(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L440
.L699:
	leaq	.LC284(%rip), %rdx
	movq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, evp_cmac_name(%rip)
	movq	evp_mac_ciphername(%rip), %rdx
	movq	evp_cmac_name(%rip), %rax
	leaq	.LC285(%rip), %rdi
	movq	-304(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	evp_cmac_name(%rip), %rax
	movq	%rax, 224+names(%rip)
	movq	evp_mac_ciphername(%rip), %rdx
	leaq	-1536(%rbp), %rax
	leaq	.LC273(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1360(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1344(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1328(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	key32.6(%rip), %rdi
	leaq	.LC270(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1320(%rbp)
	movq	%rdx, -1312(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1304(%rbp)
	movq	%rdx, -1296(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1288(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1280(%rbp)
	movq	%rdx, -1272(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1264(%rbp)
	movq	%rdx, -1256(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movl	-100(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	-1360(%rbp), %rdx
	leaq	-584(%rbp), %rax
	leaq	.LC235(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	mac_setup
	testl	%eax, %eax
	jle	.L1141
	movl	$0, testnum(%rip)
	jmp	.L701
.L704:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	224+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	CMAC_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$28, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1142
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L701:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L704
	jmp	.L703
.L1142:
	nop
.L703:
	movl	-100(%rbp), %edx
	movq	-40(%rbp), %rcx
	leaq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_teardown
.L695:
	movzbl	-595(%rbp), %eax
	testb	%al, %al
	je	.L705
	leaq	-1536(%rbp), %rax
	leaq	key32.6(%rip), %rdx
	leaq	.LC270(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1360(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1344(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1328(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1320(%rbp)
	movq	%rdx, -1312(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1304(%rbp)
	movq	%rdx, -1296(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1288(%rbp)
	movl	-100(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	-1360(%rbp), %rdx
	leaq	-584(%rbp), %rax
	leaq	.LC286(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	mac_setup
	testl	%eax, %eax
	jle	.L1143
	movl	$0, testnum(%rip)
	jmp	.L707
.L710:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	232+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	KMAC128_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$29, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1144
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L707:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L710
	jmp	.L709
.L1144:
	nop
.L709:
	movl	-100(%rbp), %edx
	movq	-40(%rbp), %rcx
	leaq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_teardown
.L705:
	movzbl	-594(%rbp), %eax
	testb	%al, %al
	je	.L711
	leaq	-1536(%rbp), %rax
	leaq	key32.6(%rip), %rdx
	leaq	.LC270(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1360(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1344(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1328(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1320(%rbp)
	movq	%rdx, -1312(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1304(%rbp)
	movq	%rdx, -1296(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1288(%rbp)
	movl	-100(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	-1360(%rbp), %rdx
	leaq	-584(%rbp), %rax
	leaq	.LC287(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	mac_setup
	testl	%eax, %eax
	jle	.L1145
	movl	$0, testnum(%rip)
	jmp	.L713
.L716:
	movl	-704(%rbp), %edx
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	240+names(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	KMAC256_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	movl	%eax, %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	%rax, %xmm0
	movl	%ecx, %esi
	movl	$30, %edi
	call	print_result
	cmpq	$0, -264(%rbp)
	js	.L1146
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L713:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L716
	jmp	.L715
.L1146:
	nop
.L715:
	movl	-100(%rbp), %edx
	movq	-40(%rbp), %rcx
	leaq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_teardown
.L711:
	movl	$0, -632(%rbp)
	jmp	.L717
.L719:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L1147
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L717:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L719
	movl	$0, testnum(%rip)
	jmp	.L720
.L764:
	movq	$0, -1048(%rbp)
	movl	$0, -184(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-711(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1148
	cmpl	$2, -140(%rbp)
	jle	.L723
	call	BN_new@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L724
	movq	-120(%rbp), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L724
	leaq	.LC223(%rip), %rsi
	leaq	-656(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	init_gen_str@PLT
	testl	%eax, %eax
	je	.L724
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movq	-656(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_bits@PLT
	testl	%eax, %eax
	jle	.L724
	movq	-656(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_rsa_keygen_pubexp@PLT
	testl	%eax, %eax
	jle	.L724
	movq	-656(%rbp), %rax
	movl	-140(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_primes@PLT
	testl	%eax, %eax
	jle	.L724
	movq	-656(%rbp), %rax
	leaq	-1048(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	je	.L724
	movl	$1, %eax
	jmp	.L725
.L724:
	movl	$0, %eax
.L725:
	movl	%eax, -184(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -120(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -656(%rbp)
	jmp	.L726
.L723:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	rsa_keys.4(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -1056(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	leaq	-1056(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$6, %edi
	call	d2i_PrivateKey@PLT
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -184(%rbp)
.L726:
	movl	$0, -632(%rbp)
	jmp	.L727
.L731:
	movq	-1048(%rbp), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	testnum(%rip), %r12d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$12, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	72(%rax), %rax
	movq	%rax, 80(%rdx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$12, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L728
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$12, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jle	.L728
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	leaq	80(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$12, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$36, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L729
.L728:
	movl	$0, -184(%rbp)
.L729:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L727:
	cmpl	$0, -184(%rbp)
	je	.L730
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L731
.L730:
	cmpl	$0, -184(%rbp)
	jne	.L732
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC288(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L733
.L732:
	movl	-700(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC289(%rip), %rsi
	leaq	.LC290(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	RSA_sign_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L734
	leaq	.LC291(%rip), %rax
	jmp	.L735
.L734:
	leaq	.LC292(%rip), %rax
.L735:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L733:
	movl	$0, -632(%rbp)
	jmp	.L736
.L740:
	movq	-1048(%rbp), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	testnum(%rip), %r12d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$18, %rdx
	movq	%rax, 8(%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$18, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L737
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$18, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	testl	%eax, %eax
	jle	.L737
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	80(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdi
	movq	-40(%rbp), %rax
	addq	%rdi, %rax
	movl	testnum(%rip), %edi
	movl	%edi, %edi
	addq	$18, %rdi
	movq	8(%rax,%rdi,8), %rax
	movl	$36, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	testl	%eax, %eax
	jg	.L738
.L737:
	movl	$0, -184(%rbp)
.L738:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L736:
	cmpl	$0, -184(%rbp)
	je	.L739
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L740
.L739:
	cmpl	$0, -184(%rbp)
	jne	.L741
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC293(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movb	$0, -711(%rbp,%rax)
	jmp	.L742
.L741:
	movl	-700(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC294(%rip), %rsi
	leaq	.LC295(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	RSA_verify_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L743
	leaq	.LC296(%rip), %rax
	jmp	.L744
.L743:
	leaq	.LC297(%rip), %rax
.L744:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
.L742:
	movl	$0, -632(%rbp)
	jmp	.L745
.L749:
	movq	-1048(%rbp), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	testnum(%rip), %r12d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$26, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	72(%rax), %rax
	movq	%rax, 88(%rdx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$26, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L746
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$26, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jle	.L746
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	leaq	88(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$26, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$36, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jg	.L747
.L746:
	movl	$0, -184(%rbp)
.L747:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L745:
	cmpl	$0, -184(%rbp)
	je	.L748
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L749
.L748:
	cmpl	$0, -184(%rbp)
	jne	.L750
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC298(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L751
.L750:
	movl	-700(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC299(%rip), %rsi
	leaq	.LC295(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	RSA_encrypt_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L752
	leaq	.LC300(%rip), %rax
	jmp	.L753
.L752:
	leaq	.LC301(%rip), %rax
.L753:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L751:
	movl	$0, -632(%rbp)
	jmp	.L754
.L758:
	movq	-1048(%rbp), %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	testnum(%rip), %r12d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$32, %rdx
	movq	%rax, 8(%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	72(%rax), %rax
	movq	%rax, -648(%rbp)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$32, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L755
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$32, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L755
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	88(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$32, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	-648(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jg	.L756
.L755:
	movl	$0, -184(%rbp)
.L756:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L754:
	cmpl	$0, -184(%rbp)
	je	.L757
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L758
.L757:
	cmpl	$0, -184(%rbp)
	jne	.L759
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC302(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L760
.L759:
	movl	-700(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC303(%rip), %rsi
	leaq	.LC290(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	RSA_decrypt_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L761
	leaq	.LC304(%rip), %rax
	jmp	.L762
.L761:
	leaq	.LC305(%rip), %rax
.L762:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L760:
	cmpq	$1, -136(%rbp)
	jg	.L763
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$7, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-711(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L763:
	movq	-1048(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L722
.L1148:
	nop
.L722:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L720:
	movl	testnum(%rip), %eax
	cmpl	$6, %eax
	jbe	.L764
	movl	$0, testnum(%rip)
	jmp	.L765
.L787:
	movq	$0, -512(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-718(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1149
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	get_dsa@PLT
	movq	%rax, -512(%rbp)
	cmpq	$0, -512(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -188(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L768
.L772:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	movq	-512(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$40, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	72(%rax), %rax
	movq	%rax, 80(%rdx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$40, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L769
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$40, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jle	.L769
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	leaq	80(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$40, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$20, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L770
.L769:
	movl	$0, -188(%rbp)
.L770:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L768:
	cmpl	$0, -188(%rbp)
	je	.L771
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L772
.L771:
	cmpl	$0, -188(%rbp)
	jne	.L773
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC306(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L774
.L773:
	movl	-696(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC242(%rip), %rsi
	leaq	.LC307(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	DSA_sign_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L775
	leaq	.LC308(%rip), %rax
	jmp	.L776
.L775:
	leaq	.LC309(%rip), %rax
.L776:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L774:
	movl	$0, -632(%rbp)
	jmp	.L777
.L781:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	movq	-512(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$42, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$42, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L778
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$42, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	testl	%eax, %eax
	jle	.L778
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	80(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdi
	movq	-40(%rbp), %rax
	addq	%rdi, %rax
	movl	testnum(%rip), %edi
	movl	%edi, %edi
	addq	$42, %rdi
	movq	(%rax,%rdi,8), %rax
	movl	$36, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	testl	%eax, %eax
	jg	.L779
.L778:
	movl	$0, -188(%rbp)
.L779:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L777:
	cmpl	$0, -188(%rbp)
	je	.L780
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L781
.L780:
	cmpl	$0, -188(%rbp)
	jne	.L782
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC310(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movb	$0, -718(%rbp,%rax)
	jmp	.L783
.L782:
	movl	-696(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC242(%rip), %rsi
	leaq	.LC311(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	DSA_verify_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L784
	leaq	.LC312(%rip), %rax
	jmp	.L785
.L784:
	leaq	.LC313(%rip), %rax
.L785:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
.L783:
	cmpq	$1, -136(%rbp)
	jg	.L786
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$2, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-718(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L786:
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L767
.L1149:
	nop
.L767:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L765:
	movl	testnum(%rip), %eax
	cmpl	$1, %eax
	jbe	.L787
	movl	$0, testnum(%rip)
	jmp	.L788
.L809:
	movq	$0, -504(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-752(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1150
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	ec_curves.10(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	get_ecdsa
	movq	%rax, -504(%rbp)
	cmpq	$0, -504(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -192(%rbp)
	movl	$0, -632(%rbp)
	jmp	.L791
.L795:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	movq	-504(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$44, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	72(%rax), %rax
	movq	%rax, 80(%rdx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$44, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L792
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$44, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jle	.L792
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	leaq	80(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$44, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$20, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L793
.L792:
	movl	$0, -192(%rbp)
.L793:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L791:
	cmpl	$0, -192(%rbp)
	je	.L794
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L795
.L794:
	cmpl	$0, -192(%rbp)
	jne	.L796
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC314(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L797
.L796:
	movl	-692(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC245(%rip), %rsi
	leaq	.LC307(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	ECDSA_sign_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L798
	leaq	.LC315(%rip), %rax
	jmp	.L799
.L798:
	leaq	.LC316(%rip), %rax
.L799:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ecdsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L797:
	movl	$0, -632(%rbp)
	jmp	.L800
.L804:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	movq	-504(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movl	%r12d, %edx
	addq	$66, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$66, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L801
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$66, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	testl	%eax, %eax
	jle	.L801
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	80(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdi
	movq	-40(%rbp), %rax
	addq	%rdi, %rax
	movl	testnum(%rip), %edi
	movl	%edi, %edi
	addq	$66, %rdi
	movq	(%rax,%rdi,8), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	testl	%eax, %eax
	jg	.L802
.L801:
	movl	$0, -192(%rbp)
.L802:
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L800:
	cmpl	$0, -192(%rbp)
	je	.L803
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L804
.L803:
	cmpl	$0, -192(%rbp)
	jne	.L805
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC317(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movb	$0, -752(%rbp,%rax)
	jmp	.L806
.L805:
	movl	-692(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC245(%rip), %rsi
	leaq	.LC311(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	ECDSA_verify_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L807
	leaq	.LC318(%rip), %rax
	jmp	.L808
.L807:
	leaq	.LC319(%rip), %rax
.L808:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ecdsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
.L806:
	cmpq	$1, -136(%rbp)
	jg	.L790
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$22, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-752(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L790
.L1150:
	nop
.L790:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L788:
	movl	testnum(%rip), %eax
	cmpl	$21, %eax
	jbe	.L809
	movl	$0, testnum(%rip)
	jmp	.L810
.L825:
	movl	$1, -196(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-784(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1151
	movl	$0, -632(%rbp)
	jmp	.L813
.L821:
	movq	$0, -472(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -496(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	ec_curves.10(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	get_ecdsa
	movq	%rax, -488(%rbp)
	cmpq	$0, -488(%rbp)
	je	.L814
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	ec_curves.10(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	get_ecdsa
	movq	%rax, -496(%rbp)
	cmpq	$0, -496(%rbp)
	je	.L814
	movq	-488(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -480(%rbp)
	cmpq	$0, -480(%rbp)
	je	.L814
	movq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L814
	movq	-496(%rbp), %rdx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jle	.L814
	leaq	-1064(%rbp), %rdx
	movq	-480(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L814
	movq	-1064(%rbp), %rax
	testq	%rax, %rax
	je	.L814
	movq	-1064(%rbp), %rax
	cmpq	$256, %rax
	jbe	.L815
.L814:
	movl	$0, -196(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC320(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L820
.L815:
	movq	-496(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -472(%rbp)
	cmpq	$0, -472(%rbp)
	je	.L817
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L817
	movq	-488(%rbp), %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jle	.L817
	leaq	-1072(%rbp), %rdx
	movq	-472(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L817
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	952(%rax), %rcx
	leaq	-1064(%rbp), %rdx
	movq	-480(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L817
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	960(%rax), %rcx
	leaq	-1072(%rbp), %rdx
	movq	-472(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L817
	movq	-1072(%rbp), %rdx
	movq	-1064(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L818
.L817:
	movl	$0, -196(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC321(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L820
.L818:
	movq	-1064(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	960(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	952(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L819
	movl	$0, -196(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC322(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L820
.L819:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	88(%rax), %rcx
	movq	-480(%rbp), %rax
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %ecx
	movq	-1064(%rbp), %rax
	movl	%ecx, %ecx
	addq	$120, %rcx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -472(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L813:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L821
.L820:
	cmpl	$0, -196(%rbp)
	je	.L822
	movl	-688(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC246(%rip), %rsi
	leaq	.LC323(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	ECDH_EVP_derive_key_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L823
	leaq	.LC324(%rip), %rax
	jmp	.L824
.L823:
	leaq	.LC325(%rip), %rax
.L824:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L822:
	cmpq	$1, -136(%rbp)
	jg	.L812
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$24, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-784(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L812
.L1151:
	nop
.L812:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L810:
	movl	testnum(%rip), %eax
	cmpl	$23, %eax
	jbe	.L825
	movl	$0, testnum(%rip)
	jmp	.L826
.L856:
	movl	$1, -200(%rbp)
	movq	$0, -1080(%rbp)
	movq	$0, -464(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-786(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1152
	movl	$0, -632(%rbp)
	jmp	.L829
.L837:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	call	EVP_MD_CTX_new@PLT
	movl	%r12d, %edx
	addq	$112, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$112, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L830
	movl	$0, -200(%rbp)
	jmp	.L831
.L830:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	call	EVP_MD_CTX_new@PLT
	movl	%r12d, %edx
	addq	$114, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$114, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L832
	movl	$0, -200(%rbp)
	jmp	.L831
.L832:
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -464(%rbp)
	cmpq	$0, -464(%rbp)
	je	.L833
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L833
	leaq	-1080(%rbp), %rdx
	movq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L834
.L833:
	movl	$0, -200(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	jmp	.L831
.L834:
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-1080(%rbp), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$112, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	jne	.L835
	movl	$0, -200(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L831
.L835:
	movq	-1080(%rbp), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$114, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	jne	.L836
	movl	$0, -200(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L831
.L836:
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -1080(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L829:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L837
.L831:
	cmpl	$0, -200(%rbp)
	jne	.L838
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC326(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L828
.L838:
	movl	$0, -632(%rbp)
	jmp	.L840
.L843:
	movl	testnum(%rip), %ecx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	%ecx, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	16+ed_curves.11(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, 80(%rdx)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	leaq	80(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$112, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$20, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.L1153
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L840:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L843
	jmp	.L842
.L1153:
	nop
.L842:
	cmpl	$0, -200(%rbp)
	jne	.L844
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC327(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L845
.L844:
	movl	-684(%rbp), %ecx
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %esi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	ed_curves.11(%rip), %rax
	movq	(%rsi,%rax), %rax
	leaq	.LC307(%rip), %rdi
	movq	%rax, %rsi
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EdDSA_sign_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ed_curves.11(%rip), %rax
	movq	(%rdx,%rax), %r8
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L846
	leaq	.LC328(%rip), %rax
	jmp	.L847
.L846:
	leaq	.LC329(%rip), %rax
.L847:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eddsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L845:
	movl	$0, -632(%rbp)
	jmp	.L848
.L851:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	80(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdi
	movq	-40(%rbp), %rax
	addq	%rdi, %rax
	movl	testnum(%rip), %edi
	movl	%edi, %edi
	addq	$114, %rdi
	movq	(%rax,%rdi,8), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -200(%rbp)
	cmpl	$1, -200(%rbp)
	jne	.L1154
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L848:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L851
	jmp	.L850
.L1154:
	nop
.L850:
	cmpl	$1, -200(%rbp)
	je	.L852
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC330(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movb	$0, -786(%rbp,%rax)
	jmp	.L853
.L852:
	movl	-684(%rbp), %ecx
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %esi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	ed_curves.11(%rip), %rax
	movq	(%rsi,%rax), %rax
	leaq	.LC311(%rip), %rdi
	movq	%rax, %rsi
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	EdDSA_verify_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ed_curves.11(%rip), %rax
	movq	(%rdx,%rax), %r8
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L854
	leaq	.LC331(%rip), %rax
	jmp	.L855
.L854:
	leaq	.LC332(%rip), %rax
.L855:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eddsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
.L853:
	cmpq	$1, -136(%rbp)
	jg	.L828
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$2, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-786(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L828
.L1152:
	nop
.L828:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L826:
	movl	testnum(%rip), %eax
	cmpl	$1, %eax
	jbe	.L856
	movl	$0, testnum(%rip)
	jmp	.L857
.L890:
	movl	$1, -204(%rbp)
	movq	$0, -1088(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-719(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1155
	movl	$0, -632(%rbp)
	jmp	.L860
.L869:
	movq	$0, -440(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -456(%rbp)
	movl	$0, -204(%rbp)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	call	EVP_MD_CTX_new@PLT
	movl	%r12d, %edx
	addq	$116, %rdx
	movq	%rax, (%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	testnum(%rip), %r12d
	call	EVP_MD_CTX_new@PLT
	movl	%r12d, %edx
	addq	$116, %rdx
	movq	%rax, 8(%rbx,%rdx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$116, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L861
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$116, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L861
	movq	$0, -1088(%rbp)
	movl	$0, %esi
	movl	$1172, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -456(%rbp)
	cmpq	$0, -456(%rbp)
	je	.L862
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L862
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movq	-456(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	testl	%eax, %eax
	jle	.L862
	leaq	-1088(%rbp), %rdx
	movq	-456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jle	.L862
	movl	$1, %eax
	jmp	.L863
.L862:
	movl	$0, %eax
.L863:
	movl	%eax, -204(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	cmpl	$0, -204(%rbp)
	je	.L1156
	movl	$0, -204(%rbp)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %ecx
	movq	-1088(%rbp), %rax
	movl	%ecx, %ecx
	addq	$118, %rcx
	movq	%rax, (%rdx,%rcx,8)
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	-632(%rbp), %edx
	movl	%edx, %edx
	imulq	$13664, %rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	cltq
	movq	%rax, 80(%rdx)
	movq	-1088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -440(%rbp)
	movq	-1088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -448(%rbp)
	cmpq	$0, -440(%rbp)
	je	.L865
	cmpq	$0, -448(%rbp)
	jne	.L866
.L865:
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	jmp	.L861
.L866:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$116, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	-440(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_pkey_ctx@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	addq	$116, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	-448(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_pkey_ctx@PLT
	leaq	.LC333(%rip), %rcx
	movq	-440(%rbp), %rax
	movl	$23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_id@PLT
	cmpl	$1, %eax
	jne	.L861
	leaq	.LC333(%rip), %rcx
	movq	-448(%rbp), %rax
	movl	$23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_id@PLT
	cmpl	$1, %eax
	jne	.L861
	movq	-1088(%rbp), %rbx
	call	EVP_sm3@PLT
	movq	%rax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$116, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rbx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	je	.L1157
	movq	-1088(%rbp), %rbx
	call	EVP_sm3@PLT
	movq	%rax, %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$116, %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rbx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	je	.L1158
	movl	$1, -204(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L860:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L869
	jmp	.L861
.L1156:
	nop
	jmp	.L861
.L1157:
	nop
	jmp	.L861
.L1158:
	nop
.L861:
	cmpl	$0, -204(%rbp)
	jne	.L870
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC334(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L859
.L870:
	movl	$0, -632(%rbp)
	jmp	.L872
.L875:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	leaq	80(%rax), %rdi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	testnum(%rip), %ecx
	movl	%ecx, %ecx
	addq	$116, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$20, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	je	.L1159
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L872:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L875
	jmp	.L874
.L1159:
	nop
.L874:
	cmpl	$0, -204(%rbp)
	jne	.L876
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC335(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	jmp	.L877
.L876:
	movl	-680(%rbp), %ecx
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %esi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	sm2_curves.9(%rip), %rax
	movq	(%rsi,%rax), %rax
	leaq	.LC307(%rip), %rdi
	movq	%rax, %rsi
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SM2_sign_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sm2_curves.9(%rip), %rax
	movq	(%rdx,%rax), %r8
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L878
	leaq	.LC336(%rip), %rax
	jmp	.L879
.L878:
	leaq	.LC329(%rip), %rax
.L879:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	sm2_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L877:
	movl	$0, -632(%rbp)
	jmp	.L880
.L883:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	80(%rax), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	24(%rax), %rsi
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdi
	movq	-40(%rbp), %rax
	addq	%rdi, %rax
	movl	testnum(%rip), %edi
	movl	%edi, %edi
	addq	$116, %rdi
	movq	8(%rax,%rdi,8), %rax
	movl	$20, %r8d
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -204(%rbp)
	cmpl	$1, -204(%rbp)
	jne	.L1160
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L880:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L883
	jmp	.L882
.L1160:
	nop
.L882:
	cmpl	$1, -204(%rbp)
	je	.L884
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC337(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movb	$0, -719(%rbp,%rax)
	jmp	.L885
.L884:
	movl	-680(%rbp), %ecx
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %esi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	sm2_curves.9(%rip), %rax
	movq	(%rsi,%rax), %rax
	leaq	.LC311(%rip), %rdi
	movq	%rax, %rsi
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SM2_verify_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sm2_curves.9(%rip), %rax
	movq	(%rdx,%rax), %r8
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L886
	leaq	.LC338(%rip), %rax
	jmp	.L887
.L886:
	leaq	.LC332(%rip), %rax
.L887:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+sm2_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
.L885:
	cmpq	$1, -136(%rbp)
	jg	.L859
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
	jmp	.L888
.L889:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movb	$0, -719(%rbp,%rax)
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L888:
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L889
	jmp	.L859
.L1155:
	nop
.L859:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L857:
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L890
	movl	$0, testnum(%rip)
	jmp	.L891
.L919:
	movl	$1, -208(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-716(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1161
	movl	$0, -632(%rbp)
	jmp	.L894
.L915:
	movq	$0, -1096(%rbp)
	movq	$0, -1104(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -432(%rbp)
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	je	.L895
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L895:
	call	EVP_PKEY_new@PLT
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	testq	%rax, %rax
	jne	.L896
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC339(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L896:
	call	EVP_PKEY_new@PLT
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	testq	%rax, %rax
	jne	.L898
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC339(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L898:
	movl	$0, %esi
	movl	$28, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -424(%rbp)
	cmpq	$0, -424(%rbp)
	jne	.L899
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC340(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L899:
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L900
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC341(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L900:
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ffdh_params.2(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movq	-424(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_nid@PLT
	testl	%eax, %eax
	jg	.L901
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC342(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L901:
	leaq	-1096(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jle	.L902
	leaq	-1104(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L903
.L902:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC343(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L903:
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-1096(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -424(%rbp)
	cmpq	$0, -424(%rbp)
	jne	.L904
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC340(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L904:
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jg	.L905
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC344(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L905:
	movq	-1104(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jg	.L906
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC345(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L906:
	leaq	-1112(%rbp), %rdx
	movq	-424(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L907
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC346(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L907:
	movq	-1112(%rbp), %rax
	cmpq	$1024, %rax
	jbe	.L908
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC347(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L908:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1200(%rax), %rcx
	leaq	-1112(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L909
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC348(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L909:
	movq	-1104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -432(%rbp)
	cmpq	$0, -432(%rbp)
	jne	.L910
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC340(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L910:
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L911
	movq	-1096(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jle	.L911
	leaq	-1120(%rbp), %rdx
	movq	-432(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L911
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1208(%rax), %rcx
	leaq	-1120(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L911
	movq	-1120(%rbp), %rdx
	movq	-1112(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L912
.L911:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC349(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L912:
	movq	-1112(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	1208(%rax), %rcx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	1200(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L913
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC350(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	$1, -136(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L914
.L913:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	144(%rax), %rcx
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -1096(%rbp)
	movq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -1104(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -432(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L894:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L915
.L914:
	cmpl	$0, -208(%rbp)
	je	.L916
	movl	-676(%rbp), %edx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+ffdh_params.2(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC241(%rip), %rsi
	leaq	.LC323(%rip), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	pkey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	FFDH_derive_key_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+ffdh_params.2(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L917
	leaq	.LC351(%rip), %rax
	jmp	.L918
.L917:
	leaq	.LC352(%rip), %rax
.L918:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L916:
	cmpq	$1, -136(%rbp)
	jg	.L893
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$5, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-716(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L893
.L1161:
	nop
.L893:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L891:
	movl	testnum(%rip), %eax
	cmpl	$4, %eax
	jbe	.L919
	movl	$0, testnum(%rip)
	jmp	.L920
.L965:
	movl	$1, -212(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	kems_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -360(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-912(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1162
	cmpb	$0, -141(%rbp)
	je	.L1162
	movl	$0, -632(%rbp)
	jmp	.L924
.L957:
	movq	$0, -1128(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -400(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1440(%rbp)
	movaps	%xmm0, -1424(%rbp)
	movaps	%xmm0, -1408(%rbp)
	movaps	%xmm0, -1392(%rbp)
	movaps	%xmm0, -1376(%rbp)
	movl	$0, -216(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$103, %rax
	ja	.L925
	leaq	-1360(%rbp), %rcx
	leaq	-1156(%rbp), %rdx
	leaq	.LC353(%rip), %rsi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L925
	movl	$1, -220(%rbp)
	jmp	.L926
.L925:
	leaq	.LC206(%rip), %rcx
	movq	-360(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L927
	movl	$2, -220(%rbp)
	jmp	.L926
.L927:
	leaq	.LC354(%rip), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L928
	movl	$3, -220(%rbp)
	jmp	.L926
.L928:
	leaq	.LC355(%rip), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L929
	movl	$4, -220(%rbp)
	jmp	.L926
.L929:
	movl	$0, -220(%rbp)
.L926:
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	je	.L930
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L930:
	cmpl	$1, -220(%rbp)
	jne	.L931
	leaq	-1536(%rbp), %rax
	leaq	-1156(%rbp), %rdx
	leaq	.LC356(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1440(%rbp)
	movq	%rdx, -1432(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1424(%rbp)
	movq	%rdx, -1416(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movl	$1, -216(%rbp)
	jmp	.L932
.L931:
	cmpl	$2, -220(%rbp)
	jne	.L932
	movq	-360(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -408(%rbp)
	leaq	-1536(%rbp), %rax
	movq	-408(%rbp), %rdx
	leaq	.LC357(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1440(%rbp)
	movq	%rdx, -1432(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1424(%rbp)
	movq	%rdx, -1416(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movl	$1, -216(%rbp)
.L932:
	call	app_get0_propq@PLT
	movq	%rax, %r12
	cmpl	$1, -220(%rbp)
	je	.L933
	cmpl	$2, -220(%rbp)
	je	.L934
	movq	-360(%rbp), %rbx
	jmp	.L935
.L934:
	leaq	.LC206(%rip), %rbx
	jmp	.L935
.L933:
	leaq	.LC223(%rip), %rbx
.L935:
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -368(%rbp)
	cmpq	$0, -368(%rbp)
	je	.L936
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L936
	cmpl	$0, -216(%rbp)
	je	.L937
	leaq	-1440(%rbp), %rdx
	movq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L937
.L936:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC358(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L937:
	leaq	-1128(%rbp), %rdx
	movq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L939
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC359(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L939:
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-1128(%rbp), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -376(%rbp)
	cmpq	$0, -376(%rbp)
	je	.L940
	movq	-376(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	testl	%eax, %eax
	jle	.L940
	cmpl	$1, -220(%rbp)
	jne	.L941
	leaq	.LC360(%rip), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	testl	%eax, %eax
	jle	.L940
.L941:
	cmpl	$2, -220(%rbp)
	je	.L942
	cmpl	$3, -220(%rbp)
	je	.L942
	cmpl	$4, -220(%rbp)
	jne	.L943
.L942:
	leaq	.LC361(%rip), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	testl	%eax, %eax
	jle	.L940
.L943:
	leaq	-1136(%rbp), %rcx
	leaq	-1144(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	testl	%eax, %eax
	jg	.L944
.L940:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC362(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L944:
	movq	-1144(%rbp), %rax
	leaq	.LC363(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -392(%rbp)
	movq	-1136(%rbp), %rax
	leaq	.LC364(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -400(%rbp)
	cmpq	$0, -392(%rbp)
	je	.L945
	cmpq	$0, -400(%rbp)
	jne	.L946
.L945:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC365(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L946:
	leaq	-1136(%rbp), %rdi
	movq	-400(%rbp), %rcx
	leaq	-1144(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-376(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	testl	%eax, %eax
	jg	.L947
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC366(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L947:
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-1128(%rbp), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -384(%rbp)
	cmpq	$0, -384(%rbp)
	je	.L948
	movq	-384(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	testl	%eax, %eax
	jle	.L948
	cmpl	$1, -220(%rbp)
	jne	.L949
	leaq	.LC360(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	testl	%eax, %eax
	jle	.L948
.L949:
	cmpl	$2, -220(%rbp)
	je	.L950
	cmpl	$3, -220(%rbp)
	je	.L950
	cmpl	$4, -220(%rbp)
	jne	.L951
.L950:
	leaq	.LC361(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	testl	%eax, %eax
	jle	.L948
.L951:
	movq	-1144(%rbp), %rsi
	movq	-392(%rbp), %rcx
	leaq	-1152(%rbp), %rdx
	movq	-384(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	testl	%eax, %eax
	jg	.L952
.L948:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC367(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L952:
	movq	-1152(%rbp), %rax
	leaq	.LC368(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -416(%rbp)
	cmpq	$0, -416(%rbp)
	jne	.L953
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC369(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L953:
	movq	-1144(%rbp), %rdi
	movq	-392(%rbp), %rcx
	leaq	-1152(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	-384(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	testl	%eax, %eax
	jle	.L954
	movq	-1152(%rbp), %rdx
	movq	-1136(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L954
	movq	-1136(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L955
.L954:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	.LC370(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L938
.L955:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	154(%rax), %rcx
	movq	-368(%rbp), %rax
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	264(%rax), %rcx
	movq	-376(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	376(%rax), %rcx
	movq	-384(%rbp), %rax
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %ecx
	movq	-1144(%rbp), %rax
	movl	%ecx, %ecx
	addq	$486, %rcx
	movq	%rax, 8(%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %ecx
	movq	-1136(%rbp), %rax
	movl	%ecx, %ecx
	addq	$598, %rcx
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	708(%rax), %rcx
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	820(%rax), %rcx
	movq	-400(%rbp), %rax
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	930(%rax), %rcx
	movq	-416(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -1128(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
	jmp	.L924
.L938:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$1, -136(%rbp)
	movl	$0, -212(%rbp)
	jmp	.L956
.L924:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L957
.L956:
	cmpl	$0, -212(%rbp)
	je	.L958
	movl	-672(%rbp), %edx
	leaq	.LC371(%rip), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kskey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	KEM_keygen_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L959
	leaq	.LC372(%rip), %rax
	jmp	.L960
.L959:
	leaq	.LC373(%rip), %rax
.L960:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-360(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	kems_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-672(%rbp), %edx
	leaq	.LC374(%rip), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kskey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	KEM_encaps_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L961
	leaq	.LC375(%rip), %rax
	jmp	.L962
.L961:
	leaq	.LC376(%rip), %rax
.L962:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-360(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+kems_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-672(%rbp), %edx
	leaq	.LC377(%rip), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kskey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	KEM_decaps_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L963
	leaq	.LC378(%rip), %rax
	jmp	.L964
.L963:
	leaq	.LC379(%rip), %rax
.L964:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-360(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+kems_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L958:
	cmpq	$1, -136(%rbp)
	jg	.L923
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$111, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-912(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L923
.L1162:
	nop
.L923:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L920:
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	kems_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L965
	movl	$0, testnum(%rip)
	jmp	.L966
.L1000:
	movl	$1, -224(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	sigs_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -312(%rbp)
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movzbl	-1024(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1163
	cmpb	$0, -142(%rbp)
	je	.L1163
	movl	$0, -632(%rbp)
	jmp	.L970
.L992:
	movq	$0, -1168(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -1176(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -336(%rbp)
	movq	$32, -344(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1440(%rbp)
	movaps	%xmm0, -1424(%rbp)
	movaps	%xmm0, -1408(%rbp)
	movaps	%xmm0, -1392(%rbp)
	movaps	%xmm0, -1376(%rbp)
	movl	$0, -236(%rbp)
	leaq	-1472(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	je	.L971
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC204(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L971:
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$103, %rax
	ja	.L972
	leaq	-1360(%rbp), %rcx
	leaq	-1196(%rbp), %rdx
	leaq	.LC353(%rip), %rsi
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.L972
	leaq	-1536(%rbp), %rax
	leaq	-1196(%rbp), %rdx
	leaq	.LC356(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-1536(%rbp), %rax
	movq	-1528(%rbp), %rdx
	movq	%rax, -1440(%rbp)
	movq	%rdx, -1432(%rbp)
	movq	-1520(%rbp), %rax
	movq	-1512(%rbp), %rdx
	movq	%rax, -1424(%rbp)
	movq	%rdx, -1416(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movl	$1, -236(%rbp)
.L972:
	leaq	.LC242(%rip), %rcx
	movq	-312(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L973
	movl	$0, %esi
	movl	$116, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	je	.L974
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jle	.L974
	movq	-312(%rbp), %rax
	addq	$3, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_bits@PLT
	testl	%eax, %eax
	jle	.L974
	leaq	-1176(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	jle	.L974
	movq	-1176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L974
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L973
.L974:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC380(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L973:
	cmpq	$0, -232(%rbp)
	jne	.L976
	call	app_get0_propq@PLT
	movq	%rax, %r12
	cmpl	$1, -236(%rbp)
	je	.L977
	movq	-312(%rbp), %rbx
	jmp	.L978
.L977:
	leaq	.LC223(%rip), %rbx
.L978:
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -232(%rbp)
.L976:
	cmpq	$0, -232(%rbp)
	je	.L979
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L979
	cmpl	$0, -236(%rbp)
	je	.L980
	leaq	-1440(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L980
.L979:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC358(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L980:
	leaq	-1168(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jg	.L981
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC381(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L981:
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-1168(%rbp), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.L982
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jle	.L982
	cmpl	$1, -236(%rbp)
	jne	.L983
	movq	-328(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L982
.L983:
	movq	-344(%rbp), %rsi
	leaq	-1472(%rbp), %rcx
	leaq	-1184(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L984
.L982:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC382(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L984:
	movq	-1184(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movq	-1192(%rbp), %rax
	leaq	.LC383(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	.L985
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC384(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L985:
	movq	-344(%rbp), %rdi
	leaq	-1472(%rbp), %rcx
	leaq	-1192(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-328(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L986
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC385(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L986:
	leaq	-1472(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-1168(%rbp), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -336(%rbp)
	cmpq	$0, -336(%rbp)
	je	.L987
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	testl	%eax, %eax
	jle	.L987
	cmpl	$1, -236(%rbp)
	jne	.L988
	movq	-336(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jg	.L988
.L987:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC386(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L988:
	movq	-1192(%rbp), %rdx
	movq	-344(%rbp), %rdi
	leaq	-1472(%rbp), %rcx
	movq	-352(%rbp), %rsi
	movq	-336(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	testl	%eax, %eax
	jg	.L989
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC387(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L989:
	movq	-1192(%rbp), %rdx
	movq	-344(%rbp), %rdi
	leaq	-1472(%rbp), %rcx
	movq	-352(%rbp), %rsi
	movq	-336(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
	testl	%eax, %eax
	jg	.L990
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC388(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L975
.L990:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	1042(%rax), %rcx
	movq	-232(%rbp), %rax
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	1152(%rax), %rcx
	movq	-328(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	1264(%rax), %rcx
	movq	-336(%rbp), %rax
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %ecx
	movq	-1184(%rbp), %rax
	movl	%ecx, %ecx
	addq	$1374, %rcx
	movq	%rax, 8(%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %ecx
	movq	-1192(%rbp), %rax
	movl	%ecx, %ecx
	addq	$1486, %rcx
	movq	%rax, (%rdx,%rcx,8)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	leaq	1596(%rax), %rcx
	movq	-352(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -1168(%rbp)
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
	jmp	.L970
.L975:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$1, -136(%rbp)
	movl	$0, -224(%rbp)
	jmp	.L991
.L970:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L992
.L991:
	cmpl	$0, -224(%rbp)
	je	.L993
	movl	-668(%rbp), %edx
	leaq	.LC371(%rip), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kskey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SIG_keygen_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L994
	leaq	.LC389(%rip), %rax
	jmp	.L995
.L994:
	leaq	.LC390(%rip), %rax
.L995:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-312(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sigs_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-668(%rbp), %edx
	leaq	.LC391(%rip), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kskey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SIG_sign_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L996
	leaq	.LC392(%rip), %rax
	jmp	.L997
.L996:
	leaq	.LC393(%rip), %rax
.L997:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-312(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sigs_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-668(%rbp), %edx
	leaq	.LC311(%rip), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kskey_print_message
	movl	$0, %edi
	call	Time_F
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rdx
	leaq	SIG_verify_loop(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	run_benchmark
	cltq
	movq	%rax, -264(%rbp)
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -256(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L998
	leaq	.LC394(%rip), %rax
	jmp	.L999
.L998:
	leaq	.LC395(%rip), %rax
.L999:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-256(%rbp), %rsi
	movq	-312(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-264(%rbp), %xmm0
	movl	testnum(%rip), %eax
	divsd	-256(%rbp), %xmm0
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+sigs_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
.L993:
	cmpq	$1, -136(%rbp)
	jg	.L969
	movl	testnum(%rip), %eax
	movl	%eax, %eax
	movl	$111, %edx
	subq	%rax, %rdx
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	leaq	-1024(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L969
.L1163:
	nop
.L969:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L966:
	movl	testnum(%rip), %eax
	movl	%eax, %edx
	movq	sigs_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1000
	jmp	.L525
.L1118:
	nop
.L525:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1001
	movl	$7, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdx
	leaq	.LC396(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$2, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
	call	BN_options@PLT
	movq	%rax, %rdx
	leaq	.LC397(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
	movl	$9, %edi
	call	OpenSSL_version@PLT
	movq	%rax, %rdi
	call	puts@PLT
.L1001:
	cmpl	$0, -60(%rbp)
	je	.L1002
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1003
	leaq	.LC398(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L1004
.L1003:
	leaq	.LC399(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC400(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L1004:
	movl	$0, testnum(%rip)
	jmp	.L1005
.L1008:
	movq	lengths(%rip), %rax
	movl	testnum(%rip), %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1006
	leaq	.LC401(%rip), %rax
	jmp	.L1007
.L1006:
	leaq	.LC402(%rip), %rax
.L1007:
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L1005:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L1008
	movl	$10, %edi
	call	putchar@PLT
.L1002:
	movl	$0, -96(%rbp)
	jmp	.L1009
.L1023:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -248(%rbp)
	movl	-96(%rbp), %eax
	movzbl	-624(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1164
	cmpl	$25, -96(%rbp)
	jne	.L1012
	movq	-576(%rbp), %rax
	testq	%rax, %rax
	jne	.L1013
	movq	evp_md_name(%rip), %rax
	movq	%rax, -248(%rbp)
	jmp	.L1012
.L1013:
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.L1012
	movq	-576(%rbp), %rax
	leaq	.LC403(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1012:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1014
	movq	-248(%rbp), %rdx
	movl	-96(%rbp), %eax
	leaq	.LC404(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L1015
.L1014:
	movq	-248(%rbp), %rax
	leaq	.LC405(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L1015:
	movl	$0, testnum(%rip)
	jmp	.L1016
.L1022:
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	comisd	.LC406(%rip), %xmm0
	jbe	.L1017
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1017
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	.LC407(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	leaq	.LC408(%rip), %rdx
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L1019
.L1017:
	movl	testnum(%rip), %eax
	movl	%eax, %ecx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1020
	leaq	.LC409(%rip), %rax
	jmp	.L1021
.L1020:
	leaq	.LC410(%rip), %rax
.L1021:
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L1019:
	movl	testnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, testnum(%rip)
.L1016:
	movl	testnum(%rip), %eax
	cmpl	-92(%rbp), %eax
	jb	.L1022
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L1011
.L1164:
	nop
.L1011:
	addl	$1, -96(%rbp)
.L1009:
	cmpl	$30, -96(%rbp)
	jbe	.L1023
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1024
.L1029:
	movl	-96(%rbp), %eax
	movzbl	-711(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1165
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1027
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1027
	leaq	.LC411(%rip), %rdx
	leaq	.LC412(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1027:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1028
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	rsa_results(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC413(%rip), %rdi
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$4, %eax
	call	printf@PLT
	jmp	.L1026
.L1028:
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm7
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm6
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm5
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm4
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm8
	movl	-96(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+rsa_keys.4(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC415(%rip), %rcx
	movapd	%xmm8, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$8, %eax
	call	printf@PLT
	jmp	.L1026
.L1165:
	nop
.L1026:
	addl	$1, -96(%rbp)
.L1024:
	cmpl	$6, -96(%rbp)
	jbe	.L1029
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1030
.L1035:
	movl	-96(%rbp), %eax
	movzbl	-718(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1166
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1033
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1033
	leaq	.LC411(%rip), %rdx
	leaq	.LC416(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1033:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1034
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_results(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC417(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1032
.L1034:
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm3
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movl	-96(%rbp), %eax
	leaq	0(,%rax,4), %rcx
	leaq	dsa_bits.3(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC418(%rip), %rcx
	movapd	%xmm4, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$4, %eax
	call	printf@PLT
	jmp	.L1032
.L1166:
	nop
.L1032:
	addl	$1, -96(%rbp)
.L1030:
	cmpl	$1, -96(%rbp)
	jbe	.L1035
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1036
.L1041:
	movl	-96(%rbp), %eax
	movzbl	-752(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1167
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1039
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1039
	leaq	.LC411(%rip), %rdx
	leaq	.LC419(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1039:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1040
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ecdsa_results(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC420(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1038
.L1040:
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm3
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rsi
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ec_curves.10(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	.LC421(%rip), %rdi
	movapd	%xmm4, %xmm1
	movq	%rsi, %xmm0
	movq	%rcx, %rdx
	movl	%eax, %esi
	movl	$4, %eax
	call	printf@PLT
	jmp	.L1038
.L1167:
	nop
.L1038:
	addl	$1, -96(%rbp)
.L1036:
	cmpl	$21, -96(%rbp)
	jbe	.L1041
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1042
.L1047:
	movl	-96(%rbp), %eax
	movzbl	-784(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1168
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1045
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1045
	leaq	.LC411(%rip), %rdx
	leaq	.LC422(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1045:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1046
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC423(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1044
.L1046:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rsi
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ec_curves.10(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ec_curves.10(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	.LC424(%rip), %rdi
	movapd	%xmm2, %xmm1
	movq	%rsi, %xmm0
	movq	%rcx, %rdx
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1044
.L1168:
	nop
.L1044:
	addl	$1, -96(%rbp)
.L1042:
	cmpl	$23, -96(%rbp)
	jbe	.L1047
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1048
.L1053:
	movl	-96(%rbp), %eax
	movzbl	-786(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1169
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1051
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1051
	leaq	.LC411(%rip), %rdx
	leaq	.LC419(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1051:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1052
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eddsa_results(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ed_curves.11(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC425(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1050
.L1052:
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm3
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rsi
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	ed_curves.11(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+ed_curves.11(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	.LC426(%rip), %rdi
	movapd	%xmm4, %xmm1
	movq	%rsi, %xmm0
	movq	%rcx, %rdx
	movl	%eax, %esi
	movl	$4, %eax
	call	printf@PLT
	jmp	.L1050
.L1169:
	nop
.L1050:
	addl	$1, -96(%rbp)
.L1048:
	cmpl	$1, -96(%rbp)
	jbe	.L1053
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1054
.L1059:
	movl	-96(%rbp), %eax
	movzbl	-719(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1170
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1057
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1057
	leaq	.LC411(%rip), %rdx
	leaq	.LC419(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1057:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1058
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	sm2_results(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sm2_curves.9(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC427(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1056
.L1058:
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm3
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rsi
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sm2_curves.9(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+sm2_curves.9(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	.LC428(%rip), %rdi
	movapd	%xmm4, %xmm1
	movq	%rsi, %xmm0
	movq	%rcx, %rdx
	movl	%eax, %esi
	movl	$4, %eax
	call	printf@PLT
	jmp	.L1056
.L1170:
	nop
.L1056:
	addl	$1, -96(%rbp)
.L1054:
	cmpl	$0, -96(%rbp)
	je	.L1059
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1060
.L1065:
	movl	-96(%rbp), %eax
	movzbl	-716(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1171
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1063
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1063
	leaq	.LC411(%rip), %rdx
	leaq	.LC429(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1063:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1064
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+ffdh_params.2(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-96(%rbp), %eax
	leaq	.LC430(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1062
.L1064:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movl	-96(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+ffdh_params.2(%rip), %rax
	movl	(%rcx,%rax), %eax
	leaq	.LC431(%rip), %rcx
	movapd	%xmm2, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L1062
.L1171:
	nop
.L1062:
	addl	$1, -96(%rbp)
.L1060:
	cmpl	$4, -96(%rbp)
	jbe	.L1065
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1066
.L1072:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	kems_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -528(%rbp)
	movl	-96(%rbp), %eax
	movzbl	-912(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1172
	cmpb	$0, -141(%rbp)
	je	.L1172
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1070
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1070
	leaq	.LC411(%rip), %rdx
	leaq	.LC432(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1070:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1071
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	kems_results(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-96(%rbp), %eax
	leaq	.LC433(%rip), %rcx
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$3, %eax
	call	printf@PLT
	jmp	.L1069
.L1071:
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm5
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm4
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm3
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm6
	divsd	%xmm1, %xmm6
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movq	-528(%rbp), %rax
	leaq	.LC434(%rip), %rcx
	movapd	%xmm6, %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$6, %eax
	call	printf@PLT
	jmp	.L1069
.L1172:
	nop
.L1069:
	addl	$1, -96(%rbp)
.L1066:
	movl	-96(%rbp), %edx
	movq	kems_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1072
	movl	$0, -64(%rbp)
	movl	$1, testnum(%rip)
	movl	$0, -96(%rbp)
	jmp	.L1073
.L1079:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	sigs_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -520(%rbp)
	movl	-96(%rbp), %eax
	movzbl	-1024(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1173
	cmpb	$0, -142(%rbp)
	je	.L1173
	movl	testnum(%rip), %eax
	testl	%eax, %eax
	je	.L1077
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1077
	leaq	.LC411(%rip), %rdx
	leaq	.LC435(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, testnum(%rip)
.L1077:
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1078
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sigs_results(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-96(%rbp), %eax
	leaq	.LC436(%rip), %rcx
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$3, %eax
	call	printf@PLT
	jmp	.L1076
.L1078:
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm5
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm4
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm3
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	movapd	%xmm0, %xmm6
	divsd	%xmm1, %xmm6
	movl	-96(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	.LC414(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movq	-520(%rbp), %rax
	leaq	.LC434(%rip), %rcx
	movapd	%xmm6, %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$6, %eax
	call	printf@PLT
	jmp	.L1076
.L1173:
	nop
.L1076:
	addl	$1, -96(%rbp)
.L1073:
	movl	-96(%rbp), %edx
	movq	sigs_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1079
	movl	$0, -64(%rbp)
	jmp	.L440
.L1114:
	nop
	jmp	.L440
.L1115:
	nop
	jmp	.L440
.L1116:
	nop
	jmp	.L440
.L1117:
	nop
	jmp	.L440
.L1128:
	nop
	jmp	.L440
.L1129:
	nop
	jmp	.L440
.L1136:
	nop
	jmp	.L440
.L1137:
	nop
	jmp	.L440
.L1140:
	nop
	jmp	.L440
.L1141:
	nop
	jmp	.L440
.L1143:
	nop
	jmp	.L440
.L1145:
	nop
	jmp	.L440
.L1147:
	nop
.L440:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, -632(%rbp)
	jmp	.L1080
.L1101:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4601, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4602, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, -96(%rbp)
	jmp	.L1081
.L1082:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$12, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$18, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$26, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$32, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	addl	$1, -96(%rbp)
.L1081:
	cmpl	$6, -96(%rbp)
	jbe	.L1082
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1200(%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4613, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	1208(%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4614, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -96(%rbp)
	jmp	.L1083
.L1084:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$144, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	addl	$1, -96(%rbp)
.L1083:
	cmpl	$4, -96(%rbp)
	jbe	.L1084
	movl	$0, -96(%rbp)
	jmp	.L1085
.L1086:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$40, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$42, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	addl	$1, -96(%rbp)
.L1085:
	cmpl	$1, -96(%rbp)
	jbe	.L1086
	movl	$0, -96(%rbp)
	jmp	.L1087
.L1088:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$44, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$66, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	addl	$1, -96(%rbp)
.L1087:
	cmpl	$21, -96(%rbp)
	jbe	.L1088
	movl	$0, -96(%rbp)
	jmp	.L1089
.L1090:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$88, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	addl	$1, -96(%rbp)
.L1089:
	cmpl	$23, -96(%rbp)
	jbe	.L1090
	movl	$0, -96(%rbp)
	jmp	.L1091
.L1092:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$112, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$114, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	addl	$1, -96(%rbp)
.L1091:
	cmpl	$1, -96(%rbp)
	jbe	.L1092
	movl	$0, -96(%rbp)
	jmp	.L1093
.L1096:
	movq	$0, -568(%rbp)
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$116, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L1094
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$116, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	je	.L1094
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L1094:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$116, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$116, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L1095
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$116, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	je	.L1095
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L1095:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$116, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$118, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	addl	$1, -96(%rbp)
.L1093:
	cmpl	$0, -96(%rbp)
	je	.L1096
	movl	$0, -96(%rbp)
	jmp	.L1097
.L1098:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$154, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$264, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$376, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$708, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4656, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$820, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4657, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$930, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4658, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -96(%rbp)
.L1097:
	movl	-96(%rbp), %edx
	movq	kems_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1098
	movl	$0, -96(%rbp)
	jmp	.L1099
.L1100:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$1042, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$1152, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$1264, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-96(%rbp), %edx
	addq	$1596, %rdx
	movq	8(%rax,%rdx,8), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4664, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -96(%rbp)
.L1099:
	movl	-96(%rbp), %edx
	movq	sigs_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1100
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	952(%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4666, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	960(%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4667, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L1080:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L1101
	movq	evp_hmac_name(%rip), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4669, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	evp_cmac_name(%rip), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4670, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -96(%rbp)
	jmp	.L1102
.L1103:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	kems_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4672, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -96(%rbp)
.L1102:
	movl	-96(%rbp), %edx
	movq	kems_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1103
	cmpq	$0, -80(%rbp)
	je	.L1104
	movq	EVP_KEM_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_KEM_pop_free
.L1104:
	movl	$0, -96(%rbp)
	jmp	.L1105
.L1106:
	movl	-96(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	sigs_algname(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC196(%rip), %rcx
	movl	$4676, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -96(%rbp)
.L1105:
	movl	-96(%rbp), %edx
	movq	sigs_algs_len(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1106
	cmpq	$0, -88(%rbp)
	je	.L1107
	movq	EVP_SIGNATURE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_SIGNATURE_pop_free
.L1107:
	cmpl	$0, -104(%rbp)
	je	.L1108
	movl	$0, -632(%rbp)
	jmp	.L1109
.L1110:
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	imulq	$13664, %rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	movl	-632(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -632(%rbp)
.L1109:
	movl	-632(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L1110
.L1108:
	cmpl	$0, -52(%rbp)
	je	.L1111
	call	ASYNC_cleanup_thread@PLT
.L1111:
	leaq	.LC196(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$4688, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-64(%rbp), %eax
.L1112:
	addq	$1520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	speed_main, .-speed_main
	.section	.rodata
.LC437:
	.string	"+DT:%s:%d:%d\n"
	.align 8
.LC438:
	.string	"Doing %s ops for %ds on %d size blocks: "
	.text
	.type	print_message, @function
print_message:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1175
	leaq	.LC437(%rip), %rax
	jmp	.L1176
.L1175:
	leaq	.LC438(%rip), %rax
.L1176:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$1, run(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	alarm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	print_message, .-print_message
	.section	.rodata
.LC439:
	.string	"+DTP:%d:%s:%s:%d\n"
	.align 8
.LC440:
	.string	"Doing %u bits %s %s ops for %ds: "
	.text
	.type	pkey_print_message, @function
pkey_print_message:
.LFB762:
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
	movl	%ecx, -24(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1178
	leaq	.LC439(%rip), %rax
	jmp	.L1179
.L1178:
	leaq	.LC440(%rip), %rax
.L1179:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	-24(%rbp), %r8d
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$1, run(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	alarm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	pkey_print_message, .-pkey_print_message
	.section	.rodata
.LC441:
	.string	"+DTP:%s:%s:%d\n"
.LC442:
	.string	"Doing %s %s ops for %ds: "
	.text
	.type	kskey_print_message, @function
kskey_print_message:
.LFB763:
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
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1181
	leaq	.LC441(%rip), %rax
	jmp	.L1182
.L1181:
	leaq	.LC442(%rip), %rax
.L1182:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$1, run(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	alarm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	kskey_print_message, .-kskey_print_message
	.section	.rodata
.LC443:
	.string	"%s error!\n"
.LC444:
	.string	"+R:%d:%s:%f\n"
.LC445:
	.string	"%d %s ops in %.2fs\n"
	.text
	.type	print_result, @function
print_result:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L1184
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC443(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L1183
.L1184:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	names(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1186
	leaq	.LC444(%rip), %rax
	jmp	.L1187
.L1186:
	leaq	.LC445(%rip), %rax
.L1187:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-24(%rbp), %xmm1
	movq	lengths(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
.L1183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	print_result, .-print_result
	.type	sstrsep, @function
sstrsep:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-272(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$1, -272(%rbp)
	jmp	.L1189
.L1190:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movb	$1, -272(%rbp,%rax)
	addq	$1, -288(%rbp)
.L1189:
	movq	-288(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L1190
	jmp	.L1191
.L1192:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, (%rax)
.L1191:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	je	.L1192
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L1193
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, (%rax)
.L1193:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	sstrsep, .-sstrsep
	.type	strtoint, @function
strtoint:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1196
	movq	-16(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	je	.L1196
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L1196
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jl	.L1196
	movl	-32(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jge	.L1196
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L1198
.L1196:
	movl	$0, %eax
.L1198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	strtoint, .-strtoint
	.section	.rodata
.LC446:
	.string	"fd buffer for do_multi"
.LC447:
	.string	"pipe failure\n"
.LC448:
	.string	"dup failed\n"
.LC449:
	.string	"Forked child %d\n"
.LC450:
	.string	"r"
.LC451:
	.string	"fdopen failure with 0x%x\n"
	.align 8
.LC452:
	.string	"Don't understand line '%s' from child %d\n"
.LC453:
	.string	"Got: %s from %d\n"
.LC454:
	.string	"+F:"
.LC455:
	.string	"+F2:"
.LC456:
	.string	"+F3:"
.LC457:
	.string	"+F4:"
.LC458:
	.string	"+F5:"
.LC459:
	.string	"+F6:"
.LC460:
	.string	"+F7:"
.LC461:
	.string	"+F8:"
.LC462:
	.string	"+F9:"
.LC463:
	.string	"+F10:"
.LC464:
	.string	"+H:"
	.align 8
.LC465:
	.string	"Unknown type '%s' from child %d\n"
	.align 8
.LC466:
	.string	"Waitng for child failed with 0x%x\n"
.LC467:
	.string	"Child exited with %d\n"
	.align 8
.LC468:
	.string	"Child terminated by signal %d\n"
	.text
	.type	do_multi, @function
do_multi:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movl	%edi, -1108(%rbp)
	movl	%esi, -1112(%rbp)
	movl	-1108(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC446(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L1200
.L1206:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	pipe@PLT
	cmpl	$-1, %eax
	jne	.L1201
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC447(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1201:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	call	fork@PLT
	testl	%eax, %eax
	je	.L1202
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L1254
.L1202:
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$1, %edi
	call	close@PLT
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	dup@PLT
	cmpl	$-1, %eax
	jne	.L1204
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC448(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1204:
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$1, mr(%rip)
	movl	$0, usertime(%rip)
	leaq	.LC196(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4811, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L1253
.L1254:
	movl	-4(%rbp), %eax
	leaq	.LC449(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L1200:
	movl	-4(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jl	.L1206
	movl	$0, -4(%rbp)
	jmp	.L1207
.L1246:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leaq	.LC450(%rip), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1209
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC451(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC196(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4829, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L1253
.L1245:
	leaq	-1104(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L1210
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
.L1210:
	movzbl	-1104(%rbp), %eax
	cmpb	$43, %al
	je	.L1211
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	leaq	-1104(%rbp), %rdx
	leaq	.LC452(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L1209
.L1211:
	movl	-4(%rbp), %edx
	leaq	-1104(%rbp), %rax
	leaq	.LC453(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC454(%rip), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1212
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1213
.L1212:
	movl	$0, %eax
.L1213:
	testb	%al, %al
	je	.L1214
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$0, %esi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movl	$0, -8(%rbp)
	jmp	.L1216
.L1217:
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movl	-72(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-72(%rbp), %eax
	addsd	%xmm1, %xmm0
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L1216:
	movl	-8(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jl	.L1217
	jmp	.L1209
.L1214:
	movq	-64(%rbp), %rax
	leaq	.LC455(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1218
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1219
.L1218:
	movl	$0, %eax
.L1219:
	testb	%al, %al
	je	.L1220
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+rsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+rsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1220:
	movq	-64(%rbp), %rax
	leaq	.LC456(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1221
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1222
.L1221:
	movl	$0, %eax
.L1222:
	testb	%al, %al
	je	.L1223
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1223:
	movq	-64(%rbp), %rax
	leaq	.LC457(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1224
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1225
.L1224:
	movl	$0, %eax
.L1225:
	testb	%al, %al
	je	.L1226
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$22, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ecdsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ecdsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+ecdsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1226:
	movq	-64(%rbp), %rax
	leaq	.LC458(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1227
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1228
.L1227:
	movl	$0, %eax
.L1228:
	testb	%al, %al
	je	.L1229
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ecdh_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1229:
	movq	-64(%rbp), %rax
	leaq	.LC459(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1230
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1231
.L1230:
	movl	$0, %eax
.L1231:
	testb	%al, %al
	je	.L1232
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	eddsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eddsa_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+eddsa_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1232:
	movq	-64(%rbp), %rax
	leaq	.LC460(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1233
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1234
.L1233:
	movl	$0, %eax
.L1234:
	testb	%al, %al
	je	.L1235
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	sm2_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+sm2_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+sm2_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1235:
	movq	-64(%rbp), %rax
	leaq	.LC461(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1236
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1237
.L1236:
	movl	$0, %eax
.L1237:
	testb	%al, %al
	je	.L1238
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ffdh_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1238:
	movq	-64(%rbp), %rax
	leaq	.LC462(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1239
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1240
.L1239:
	movl	$0, %eax
.L1240:
	testb	%al, %al
	je	.L1241
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$111, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	kems_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+kems_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+kems_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+kems_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1241:
	movq	-64(%rbp), %rax
	leaq	.LC463(%rip), %rcx
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L1242
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	jmp	.L1243
.L1242:
	movl	$0, %eax
.L1243:
	testb	%al, %al
	je	.L1244
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, -32(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$111, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoint
	testl	%eax, %eax
	je	.L1209
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	sigs_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+sigs_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	leaq	sep.1(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sstrsep
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+sigs_results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-68(%rbp), %eax
	addsd	-40(%rbp), %xmm0
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+sigs_results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L1209
.L1244:
	leaq	.LC464(%rip), %rcx
	leaq	-1104(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L1209
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	leaq	-1104(%rbp), %rdx
	leaq	.LC465(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L1209:
	movq	-24(%rbp), %rdx
	leaq	-1104(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L1245
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	addl	$1, -4(%rbp)
.L1207:
	movl	-4(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jl	.L1246
	leaq	.LC196(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4970, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L1247
.L1249:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L1248
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC466(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L1253
.L1248:
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	wait@PLT
	cmpl	$-1, %eax
	je	.L1249
	movl	-52(%rbp), %eax
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L1250
	movl	-52(%rbp), %eax
	andl	$65280, %eax
	testl	%eax, %eax
	je	.L1250
	movl	-52(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC467(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L1251
.L1250:
	movl	-52(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	testb	%al, %al
	jle	.L1251
	movl	-52(%rbp), %eax
	andl	$127, %eax
	movl	%eax, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC468(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L1251:
	addl	$1, -4(%rbp)
.L1247:
	movl	-4(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jl	.L1248
	movl	$1, %eax
.L1253:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	do_multi, .-do_multi
	.section	.rodata
.LC469:
	.string	"multiblock input buffer"
.LC470:
	.string	"multiblock output buffer"
	.align 8
.LC471:
	.string	"failed to allocate cipher context\n"
	.align 8
.LC472:
	.string	"failed to initialise cipher context\n"
	.align 8
.LC473:
	.string	"Impossible negative key length: %d\n"
	.align 8
.LC474:
	.string	"failed to generate random cipher key\n"
.LC475:
	.string	"failed to set cipher key\n"
.LC476:
	.string	"failed to set AEAD key\n"
.LC477:
	.string	"failed to get cipher name\n"
.LC478:
	.string	"error setting random bytes\n"
.LC479:
	.string	"Error performing cipher op\n"
.LC480:
	.string	"+F:%d:%s"
	.align 8
.LC481:
	.string	"The 'numbers' are in 1000s of bytes per second processed.\n"
.LC482:
	.string	"type                    "
.LC483:
	.string	"%-24s"
	.text
	.type	multiblock_speed, @function
multiblock_speed:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movq	%rdx, -200(%rbp)
	leaq	mblengths_list.0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$5, -20(%rbp)
	movl	$1, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-188(%rbp), %eax
	testl	%eax, %eax
	je	.L1256
	leaq	-188(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -20(%rbp)
.L1256:
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	.LC469(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1024, %eax
	cltq
	leaq	.LC470(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -40(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L1257
	leaq	.LC471(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1257:
	leaq	-144(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L1258
	leaq	.LC472(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1258:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L1259
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	leaq	.LC473(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L1260
.L1259:
	movl	-60(%rbp), %eax
	cltq
	leaq	.LC277(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_rand_key@PLT
	testl	%eax, %eax
	jg	.L1261
	leaq	.LC474(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1261:
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L1262
	leaq	.LC475(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1262:
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC196(%rip), %rdx
	movq	-72(%rbp), %rax
	movl	$5022, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	-128(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$23, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L1263
	leaq	.LC476(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1263:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L1264
	leaq	.LC477(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1264:
	movl	$0, -12(%rbp)
	jmp	.L1265
.L1275:
	movq	-200(%rbp), %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_message
	movl	$0, %edi
	call	Time_F
	movl	$0, -16(%rbp)
	jmp	.L1266
.L1271:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	leaq	aad(%rip), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$23, 8+aad(%rip)
	movb	$3, 9+aad(%rip)
	movb	$2, 10+aad(%rip)
	movb	$0, 11+aad(%rip)
	movb	$0, 12+aad(%rip)
	movq	$0, -176(%rbp)
	leaq	aad(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$8, -152(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$25, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jle	.L1267
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	jmp	.L1268
.L1267:
	movq	-32(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L1269
	leaq	.LC478(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L1269:
	addq	$16, -88(%rbp)
	movq	-88(%rbp), %rax
	shrq	$8, %rax
	movb	%al, 11+aad(%rip)
	movq	-88(%rbp), %rax
	movb	%al, 12+aad(%rip)
	leaq	aad(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$13, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, -96(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	movl	%eax, -24(%rbp)
.L1268:
	addl	$1, -16(%rbp)
.L1266:
	movl	run(%rip), %eax
	testl	%eax, %eax
	je	.L1270
	cmpl	$2147483647, -16(%rbp)
	jne	.L1271
.L1270:
	movl	$1, %edi
	call	Time_F
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1272
	leaq	.LC444(%rip), %rax
	jmp	.L1273
.L1272:
	leaq	.LC445(%rip), %rax
.L1273:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-56(%rbp), %rcx
	leaq	.LC27(%rip), %rsi
	movl	-16(%rbp), %edx
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$1, %eax
	call	BIO_printf@PLT
	cmpl	$0, -24(%rbp)
	jg	.L1274
	movl	mr(%rip), %eax
	testl	%eax, %eax
	jne	.L1274
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC479(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L1274:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-56(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$150, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L1265:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1275
	movl	mr(%rip), %eax
	testl	%eax, %eax
	je	.L1276
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC398(%rip), %rdi
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, -12(%rbp)
	jmp	.L1277
.L1278:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC401(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L1277:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1278
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC480(%rip), %rsi
	movq	%rdx, %rcx
	movl	$25, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -12(%rbp)
	jmp	.L1279
.L1280:
	movl	-12(%rbp), %eax
	cltq
	addq	$150, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC409(%rip), %rcx
	movq	%rdx, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L1279:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1280
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	jmp	.L1260
.L1276:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC481(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC482(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, -12(%rbp)
	jmp	.L1281
.L1282:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC402(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L1281:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1282
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC483(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -12(%rbp)
	jmp	.L1283
.L1287:
	movl	-12(%rbp), %eax
	cltq
	addq	$150, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	comisd	.LC406(%rip), %xmm0
	jbe	.L1289
	movl	-12(%rbp), %eax
	cltq
	addq	$150, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	.LC407(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC408(%rip), %rcx
	movq	%rdx, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	jmp	.L1286
.L1289:
	movl	-12(%rbp), %eax
	cltq
	addq	$150, %rax
	leaq	0(,%rax,8), %rdx
	leaq	results(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC410(%rip), %rcx
	movq	%rdx, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L1286:
	addl	$1, -12(%rbp)
.L1283:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1287
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L1260:
	leaq	.LC196(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$5108, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC196(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$5109, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	multiblock_speed, .-multiblock_speed
	.section	.rodata
.LC484:
	.string	"Ed25519"
.LC485:
	.string	"Ed448"
	.section	.data.rel.ro.local
	.align 32
	.type	ed_curves.11, @object
	.size	ed_curves.11, 48
ed_curves.11:
	.quad	.LC484
	.long	1087
	.long	253
	.quad	64
	.quad	.LC485
	.long	1088
	.long	456
	.quad	114
	.section	.rodata
.LC486:
	.string	"secp160r1"
.LC487:
	.string	"nistp192"
.LC488:
	.string	"nistp224"
.LC489:
	.string	"nistp256"
.LC490:
	.string	"nistp384"
.LC491:
	.string	"nistp521"
.LC492:
	.string	"nistk163"
.LC493:
	.string	"nistk233"
.LC494:
	.string	"nistk283"
.LC495:
	.string	"nistk409"
.LC496:
	.string	"nistk571"
.LC497:
	.string	"nistb163"
.LC498:
	.string	"nistb233"
.LC499:
	.string	"nistb283"
.LC500:
	.string	"nistb409"
.LC501:
	.string	"nistb571"
.LC502:
	.string	"brainpoolP256r1"
.LC503:
	.string	"brainpoolP256t1"
.LC504:
	.string	"brainpoolP384r1"
.LC505:
	.string	"brainpoolP384t1"
.LC506:
	.string	"brainpoolP512r1"
.LC507:
	.string	"brainpoolP512t1"
	.section	.data.rel.ro.local
	.align 32
	.type	ec_curves.10, @object
	.size	ec_curves.10, 576
ec_curves.10:
	.quad	.LC486
	.long	709
	.long	160
	.zero	8
	.quad	.LC487
	.long	409
	.long	192
	.zero	8
	.quad	.LC488
	.long	713
	.long	224
	.zero	8
	.quad	.LC489
	.long	415
	.long	256
	.zero	8
	.quad	.LC490
	.long	715
	.long	384
	.zero	8
	.quad	.LC491
	.long	716
	.long	521
	.zero	8
	.quad	.LC492
	.long	721
	.long	163
	.zero	8
	.quad	.LC493
	.long	726
	.long	233
	.zero	8
	.quad	.LC494
	.long	729
	.long	283
	.zero	8
	.quad	.LC495
	.long	731
	.long	409
	.zero	8
	.quad	.LC496
	.long	733
	.long	571
	.zero	8
	.quad	.LC497
	.long	723
	.long	163
	.zero	8
	.quad	.LC498
	.long	727
	.long	233
	.zero	8
	.quad	.LC499
	.long	730
	.long	283
	.zero	8
	.quad	.LC500
	.long	732
	.long	409
	.zero	8
	.quad	.LC501
	.long	734
	.long	571
	.zero	8
	.quad	.LC502
	.long	927
	.long	256
	.zero	8
	.quad	.LC503
	.long	928
	.long	256
	.zero	8
	.quad	.LC504
	.long	931
	.long	384
	.zero	8
	.quad	.LC505
	.long	932
	.long	384
	.zero	8
	.quad	.LC506
	.long	933
	.long	512
	.zero	8
	.quad	.LC507
	.long	934
	.long	512
	.zero	8
	.quad	.LC354
	.long	1034
	.long	253
	.zero	8
	.quad	.LC355
	.long	1035
	.long	448
	.zero	8
	.section	.rodata
.LC508:
	.string	"CurveSM2"
	.section	.data.rel.ro.local
	.align 16
	.type	sm2_curves.9, @object
	.size	sm2_curves.9, 24
sm2_curves.9:
	.quad	.LC508
	.long	1172
	.long	256
	.zero	8
	.section	.rodata
	.align 16
	.type	hmac_key.8, @object
	.size	hmac_key.8, 17
hmac_key.8:
	.string	"This is a key..."
	.align 16
	.type	deskey.7, @object
	.size	deskey.7, 24
deskey.7:
	.base64	"EjRWeJq83vA0VniavN7wElZ4mrze8BI0"
	.align 32
	.type	key32.6, @object
	.size	key32.6, 32
key32.6:
	.base64	"EjRWeJq83vA0VniavN7wElZ4mrze8BI0eJq83vASNFY="
	.align 8
	.type	gmac_iv.5, @object
	.size	gmac_iv.5, 13
gmac_iv.5:
	.string	"0123456789ab"
	.section	.data.rel.ro.local
	.align 32
	.type	rsa_keys.4, @object
	.size	rsa_keys.4, 112
rsa_keys.4:
	.quad	test512
	.long	318
	.long	512
	.quad	test1024
	.long	608
	.long	1024
	.quad	test2048
	.long	1191
	.long	2048
	.quad	test3072
	.long	1767
	.long	3072
	.quad	test4096
	.long	2349
	.long	4096
	.quad	test7680
	.long	4365
	.long	7680
	.quad	test15360
	.long	8684
	.long	15360
	.section	.rodata
	.align 8
	.type	dsa_bits.3, @object
	.size	dsa_bits.3, 8
dsa_bits.3:
	.long	1024
	.long	2048
	.section	.data.rel.ro.local
	.align 32
	.type	ffdh_params.2, @object
	.size	ffdh_params.2, 80
ffdh_params.2:
	.quad	.LC112
	.long	1126
	.long	2048
	.quad	.LC113
	.long	1127
	.long	3072
	.quad	.LC114
	.long	1128
	.long	4096
	.quad	.LC115
	.long	1129
	.long	6144
	.quad	.LC116
	.long	1130
	.long	8192
	.data
	.type	sep.1, @object
	.size	sep.1, 2
sep.1:
	.string	":"
	.section	.rodata
	.align 16
	.type	mblengths_list.0, @object
	.size	mblengths_list.0, 20
mblengths_list.0:
	.long	8192
	.long	16384
	.long	32768
	.long	65536
	.long	131072
	.align 8
.LC406:
	.long	0
	.long	1086556160
	.align 8
.LC407:
	.long	0
	.long	1083129856
	.align 8
.LC414:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
