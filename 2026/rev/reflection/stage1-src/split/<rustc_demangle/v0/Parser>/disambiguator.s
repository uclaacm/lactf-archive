	.section	.text._RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator
	.type	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator,@function
_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator: # @_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator
	.cfi_startproc
# %bb.0:
	mov	rcx, qword ptr [rsi + 8]
	mov	rax, qword ptr [rsi + 16]
	cmp	rax, rcx
	jae	.LBB85_2
# %bb.1:
	mov	r8, qword ptr [rsi]
	cmp	byte ptr [r8 + rax], 115
	jne	.LBB85_2
# %bb.3:
	lea	r9, [rax + 1]
	mov	qword ptr [rsi + 16], r9
	cmp	r9, rcx
	jae	.LBB85_4
# %bb.11:
	cmp	byte ptr [r8 + r9], 95
	jne	.LBB85_4
# %bb.12:
	add	rax, 2
	mov	qword ptr [rsi + 16], rax
	xor	eax, eax
	jmp	.LBB85_20
.LBB85_2:
	mov	qword ptr [rdi + 8], 0
	xor	eax, eax
	mov	byte ptr [rdi], al
	ret
.LBB85_4:
	xor	eax, eax
	mov	r10d, 62
	.p2align	4
.LBB85_5:                               # =>This Inner Loop Header: Depth=1
	cmp	r9, rcx
	jae	.LBB85_17
# %bb.6:                                #   in Loop: Header=BB85_5 Depth=1
	movzx	edx, byte ptr [r8 + r9]
	cmp	dl, 95
	je	.LBB85_18
# %bb.7:                                #   in Loop: Header=BB85_5 Depth=1
	lea	r11d, [rdx - 48]
	cmp	r11b, 10
	jb	.LBB85_15
# %bb.8:                                #   in Loop: Header=BB85_5 Depth=1
	lea	r11d, [rdx - 97]
	cmp	r11b, 26
	jae	.LBB85_9
# %bb.13:                               #   in Loop: Header=BB85_5 Depth=1
	add	dl, -87
	jmp	.LBB85_14
	.p2align	4
.LBB85_9:                               #   in Loop: Header=BB85_5 Depth=1
	lea	r11d, [rdx - 65]
	cmp	r11b, 26
	jae	.LBB85_17
# %bb.10:                               #   in Loop: Header=BB85_5 Depth=1
	add	dl, -29
.LBB85_14:                              #   in Loop: Header=BB85_5 Depth=1
	mov	r11d, edx
.LBB85_15:                              #   in Loop: Header=BB85_5 Depth=1
	inc	r9
	mov	qword ptr [rsi + 16], r9
	mul	r10
	jo	.LBB85_17
# %bb.16:                               #   in Loop: Header=BB85_5 Depth=1
	movzx	edx, r11b
	add	rax, rdx
	jae	.LBB85_5
.LBB85_17:
	mov	byte ptr [rdi + 1], 0
	mov	al, 1
	mov	byte ptr [rdi], al
	ret
.LBB85_18:
	inc	r9
	mov	qword ptr [rsi + 16], r9
	cmp	rax, -1
	je	.LBB85_17
# %bb.19:
	inc	rax
	cmp	rax, -1
	je	.LBB85_17
.LBB85_20:
	inc	rax
	mov	qword ptr [rdi + 8], rax
	xor	eax, eax
	mov	byte ptr [rdi], al
	ret
.Lfunc_end85:
	.size	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator, .Lfunc_end85-_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser13disambiguator
	.cfi_endproc
                                        # -- End function
