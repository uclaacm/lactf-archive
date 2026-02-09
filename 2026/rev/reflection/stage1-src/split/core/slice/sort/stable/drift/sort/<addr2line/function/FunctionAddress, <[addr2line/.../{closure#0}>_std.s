	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
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
	jae	.LBB232_2
# %bb.1:
	shr	rax
	mov	rcx, rsi
	sub	rcx, rax
	cmp	rcx, 64
	mov	eax, 64
	cmovb	rax, rcx
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB232_3
.LBB232_2:
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
.LBB232_3:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rcx, [rax + 48]
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	lea	rcx, [rax + 16]
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	lea	rcx, [rax - 8]
	mov	qword ptr [rsp + 88], rcx       # 8-byte Spill
	add	rax, -24
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	mov	ebp, 1
	xor	ebx, ebx
	mov	rcx, r8
	xor	r8d, r8d
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	sub	r9, rbx
	jbe	.LBB232_7
	jmp	.LBB232_4
	.p2align	4
.LBB232_57:
	inc	r8
	mov	rax, r9
	shr	rax
	add	rbx, rax
	mov	rbp, r9
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	sub	r9, rbx
	ja	.LBB232_4
.LBB232_7:
	xor	esi, esi
	mov	r9d, 1
	cmp	r8, 2
	jae	.LBB232_33
	jmp	.LBB232_56
	.p2align	4
.LBB232_4:
	lea	rax, [rbx + 2*rbx]
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rdi, [rsi + 8*rax]
	cmp	r9, qword ptr [rsp + 24]        # 8-byte Folded Reload
	jae	.LBB232_8
.LBB232_5:
	cmp	byte ptr [rsp + 68], 0          # 1-byte Folded Reload
	je	.LBB232_10
# %bb.6:
	cmp	r9, 32
	mov	eax, 32
	cmovae	r9, rax
	mov	rsi, r9
	mov	r14, r8
	xor	r8d, r8d
	mov	r15, r9
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	mov	r8, r14
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	eax, r15d
	lea	r9, [2*rax + 1]
	jmp	.LBB232_32
	.p2align	4
.LBB232_8:
	cmp	r9, 2
	jae	.LBB232_11
# %bb.9:
	lea	r9, [2*r9 + 1]
	jmp	.LBB232_32
	.p2align	4
.LBB232_10:
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	cmp	r9, rax
	cmovae	r9, rax
	add	r9, r9
	jmp	.LBB232_32
	.p2align	4
.LBB232_11:
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rdi + 24]
	cmp	r11, r10
	mov	r15, r9
	jae	.LBB232_17
# %bb.12:
	cmp	r9, 2
	jne	.LBB232_21
# %bb.13:
	mov	r11, r8
	mov	eax, 2
	mov	r9d, 1
.LBB232_14:
	lea	rsi, [8*rbx]
	lea	rsi, [rsi + 2*rsi]
	mov	rdi, qword ptr [rsp + 96]       # 8-byte Reload
	lea	r10, [rdi + rsi]
	lea	rdi, [rax + 2*rax]
	lea	rsi, [rsi + 8*rdi]
	add	rsi, qword ptr [rsp + 88]       # 8-byte Folded Reload
	.p2align	4
.LBB232_15:                             # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [r10 - 16]
	movups	xmm1, xmmword ptr [rsi - 16]
	movups	xmmword ptr [r10 - 16], xmm1
	movups	xmmword ptr [rsi - 16], xmm0
	mov	rdi, qword ptr [r10]
	mov	r8, qword ptr [rsi]
	mov	qword ptr [r10], r8
	mov	qword ptr [rsi], rdi
	add	r10, 24
	add	rsi, -24
	dec	r9
	jne	.LBB232_15
# %bb.16:
	mov	r8, r11
	lea	r9, [2*rax + 1]
	jmp	.LBB232_32
.LBB232_17:
	mov	esi, 2
	cmp	r9, 2
	je	.LBB232_31
# %bb.18:
	mov	r14, r8
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	lea	rsi, [rsi + 8*rax]
	mov	eax, 2
	mov	r8, r11
	.p2align	4
.LBB232_19:                             # =>This Inner Loop Header: Depth=1
	mov	r9, r8
	mov	r8, qword ptr [rsi]
	cmp	r8, r9
	jb	.LBB232_26
# %bb.20:                               #   in Loop: Header=BB232_19 Depth=1
	inc	rax
	add	rsi, 24
	cmp	r15, rax
	jne	.LBB232_19
	jmp	.LBB232_24
.LBB232_21:
	mov	r14, r8
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	lea	rsi, [rsi + 8*rax]
	mov	eax, 2
	mov	r8, r11
	.p2align	4
.LBB232_22:                             # =>This Inner Loop Header: Depth=1
	mov	r9, r8
	mov	r8, qword ptr [rsi]
	cmp	r8, r9
	jae	.LBB232_26
# %bb.23:                               #   in Loop: Header=BB232_22 Depth=1
	inc	rax
	add	rsi, 24
	cmp	r15, rax
	jne	.LBB232_22
.LBB232_24:
	mov	r9, r15
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 24]       # 8-byte Folded Reload
	mov	r8, r14
	jb	.LBB232_5
	jmp	.LBB232_27
.LBB232_26:
	mov	r9, r15
	cmp	rax, qword ptr [rsp + 24]       # 8-byte Folded Reload
	mov	r8, r14
	jb	.LBB232_5
.LBB232_27:
	cmp	r11, r10
	jae	.LBB232_30
# %bb.28:
	mov	esi, 1
	cmp	rax, 2
	jb	.LBB232_31
# %bb.29:
	mov	r11, r8
	mov	r9, rax
	shr	r9
	jmp	.LBB232_14
.LBB232_30:
	mov	rsi, rax
.LBB232_31:
	lea	r9, [2*rsi + 1]
	.p2align	4
.LBB232_32:
	mov	rax, rbp
	shr	rax
	mov	rsi, r9
	shr	rsi
	lea	rdi, [rbx + rbx]
	sub	rdi, rax
	lea	rax, [rsi + 2*rbx]
	mov	rsi, qword ptr [rsp + 112]      # 8-byte Reload
	imul	rdi, rsi
	imul	rax, rsi
	xor	rax, rdi
	mov	esi, 127
	bsr	rsi, rax
	xor	esi, 63
	cmp	r8, 2
	jb	.LBB232_56
.LBB232_33:
	lea	rax, [8*rbx]
	lea	rdi, [rax + 2*rax]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	add	rax, rdi
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	add	rdi, qword ptr [rsp + 104]      # 8-byte Folded Reload
	mov	qword ptr [rsp + 128], rdi      # 8-byte Spill
	mov	qword ptr [rsp + 48], r9        # 8-byte Spill
	mov	qword ptr [rsp + 136], rbx      # 8-byte Spill
	mov	qword ptr [rsp + 80], rsi       # 8-byte Spill
	jmp	.LBB232_37
.LBB232_34:                             #   in Loop: Header=BB232_37 Depth=1
	mov	rbx, r13
	mov	rsi, r9
.LBB232_35:                             #   in Loop: Header=BB232_37 Depth=1
	sub	rbp, rsi
	mov	rdi, rbx
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	r9, qword ptr [rsp + 48]        # 8-byte Reload
	mov	rsi, qword ptr [rsp + 80]       # 8-byte Reload
.LBB232_36:                             #   in Loop: Header=BB232_37 Depth=1
	lea	rbp, [2*r14 + 1]
	mov	rbx, qword ptr [rsp + 136]      # 8-byte Reload
	cmp	r8, 1
	jbe	.LBB232_55
.LBB232_37:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB232_53 Depth 2
                                        #     Child Loop BB232_50 Depth 2
	cmp	byte ptr [rsp + r8 + 149], sil
	jb	.LBB232_56
# %bb.38:                               #   in Loop: Header=BB232_37 Depth=1
	dec	r8
	mov	r13, qword ptr [rsp + 8*r8 + 216]
	mov	r12, r13
	shr	r12
	mov	r15, rbp
	shr	r15
	lea	r14, [r12 + r15]
	cmp	r14, rcx
	ja	.LBB232_41
# %bb.39:                               #   in Loop: Header=BB232_37 Depth=1
	mov	eax, r13d
	or	eax, ebp
	and	eax, 1
	jne	.LBB232_41
# %bb.40:                               #   in Loop: Header=BB232_37 Depth=1
	add	r14, r14
	mov	rbp, r14
	cmp	r8, 1
	ja	.LBB232_37
	jmp	.LBB232_55
	.p2align	4
.LBB232_41:                             #   in Loop: Header=BB232_37 Depth=1
	mov	rax, rbx
	sub	rax, r14
	lea	rax, [rax + 2*rax]
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rbx, [rsi + 8*rax]
	test	r13b, 1
	mov	qword ptr [rsp + 56], r8        # 8-byte Spill
	jne	.LBB232_42
# %bb.44:                               #   in Loop: Header=BB232_37 Depth=1
	mov	rax, r12
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rdi, rbx
	mov	rsi, r12
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	mov	r9, qword ptr [rsp + 48]        # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	test	bpl, 1
	je	.LBB232_45
.LBB232_43:                             #   in Loop: Header=BB232_37 Depth=1
	cmp	r13, 2
	mov	rsi, qword ptr [rsp + 80]       # 8-byte Reload
	jae	.LBB232_46
	jmp	.LBB232_36
	.p2align	4
.LBB232_42:                             #   in Loop: Header=BB232_37 Depth=1
	test	bpl, 1
	jne	.LBB232_43
.LBB232_45:                             #   in Loop: Header=BB232_37 Depth=1
	lea	rax, [r12 + 2*r12]
	lea	rdi, [rbx + 8*rax]
	mov	rax, r15
	or	rax, 1
	bsr	r8, rax
	xor	r8d, 63
	add	r8d, r8d
	xor	r8d, 126
	mov	rsi, r15
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	mov	r9, qword ptr [rsp + 48]        # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	cmp	r13, 2
	mov	rsi, qword ptr [rsp + 80]       # 8-byte Reload
	jb	.LBB232_36
.LBB232_46:                             #   in Loop: Header=BB232_37 Depth=1
	cmp	rbp, 2
	jb	.LBB232_36
# %bb.47:                               #   in Loop: Header=BB232_37 Depth=1
	cmp	r15, r12
	mov	rax, r12
	cmovb	rax, r15
	cmp	rcx, rax
	jb	.LBB232_36
# %bb.48:                               #   in Loop: Header=BB232_37 Depth=1
	lea	rcx, [r12 + 2*r12]
	lea	r13, [rbx + 8*rcx]
	cmp	r12, r15
	mov	rsi, rbx
	cmova	rsi, r13
	shl	rax, 3
	lea	rbp, [rax + 2*rax]
	mov	rdi, rdx
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
	add	rbp, r9
	cmp	r12, r15
	jbe	.LBB232_52
# %bb.49:                               #   in Loop: Header=BB232_37 Depth=1
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	.p2align	4
.LBB232_50:                             #   Parent Loop BB232_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rcx, [r13 - 24]
	lea	rdx, [rbp - 24]
	mov	rsi, qword ptr [rbp - 24]
	xor	edi, edi
	xor	r8d, r8d
	cmp	rsi, qword ptr [r13 - 24]
	setb	dil
	setae	r8b
	cmovb	rdx, rcx
	mov	rcx, qword ptr [rdx + 16]
	mov	qword ptr [rax + 16], rcx
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [rax], xmm0
	lea	rcx, [r8 + 2*r8]
	lea	r13, [r13 + 8*rcx - 24]
	lea	rcx, [rdi + 2*rdi]
	lea	rbp, [rbp + 8*rcx - 24]
	cmp	r13, rbx
	je	.LBB232_34
# %bb.51:                               #   in Loop: Header=BB232_50 Depth=2
	add	rax, -24
	cmp	rbp, r9
	jne	.LBB232_50
	jmp	.LBB232_34
.LBB232_52:                             #   in Loop: Header=BB232_37 Depth=1
	mov	rsi, r9
	mov	r9, qword ptr [rsp + 120]       # 8-byte Reload
	.p2align	4
.LBB232_53:                             #   Parent Loop BB232_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [r13]
	xor	eax, eax
	xor	edx, edx
	cmp	rcx, qword ptr [rsi]
	setb	cl
	setae	dl
	mov	rdi, rsi
	cmovb	rdi, r13
	mov	r8, qword ptr [rdi + 16]
	mov	qword ptr [rbx + 16], r8
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdx, [rdx + 2*rdx]
	lea	rsi, [rsi + 8*rdx]
	add	rbx, 24
	cmp	rsi, rbp
	je	.LBB232_35
# %bb.54:                               #   in Loop: Header=BB232_53 Depth=2
	mov	al, cl
	lea	rax, [rax + 2*rax]
	lea	r13, [r13 + 8*rax]
	cmp	r13, r9
	jne	.LBB232_53
	jmp	.LBB232_35
	.p2align	4
.LBB232_55:
	mov	r8d, 1
.LBB232_56:
	mov	qword ptr [rsp + 8*r8 + 216], rbp
	mov	byte ptr [rsp + r8 + 150], sil
	cmp	qword ptr [rsp + 40], rbx       # 8-byte Folded Reload
	ja	.LBB232_57
# %bb.58:
	test	bpl, 1
	jne	.LBB232_60
# %bb.59:
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
	jmp	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std # TAILCALL
.LBB232_60:
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
.Lfunc_end232:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std, .Lfunc_end232-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
