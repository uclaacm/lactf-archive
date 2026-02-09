	.section	.text._RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable,"ax",@progbits
	.p2align	4
	.type	_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable,@function
_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable: # @_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
                                        # kill: def $edi killed $edi def $rdi
	cmp	edi, 32
	jae	.LBB81_3
# %bb.1:
	xor	eax, eax
	and	al, 1
                                        # kill: def $al killed $al killed $eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB81_3:
	.cfi_def_cfa_offset 16
	mov	al, 1
	cmp	edi, 127
	jae	.LBB81_4
.LBB81_2:
	and	al, 1
                                        # kill: def $al killed $al killed $eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB81_4:
	.cfi_def_cfa_offset 16
	cmp	edi, 65536
	jae	.LBB81_20
# %bb.5:
	mov	ecx, edi
	shr	ecx, 8
	xor	eax, eax
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.199]
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.200]
	xor	r9d, r9d
.LBB81_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_10 Depth 2
	movzx	r10d, byte ptr [r9 + rdx + 1]
	lea	rsi, [rax + r10]
	cmp	byte ptr [r9 + rdx], cl
	lea	r9, [r9 + 2]
	jne	.LBB81_12
# %bb.7:                                #   in Loop: Header=BB81_6 Depth=1
	cmp	rsi, rax
	jb	.LBB81_39
# %bb.8:                                #   in Loop: Header=BB81_6 Depth=1
	cmp	rsi, 284
	ja	.LBB81_39
# %bb.9:                                #   in Loop: Header=BB81_6 Depth=1
	xor	r11d, r11d
	.p2align	4
.LBB81_10:                              #   Parent Loop BB81_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r10, r11
	je	.LBB81_13
# %bb.11:                               #   in Loop: Header=BB81_10 Depth=2
	lea	rbx, [rax + r11]
	inc	r11
	cmp	byte ptr [r8 + rbx], dil
	jne	.LBB81_10
	jmp	.LBB81_36
	.p2align	4
.LBB81_12:                              #   in Loop: Header=BB81_6 Depth=1
	ja	.LBB81_14
.LBB81_13:                              #   in Loop: Header=BB81_6 Depth=1
	mov	rax, rsi
	cmp	r9, 76
	jne	.LBB81_6
.LBB81_14:
	mov	al, 1
	xor	ecx, ecx
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.201]
	jmp	.LBB81_15
.LBB81_20:
	cmp	edi, 131072
	jae	.LBB81_37
# %bb.21:
	mov	ecx, edi
	shr	ecx, 8
	xor	eax, eax
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.196]
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.197]
	xor	r9d, r9d
.LBB81_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_26 Depth 2
	movzx	r10d, byte ptr [r9 + rdx + 1]
	lea	rsi, [rax + r10]
	cmp	byte ptr [r9 + rdx], cl
	lea	r9, [r9 + 2]
	jne	.LBB81_28
# %bb.23:                               #   in Loop: Header=BB81_22 Depth=1
	cmp	rsi, rax
	jb	.LBB81_40
# %bb.24:                               #   in Loop: Header=BB81_22 Depth=1
	cmp	rsi, 212
	ja	.LBB81_40
# %bb.25:                               #   in Loop: Header=BB81_22 Depth=1
	xor	r11d, r11d
	.p2align	4
.LBB81_26:                              #   Parent Loop BB81_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r10, r11
	je	.LBB81_29
# %bb.27:                               #   in Loop: Header=BB81_26 Depth=2
	lea	rbx, [rax + r11]
	inc	r11
	cmp	byte ptr [r8 + rbx], dil
	jne	.LBB81_26
	jmp	.LBB81_36
.LBB81_28:                              #   in Loop: Header=BB81_22 Depth=1
	ja	.LBB81_30
.LBB81_29:                              #   in Loop: Header=BB81_22 Depth=1
	mov	rax, rsi
	cmp	r9, 92
	jne	.LBB81_22
.LBB81_30:
	movzx	ecx, di
	mov	al, 1
	xor	edx, edx
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.198]
	jmp	.LBB81_31
.LBB81_36:
	xor	eax, eax
	and	al, 1
                                        # kill: def $al killed $al killed $eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB81_16:                              #   in Loop: Header=BB81_15 Depth=1
	.cfi_def_cfa_offset 16
	mov	rcx, r8
	sub	edi, esi
	js	.LBB81_2
.LBB81_19:                              #   in Loop: Header=BB81_15 Depth=1
	xor	al, 1
	cmp	rcx, 292
	je	.LBB81_2
.LBB81_15:                              # =>This Inner Loop Header: Depth=1
	lea	r8, [rcx + 1]
	movsx	esi, byte ptr [rcx + rdx]
	test	esi, esi
	jns	.LBB81_16
# %bb.17:                               #   in Loop: Header=BB81_15 Depth=1
	cmp	r8, 292
	je	.LBB81_41
# %bb.18:                               #   in Loop: Header=BB81_15 Depth=1
	movzx	r8d, byte ptr [rcx + rdx + 1]
	add	rcx, 2
	and	esi, 127
	shl	esi, 8
	or	esi, r8d
	sub	edi, esi
	jns	.LBB81_19
	jmp	.LBB81_2
.LBB81_37:
	mov	eax, edi
	and	eax, 2097120
	cmp	eax, 173792
	setne	cl
	mov	eax, edi
	and	eax, 2097150
	cmp	eax, 178206
	setne	dl
	cmp	eax, 183982
	setne	al
	movd	xmm0, edi
	pshufd	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
	paddd	xmm0, xmmword ptr [rip + .LCPI81_0]
	lea	esi, [rdi - 917760]
	cmp	esi, -707718
	setb	sil
	cmp	edi, 918000
	setb	dil
	pxor	xmm0, xmmword ptr [rip + .LCPI81_1]
	pcmpgtd	xmm0, xmmword ptr [rip + .LCPI81_2]
	movmskps	r8d, xmm0
	test	r8d, r8d
	sete	r8b
	and	dil, cl
	and	dil, r8b
	and	al, dl
	and	al, sil
	and	al, dil
	and	al, 1
                                        # kill: def $al killed $al killed $eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB81_32:                              #   in Loop: Header=BB81_31 Depth=1
	.cfi_def_cfa_offset 16
	mov	rdx, r8
	sub	ecx, edi
	js	.LBB81_2
.LBB81_35:                              #   in Loop: Header=BB81_31 Depth=1
	xor	al, 1
	cmp	rdx, 504
	je	.LBB81_2
.LBB81_31:                              # =>This Inner Loop Header: Depth=1
	lea	r8, [rdx + 1]
	movsx	edi, byte ptr [rdx + rsi]
	test	edi, edi
	jns	.LBB81_32
# %bb.33:                               #   in Loop: Header=BB81_31 Depth=1
	cmp	r8, 504
	je	.LBB81_41
# %bb.34:                               #   in Loop: Header=BB81_31 Depth=1
	movzx	r8d, byte ptr [rdx + rsi + 1]
	add	rdx, 2
	and	edi, 127
	shl	edi, 8
	or	edi, r8d
	sub	ecx, edi
	jns	.LBB81_35
	jmp	.LBB81_2
.LBB81_39:
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.203]
	mov	edx, 284
	mov	rdi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB81_40:
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.203]
	mov	edx, 212
	mov	rdi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB81_41:
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.204]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Lfunc_end81:
	.size	_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable, .Lfunc_end81-_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable
	.cfi_endproc
                                        # -- End function
