	.section	.text._RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	.type	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8,@function
_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8: # @_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset rbp, -16
	xor	ecx, ecx
	mov	rax, rdx
	sub	rax, 15
	cmovae	rcx, rax
	test	rdx, rdx
	je	.LBB57_13
# %bb.1:
	lea	r8, [rsi + 7]
	and	r8, -8
	sub	r8, rsi
	xor	eax, eax
	lea	r10, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.183]
	movabs	r11, -9187201950435737472
	jmp	.LBB57_4
	.p2align	4
.LBB57_2:                               #   in Loop: Header=BB57_4 Depth=1
	inc	r14
	mov	rax, r14
.LBB57_3:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	rax, rdx
	jae	.LBB57_13
.LBB57_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_8 Depth 2
                                        #     Child Loop BB57_11 Depth 2
	movzx	ebx, byte ptr [rsi + rax]
	test	bl, bl
	js	.LBB57_14
# %bb.5:                                #   in Loop: Header=BB57_4 Depth=1
	mov	r9d, r8d
	sub	r9d, eax
	test	r9b, 7
	je	.LBB57_8
# %bb.6:                                #   in Loop: Header=BB57_4 Depth=1
	inc	rax
	jmp	.LBB57_3
	.p2align	4
.LBB57_7:                               #   in Loop: Header=BB57_8 Depth=2
	add	rax, 16
.LBB57_8:                               #   Parent Loop BB57_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rax, rcx
	jae	.LBB57_10
# %bb.9:                                #   in Loop: Header=BB57_8 Depth=2
	mov	r9, qword ptr [rsi + rax + 8]
	or	r9, qword ptr [rsi + rax]
	test	r9, r11
	je	.LBB57_7
.LBB57_10:                              #   in Loop: Header=BB57_4 Depth=1
	cmp	rax, rdx
	jae	.LBB57_3
	.p2align	4
.LBB57_11:                              #   Parent Loop BB57_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rsi + rax], 0
	js	.LBB57_3
# %bb.12:                               #   in Loop: Header=BB57_11 Depth=2
	inc	rax
	cmp	rdx, rax
	jne	.LBB57_11
	jmp	.LBB57_13
	.p2align	4
.LBB57_14:                              #   in Loop: Header=BB57_4 Depth=1
	movzx	ebp, byte ptr [rbx + r10]
	mov	r9b, 1
	cmp	ebp, 4
	je	.LBB57_23
# %bb.15:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	ebp, 3
	je	.LBB57_19
# %bb.16:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	ebp, 2
	jne	.LBB57_45
# %bb.17:                               #   in Loop: Header=BB57_4 Depth=1
	lea	r14, [rax + 1]
	cmp	r14, rdx
	jae	.LBB57_41
# %bb.18:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	byte ptr [rsi + r14], -65
	mov	bl, 1
	jle	.LBB57_2
	jmp	.LBB57_42
.LBB57_19:                              #   in Loop: Header=BB57_4 Depth=1
	lea	r14, [rax + 1]
	cmp	r14, rdx
	jae	.LBB57_41
# %bb.20:                               #   in Loop: Header=BB57_4 Depth=1
	movzx	ebp, byte ptr [rsi + r14]
	cmp	rbx, 224
	je	.LBB57_44
# %bb.21:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	ebx, 237
	jne	.LBB57_27
# %bb.22:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	bpl, -97
	jle	.LBB57_38
	jmp	.LBB57_45
.LBB57_23:                              #   in Loop: Header=BB57_4 Depth=1
	lea	r14, [rax + 1]
	cmp	r14, rdx
	jae	.LBB57_41
# %bb.24:                               #   in Loop: Header=BB57_4 Depth=1
	movzx	ebp, byte ptr [rsi + r14]
	cmp	rbx, 240
	je	.LBB57_46
# %bb.25:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	ebx, 244
	jne	.LBB57_29
# %bb.26:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	bpl, -113
	jle	.LBB57_31
	jmp	.LBB57_45
.LBB57_44:                              #   in Loop: Header=BB57_4 Depth=1
	and	bpl, -32
	cmp	bpl, -96
	je	.LBB57_38
	jmp	.LBB57_45
.LBB57_46:                              #   in Loop: Header=BB57_4 Depth=1
	add	bpl, 112
	cmp	bpl, 48
	jb	.LBB57_31
	jmp	.LBB57_45
.LBB57_27:                              #   in Loop: Header=BB57_4 Depth=1
	lea	r14d, [rbx + 31]
	cmp	r14b, 12
	jb	.LBB57_37
# %bb.36:                               #   in Loop: Header=BB57_4 Depth=1
	and	bl, -2
	cmp	bl, -18
	jne	.LBB57_45
.LBB57_37:                              #   in Loop: Header=BB57_4 Depth=1
	cmp	bpl, -64
	jge	.LBB57_45
.LBB57_38:                              #   in Loop: Header=BB57_4 Depth=1
	lea	r14, [rax + 2]
	cmp	r14, rdx
	jae	.LBB57_41
# %bb.39:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	byte ptr [rsi + r14], -65
	jle	.LBB57_2
	jmp	.LBB57_40
.LBB57_29:                              #   in Loop: Header=BB57_4 Depth=1
	add	bl, 15
	cmp	bl, 2
	ja	.LBB57_45
# %bb.30:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	bpl, -64
	jge	.LBB57_45
.LBB57_31:                              #   in Loop: Header=BB57_4 Depth=1
	lea	rbx, [rax + 2]
	cmp	rbx, rdx
	jae	.LBB57_41
# %bb.32:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	byte ptr [rsi + rbx], -65
	jg	.LBB57_40
# %bb.33:                               #   in Loop: Header=BB57_4 Depth=1
	lea	r14, [rax + 3]
	cmp	r14, rdx
	jae	.LBB57_41
# %bb.34:                               #   in Loop: Header=BB57_4 Depth=1
	cmp	byte ptr [rsi + r14], -64
	jl	.LBB57_2
# %bb.35:
	mov	bl, 3
	jmp	.LBB57_42
.LBB57_13:
	mov	qword ptr [rdi + 8], rsi
	mov	qword ptr [rdi + 16], rdx
	xor	eax, eax
	jmp	.LBB57_43
.LBB57_41:
	xor	r9d, r9d
                                        # implicit-def: $bl
	jmp	.LBB57_42
.LBB57_45:
	mov	bl, 1
	jmp	.LBB57_42
.LBB57_40:
	mov	bl, 2
.LBB57_42:
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi + 16], r9b
	mov	byte ptr [rdi + 17], bl
	mov	eax, 1
.LBB57_43:
	mov	qword ptr [rdi], rax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end57:
	.size	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8, .Lfunc_end57-_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	.cfi_endproc
                                        # -- End function
