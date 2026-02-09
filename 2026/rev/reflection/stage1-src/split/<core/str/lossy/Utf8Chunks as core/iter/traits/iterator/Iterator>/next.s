	.section	.text._RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	.type	_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next,@function
_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next: # @_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	.cfi_startproc
# %bb.0:
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB198_29
# %bb.1:
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	mov	rax, qword ptr [rsi]
	xor	edx, edx
	lea	r9, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.183]
	lea	r10, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.376]
	jmp	.LBB198_5
.LBB198_2:                              #   in Loop: Header=BB198_5 Depth=1
	add	rdx, 4
.LBB198_3:                              #   in Loop: Header=BB198_5 Depth=1
	mov	r8, rdx
.LBB198_4:                              #   in Loop: Header=BB198_5 Depth=1
	mov	rdx, r8
	cmp	r8, rcx
	jae	.LBB198_28
.LBB198_5:                              # =>This Inner Loop Header: Depth=1
	movzx	r11d, byte ptr [rax + rdx]
	lea	r8, [rdx + 1]
	test	r11b, r11b
	jns	.LBB198_4
# %bb.6:                                #   in Loop: Header=BB198_5 Depth=1
	movzx	ebx, byte ptr [r11 + r9]
	cmp	ebx, 4
	je	.LBB198_14
# %bb.7:                                #   in Loop: Header=BB198_5 Depth=1
	cmp	ebx, 3
	je	.LBB198_11
# %bb.8:                                #   in Loop: Header=BB198_5 Depth=1
	cmp	ebx, 2
	jne	.LBB198_28
# %bb.9:                                #   in Loop: Header=BB198_5 Depth=1
	lea	r11, [rax + r8]
	cmp	r8, rcx
	cmovae	r11, r10
	cmp	byte ptr [r11], -64
	jge	.LBB198_28
# %bb.10:                               #   in Loop: Header=BB198_5 Depth=1
	add	rdx, 2
	jmp	.LBB198_3
.LBB198_11:                             #   in Loop: Header=BB198_5 Depth=1
	lea	rbx, [rax + r8]
	cmp	r8, rcx
	cmovae	rbx, r10
	movzx	ebx, byte ptr [rbx]
	cmp	r11, 224
	je	.LBB198_17
# %bb.12:                               #   in Loop: Header=BB198_5 Depth=1
	cmp	r11d, 237
	jne	.LBB198_19
# %bb.13:                               #   in Loop: Header=BB198_5 Depth=1
	cmp	bl, -97
	jle	.LBB198_22
	jmp	.LBB198_28
.LBB198_14:                             #   in Loop: Header=BB198_5 Depth=1
	lea	rbx, [rax + r8]
	cmp	r8, rcx
	cmovae	rbx, r10
	movzx	ebx, byte ptr [rbx]
	cmp	r11, 240
	je	.LBB198_18
# %bb.15:                               #   in Loop: Header=BB198_5 Depth=1
	cmp	r11d, 244
	jne	.LBB198_24
# %bb.16:                               #   in Loop: Header=BB198_5 Depth=1
	cmp	bl, -113
	jle	.LBB198_26
	jmp	.LBB198_28
.LBB198_17:                             #   in Loop: Header=BB198_5 Depth=1
	and	bl, -32
	cmp	bl, -96
	je	.LBB198_22
	jmp	.LBB198_28
.LBB198_18:                             #   in Loop: Header=BB198_5 Depth=1
	add	bl, 112
	cmp	bl, 48
	jb	.LBB198_26
	jmp	.LBB198_28
.LBB198_19:                             #   in Loop: Header=BB198_5 Depth=1
	lea	ebp, [r11 + 31]
	cmp	bpl, 12
	jb	.LBB198_21
# %bb.20:                               #   in Loop: Header=BB198_5 Depth=1
	and	r11b, -2
	cmp	r11b, -18
	jne	.LBB198_28
.LBB198_21:                             #   in Loop: Header=BB198_5 Depth=1
	cmp	bl, -64
	jge	.LBB198_28
.LBB198_22:                             #   in Loop: Header=BB198_5 Depth=1
	lea	r8, [rdx + 2]
	cmp	r8, rcx
	lea	r11, [rax + rdx + 2]
	cmovae	r11, r10
	cmp	byte ptr [r11], -64
	jge	.LBB198_28
# %bb.23:                               #   in Loop: Header=BB198_5 Depth=1
	add	rdx, 3
	jmp	.LBB198_3
.LBB198_24:                             #   in Loop: Header=BB198_5 Depth=1
	add	r11b, 15
	cmp	r11b, 2
	ja	.LBB198_28
# %bb.25:                               #   in Loop: Header=BB198_5 Depth=1
	cmp	bl, -64
	jge	.LBB198_28
.LBB198_26:                             #   in Loop: Header=BB198_5 Depth=1
	lea	r8, [rdx + 2]
	cmp	r8, rcx
	lea	r11, [rax + rdx + 2]
	cmovae	r11, r10
	cmp	byte ptr [r11], -65
	jg	.LBB198_28
# %bb.27:                               #   in Loop: Header=BB198_5 Depth=1
	lea	r8, [rdx + 3]
	cmp	r8, rcx
	lea	r11, [rax + rdx + 3]
	cmovae	r11, r10
	cmp	byte ptr [r11], -65
	jle	.LBB198_2
.LBB198_28:
	lea	r9, [rax + r8]
	sub	rcx, r8
	mov	qword ptr [rsi], r9
	mov	qword ptr [rsi + 8], rcx
	sub	r8, rdx
	mov	qword ptr [rdi], rax
	add	rax, rdx
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi + 24], r8
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore rbp
	ret
.LBB198_29:
	mov	qword ptr [rdi], 0
	ret
.Lfunc_end198:
	.size	_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next, .Lfunc_end198-_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	.cfi_endproc
                                        # -- End function
