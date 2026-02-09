	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
.Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception41
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
	sub	rsp, 104
	.cfi_def_cfa_offset 160
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdx
	mov	r15, rsi
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	cmp	rsi, 33
	jae	.LBB217_1
.LBB217_6:
	cmp	r15, 2
	jb	.LBB217_5
# %bb.7:
	mov	r13, r15
	shr	r13
	mov	r12, r13
	shl	r12, 5
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	lea	r14, [rdi + r12]
	add	r12, rbx
	cmp	r15, 8
	jb	.LBB217_9
# %bb.8:
	mov	rsi, rbx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rdi, r14
	mov	rsi, r12
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	eax, 4
	jmp	.LBB217_10
.LBB217_1:
	mov	r13, r9
	mov	r14d, r8d
	mov	r12, rcx
	lea	rax, [rbx - 32]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
.LBB217_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB217_3 Depth 2
                                        #       Child Loop BB217_71 Depth 3
                                        #         Child Loop BB217_72 Depth 4
                                        #       Child Loop BB217_83 Depth 3
                                        #     Child Loop BB217_91 Depth 2
                                        #       Child Loop BB217_92 Depth 3
                                        #     Child Loop BB217_103 Depth 2
	mov	rbp, r15
	mov	qword ptr [rsp + 48], r13       # 8-byte Spill
	.p2align	4
.LBB217_3:                              #   Parent Loop BB217_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB217_71 Depth 3
                                        #         Child Loop BB217_72 Depth 4
                                        #       Child Loop BB217_83 Depth 3
	sub	r14d, 1
	jb	.LBB217_4
# %bb.53:                               #   in Loop: Header=BB217_3 Depth=2
	mov	rcx, rbp
	shr	rcx, 3
	mov	rsi, rcx
	shl	rsi, 7
	mov	r15, qword ptr [rsp + 8]        # 8-byte Reload
	add	rsi, r15
	imul	rdx, rcx, 224
	add	rdx, r15
	cmp	rbp, 64
	mov	dword ptr [rsp + 28], r14d      # 4-byte Spill
	jae	.LBB217_54
# %bb.55:                               #   in Loop: Header=BB217_3 Depth=2
	mov	r10, qword ptr [r15]
	mov	r11, qword ptr [r15 + 16]
	mov	rax, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 16]
	cmp	r11, rdi
	jae	.LBB217_56
# %bb.58:                               #   in Loop: Header=BB217_3 Depth=2
	mov	r8, qword ptr [rdx]
	mov	r9, qword ptr [rdx + 16]
	mov	cl, 1
	cmp	r11, r9
	jb	.LBB217_62
# %bb.59:                               #   in Loop: Header=BB217_3 Depth=2
	mov	r14, r15
	ja	.LBB217_65
# %bb.60:                               #   in Loop: Header=BB217_3 Depth=2
	mov	r14, r15
	cmp	r10, r8
	jb	.LBB217_62
	jmp	.LBB217_65
	.p2align	4
.LBB217_54:                             #   in Loop: Header=BB217_3 Depth=2
	mov	rdi, r15
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_7sort_byNCNvMs1_B16_INtB16_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3n_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	r14, rax
	jmp	.LBB217_65
	.p2align	4
.LBB217_56:                             #   in Loop: Header=BB217_3 Depth=2
	setbe	r8b
	cmp	r10, rax
	setb	cl
	and	cl, r8b
	mov	r8, qword ptr [rdx]
	mov	r9, qword ptr [rdx + 16]
	cmp	r11, r9
	jae	.LBB217_61
# %bb.57:                               #   in Loop: Header=BB217_3 Depth=2
	mov	r14, r15
	test	cl, cl
	mov	cl, 1
	jne	.LBB217_62
	jmp	.LBB217_65
.LBB217_61:                             #   in Loop: Header=BB217_3 Depth=2
	setbe	r11b
	cmp	r10, r8
	setb	r10b
	and	r10b, r11b
	mov	r14, r15
	cmp	cl, r10b
	jne	.LBB217_65
	.p2align	4
.LBB217_62:                             #   in Loop: Header=BB217_3 Depth=2
	mov	r10b, 1
	cmp	rdi, r9
	jb	.LBB217_64
# %bb.63:                               #   in Loop: Header=BB217_3 Depth=2
	setbe	dil
	cmp	rax, r8
	setb	r10b
	and	r10b, dil
.LBB217_64:                             #   in Loop: Header=BB217_3 Depth=2
	xor	cl, r10b
	cmovne	rsi, rdx
	mov	r14, rsi
.LBB217_65:                             #   in Loop: Header=BB217_3 Depth=2
	mov	r8, r14
	sub	r8, r15
	shr	r8, 5
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movaps	xmmword ptr [rsp + 80], xmm1
	movaps	xmmword ptr [rsp + 64], xmm0
	test	r13, r13
	je	.LBB217_69
# %bb.66:                               #   in Loop: Header=BB217_3 Depth=2
	mov	rax, qword ptr [r14 + 16]
	cmp	qword ptr [r13 + 16], rax
	jb	.LBB217_69
# %bb.67:                               #   in Loop: Header=BB217_3 Depth=2
	ja	.LBB217_89
# %bb.68:                               #   in Loop: Header=BB217_3 Depth=2
	mov	rax, qword ptr [r14]
	cmp	qword ptr [r13], rax
	jae	.LBB217_89
.LBB217_69:                             #   in Loop: Header=BB217_3 Depth=2
	cmp	r12, rbp
	jb	.LBB217_110
# %bb.70:                               #   in Loop: Header=BB217_3 Depth=2
	mov	r13, rbp
	shl	r13, 5
	lea	r12, [rbx + r13]
	xor	r15d, r15d
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, r12
	mov	qword ptr [rsp + 56], r8        # 8-byte Spill
	mov	rdx, r8
	.p2align	4
.LBB217_71:                             #   Parent Loop BB217_2 Depth=1
                                        #     Parent Loop BB217_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB217_72 Depth 4
	mov	rsi, rdx
	shl	rsi, 5
	add	rsi, qword ptr [rsp + 8]        # 8-byte Folded Reload
	jmp	.LBB217_72
	.p2align	4
.LBB217_77:                             #   in Loop: Header=BB217_72 Depth=4
	mov	rdi, qword ptr [r14]
	setbe	r8b
	cmp	qword ptr [rax], rdi
	setb	dil
	and	dil, r8b
	add	rcx, -32
	test	dil, dil
	mov	r8, rcx
	cmovne	r8, rbx
	movzx	edi, dil
.LBB217_78:                             #   in Loop: Header=BB217_72 Depth=4
	add	rdi, r15
	shl	r15, 5
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmmword ptr [r8 + r15 + 16], xmm1
	movups	xmmword ptr [r8 + r15], xmm0
	add	rax, 32
	mov	r15, rdi
.LBB217_72:                             #   Parent Loop BB217_2 Depth=1
                                        #     Parent Loop BB217_3 Depth=2
                                        #       Parent Loop BB217_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmp	rax, rsi
	jae	.LBB217_73
# %bb.75:                               #   in Loop: Header=BB217_72 Depth=4
	mov	rdi, qword ptr [rax + 16]
	mov	r8, qword ptr [r14 + 16]
	cmp	rdi, r8
	jae	.LBB217_77
# %bb.76:                               #   in Loop: Header=BB217_72 Depth=4
	add	rcx, -32
	mov	edi, 1
	mov	r8, rbx
	jmp	.LBB217_78
	.p2align	4
.LBB217_73:                             #   in Loop: Header=BB217_71 Depth=3
	cmp	rdx, rbp
	je	.LBB217_79
# %bb.74:                               #   in Loop: Header=BB217_71 Depth=3
	mov	rdx, r15
	shl	rdx, 5
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmmword ptr [rcx + rdx - 16], xmm1
	movups	xmmword ptr [rcx + rdx - 32], xmm0
	add	rcx, -32
	add	rax, 32
	mov	rdx, rbp
	jmp	.LBB217_71
	.p2align	4
.LBB217_79:                             #   in Loop: Header=BB217_3 Depth=2
	mov	rdx, r15
	shl	rdx, 5
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, rbx
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	call	qword ptr [rip + memcpy@GOTPCREL]
	movabs	r9, 576460752303423486
	mov	rsi, rbp
	sub	rsi, r15
	je	.LBB217_86
# %bb.80:                               #   in Loop: Header=BB217_3 Depth=2
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	add	rax, rcx
	lea	rcx, [r15 + 1]
	cmp	rbp, rcx
	jne	.LBB217_82
# %bb.81:                               #   in Loop: Header=BB217_3 Depth=2
	xor	ecx, ecx
	jmp	.LBB217_84
	.p2align	4
.LBB217_82:                             #   in Loop: Header=BB217_3 Depth=2
	mov	rdx, rsi
	and	rdx, -2
	lea	rdi, [rax + 32]
	add	r13, qword ptr [rsp + 32]       # 8-byte Folded Reload
	xor	r8d, r8d
	.p2align	4
.LBB217_83:                             #   Parent Loop BB217_2 Depth=1
                                        #     Parent Loop BB217_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmmword ptr [rdi - 16], xmm1
	movups	xmmword ptr [rdi - 32], xmm0
	lea	rcx, [r8 + 2]
	xor	r8, r9
	shl	r8, 5
	movups	xmm0, xmmword ptr [r12 + r8]
	movups	xmm1, xmmword ptr [r12 + r8 + 16]
	movups	xmmword ptr [rdi], xmm0
	movups	xmmword ptr [rdi + 16], xmm1
	add	rdi, 64
	add	r13, -64
	mov	r8, rcx
	cmp	rdx, rcx
	jne	.LBB217_83
.LBB217_84:                             #   in Loop: Header=BB217_3 Depth=2
	test	sil, 1
	je	.LBB217_86
# %bb.85:                               #   in Loop: Header=BB217_3 Depth=2
	mov	rdx, rcx
	not	rdx
	shl	rdx, 5
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r12 + rdx]
	movups	xmm1, xmmword ptr [r12 + rdx + 16]
	movups	xmmword ptr [rax + rcx + 16], xmm1
	movups	xmmword ptr [rax + rcx], xmm0
.LBB217_86:                             #   in Loop: Header=BB217_3 Depth=2
	test	r15, r15
	mov	r12, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	je	.LBB217_89
# %bb.87:                               #   in Loop: Header=BB217_3 Depth=2
	cmp	rbp, r15
	jb	.LBB217_109
# %bb.88:                               #   in Loop: Header=BB217_3 Depth=2
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
	add	rdi, qword ptr [rsp + 8]        # 8-byte Folded Reload
	mov	rdx, rbx
	mov	rcx, r12
	mov	r14d, dword ptr [rsp + 28]      # 4-byte Reload
	mov	r8d, r14d
	lea	r9, [rsp + 64]
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rbp, r15
	cmp	r15, 33
	jae	.LBB217_3
	jmp	.LBB217_6
	.p2align	4
.LBB217_89:                             #   in Loop: Header=BB217_2 Depth=1
	cmp	r12, rbp
	jb	.LBB217_110
# %bb.90:                               #   in Loop: Header=BB217_2 Depth=1
	mov	r13, rbp
	shl	r13, 5
	lea	rcx, [rbx + r13]
	xor	r12d, r12d
	mov	r15, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, r15
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	.p2align	4
.LBB217_91:                             #   Parent Loop BB217_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB217_92 Depth 3
	mov	rdx, r8
	shl	rdx, 5
	add	rdx, r15
	jmp	.LBB217_92
	.p2align	4
.LBB217_97:                             #   in Loop: Header=BB217_92 Depth=3
	mov	rsi, qword ptr [rax]
	seta	dil
	cmp	qword ptr [r14], rsi
	setae	sil
	or	sil, dil
	add	rcx, -32
	test	sil, sil
	mov	rdi, rcx
	cmovne	rdi, rbx
	movzx	esi, sil
.LBB217_98:                             #   in Loop: Header=BB217_92 Depth=3
	add	rsi, r12
	shl	r12, 5
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmmword ptr [rdi + r12 + 16], xmm1
	movups	xmmword ptr [rdi + r12], xmm0
	add	rax, 32
	mov	r12, rsi
.LBB217_92:                             #   Parent Loop BB217_2 Depth=1
                                        #     Parent Loop BB217_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	rax, rdx
	jae	.LBB217_93
# %bb.95:                               #   in Loop: Header=BB217_92 Depth=3
	mov	rsi, qword ptr [rax + 16]
	mov	rdi, qword ptr [r14 + 16]
	cmp	rdi, rsi
	jae	.LBB217_97
# %bb.96:                               #   in Loop: Header=BB217_92 Depth=3
	add	rcx, -32
	xor	esi, esi
	mov	rdi, rcx
	jmp	.LBB217_98
	.p2align	4
.LBB217_93:                             #   in Loop: Header=BB217_91 Depth=2
	cmp	r8, rbp
	je	.LBB217_99
# %bb.94:                               #   in Loop: Header=BB217_91 Depth=2
	add	rcx, -32
	mov	rdx, r12
	shl	rdx, 5
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmmword ptr [rbx + rdx + 16], xmm1
	movups	xmmword ptr [rbx + rdx], xmm0
	inc	r12
	add	rax, 32
	mov	r8, rbp
	jmp	.LBB217_91
	.p2align	4
.LBB217_99:                             #   in Loop: Header=BB217_2 Depth=1
	mov	r14, r12
	shl	r14, 5
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdx, r15
	mov	r15, rbp
	sub	r15, r12
	je	.LBB217_5
# %bb.100:                              #   in Loop: Header=BB217_2 Depth=1
	add	rdx, r14
	lea	rax, [r12 + 1]
	cmp	rbp, rax
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	jne	.LBB217_102
# %bb.101:                              #   in Loop: Header=BB217_2 Depth=1
	xor	eax, eax
	mov	r14d, dword ptr [rsp + 28]      # 4-byte Reload
	mov	r8, qword ptr [rsp + 16]        # 8-byte Reload
	jmp	.LBB217_104
.LBB217_102:                            #   in Loop: Header=BB217_2 Depth=1
	mov	rcx, r15
	and	rcx, -2
	add	rdx, 32
	add	r13, qword ptr [rsp + 32]       # 8-byte Folded Reload
	xor	esi, esi
	mov	r14d, dword ptr [rsp + 28]      # 4-byte Reload
	movabs	rdi, 576460752303423486
	mov	r8, qword ptr [rsp + 16]        # 8-byte Reload
	.p2align	4
.LBB217_103:                            #   Parent Loop BB217_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmmword ptr [rdx - 16], xmm1
	movups	xmmword ptr [rdx - 32], xmm0
	lea	rax, [rsi + 2]
	xor	rsi, rdi
	shl	rsi, 5
	movups	xmm0, xmmword ptr [r8 + rsi]
	movups	xmm1, xmmword ptr [r8 + rsi + 16]
	movups	xmmword ptr [rdx], xmm0
	movups	xmmword ptr [rdx + 16], xmm1
	add	rdx, 64
	add	r13, -64
	mov	rsi, rax
	cmp	rcx, rax
	jne	.LBB217_103
.LBB217_104:                            #   in Loop: Header=BB217_2 Depth=1
	test	r15b, 1
	je	.LBB217_106
# %bb.105:                              #   in Loop: Header=BB217_2 Depth=1
	mov	rcx, rax
	not	rcx
	shl	rcx, 5
	shl	rax, 5
	movups	xmm0, xmmword ptr [r8 + rcx]
	movups	xmm1, xmmword ptr [r8 + rcx + 16]
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmmword ptr [rcx + rax + 16], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
.LBB217_106:                            #   in Loop: Header=BB217_2 Depth=1
	cmp	rbp, r12
	jb	.LBB217_108
# %bb.107:                              #   in Loop: Header=BB217_2 Depth=1
	mov	r13d, 0
	cmp	r15, 33
	mov	r12, qword ptr [rsp + 40]       # 8-byte Reload
	jae	.LBB217_2
	jmp	.LBB217_6
.LBB217_4:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, rbp
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8d, 1
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_7sort_byNCNvMs1_BY_INtBY_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	jmp	.LBB217_5
.LBB217_9:
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmmword ptr [r12 + 16], xmm1
	movups	xmmword ptr [r12], xmm0
	mov	eax, 1
.LBB217_10:
	mov	rcx, r15
	sub	rcx, r13
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	cmp	rax, r13
	jae	.LBB217_24
# %bb.11:
	mov	edx, eax
	shl	edx, 5
	add	rdx, -32
	mov	rsi, rax
	jmp	.LBB217_12
	.p2align	4
.LBB217_21:                             #   in Loop: Header=BB217_12 Depth=1
	mov	r9, rbx
.LBB217_22:                             #   in Loop: Header=BB217_12 Depth=1
	mov	qword ptr [r9], r8
	mov	qword ptr [r9 + 8], r11
	mov	qword ptr [r9 + 16], rdi
	mov	qword ptr [r9 + 24], r10
.LBB217_23:                             #   in Loop: Header=BB217_12 Depth=1
	inc	rsi
	add	rdx, 32
	cmp	rsi, r13
	je	.LBB217_24
.LBB217_12:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB217_17 Depth 2
	mov	rbp, rsi
	shl	rbp, 5
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmm0, xmmword ptr [rcx + rbp]
	movups	xmm1, xmmword ptr [rcx + rbp + 16]
	movups	xmmword ptr [rbx + rbp + 16], xmm1
	movups	xmmword ptr [rbx + rbp], xmm0
	lea	r9, [rbx + rbp]
	add	r9, -32
	mov	rdi, qword ptr [rbx + rbp + 16]
	mov	r8, qword ptr [rbx + rbp]
	cmp	rdi, qword ptr [rbx + rbp - 16]
	jb	.LBB217_15
# %bb.13:                               #   in Loop: Header=BB217_12 Depth=1
	ja	.LBB217_23
# %bb.14:                               #   in Loop: Header=BB217_12 Depth=1
	cmp	r8, qword ptr [r9]
	jae	.LBB217_23
.LBB217_15:                             #   in Loop: Header=BB217_12 Depth=1
	add	rbp, rbx
	mov	r11, qword ptr [rbp + 8]
	mov	r10, qword ptr [rbp + 24]
	movups	xmm0, xmmword ptr [r9]
	movups	xmm1, xmmword ptr [r9 + 16]
	movups	xmmword ptr [rbp], xmm0
	movups	xmmword ptr [rbp + 16], xmm1
	cmp	rsi, 1
	je	.LBB217_22
# %bb.16:                               #   in Loop: Header=BB217_12 Depth=1
	mov	rbp, rdx
	jmp	.LBB217_17
	.p2align	4
.LBB217_20:                             #   in Loop: Header=BB217_17 Depth=2
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [r9 + 16], xmm1
	movups	xmmword ptr [r9], xmm0
	add	rbp, -32
	je	.LBB217_21
.LBB217_17:                             #   Parent Loop BB217_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r9, [rbx + rbp]
	lea	rcx, [rbx + rbp]
	add	rcx, -32
	cmp	rdi, qword ptr [rbx + rbp - 16]
	jb	.LBB217_20
# %bb.18:                               #   in Loop: Header=BB217_17 Depth=2
	ja	.LBB217_22
# %bb.19:                               #   in Loop: Header=BB217_17 Depth=2
	cmp	r8, qword ptr [rcx]
	jb	.LBB217_20
	jmp	.LBB217_22
.LBB217_24:
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	cmp	rax, rcx
	jae	.LBB217_38
# %bb.25:
	mov	edx, eax
	shl	edx, 5
	add	rdx, -32
	jmp	.LBB217_26
	.p2align	4
.LBB217_35:                             #   in Loop: Header=BB217_26 Depth=1
	mov	r8, r12
.LBB217_36:                             #   in Loop: Header=BB217_26 Depth=1
	mov	qword ptr [r8], rdi
	mov	qword ptr [r8 + 8], r10
	mov	qword ptr [r8 + 16], rsi
	mov	qword ptr [r8 + 24], r9
.LBB217_37:                             #   in Loop: Header=BB217_26 Depth=1
	inc	rax
	add	rdx, 32
	cmp	rax, rcx
	je	.LBB217_38
.LBB217_26:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB217_31 Depth 2
	mov	r11, rax
	shl	r11, 5
	movups	xmm0, xmmword ptr [r14 + r11]
	movups	xmm1, xmmword ptr [r14 + r11 + 16]
	movups	xmmword ptr [r12 + r11 + 16], xmm1
	movups	xmmword ptr [r12 + r11], xmm0
	lea	r8, [r12 + r11]
	add	r8, -32
	mov	rsi, qword ptr [r12 + r11 + 16]
	mov	rdi, qword ptr [r12 + r11]
	cmp	rsi, qword ptr [r12 + r11 - 16]
	jb	.LBB217_29
# %bb.27:                               #   in Loop: Header=BB217_26 Depth=1
	ja	.LBB217_37
# %bb.28:                               #   in Loop: Header=BB217_26 Depth=1
	cmp	rdi, qword ptr [r8]
	jae	.LBB217_37
.LBB217_29:                             #   in Loop: Header=BB217_26 Depth=1
	add	r11, r12
	mov	r10, qword ptr [r11 + 8]
	mov	r9, qword ptr [r11 + 24]
	movups	xmm0, xmmword ptr [r8]
	movups	xmm1, xmmword ptr [r8 + 16]
	movups	xmmword ptr [r11], xmm0
	movups	xmmword ptr [r11 + 16], xmm1
	cmp	rax, 1
	je	.LBB217_36
# %bb.30:                               #   in Loop: Header=BB217_26 Depth=1
	mov	r11, rdx
	jmp	.LBB217_31
	.p2align	4
.LBB217_34:                             #   in Loop: Header=BB217_31 Depth=2
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 16]
	movups	xmmword ptr [r8 + 16], xmm1
	movups	xmmword ptr [r8], xmm0
	add	r11, -32
	je	.LBB217_35
.LBB217_31:                             #   Parent Loop BB217_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r8, [r12 + r11]
	lea	rbp, [r12 + r11]
	add	rbp, -32
	cmp	rsi, qword ptr [r12 + r11 - 16]
	jb	.LBB217_34
# %bb.32:                               #   in Loop: Header=BB217_31 Depth=2
	ja	.LBB217_36
# %bb.33:                               #   in Loop: Header=BB217_31 Depth=2
	cmp	rdi, qword ptr [rbp]
	jb	.LBB217_34
	jmp	.LBB217_36
.LBB217_38:
	mov	r14, r15
	shl	r14, 5
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rdi, [rsi + r14]
	add	rdi, -32
	lea	rax, [rbx + r14]
	add	rax, -32
	lea	rcx, [r12 - 32]
	mov	rdx, rbx
	jmp	.LBB217_39
	.p2align	4
.LBB217_45:                             #   in Loop: Header=BB217_39 Depth=1
	movzx	r11d, r9b
	xor	r9b, 1
	shl	r11d, 5
	add	r12, r11
	movzx	r9d, r9b
	shl	r9d, 5
	add	rdx, r9
	add	rsi, 32
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 16]
	movups	xmmword ptr [rdi + 16], xmm1
	movups	xmmword ptr [rdi], xmm0
	movzx	r8d, r8b
	shl	r8d, 5
	add	rax, r8
	add	rax, -32
	sub	rcx, r8
	add	rdi, -32
	dec	r13
	je	.LBB217_46
.LBB217_39:                             # =>This Inner Loop Header: Depth=1
	mov	r11, qword ptr [r12 + 16]
	mov	rbp, qword ptr [rdx + 16]
	mov	r8b, 1
	mov	r9b, 1
	mov	r10, r12
	cmp	r11, rbp
	jb	.LBB217_42
# %bb.40:                               #   in Loop: Header=BB217_39 Depth=1
	mov	r9, qword ptr [rdx]
	setbe	r11b
	cmp	qword ptr [r12], r9
	setb	r9b
	mov	r10, r12
	and	r9b, r11b
	jne	.LBB217_42
# %bb.41:                               #   in Loop: Header=BB217_39 Depth=1
	mov	r10, rdx
.LBB217_42:                             #   in Loop: Header=BB217_39 Depth=1
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 16]
	movups	xmmword ptr [rsi + 16], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	r11, qword ptr [rax + 16]
	mov	rbp, qword ptr [rcx + 16]
	mov	r10, rcx
	cmp	r11, rbp
	jb	.LBB217_45
# %bb.43:                               #   in Loop: Header=BB217_39 Depth=1
	mov	r8, qword ptr [rcx]
	setbe	r11b
	cmp	qword ptr [rax], r8
	setb	r8b
	mov	r10, rcx
	and	r8b, r11b
	jne	.LBB217_45
# %bb.44:                               #   in Loop: Header=BB217_39 Depth=1
	mov	r10, rax
	jmp	.LBB217_45
.LBB217_46:
	add	rcx, 32
	test	r15b, 1
	je	.LBB217_48
# %bb.47:
	xor	edi, edi
	xor	r8d, r8d
	cmp	rdx, rcx
	setae	dil
	setb	r8b
	mov	r9, r12
	cmovb	r9, rdx
	movups	xmm0, xmmword ptr [r9]
	movups	xmm1, xmmword ptr [r9 + 16]
	movups	xmmword ptr [rsi + 16], xmm1
	movups	xmmword ptr [rsi], xmm0
	shl	r8d, 5
	add	rdx, r8
	shl	edi, 5
	add	r12, rdi
.LBB217_48:
	cmp	rdx, rcx
	jne	.LBB217_50
# %bb.49:
	add	rax, 32
	cmp	r12, rax
	jne	.LBB217_50
.LBB217_5:
	add	rsp, 104
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
.LBB217_110:
	.cfi_def_cfa_offset 160
	ud2
.LBB217_109:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.81]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB217_50:
.Ltmp929:
	call	_RNvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort22panic_on_ord_violation
.Ltmp930:
# %bb.51:
.LBB217_108:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.82]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbp
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB217_52:
.Ltmp931:
	mov	r15, rax
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, rbx
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end217:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end217-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_7sort_byNCNvMs1_B17_INtB17_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table217:
.Lexception41:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Lfunc_begin41-.Lfunc_begin41  # >> Call Site 1 <<
	.uleb128 .Ltmp929-.Lfunc_begin41        #   Call between .Lfunc_begin41 and .Ltmp929
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp929-.Lfunc_begin41        # >> Call Site 2 <<
	.uleb128 .Ltmp930-.Ltmp929              #   Call between .Ltmp929 and .Ltmp930
	.uleb128 .Ltmp931-.Lfunc_begin41        #     jumps to .Ltmp931
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin41        # >> Call Site 3 <<
	.uleb128 .Lfunc_end217-.Ltmp930         #   Call between .Ltmp930 and .Lfunc_end217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end41:
	.p2align	2, 0x0
                                        # -- End function
