	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
.Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception37
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
	sub	rsp, 88
	.cfi_def_cfa_offset 144
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	mov	rbx, rdx
	mov	r15, rsi
	mov	r12, rdi
	cmp	rsi, 33
	jae	.LBB201_1
.LBB201_6:
	cmp	r15, 2
	jb	.LBB201_5
# %bb.7:
	mov	rax, r15
	shr	rax
	cmp	r15, 8
	mov	qword ptr [rsp], r12            # 8-byte Spill
	jb	.LBB201_9
# %bb.8:
	mov	rcx, qword ptr [r12 + 48]
	mov	rdx, qword ptr [r12 + 112]
	xor	r9d, r9d
	xor	r8d, r8d
	cmp	rcx, qword ptr [r12 + 16]
	setae	r9b
	setb	r8b
	xor	edi, edi
	cmp	rdx, qword ptr [r12 + 80]
	setb	dil
	shl	r8d, 5
	lea	rdx, [r12 + r8]
	shl	r9d, 5
	lea	rcx, [r12 + r9]
	mov	r10d, edi
	shl	r10d, 5
	lea	rsi, [r12 + r10]
	add	rsi, 64
	xor	edi, 3
	shl	edi, 5
	mov	r10, qword ptr [r12 + r10 + 80]
	mov	r11, qword ptr [r12 + rdi + 16]
	mov	r9, qword ptr [r12 + r9 + 16]
	cmp	r11, r9
	mov	r14, rcx
	cmovb	r14, rsi
	cmp	r10, qword ptr [r12 + r8 + 16]
	cmovb	r14, rdx
	cmovb	rdx, rsi
	lea	rdi, [r12 + rdi]
	cmovb	rsi, rcx
	cmp	r11, r9
	cmovae	rcx, rdi
	cmovb	rsi, rdi
	mov	rdi, qword ptr [rsi + 16]
	cmp	rdi, qword ptr [r14 + 16]
	mov	rdi, r14
	cmovb	rdi, rsi
	cmovb	rsi, r14
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 16]
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movups	xmmword ptr [rbx + 48], xmm1
	movups	xmmword ptr [rbx + 32], xmm0
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 16]
	movups	xmmword ptr [rbx + 80], xmm1
	movups	xmmword ptr [rbx + 64], xmm0
	movups	xmm0, xmmword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 5
	mov	rsi, qword ptr [r12 + rdx + 48]
	mov	rdi, qword ptr [r12 + rdx + 112]
	xor	r11d, r11d
	xor	r9d, r9d
	cmp	rsi, qword ptr [r12 + rdx + 16]
	setae	r11b
	setb	r9b
	xor	r8d, r8d
	cmp	rdi, qword ptr [r12 + rdx + 80]
	lea	r10, [r12 + rdx]
	setb	r8b
	shl	r9d, 5
	shl	r11d, 5
	lea	rsi, [r10 + r11]
	mov	r14d, r8d
	shl	r14d, 5
	lea	rdi, [r14 + r10]
	add	rdi, 64
	xor	r8d, 3
	shl	r8d, 5
	mov	r12, qword ptr [r8 + r10 + 16]
	mov	r11, qword ptr [r11 + r10 + 16]
	cmp	r12, r11
	mov	r13, rsi
	cmovb	r13, rdi
	mov	r14, qword ptr [r10 + r14 + 80]
	cmp	r14, qword ptr [r9 + r10 + 16]
	lea	r9, [r10 + r9]
	cmovb	r13, r9
	cmovb	r9, rdi
	lea	r8, [r10 + r8]
	cmovb	rdi, rsi
	cmp	r12, r11
	mov	r12, qword ptr [rsp]            # 8-byte Reload
	cmovae	rsi, r8
	cmovb	rdi, r8
	movups	xmm1, xmmword ptr [rcx + 16]
	mov	rcx, qword ptr [rdi + 16]
	cmp	rcx, qword ptr [r13 + 16]
	movups	xmmword ptr [rbx + 112], xmm1
	mov	rcx, r13
	cmovb	rcx, rdi
	movups	xmmword ptr [rbx + 96], xmm0
	cmovb	rdi, r13
	movups	xmm0, xmmword ptr [r9]
	movups	xmm1, xmmword ptr [r9 + 16]
	movups	xmmword ptr [rbx + rdx + 16], xmm1
	movups	xmmword ptr [rbx + rdx], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [rbx + rdx + 32], xmm0
	movups	xmmword ptr [rbx + rdx + 48], xmm1
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movups	xmmword ptr [rbx + rdx + 64], xmm0
	movups	xmmword ptr [rbx + rdx + 80], xmm1
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 16]
	movups	xmmword ptr [rbx + rdx + 96], xmm0
	movups	xmmword ptr [rbx + rdx + 112], xmm1
	mov	edx, 4
	mov	rsi, r15
	sub	rsi, rax
	cmp	rdx, rax
	jb	.LBB201_11
	jmp	.LBB201_17
.LBB201_1:
	mov	r13d, r8d
	mov	r14, rcx
	lea	rax, [rbx - 32]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
.LBB201_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB201_3 Depth 2
                                        #       Child Loop BB201_49 Depth 3
                                        #         Child Loop BB201_80 Depth 4
                                        #       Child Loop BB201_57 Depth 3
                                        #     Child Loop BB201_65 Depth 2
                                        #       Child Loop BB201_83 Depth 3
                                        #     Child Loop BB201_73 Depth 2
	mov	rbp, r15
	mov	qword ptr [rsp], r12            # 8-byte Spill
	.p2align	4
.LBB201_3:                              #   Parent Loop BB201_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB201_49 Depth 3
                                        #         Child Loop BB201_80 Depth 4
                                        #       Child Loop BB201_57 Depth 3
	sub	r13d, 1
	jb	.LBB201_4
# %bb.42:                               #   in Loop: Header=BB201_3 Depth=2
	mov	rcx, rbp
	shr	rcx, 3
	mov	rax, rcx
	shl	rax, 7
	add	rax, r12
	imul	rdx, rcx, 224
	add	rdx, r12
	cmp	rbp, 64
	jae	.LBB201_43
# %bb.44:                               #   in Loop: Header=BB201_3 Depth=2
	mov	rcx, qword ptr [r12 + 16]
	mov	rsi, qword ptr [rax + 16]
	cmp	rcx, rsi
	setb	dil
	mov	r8, qword ptr [rdx + 16]
	cmp	rcx, r8
	setb	cl
	xor	cl, dil
	cmp	rsi, r8
	setb	sil
	xor	sil, dil
	cmovne	rax, rdx
	test	cl, cl
	cmovne	rax, r12
	jmp	.LBB201_45
	.p2align	4
.LBB201_43:                             #   in Loop: Header=BB201_3 Depth=2
	mov	rdi, r12
	mov	rsi, rax
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
.LBB201_45:                             #   in Loop: Header=BB201_3 Depth=2
	mov	r9, rax
	sub	r9, r12
	shr	r9, 5
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movaps	xmmword ptr [rsp + 64], xmm1
	movaps	xmmword ptr [rsp + 48], xmm0
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	mov	dword ptr [rsp + 24], r13d      # 4-byte Spill
	je	.LBB201_47
# %bb.46:                               #   in Loop: Header=BB201_3 Depth=2
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rcx + 16]
	cmp	rcx, qword ptr [rax + 16]
	jae	.LBB201_63
.LBB201_47:                             #   in Loop: Header=BB201_3 Depth=2
	cmp	r14, rbp
	jb	.LBB201_82
# %bb.48:                               #   in Loop: Header=BB201_3 Depth=2
	mov	r13, rbp
	shl	r13, 5
	lea	r14, [rbx + r13]
	mov	rax, r9
	shl	rax, 5
	mov	r10, qword ptr [rsp]            # 8-byte Reload
	add	rax, r10
	add	rax, 16
	xor	r15d, r15d
	mov	rcx, r10
	mov	rdx, r14
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	mov	rsi, r9
	.p2align	4
.LBB201_49:                             #   Parent Loop BB201_2 Depth=1
                                        #     Parent Loop BB201_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB201_80 Depth 4
	mov	rdi, rsi
	shl	rdi, 5
	add	rdi, r10
	cmp	rcx, rdi
	jae	.LBB201_51
	.p2align	4
.LBB201_80:                             #   Parent Loop BB201_2 Depth=1
                                        #     Parent Loop BB201_3 Depth=2
                                        #       Parent Loop BB201_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mov	r8, qword ptr [rcx + 16]
	add	rdx, -32
	mov	r9, r15
	shl	r9, 5
	cmp	r8, qword ptr [rax]
	mov	r8, rdx
	cmovb	r8, rbx
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [r8 + r9 + 16], xmm1
	movups	xmmword ptr [r8 + r9], xmm0
	adc	r15, 0
	add	rcx, 32
	cmp	rcx, rdi
	jb	.LBB201_80
.LBB201_51:                             #   in Loop: Header=BB201_49 Depth=3
	cmp	rsi, rbp
	je	.LBB201_53
# %bb.52:                               #   in Loop: Header=BB201_49 Depth=3
	mov	rsi, r15
	shl	rsi, 5
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [rdx + rsi - 16], xmm1
	movups	xmmword ptr [rdx + rsi - 32], xmm0
	add	rdx, -32
	add	rcx, 32
	mov	rsi, rbp
	jmp	.LBB201_49
	.p2align	4
.LBB201_53:                             #   in Loop: Header=BB201_3 Depth=2
	mov	rdi, r10
	mov	r12, r15
	shl	r12, 5
	mov	rsi, rbx
	mov	rdx, r12
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rsi, rbp
	sub	rsi, r15
	movabs	r9, 576460752303423486
	je	.LBB201_60
# %bb.54:                               #   in Loop: Header=BB201_3 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	add	rax, r12
	lea	rcx, [r15 + 1]
	cmp	rbp, rcx
	jne	.LBB201_56
# %bb.55:                               #   in Loop: Header=BB201_3 Depth=2
	xor	ecx, ecx
	jmp	.LBB201_58
	.p2align	4
.LBB201_56:                             #   in Loop: Header=BB201_3 Depth=2
	mov	rdx, rsi
	and	rdx, -2
	lea	rdi, [rax + 32]
	add	r13, qword ptr [rsp + 40]       # 8-byte Folded Reload
	xor	r8d, r8d
	.p2align	4
.LBB201_57:                             #   Parent Loop BB201_2 Depth=1
                                        #     Parent Loop BB201_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmmword ptr [rdi - 16], xmm1
	movups	xmmword ptr [rdi - 32], xmm0
	lea	rcx, [r8 + 2]
	xor	r8, r9
	shl	r8, 5
	movups	xmm0, xmmword ptr [r14 + r8]
	movups	xmm1, xmmword ptr [r14 + r8 + 16]
	movups	xmmword ptr [rdi], xmm0
	movups	xmmword ptr [rdi + 16], xmm1
	add	rdi, 64
	add	r13, -64
	mov	r8, rcx
	cmp	rdx, rcx
	jne	.LBB201_57
.LBB201_58:                             #   in Loop: Header=BB201_3 Depth=2
	test	sil, 1
	je	.LBB201_60
# %bb.59:                               #   in Loop: Header=BB201_3 Depth=2
	mov	rdx, rcx
	not	rdx
	shl	rdx, 5
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r14 + rdx]
	movups	xmm1, xmmword ptr [r14 + rdx + 16]
	movups	xmmword ptr [rax + rcx + 16], xmm1
	movups	xmmword ptr [rax + rcx], xmm0
.LBB201_60:                             #   in Loop: Header=BB201_3 Depth=2
	test	r15, r15
	mov	r14, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r13d, dword ptr [rsp + 24]      # 4-byte Reload
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
	je	.LBB201_63
# %bb.61:                               #   in Loop: Header=BB201_3 Depth=2
	cmp	rbp, r15
	jb	.LBB201_81
# %bb.62:                               #   in Loop: Header=BB201_3 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	add	r12, rax
	mov	rdi, r12
	mov	r12, rax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8d, r13d
	lea	r9, [rsp + 48]
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	mov	rbp, r15
	cmp	r15, 33
	jae	.LBB201_3
	jmp	.LBB201_6
	.p2align	4
.LBB201_63:                             #   in Loop: Header=BB201_2 Depth=1
	cmp	r14, rbp
	jb	.LBB201_82
# %bb.64:                               #   in Loop: Header=BB201_2 Depth=1
	mov	r13, rbp
	shl	r13, 5
	lea	rdx, [rbx + r13]
	mov	rax, r9
	shl	rax, 5
	mov	rcx, qword ptr [rsp]            # 8-byte Reload
	add	rax, rcx
	add	rax, 16
	xor	r12d, r12d
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	.p2align	4
.LBB201_65:                             #   Parent Loop BB201_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB201_83 Depth 3
	mov	rsi, r9
	shl	rsi, 5
	add	rsi, qword ptr [rsp]            # 8-byte Folded Reload
	cmp	rcx, rsi
	jae	.LBB201_67
	.p2align	4
.LBB201_83:                             #   Parent Loop BB201_2 Depth=1
                                        #     Parent Loop BB201_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	rdi, qword ptr [rax]
	add	rdx, -32
	mov	r8, r12
	shl	r8, 5
	cmp	rdi, qword ptr [rcx + 16]
	mov	rdi, rdx
	cmovae	rdi, rbx
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [rdi + r8 + 16], xmm1
	movups	xmmword ptr [rdi + r8], xmm0
	sbb	r12, -1
	add	rcx, 32
	cmp	rcx, rsi
	jb	.LBB201_83
.LBB201_67:                             #   in Loop: Header=BB201_65 Depth=2
	cmp	r9, rbp
	je	.LBB201_69
# %bb.68:                               #   in Loop: Header=BB201_65 Depth=2
	add	rdx, -32
	mov	rsi, r12
	shl	rsi, 5
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [rbx + rsi + 16], xmm1
	movups	xmmword ptr [rbx + rsi], xmm0
	inc	r12
	add	rcx, 32
	mov	r9, rbp
	jmp	.LBB201_65
	.p2align	4
.LBB201_69:                             #   in Loop: Header=BB201_2 Depth=1
	mov	rdx, r12
	shl	rdx, 5
	mov	r14, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, r14
	mov	rsi, rbx
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r15, rbp
	sub	r15, r12
	je	.LBB201_5
# %bb.70:                               #   in Loop: Header=BB201_2 Depth=1
	add	r14, qword ptr [rsp + 8]        # 8-byte Folded Reload
	lea	rax, [r12 + 1]
	cmp	rbp, rax
	mov	rdi, r14
	jne	.LBB201_72
# %bb.71:                               #   in Loop: Header=BB201_2 Depth=1
	xor	eax, eax
	mov	r14, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
	jmp	.LBB201_74
.LBB201_72:                             #   in Loop: Header=BB201_2 Depth=1
	mov	rcx, r15
	and	rcx, -2
	lea	rdx, [r14 + 32]
	add	r13, qword ptr [rsp + 40]       # 8-byte Folded Reload
	xor	esi, esi
	mov	r14, qword ptr [rsp + 32]       # 8-byte Reload
	movabs	r8, 576460752303423486
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
	.p2align	4
.LBB201_73:                             #   Parent Loop BB201_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmmword ptr [rdx - 16], xmm1
	movups	xmmword ptr [rdx - 32], xmm0
	lea	rax, [rsi + 2]
	xor	rsi, r8
	shl	rsi, 5
	movups	xmm0, xmmword ptr [r9 + rsi]
	movups	xmm1, xmmword ptr [r9 + rsi + 16]
	movups	xmmword ptr [rdx], xmm0
	movups	xmmword ptr [rdx + 16], xmm1
	add	rdx, 64
	add	r13, -64
	mov	rsi, rax
	cmp	rcx, rax
	jne	.LBB201_73
.LBB201_74:                             #   in Loop: Header=BB201_2 Depth=1
	test	r15b, 1
	je	.LBB201_76
# %bb.75:                               #   in Loop: Header=BB201_2 Depth=1
	mov	rcx, rax
	not	rcx
	shl	rcx, 5
	shl	rax, 5
	movups	xmm0, xmmword ptr [r9 + rcx]
	movups	xmm1, xmmword ptr [r9 + rcx + 16]
	movups	xmmword ptr [rdi + rax + 16], xmm1
	movups	xmmword ptr [rdi + rax], xmm0
.LBB201_76:                             #   in Loop: Header=BB201_2 Depth=1
	cmp	rbp, r12
	mov	r13d, dword ptr [rsp + 24]      # 4-byte Reload
	jb	.LBB201_78
# %bb.77:                               #   in Loop: Header=BB201_2 Depth=1
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	cmp	r15, 33
	mov	r12, rdi
	jae	.LBB201_2
	jmp	.LBB201_6
.LBB201_4:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8d, 1
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCINvMs_BY_NtBY_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB36_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	jmp	.LBB201_5
.LBB201_9:
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 16]
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	mov	rcx, rax
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r12 + rcx]
	movups	xmm1, xmmword ptr [r12 + rcx + 16]
	movups	xmmword ptr [rbx + rcx + 16], xmm1
	movups	xmmword ptr [rbx + rcx], xmm0
	mov	edx, 1
	mov	rsi, r15
	sub	rsi, rax
	cmp	rdx, rax
	jae	.LBB201_17
.LBB201_11:
	mov	ecx, edx
	shl	ecx, 5
	mov	rdi, rdx
	jmp	.LBB201_12
	.p2align	4
.LBB201_39:                             #   in Loop: Header=BB201_12 Depth=1
	add	r11, rbx
	mov	r14, rbx
.LBB201_40:                             #   in Loop: Header=BB201_12 Depth=1
	movups	xmm0, xmmword ptr [r9]
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r11 - 16], r8
	mov	qword ptr [r11 - 8], r10
.LBB201_41:                             #   in Loop: Header=BB201_12 Depth=1
	inc	rdi
	add	rcx, 32
	cmp	rdi, rax
	je	.LBB201_17
.LBB201_12:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB201_14 Depth 2
	mov	r10, rdi
	shl	r10, 5
	movups	xmm0, xmmword ptr [r12 + r10]
	movups	xmm1, xmmword ptr [r12 + r10 + 16]
	movups	xmmword ptr [rbx + r10 + 16], xmm1
	movups	xmmword ptr [rbx + r10], xmm0
	mov	r8, qword ptr [rbx + r10 + 16]
	cmp	r8, qword ptr [rbx + r10 - 16]
	jae	.LBB201_41
# %bb.13:                               #   in Loop: Header=BB201_12 Depth=1
	lea	r9, [r12 + r10]
	add	r10, rbx
	mov	r10, qword ptr [r10 + 24]
	mov	r14, rcx
	.p2align	4
.LBB201_14:                             #   Parent Loop BB201_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r11, r14
	movups	xmm0, xmmword ptr [rbx + r14 - 32]
	movups	xmm1, xmmword ptr [rbx + r14 - 16]
	movups	xmmword ptr [rbx + r14 + 16], xmm1
	movups	xmmword ptr [rbx + r14], xmm0
	cmp	r14, 32
	je	.LBB201_39
# %bb.15:                               #   in Loop: Header=BB201_14 Depth=2
	lea	r14, [r11 - 32]
	cmp	r8, qword ptr [rbx + r11 - 48]
	jb	.LBB201_14
# %bb.16:                               #   in Loop: Header=BB201_12 Depth=1
	add	r11, rbx
	add	r14, rbx
	jmp	.LBB201_40
.LBB201_17:
	mov	rdi, rax
	shl	rdi, 5
	lea	rcx, [rbx + rdi]
	cmp	rdx, rsi
	jae	.LBB201_26
# %bb.18:
	add	rdi, r12
	mov	r8d, edx
	shl	r8d, 5
	jmp	.LBB201_19
	.p2align	4
.LBB201_79:                             #   in Loop: Header=BB201_19 Depth=1
	add	r14, rcx
	mov	r12, rcx
.LBB201_24:                             #   in Loop: Header=BB201_19 Depth=1
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [r12], xmm0
	mov	qword ptr [r14 - 16], r9
	mov	qword ptr [r14 - 8], r11
	mov	r12, qword ptr [rsp]            # 8-byte Reload
.LBB201_25:                             #   in Loop: Header=BB201_19 Depth=1
	inc	rdx
	add	r8, 32
	cmp	rdx, rsi
	je	.LBB201_26
.LBB201_19:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB201_21 Depth 2
	mov	r11, rdx
	shl	r11, 5
	movups	xmm0, xmmword ptr [rdi + r11]
	movups	xmm1, xmmword ptr [rdi + r11 + 16]
	movups	xmmword ptr [rcx + r11 + 16], xmm1
	movups	xmmword ptr [rcx + r11], xmm0
	mov	r9, qword ptr [rcx + r11 + 16]
	cmp	r9, qword ptr [rcx + r11 - 16]
	jae	.LBB201_25
# %bb.20:                               #   in Loop: Header=BB201_19 Depth=1
	lea	r10, [rdi + r11]
	add	r11, rcx
	mov	r11, qword ptr [r11 + 24]
	mov	r12, r8
	.p2align	4
.LBB201_21:                             #   Parent Loop BB201_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r14, r12
	movups	xmm0, xmmword ptr [rcx + r12 - 32]
	movups	xmm1, xmmword ptr [rcx + r12 - 16]
	movups	xmmword ptr [rcx + r12 + 16], xmm1
	movups	xmmword ptr [rcx + r12], xmm0
	cmp	r12, 32
	je	.LBB201_79
# %bb.22:                               #   in Loop: Header=BB201_21 Depth=2
	lea	r12, [r14 - 32]
	cmp	r9, qword ptr [rcx + r14 - 48]
	jb	.LBB201_21
# %bb.23:                               #   in Loop: Header=BB201_19 Depth=1
	add	r14, rcx
	add	r12, rcx
	jmp	.LBB201_24
.LBB201_26:
	mov	rdx, r15
	shl	rdx, 5
	lea	r9, [r12 + rdx]
	add	r9, -32
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	lea	rdx, [rbx + rdx - 32]
	lea	rsi, [rcx - 32]
	mov	r8, r12
	mov	rdi, rbx
	jmp	.LBB201_27
	.p2align	4
.LBB201_31:                             #   in Loop: Header=BB201_27 Depth=1
	mov	r11b, r12b
	mov	eax, 0
	sbb	rax, rax
	shl	r11d, 5
	add	rcx, r11
	movzx	r11d, byte ptr [rsp + 16]       # 1-byte Folded Reload
	mov	r10b, r11b
	shl	r10d, 5
	add	rdi, r10
	add	r8, 32
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmmword ptr [r9 + 16], xmm1
	movups	xmmword ptr [r9], xmm0
	shl	r14, 5
	add	rdx, r14
	shl	rax, 5
	add	rsi, rax
	add	r9, -32
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	dec	rax
	je	.LBB201_32
.LBB201_27:                             # =>This Inner Loop Header: Depth=1
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	mov	r12, qword ptr [rcx + 16]
	xor	r10d, r10d
	xor	r11d, r11d
	mov	r14, rcx
	cmp	r12, qword ptr [rdi + 16]
	setae	byte ptr [rsp + 16]             # 1-byte Folded Spill
	setb	r12b
	jb	.LBB201_29
# %bb.28:                               #   in Loop: Header=BB201_27 Depth=1
	mov	r14, rdi
.LBB201_29:                             #   in Loop: Header=BB201_27 Depth=1
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmmword ptr [r8 + 16], xmm1
	movups	xmmword ptr [r8], xmm0
	mov	rax, qword ptr [rdx + 16]
	mov	rbp, qword ptr [rsi + 16]
	cmp	rax, rbp
	mov	r14d, 0
	adc	r14, -1
	mov	r13, rsi
	cmp	rax, rbp
	jb	.LBB201_31
# %bb.30:                               #   in Loop: Header=BB201_27 Depth=1
	mov	r13, rdx
	jmp	.LBB201_31
.LBB201_32:
	add	rsi, 32
	test	r15b, 1
	je	.LBB201_34
# %bb.33:
	xor	eax, eax
	xor	r9d, r9d
	cmp	rdi, rsi
	setae	al
	setb	r9b
	mov	r10, rcx
	cmovb	r10, rdi
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 16]
	movups	xmmword ptr [r8 + 16], xmm1
	movups	xmmword ptr [r8], xmm0
	shl	r9d, 5
	add	rdi, r9
	shl	eax, 5
	add	rcx, rax
.LBB201_34:
	cmp	rdi, rsi
	mov	r14, qword ptr [rsp]            # 8-byte Reload
	jne	.LBB201_36
# %bb.35:
	add	rdx, 32
	cmp	rcx, rdx
	jne	.LBB201_36
.LBB201_5:
	add	rsp, 88
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
.LBB201_82:
	.cfi_def_cfa_offset 144
	ud2
.LBB201_81:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.81]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB201_36:
.Ltmp889:
	call	_RNvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort22panic_on_ord_violation
.Ltmp890:
# %bb.37:
.LBB201_78:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.82]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbp
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB201_38:
.Ltmp891:
	mov	r15, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end201:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std, .Lfunc_end201-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCINvMs_B17_NtB17_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3i_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table201:
.Lexception37:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37  # >> Call Site 1 <<
	.uleb128 .Ltmp889-.Lfunc_begin37        #   Call between .Lfunc_begin37 and .Ltmp889
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp889-.Lfunc_begin37        # >> Call Site 2 <<
	.uleb128 .Ltmp890-.Ltmp889              #   Call between .Ltmp889 and .Ltmp890
	.uleb128 .Ltmp891-.Lfunc_begin37        #     jumps to .Ltmp891
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp890-.Lfunc_begin37        # >> Call Site 3 <<
	.uleb128 .Lfunc_end201-.Ltmp890         #   Call between .Ltmp890 and .Lfunc_end201
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end37:
	.p2align	2, 0x0
                                        # -- End function
