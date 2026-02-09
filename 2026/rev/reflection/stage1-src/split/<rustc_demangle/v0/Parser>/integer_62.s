	.section	.text._RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62
	.type	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62,@function
_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62: # @_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62
	.cfi_startproc
# %bb.0:
	mov	r8, qword ptr [rsi]
	mov	r9, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 16]
	cmp	rcx, r9
	jae	.LBB121_1
# %bb.8:
	cmp	byte ptr [r8 + rcx], 95
	jne	.LBB121_1
# %bb.9:
	inc	rcx
	mov	qword ptr [rsi + 16], rcx
	mov	qword ptr [rdi + 8], 0
	xor	eax, eax
	mov	byte ptr [rdi], al
	ret
.LBB121_1:
	xor	eax, eax
	mov	r10d, 62
	.p2align	4
.LBB121_2:                              # =>This Inner Loop Header: Depth=1
	cmp	rcx, r9
	jae	.LBB121_18
# %bb.3:                                #   in Loop: Header=BB121_2 Depth=1
	movzx	edx, byte ptr [r8 + rcx]
	cmp	dl, 95
	je	.LBB121_12
# %bb.4:                                #   in Loop: Header=BB121_2 Depth=1
	lea	r11d, [rdx - 48]
	cmp	r11b, 10
	jb	.LBB121_16
# %bb.5:                                #   in Loop: Header=BB121_2 Depth=1
	lea	r11d, [rdx - 97]
	cmp	r11b, 26
	jae	.LBB121_6
# %bb.14:                               #   in Loop: Header=BB121_2 Depth=1
	add	dl, -87
	jmp	.LBB121_15
	.p2align	4
.LBB121_6:                              #   in Loop: Header=BB121_2 Depth=1
	lea	r11d, [rdx - 65]
	cmp	r11b, 26
	jae	.LBB121_18
# %bb.7:                                #   in Loop: Header=BB121_2 Depth=1
	add	dl, -29
.LBB121_15:                             #   in Loop: Header=BB121_2 Depth=1
	mov	r11d, edx
.LBB121_16:                             #   in Loop: Header=BB121_2 Depth=1
	inc	rcx
	mov	qword ptr [rsi + 16], rcx
	mul	r10
	jo	.LBB121_18
# %bb.17:                               #   in Loop: Header=BB121_2 Depth=1
	movzx	edx, r11b
	add	rax, rdx
	jae	.LBB121_2
.LBB121_18:
	mov	byte ptr [rdi + 1], 0
	mov	al, 1
	mov	byte ptr [rdi], al
	ret
.LBB121_12:
	inc	rcx
	mov	qword ptr [rsi + 16], rcx
	cmp	rax, -1
	je	.LBB121_18
# %bb.13:
	inc	rax
	mov	qword ptr [rdi + 8], rax
	xor	eax, eax
	mov	byte ptr [rdi], al
	ret
.Lfunc_end121:
	.size	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62, .Lfunc_end121-_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62
	.cfi_endproc
                                        # -- End function
