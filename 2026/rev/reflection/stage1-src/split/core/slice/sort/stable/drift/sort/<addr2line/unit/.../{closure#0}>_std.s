	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
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
	sub	rsp, 744
	.cfi_def_cfa_offset 800
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
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	cmp	rsi, 4097
	mov	qword ptr [rsp + 40], rsi       # 8-byte Spill
	mov	rax, rsi
	jae	.LBB282_1
# %bb.2:
	shr	rax
	mov	rcx, rsi
	sub	rcx, rax
	cmp	rcx, 64
	mov	eax, 64
	cmovb	rax, rcx
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB282_3
.LBB282_1:
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
.LBB282_3:
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rcx, [rax + 72]
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	lea	rcx, [rax + 16]
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	lea	rcx, [rax - 16]
	mov	qword ptr [rsp + 88], rcx       # 8-byte Spill
	add	rax, -32
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	mov	ebp, 1
	xor	r13d, r13d
	xor	r10d, r10d
	mov	rcx, r8
	mov	qword ptr [rsp + 32], r8        # 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	mov	r15, qword ptr [rsp + 40]       # 8-byte Reload
	sub	r15, r13
	jbe	.LBB282_5
	.p2align	4
.LBB282_20:
	mov	rax, r13
	shl	rax, 5
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rdi, [rsi + rax]
	cmp	r15, qword ptr [rsp + 24]       # 8-byte Folded Reload
	jae	.LBB282_23
.LBB282_21:
	cmp	byte ptr [rsp + 68], 0          # 1-byte Folded Reload
	je	.LBB282_22
# %bb.44:
	mov	r14, r15
	cmp	r15, 32
	mov	eax, 32
	cmovae	r14, rax
	mov	rsi, r14
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rbx, r10
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs_B17_INtB17_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
	mov	r10, rbx
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	eax, r14d
	lea	rsi, [2*rax + 1]
	jmp	.LBB282_45
	.p2align	4
.LBB282_5:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	cmp	r10, 2
	jae	.LBB282_7
	jmp	.LBB282_57
	.p2align	4
.LBB282_23:
	cmp	r15, 2
	jae	.LBB282_25
# %bb.24:
	lea	rsi, [2*r15 + 1]
	jmp	.LBB282_45
	.p2align	4
.LBB282_22:
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rsi, r15
	cmp	r15, rax
	cmovae	rsi, rax
	add	rsi, rsi
	jmp	.LBB282_45
	.p2align	4
.LBB282_25:
	mov	rbx, qword ptr [rdi + 8]
	mov	rsi, qword ptr [rdi + 40]
	cmp	rsi, rbx
	jae	.LBB282_26
# %bb.30:
	cmp	r15, 2
	jne	.LBB282_32
# %bb.31:
	mov	r11d, 2
	mov	r8d, 1
.LBB282_42:
	mov	rsi, qword ptr [rsp + 96]       # 8-byte Reload
	add	rsi, rax
	mov	rdi, r11
	shl	rdi, 5
	add	rdi, rax
	add	rdi, qword ptr [rsp + 88]       # 8-byte Folded Reload
	.p2align	4
.LBB282_43:                             # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [rsi - 16]
	movups	xmm1, xmmword ptr [rdi - 16]
	movups	xmmword ptr [rsi - 16], xmm1
	movups	xmmword ptr [rdi - 16], xmm0
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi], xmm1
	movups	xmmword ptr [rdi], xmm0
	add	rsi, 32
	add	rdi, -32
	dec	r8
	jne	.LBB282_43
	jmp	.LBB282_38
.LBB282_26:
	mov	r8d, 2
	cmp	r15, 2
	je	.LBB282_39
# %bb.27:
	mov	r14, r10
	mov	rdx, qword ptr [rsp + 72]       # 8-byte Reload
	lea	r8, [rdx + rax]
	mov	r11d, 2
	mov	r9, rsi
	mov	rdx, r15
	.p2align	4
.LBB282_28:                             # =>This Inner Loop Header: Depth=1
	mov	r10, r9
	mov	r9, qword ptr [r8]
	cmp	r9, r10
	jb	.LBB282_36
# %bb.29:                               #   in Loop: Header=BB282_28 Depth=1
	inc	r11
	add	r8, 32
	cmp	rdx, r11
	jne	.LBB282_28
	jmp	.LBB282_35
.LBB282_32:
	mov	r14, r10
	mov	rdx, qword ptr [rsp + 72]       # 8-byte Reload
	lea	r8, [rdx + rax]
	mov	r11d, 2
	mov	r9, rsi
	mov	rdx, r15
	.p2align	4
.LBB282_33:                             # =>This Inner Loop Header: Depth=1
	mov	r10, r9
	mov	r9, qword ptr [r8]
	cmp	r9, r10
	jae	.LBB282_36
# %bb.34:                               #   in Loop: Header=BB282_33 Depth=1
	inc	r11
	add	r8, 32
	cmp	rdx, r11
	jne	.LBB282_33
.LBB282_35:
	mov	r11, rdx
.LBB282_36:
	cmp	r11, qword ptr [rsp + 24]       # 8-byte Folded Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r10, r14
	jb	.LBB282_21
# %bb.37:
	cmp	rsi, rbx
	jae	.LBB282_38
# %bb.40:
	mov	r8d, 1
	cmp	r11, 2
	jb	.LBB282_39
# %bb.41:
	mov	r8, r11
	shr	r8
	jmp	.LBB282_42
.LBB282_38:
	mov	r8, r11
.LBB282_39:
	lea	rsi, [2*r8 + 1]
	.p2align	4
.LBB282_45:
	mov	rax, rbp
	shr	rax
	mov	qword ptr [rsp + 80], rsi       # 8-byte Spill
	shr	rsi
	lea	rdi, [2*r13]
	sub	rdi, rax
	lea	rax, [rsi + 2*r13]
	mov	rsi, qword ptr [rsp + 112]      # 8-byte Reload
	imul	rdi, rsi
	imul	rax, rsi
	xor	rax, rdi
	mov	esi, 127
	bsr	rsi, rax
	xor	esi, 63
	cmp	r10, 2
	jb	.LBB282_57
.LBB282_7:
	mov	rdi, r13
	shl	rdi, 5
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	add	rax, rdi
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	add	rdi, qword ptr [rsp + 104]      # 8-byte Folded Reload
	mov	qword ptr [rsp + 128], rdi      # 8-byte Spill
	mov	qword ptr [rsp + 48], rsi       # 8-byte Spill
	mov	qword ptr [rsp + 136], r13      # 8-byte Spill
	jmp	.LBB282_8
.LBB282_49:                             #   in Loop: Header=BB282_8 Depth=1
	mov	r13, r12
	mov	rsi, r9
.LBB282_50:                             #   in Loop: Header=BB282_8 Depth=1
	sub	rbp, rsi
	mov	rdi, r13
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r10, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
.LBB282_51:                             #   in Loop: Header=BB282_8 Depth=1
	lea	rbp, [2*r14 + 1]
	mov	r13, qword ptr [rsp + 136]      # 8-byte Reload
	cmp	r10, 1
	jbe	.LBB282_56
.LBB282_8:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB282_18 Depth 2
                                        #     Child Loop BB282_48 Depth 2
	cmp	byte ptr [rsp + r10 + 149], sil
	jb	.LBB282_57
# %bb.9:                                #   in Loop: Header=BB282_8 Depth=1
	dec	r10
	mov	r12, qword ptr [rsp + 8*r10 + 216]
	mov	rbx, r12
	shr	rbx
	mov	r15, rbp
	shr	r15
	lea	r14, [rbx + r15]
	cmp	r14, rcx
	ja	.LBB282_11
# %bb.10:                               #   in Loop: Header=BB282_8 Depth=1
	mov	eax, r12d
	or	eax, ebp
	and	eax, 1
	jne	.LBB282_11
# %bb.54:                               #   in Loop: Header=BB282_8 Depth=1
	add	r14, r14
	mov	rbp, r14
	cmp	r10, 1
	ja	.LBB282_8
	jmp	.LBB282_56
	.p2align	4
.LBB282_11:                             #   in Loop: Header=BB282_8 Depth=1
	sub	r13, r14
	shl	r13, 5
	add	r13, qword ptr [rsp + 16]       # 8-byte Folded Reload
	test	r12b, 1
	mov	qword ptr [rsp + 56], r10       # 8-byte Spill
	je	.LBB282_46
# %bb.12:                               #   in Loop: Header=BB282_8 Depth=1
	test	bpl, 1
	je	.LBB282_53
.LBB282_13:                             #   in Loop: Header=BB282_8 Depth=1
	cmp	r12, 2
	jae	.LBB282_14
	jmp	.LBB282_51
	.p2align	4
.LBB282_46:                             #   in Loop: Header=BB282_8 Depth=1
	mov	rax, rbx
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rdi, r13
	mov	rsi, rbx
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs_B17_INtB17_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r10, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	test	bpl, 1
	jne	.LBB282_13
.LBB282_53:                             #   in Loop: Header=BB282_8 Depth=1
	mov	rdi, rbx
	shl	rdi, 5
	add	rdi, r13
	mov	rax, r15
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rsi, r15
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs_B17_INtB17_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r10, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	cmp	r12, 2
	jb	.LBB282_51
.LBB282_14:                             #   in Loop: Header=BB282_8 Depth=1
	cmp	rbp, 2
	jb	.LBB282_51
# %bb.15:                               #   in Loop: Header=BB282_8 Depth=1
	cmp	r15, rbx
	mov	rbp, rbx
	cmovb	rbp, r15
	cmp	rcx, rbp
	jb	.LBB282_51
# %bb.16:                               #   in Loop: Header=BB282_8 Depth=1
	mov	r12, rbx
	shl	r12, 5
	add	r12, r13
	cmp	rbx, r15
	mov	rsi, r13
	cmova	rsi, r12
	shl	rbp, 5
	mov	rdi, rdx
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	add	rbp, r9
	cmp	rbx, r15
	jbe	.LBB282_17
# %bb.47:                               #   in Loop: Header=BB282_8 Depth=1
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	.p2align	4
.LBB282_48:                             #   Parent Loop BB282_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rcx, [r12 - 32]
	lea	rdx, [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	xor	edi, edi
	xor	r8d, r8d
	cmp	rsi, qword ptr [r12 - 24]
	setb	dil
	setae	r8b
	cmovb	rdx, rcx
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 16]
	movups	xmmword ptr [rax + 16], xmm1
	movups	xmmword ptr [rax], xmm0
	shl	r8d, 5
	add	r12, r8
	add	r12, -32
	shl	edi, 5
	add	rbp, rdi
	add	rbp, -32
	cmp	r12, r13
	je	.LBB282_49
# %bb.52:                               #   in Loop: Header=BB282_48 Depth=2
	add	rax, -32
	cmp	rbp, r9
	jne	.LBB282_48
	jmp	.LBB282_49
.LBB282_17:                             #   in Loop: Header=BB282_8 Depth=1
	mov	rsi, r9
	mov	r8, qword ptr [rsp + 120]       # 8-byte Reload
	.p2align	4
.LBB282_18:                             #   Parent Loop BB282_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdx, rsi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	xor	esi, esi
	cmp	rcx, qword ptr [rdx + 8]
	setb	cl
	setae	sil
	mov	rdi, rdx
	cmovb	rdi, r12
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movups	xmmword ptr [r13 + 16], xmm1
	movups	xmmword ptr [r13], xmm0
	shl	esi, 5
	add	rsi, rdx
	add	r13, 32
	cmp	rsi, rbp
	je	.LBB282_50
# %bb.19:                               #   in Loop: Header=BB282_18 Depth=2
	mov	al, cl
	shl	eax, 5
	add	r12, rax
	cmp	r12, r8
	jne	.LBB282_18
	jmp	.LBB282_50
	.p2align	4
.LBB282_56:
	mov	r10d, 1
.LBB282_57:
	mov	qword ptr [rsp + 8*r10 + 216], rbp
	mov	byte ptr [rsp + r10 + 150], sil
	cmp	qword ptr [rsp + 40], r13       # 8-byte Folded Reload
	jbe	.LBB282_59
# %bb.58:
	inc	r10
	mov	rbp, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rax, rbp
	shr	rax
	add	r13, rax
	mov	r15, qword ptr [rsp + 40]       # 8-byte Reload
	sub	r15, r13
	jbe	.LBB282_5
	jmp	.LBB282_20
.LBB282_59:
	test	bpl, 1
	jne	.LBB282_60
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
	add	rsp, 744
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
	jmp	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs_B17_INtB17_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std # TAILCALL
.LBB282_60:
	.cfi_def_cfa_offset 800
	add	rsp, 744
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
.Lfunc_end282:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std, .Lfunc_end282-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
