	.section	.text._RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned
	.type	_RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned,@function
_RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned: # @_RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	lea	r8, [rsi + 7]
	and	r8, -8
	sub	r8, rsi
	jne	.LBB74_5
# %bb.1:
	lea	rax, [rdx - 16]
	xor	r8d, r8d
.LBB74_2:
	movabs	rcx, -9187201950435737472
	movabs	r9, 72340172838076672
	movzx	r11d, dil
	lea	r10, [r9 + 1]
	imul	r10, r11
	.p2align	4
.LBB74_3:                               # =>This Inner Loop Header: Depth=1
	mov	r11, qword ptr [rsi + r8]
	xor	r11, r10
	mov	rbx, r9
	sub	rbx, r11
	or	rbx, r11
	mov	r11, qword ptr [rsi + r8 + 8]
	xor	r11, r10
	mov	r14, r9
	sub	r14, r11
	or	r14, r11
	and	rbx, rcx
	and	rbx, r14
	cmp	rbx, rcx
	jne	.LBB74_9
# %bb.4:                                #   in Loop: Header=BB74_3 Depth=1
	add	r8, 16
	cmp	r8, rax
	jbe	.LBB74_3
	jmp	.LBB74_9
.LBB74_5:
	xor	ecx, ecx
	.p2align	4
.LBB74_6:                               # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsi + rcx], dil
	je	.LBB74_16
# %bb.7:                                #   in Loop: Header=BB74_6 Depth=1
	inc	rcx
	cmp	r8, rcx
	jne	.LBB74_6
# %bb.8:
	lea	rax, [rdx - 16]
	cmp	r8, rax
	jbe	.LBB74_2
.LBB74_9:
	sub	rdx, r8
	jne	.LBB74_11
# %bb.10:
	xor	eax, eax
                                        # implicit-def: $rcx
	mov	rdx, rcx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB74_11:
	.cfi_def_cfa_offset 24
	add	rsi, r8
	xor	eax, eax
	xor	ecx, ecx
	.p2align	4
.LBB74_12:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsi + rcx], dil
	je	.LBB74_15
# %bb.13:                               #   in Loop: Header=BB74_12 Depth=1
	inc	rcx
	cmp	rdx, rcx
	jne	.LBB74_12
# %bb.14:
                                        # implicit-def: $rcx
	mov	rdx, rcx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB74_15:
	.cfi_def_cfa_offset 24
	add	rcx, r8
.LBB74_16:
	mov	eax, 1
	mov	rdx, rcx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end74:
	.size	_RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned, .Lfunc_end74-_RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned
	.cfi_endproc
                                        # -- End function
