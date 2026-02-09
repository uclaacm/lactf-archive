	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 728
	.cfi_def_cfa_offset 784
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	dword ptr [rsp + 68], r8d       # 4-byte Spill
	mov	r8, rcx
	mov	r9, rdx
	mov	qword ptr [rsp + 16], rdi       # 8-byte Spill
	movabs	rax, 4611686018427387904
	xor	edx, edx
	div	rsi
	cmp	rdx, 1
	sbb	rax, -1
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	cmp	rsi, 4097
	mov	qword ptr [rsp + 40], rsi       # 8-byte Spill
	mov	rax, rsi
	jae	.LBB285_2
# %bb.1:
	shr	rax
	mov	rcx, rsi
	sub	rcx, rax
	cmp	rcx, 64
	mov	eax, 64
	cmovb	rax, rcx
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB285_3
.LBB285_2:
	or	rax, 1
	bsr	rcx, rax
	mov	eax, ecx
	shr	eax
	and	ecx, 1
	add	ecx, eax
	mov	eax, 1
	shl	rax, cl
                                        # kill: def $cl killed $cl killed $rcx
	shr	rsi, cl
	add	rsi, rax
	shr	rsi
	mov	qword ptr [rsp + 24], rsi       # 8-byte Spill
.LBB285_3:
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rcx, [rax + 32]
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	add	rax, -16
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	ebp, 1
	xor	r13d, r13d
	xor	r10d, r10d
	mov	rcx, r8
	mov	qword ptr [rsp + 32], r8        # 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	mov	r15, qword ptr [rsp + 40]       # 8-byte Reload
	sub	r15, r13
	jbe	.LBB285_7
	jmp	.LBB285_4
	.p2align	4
.LBB285_56:
	inc	r10
	mov	rbp, qword ptr [rsp + 88]       # 8-byte Reload
	mov	rax, rbp
	shr	rax
	add	r13, rax
	mov	r15, qword ptr [rsp + 40]       # 8-byte Reload
	sub	r15, r13
	ja	.LBB285_4
.LBB285_7:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	cmp	r10, 2
	jae	.LBB285_32
	jmp	.LBB285_55
	.p2align	4
.LBB285_4:
	mov	r11, r13
	shl	r11, 4
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rdi, [rax + r11]
	cmp	r15, qword ptr [rsp + 24]       # 8-byte Folded Reload
	jae	.LBB285_8
.LBB285_5:
	cmp	byte ptr [rsp + 68], 0          # 1-byte Folded Reload
	je	.LBB285_10
# %bb.6:
	mov	r14, r15
	cmp	r15, 32
	mov	eax, 32
	cmovae	r14, rax
	mov	rsi, r14
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rbx, r10
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	r10, rbx
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	eax, r14d
	lea	rsi, [2*rax + 1]
	jmp	.LBB285_31
	.p2align	4
.LBB285_8:
	cmp	r15, 2
	jae	.LBB285_11
# %bb.9:
	lea	rsi, [2*r15 + 1]
	jmp	.LBB285_31
	.p2align	4
.LBB285_10:
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rsi, r15
	cmp	r15, rax
	cmovae	rsi, rax
	add	rsi, rsi
	jmp	.LBB285_31
	.p2align	4
.LBB285_11:
	mov	rbx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 16]
	cmp	rsi, rbx
	jae	.LBB285_16
# %bb.12:
	cmp	r15, 2
	jne	.LBB285_20
# %bb.13:
	lea	rbx, [rdi + 32]
	mov	eax, 2
.LBB285_14:
	xor	r11d, r11d
.LBB285_15:
	mov	rsi, r11
	not	rsi
	shl	r11, 4
	shl	rsi, 4
	movups	xmm0, xmmword ptr [rdi + r11]
	movups	xmm1, xmmword ptr [rbx + rsi]
	movups	xmmword ptr [rdi + r11], xmm1
	movups	xmmword ptr [rbx + rsi], xmm0
	jmp	.LBB285_29
.LBB285_16:
	mov	r8d, 2
	cmp	r15, 2
	je	.LBB285_30
# %bb.17:
	mov	r14, r10
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	lea	r8, [rax + r11]
	mov	eax, 2
	mov	r9, rsi
	mov	rdx, r15
	.p2align	4
.LBB285_18:                             # =>This Inner Loop Header: Depth=1
	mov	r10, r9
	mov	r9, qword ptr [r8]
	cmp	r9, r10
	jb	.LBB285_24
# %bb.19:                               #   in Loop: Header=BB285_18 Depth=1
	inc	rax
	add	r8, 16
	cmp	rdx, rax
	jne	.LBB285_18
	jmp	.LBB285_23
.LBB285_20:
	mov	r14, r10
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	lea	r8, [rax + r11]
	mov	eax, 2
	mov	r9, rsi
	mov	rdx, r15
	.p2align	4
.LBB285_21:                             # =>This Inner Loop Header: Depth=1
	mov	r10, r9
	mov	r9, qword ptr [r8]
	cmp	r9, r10
	jae	.LBB285_24
# %bb.22:                               #   in Loop: Header=BB285_21 Depth=1
	inc	rax
	add	r8, 16
	cmp	rdx, rax
	jne	.LBB285_21
.LBB285_23:
	mov	rax, rdx
.LBB285_24:
	cmp	rax, qword ptr [rsp + 24]       # 8-byte Folded Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r10, r14
	jb	.LBB285_5
# %bb.25:
	cmp	rsi, rbx
	jae	.LBB285_29
# %bb.26:
	mov	r8d, 1
	cmp	rax, 2
	jb	.LBB285_30
# %bb.27:
	mov	rsi, rax
	shr	rsi
	mov	r8, rax
	shl	r8, 4
	lea	rbx, [rdi + r8]
	cmp	rsi, 1
	je	.LBB285_14
# %bb.57:
	mov	r14, r10
	lea	r9, [rdi + 16]
	and	rsi, -2
	add	r8, r11
	add	r8, qword ptr [rsp + 80]        # 8-byte Folded Reload
	xor	r11d, r11d
	movabs	rdx, 1152921504606846974
	.p2align	4
.LBB285_58:                             # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [r9 - 16]
	movups	xmm1, xmmword ptr [r8]
	movups	xmmword ptr [r9 - 16], xmm1
	movups	xmmword ptr [r8], xmm0
	mov	r10, r11
	xor	r10, rdx
	shl	r10, 4
	movups	xmm0, xmmword ptr [r9]
	movups	xmm1, xmmword ptr [rbx + r10]
	movups	xmmword ptr [r9], xmm1
	movups	xmmword ptr [rbx + r10], xmm0
	add	r11, 2
	add	r9, 32
	add	r8, -32
	cmp	rsi, r11
	jne	.LBB285_58
# %bb.59:
	mov	r8, rax
	test	al, 2
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r10, r14
	jne	.LBB285_15
	jmp	.LBB285_30
.LBB285_29:
	mov	r8, rax
.LBB285_30:
	lea	rsi, [2*r8 + 1]
	.p2align	4
.LBB285_31:
	mov	rax, rbp
	shr	rax
	mov	qword ptr [rsp + 88], rsi       # 8-byte Spill
	shr	rsi
	lea	rdi, [2*r13]
	sub	rdi, rax
	lea	rax, [rsi + 2*r13]
	mov	rsi, qword ptr [rsp + 96]       # 8-byte Reload
	imul	rdi, rsi
	imul	rax, rsi
	xor	rax, rdi
	mov	esi, 127
	bsr	rsi, rax
	xor	esi, 63
	cmp	r10, 2
	jb	.LBB285_55
.LBB285_32:
	mov	rdi, r13
	shl	rdi, 4
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	add	rax, rdi
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	add	rdi, qword ptr [rsp + 80]       # 8-byte Folded Reload
	mov	qword ptr [rsp + 112], rdi      # 8-byte Spill
	mov	qword ptr [rsp + 48], rsi       # 8-byte Spill
	mov	qword ptr [rsp + 120], r13      # 8-byte Spill
	jmp	.LBB285_36
.LBB285_33:                             #   in Loop: Header=BB285_36 Depth=1
	mov	r13, r12
	mov	rsi, r8
.LBB285_34:                             #   in Loop: Header=BB285_36 Depth=1
	sub	rbp, rsi
	mov	rdi, r13
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r10, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
.LBB285_35:                             #   in Loop: Header=BB285_36 Depth=1
	lea	rbp, [2*r14 + 1]
	mov	r13, qword ptr [rsp + 120]      # 8-byte Reload
	cmp	r10, 1
	jbe	.LBB285_54
.LBB285_36:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB285_52 Depth 2
                                        #     Child Loop BB285_49 Depth 2
	cmp	byte ptr [rsp + r10 + 133], sil
	jb	.LBB285_55
# %bb.37:                               #   in Loop: Header=BB285_36 Depth=1
	dec	r10
	mov	r12, qword ptr [rsp + 8*r10 + 200]
	mov	r15, r12
	shr	r15
	mov	rbx, rbp
	shr	rbx
	lea	r14, [r15 + rbx]
	cmp	r14, rcx
	ja	.LBB285_40
# %bb.38:                               #   in Loop: Header=BB285_36 Depth=1
	mov	eax, r12d
	or	eax, ebp
	and	eax, 1
	jne	.LBB285_40
# %bb.39:                               #   in Loop: Header=BB285_36 Depth=1
	add	r14, r14
	mov	rbp, r14
	cmp	r10, 1
	ja	.LBB285_36
	jmp	.LBB285_54
	.p2align	4
.LBB285_40:                             #   in Loop: Header=BB285_36 Depth=1
	sub	r13, r14
	shl	r13, 4
	add	r13, qword ptr [rsp + 16]       # 8-byte Folded Reload
	test	r12b, 1
	mov	qword ptr [rsp + 56], r10       # 8-byte Spill
	jne	.LBB285_41
# %bb.43:                               #   in Loop: Header=BB285_36 Depth=1
	mov	rax, r15
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rdi, r13
	mov	rsi, r15
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r10, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	test	bpl, 1
	je	.LBB285_44
.LBB285_42:                             #   in Loop: Header=BB285_36 Depth=1
	cmp	r12, 2
	jae	.LBB285_45
	jmp	.LBB285_35
	.p2align	4
.LBB285_41:                             #   in Loop: Header=BB285_36 Depth=1
	test	bpl, 1
	jne	.LBB285_42
.LBB285_44:                             #   in Loop: Header=BB285_36 Depth=1
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, r13
	mov	rax, rbx
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rsi, rbx
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r10, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	cmp	r12, 2
	jb	.LBB285_35
.LBB285_45:                             #   in Loop: Header=BB285_36 Depth=1
	cmp	rbp, 2
	jb	.LBB285_35
# %bb.46:                               #   in Loop: Header=BB285_36 Depth=1
	cmp	rbx, r15
	mov	rbp, r15
	cmovb	rbp, rbx
	cmp	rcx, rbp
	jb	.LBB285_35
# %bb.47:                               #   in Loop: Header=BB285_36 Depth=1
	mov	r12, r15
	shl	r12, 4
	add	r12, r13
	cmp	r15, rbx
	mov	rsi, r13
	cmova	rsi, r12
	shl	rbp, 4
	mov	rdi, rdx
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r8, qword ptr [rsp + 8]         # 8-byte Reload
	add	rbp, r8
	cmp	r15, rbx
	jbe	.LBB285_51
# %bb.48:                               #   in Loop: Header=BB285_36 Depth=1
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	.p2align	4
.LBB285_49:                             #   Parent Loop BB285_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rcx, [r12 - 16]
	mov	rdx, qword ptr [rbp - 16]
	xor	esi, esi
	xor	edi, edi
	cmp	rdx, qword ptr [r12 - 16]
	lea	rdx, [rbp - 16]
	setb	sil
	cmovb	rdx, rcx
	setae	dil
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [rax], xmm0
	shl	edi, 4
	add	r12, rdi
	add	r12, -16
	shl	esi, 4
	add	rbp, rsi
	add	rbp, -16
	cmp	r12, r13
	je	.LBB285_33
# %bb.50:                               #   in Loop: Header=BB285_49 Depth=2
	add	rax, -16
	cmp	rbp, r8
	jne	.LBB285_49
	jmp	.LBB285_33
.LBB285_51:                             #   in Loop: Header=BB285_36 Depth=1
	mov	rsi, r8
	mov	r8, qword ptr [rsp + 104]       # 8-byte Reload
	.p2align	4
.LBB285_52:                             #   Parent Loop BB285_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdx, rsi
	mov	rcx, qword ptr [r12]
	xor	eax, eax
	xor	esi, esi
	cmp	rcx, qword ptr [rdx]
	setb	cl
	setae	sil
	mov	rdi, rdx
	cmovb	rdi, r12
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [r13], xmm0
	shl	esi, 4
	add	rsi, rdx
	add	r13, 16
	cmp	rsi, rbp
	je	.LBB285_34
# %bb.53:                               #   in Loop: Header=BB285_52 Depth=2
	mov	al, cl
	shl	eax, 4
	add	r12, rax
	cmp	r12, r8
	jne	.LBB285_52
	jmp	.LBB285_34
	.p2align	4
.LBB285_54:
	mov	r10d, 1
.LBB285_55:
	mov	qword ptr [rsp + 8*r10 + 200], rbp
	mov	byte ptr [rsp + r10 + 134], sil
	cmp	qword ptr [rsp + 40], r13       # 8-byte Folded Reload
	ja	.LBB285_56
# %bb.60:
	test	bpl, 1
	jne	.LBB285_62
# %bb.61:
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rax, rsi
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	add	rsp, 728
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std # TAILCALL
.LBB285_62:
	.cfi_def_cfa_offset 784
	add	rsp, 728
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end285:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end285-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
