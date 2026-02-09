	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
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
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	movabs	rax, 4611686018427387904
	xor	edx, edx
	div	rsi
	cmp	rdx, 1
	sbb	rax, -1
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	cmp	rsi, 4097
	mov	qword ptr [rsp + 40], rsi       # 8-byte Spill
	mov	rax, rsi
	jae	.LBB216_1
# %bb.2:
	shr	rax
	mov	rcx, rsi
	sub	rcx, rax
	cmp	rcx, 64
	mov	eax, 64
	cmovb	rax, rcx
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB216_3
.LBB216_1:
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
.LBB216_3:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rcx, [rax + 80]
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	lea	rcx, [rax + 16]
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	lea	rcx, [rax - 16]
	mov	qword ptr [rsp + 88], rcx       # 8-byte Spill
	add	rax, -32
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	mov	ebp, 1
	xor	r13d, r13d
	mov	rcx, r8
	xor	r8d, r8d
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	sub	r9, r13
	jbe	.LBB216_5
	.p2align	4
.LBB216_20:
	mov	rax, r13
	shl	rax, 5
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rdi, [rsi + rax]
	mov	r14, r9
	cmp	r9, qword ptr [rsp + 24]        # 8-byte Folded Reload
	jae	.LBB216_23
.LBB216_21:
	cmp	byte ptr [rsp + 68], 0          # 1-byte Folded Reload
	je	.LBB216_22
# %bb.52:
	cmp	r14, 32
	mov	eax, 32
	cmovae	r14, rax
	mov	rsi, r14
	mov	rbx, r8
	xor	r8d, r8d
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	r8, rbx
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	eax, r14d
	lea	rsi, [2*rax + 1]
	jmp	.LBB216_53
	.p2align	4
.LBB216_5:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	cmp	r8, 2
	jae	.LBB216_7
	jmp	.LBB216_71
	.p2align	4
.LBB216_23:
	cmp	r14, 2
	jb	.LBB216_47
# %bb.24:
	mov	r11, rdx
	mov	rdx, qword ptr [rdi + 48]
	cmp	rdx, qword ptr [rdi + 16]
	jb	.LBB216_25
# %bb.31:
	mov	rsi, qword ptr [rdi + 32]
	ja	.LBB216_33
# %bb.32:
	cmp	rsi, qword ptr [rdi]
	jae	.LBB216_33
.LBB216_25:
	mov	r10d, 2
	mov	sil, 1
	cmp	r14, 2
	je	.LBB216_44
# %bb.26:
	mov	rbx, r8
	mov	r8, qword ptr [rsp + 72]        # 8-byte Reload
	add	r8, rax
	jmp	.LBB216_27
	.p2align	4
.LBB216_30:                             #   in Loop: Header=BB216_27 Depth=1
	inc	r10
	add	r8, 32
	cmp	r14, r10
	je	.LBB216_42
.LBB216_27:                             # =>This Inner Loop Header: Depth=1
	mov	r9, rdx
	mov	rdx, qword ptr [r8]
	cmp	rdx, r9
	jb	.LBB216_30
# %bb.28:                               #   in Loop: Header=BB216_27 Depth=1
	ja	.LBB216_43
# %bb.29:                               #   in Loop: Header=BB216_27 Depth=1
	mov	r9, qword ptr [r8 - 48]
	cmp	qword ptr [r8 - 16], r9
	jb	.LBB216_30
	jmp	.LBB216_43
	.p2align	4
.LBB216_22:
	mov	rdi, rdx
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rsi, r14
	cmp	r14, rax
	cmovae	rsi, rax
	add	rsi, rsi
	jmp	.LBB216_53
.LBB216_33:
	cmp	r14, 2
	jne	.LBB216_35
# %bb.34:
	mov	r10d, 2
	xor	esi, esi
	jmp	.LBB216_44
.LBB216_35:
	mov	rbx, r8
	mov	r8, qword ptr [rsp + 72]        # 8-byte Reload
	add	r8, rax
	mov	r10d, 2
	jmp	.LBB216_36
	.p2align	4
.LBB216_40:                             #   in Loop: Header=BB216_36 Depth=1
	inc	r10
	add	r8, 32
	mov	rsi, r9
	cmp	r14, r10
	je	.LBB216_41
.LBB216_36:                             # =>This Inner Loop Header: Depth=1
	mov	r9, rdx
	mov	rdx, qword ptr [r8]
	cmp	rdx, r9
	jb	.LBB216_37
# %bb.38:                               #   in Loop: Header=BB216_36 Depth=1
	mov	r9, qword ptr [r8 - 16]
	ja	.LBB216_40
# %bb.39:                               #   in Loop: Header=BB216_36 Depth=1
	cmp	r9, rsi
	jae	.LBB216_40
.LBB216_37:
	xor	esi, esi
	jmp	.LBB216_43
.LBB216_41:
	xor	esi, esi
.LBB216_42:
	mov	r10, r14
.LBB216_43:
	mov	r8, rbx
.LBB216_44:
	cmp	r10, qword ptr [rsp + 24]       # 8-byte Folded Reload
	mov	rdx, r11
	jb	.LBB216_21
# %bb.45:
	test	sil, sil
	je	.LBB216_46
# %bb.48:
	cmp	r10, 2
	jae	.LBB216_49
.LBB216_46:
	mov	r14, r10
	jmp	.LBB216_47
.LBB216_49:
	mov	rdx, r10
	shr	rdx
	mov	rsi, qword ptr [rsp + 96]       # 8-byte Reload
	add	rsi, rax
	mov	rdi, r10
	shl	rdi, 5
	add	rdi, rax
	add	rdi, qword ptr [rsp + 88]       # 8-byte Folded Reload
	.p2align	4
.LBB216_50:                             # =>This Inner Loop Header: Depth=1
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
	dec	rdx
	jne	.LBB216_50
# %bb.51:
	mov	r14, r10
	mov	rdx, r11
	.p2align	4
.LBB216_47:
	mov	rdi, rdx
	lea	rsi, [2*r14 + 1]
.LBB216_53:
	mov	rax, rbp
	shr	rax
	mov	qword ptr [rsp + 80], rsi       # 8-byte Spill
	shr	rsi
	lea	rdx, [2*r13]
	sub	rdx, rax
	lea	rax, [rsi + 2*r13]
	mov	rsi, qword ptr [rsp + 112]      # 8-byte Reload
	imul	rdx, rsi
	imul	rax, rsi
	xor	rax, rdx
	mov	esi, 127
	bsr	rsi, rax
	xor	esi, 63
	mov	rdx, rdi
	cmp	r8, 2
	jb	.LBB216_71
.LBB216_7:
	mov	rdi, r13
	shl	rdi, 5
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	add	rax, rdi
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	add	rdi, qword ptr [rsp + 104]      # 8-byte Folded Reload
	mov	qword ptr [rsp + 128], rdi      # 8-byte Spill
	mov	qword ptr [rsp + 48], rsi       # 8-byte Spill
	mov	qword ptr [rsp + 136], r13      # 8-byte Spill
	jmp	.LBB216_8
.LBB216_60:                             #   in Loop: Header=BB216_8 Depth=1
	mov	r13, r12
	mov	rsi, r8
.LBB216_65:                             #   in Loop: Header=BB216_8 Depth=1
	sub	rbp, rsi
	mov	rdi, r13
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
.LBB216_66:                             #   in Loop: Header=BB216_8 Depth=1
	lea	rbp, [2*r14 + 1]
	mov	r13, qword ptr [rsp + 136]      # 8-byte Reload
	cmp	r8, 1
	jbe	.LBB216_70
.LBB216_8:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB216_18 Depth 2
                                        #     Child Loop BB216_56 Depth 2
	cmp	byte ptr [rsp + r8 + 149], sil
	jb	.LBB216_71
# %bb.9:                                #   in Loop: Header=BB216_8 Depth=1
	dec	r8
	mov	r12, qword ptr [rsp + 8*r8 + 216]
	mov	rbx, r12
	shr	rbx
	mov	r15, rbp
	shr	r15
	lea	r14, [rbx + r15]
	cmp	r14, rcx
	ja	.LBB216_11
# %bb.10:                               #   in Loop: Header=BB216_8 Depth=1
	mov	eax, r12d
	or	eax, ebp
	and	eax, 1
	jne	.LBB216_11
# %bb.68:                               #   in Loop: Header=BB216_8 Depth=1
	add	r14, r14
	mov	rbp, r14
	cmp	r8, 1
	ja	.LBB216_8
	jmp	.LBB216_70
	.p2align	4
.LBB216_11:                             #   in Loop: Header=BB216_8 Depth=1
	sub	r13, r14
	shl	r13, 5
	add	r13, qword ptr [rsp + 8]        # 8-byte Folded Reload
	test	r12b, 1
	mov	qword ptr [rsp + 56], r8        # 8-byte Spill
	je	.LBB216_54
# %bb.12:                               #   in Loop: Header=BB216_8 Depth=1
	test	bpl, 1
	je	.LBB216_67
.LBB216_13:                             #   in Loop: Header=BB216_8 Depth=1
	cmp	r12, 2
	jae	.LBB216_14
	jmp	.LBB216_66
	.p2align	4
.LBB216_54:                             #   in Loop: Header=BB216_8 Depth=1
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
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	test	bpl, 1
	jne	.LBB216_13
.LBB216_67:                             #   in Loop: Header=BB216_8 Depth=1
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
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	cmp	r12, 2
	jb	.LBB216_66
.LBB216_14:                             #   in Loop: Header=BB216_8 Depth=1
	cmp	rbp, 2
	jb	.LBB216_66
# %bb.15:                               #   in Loop: Header=BB216_8 Depth=1
	cmp	r15, rbx
	mov	rbp, rbx
	cmovb	rbp, r15
	cmp	rcx, rbp
	jb	.LBB216_66
# %bb.16:                               #   in Loop: Header=BB216_8 Depth=1
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
	mov	r8, qword ptr [rsp + 16]        # 8-byte Reload
	add	rbp, r8
	cmp	rbx, r15
	jbe	.LBB216_17
# %bb.55:                               #   in Loop: Header=BB216_8 Depth=1
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	.p2align	4
.LBB216_56:                             #   Parent Loop BB216_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rsi, qword ptr [rbp - 16]
	add	rbp, -32
	mov	rdi, qword ptr [r12 - 16]
	add	r12, -32
	mov	cl, 1
	mov	rdx, r12
	cmp	rsi, rdi
	jb	.LBB216_59
# %bb.57:                               #   in Loop: Header=BB216_56 Depth=2
	mov	rcx, qword ptr [r12]
	setbe	sil
	cmp	qword ptr [rbp], rcx
	setb	cl
	mov	rdx, r12
	and	cl, sil
	jne	.LBB216_59
# %bb.58:                               #   in Loop: Header=BB216_56 Depth=2
	mov	rdx, rbp
.LBB216_59:                             #   in Loop: Header=BB216_56 Depth=2
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 16]
	movups	xmmword ptr [rax + 16], xmm1
	movups	xmmword ptr [rax], xmm0
	movzx	edx, cl
	xor	cl, 1
	movzx	ecx, cl
	shl	ecx, 5
	add	r12, rcx
	shl	edx, 5
	add	rbp, rdx
	cmp	r12, r13
	je	.LBB216_60
# %bb.61:                               #   in Loop: Header=BB216_56 Depth=2
	add	rax, -32
	cmp	rbp, r8
	jne	.LBB216_56
	jmp	.LBB216_60
.LBB216_17:                             #   in Loop: Header=BB216_8 Depth=1
	mov	rsi, r8
	mov	rdi, qword ptr [rsp + 120]      # 8-byte Reload
	.p2align	4
.LBB216_18:                             #   Parent Loop BB216_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [r12 + 16]
	mov	rcx, qword ptr [rsi + 16]
	cmp	rax, rcx
	jae	.LBB216_62
# %bb.19:                               #   in Loop: Header=BB216_18 Depth=2
	mov	eax, 1
	xor	ecx, ecx
	mov	rdx, r12
	jmp	.LBB216_63
	.p2align	4
.LBB216_62:                             #   in Loop: Header=BB216_18 Depth=2
	mov	rax, qword ptr [rsi]
	setbe	cl
	cmp	qword ptr [r12], rax
	setb	al
	and	al, cl
	mov	ecx, eax
	xor	cl, 1
	test	al, al
	mov	rdx, rsi
	cmovne	rdx, r12
	movzx	ecx, cl
	movzx	eax, al
.LBB216_63:                             #   in Loop: Header=BB216_18 Depth=2
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 16]
	movups	xmmword ptr [r13 + 16], xmm1
	movups	xmmword ptr [r13], xmm0
	shl	ecx, 5
	add	rsi, rcx
	add	r13, 32
	cmp	rsi, rbp
	je	.LBB216_65
# %bb.64:                               #   in Loop: Header=BB216_18 Depth=2
	shl	eax, 5
	add	r12, rax
	cmp	r12, rdi
	jne	.LBB216_18
	jmp	.LBB216_65
	.p2align	4
.LBB216_70:
	mov	r8d, 1
.LBB216_71:
	mov	qword ptr [rsp + 8*r8 + 216], rbp
	mov	byte ptr [rsp + r8 + 150], sil
	cmp	qword ptr [rsp + 40], r13       # 8-byte Folded Reload
	jbe	.LBB216_73
# %bb.72:
	inc	r8
	mov	rbp, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rax, rbp
	shr	rax
	add	r13, rax
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	sub	r9, r13
	jbe	.LBB216_5
	jmp	.LBB216_20
.LBB216_73:
	test	bpl, 1
	jne	.LBB216_74
# %bb.75:
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rax, rsi
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
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
	jmp	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std # TAILCALL
.LBB216_74:
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
.Lfunc_end216:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end216-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
