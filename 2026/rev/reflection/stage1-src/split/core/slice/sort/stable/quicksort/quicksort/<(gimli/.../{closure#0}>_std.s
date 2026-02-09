	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
.Lfunc_begin60:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception60
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
	mov	qword ptr [rsp + 24], r9        # 8-byte Spill
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	cmp	rsi, 33
	jae	.LBB286_1
.LBB286_6:
	cmp	r15, 2
	jb	.LBB286_5
# %bb.7:
	mov	rbp, r15
	shr	rbp
	cmp	r15, 15
	jbe	.LBB286_8
# %bb.87:
	mov	r12, r15
	shl	r12, 4
	lea	rdx, [rbx + r12]
	mov	rdi, r14
	mov	rsi, rbx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rsi, rbp
	shl	rsi, 4
	lea	rdi, [r14 + rsi]
	add	rsi, rbx
	lea	rdx, [rbx + r12]
	add	rdx, 128
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	ecx, 8
	mov	rdx, r15
	sub	rdx, rbp
	cmp	rcx, rbp
	jb	.LBB286_12
	jmp	.LBB286_17
.LBB286_1:
	mov	ebp, r8d
	mov	r13, rcx
	lea	rax, [rbx - 16]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	mov	qword ptr [rsp + 56], rcx       # 8-byte Spill
.LBB286_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB286_3 Depth 2
                                        #       Child Loop BB286_51 Depth 3
                                        #         Child Loop BB286_52 Depth 4
                                        #         Child Loop BB286_88 Depth 4
                                        #       Child Loop BB286_62 Depth 3
                                        #     Child Loop BB286_70 Depth 2
                                        #       Child Loop BB286_71 Depth 3
                                        #       Child Loop BB286_91 Depth 3
                                        #     Child Loop BB286_81 Depth 2
	mov	rsi, r15
	.p2align	4
.LBB286_3:                              #   Parent Loop BB286_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB286_51 Depth 3
                                        #         Child Loop BB286_52 Depth 4
                                        #         Child Loop BB286_88 Depth 4
                                        #       Child Loop BB286_62 Depth 3
	sub	ebp, 1
	jb	.LBB286_4
# %bb.44:                               #   in Loop: Header=BB286_3 Depth=2
	mov	rcx, rsi
	shr	rcx, 3
	mov	rax, rcx
	shl	rax, 6
	add	rax, r14
	imul	rdx, rcx, 112
	add	rdx, r14
	cmp	rsi, 64
	mov	qword ptr [rsp + 8], rsi        # 8-byte Spill
	mov	dword ptr [rsp + 20], ebp       # 4-byte Spill
	jae	.LBB286_45
# %bb.46:                               #   in Loop: Header=BB286_3 Depth=2
	mov	rcx, qword ptr [r14]
	mov	rsi, qword ptr [rax]
	cmp	rcx, rsi
	setb	dil
	mov	r8, qword ptr [rdx]
	cmp	rcx, r8
	setb	cl
	xor	cl, dil
	cmp	rsi, r8
	setb	sil
	xor	sil, dil
	cmovne	rax, rdx
	test	cl, cl
	cmovne	rax, r14
	jmp	.LBB286_47
	.p2align	4
.LBB286_45:                             #   in Loop: Header=BB286_3 Depth=2
	mov	rdi, r14
	mov	rsi, rax
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB17_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyB15_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3j_8ResUnitsINtNtNtB19_4read12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
.LBB286_47:                             #   in Loop: Header=BB286_3 Depth=2
	mov	rbp, rax
	sub	rbp, r14
	mov	rcx, rbp
	shr	rcx, 4
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	movdqu	xmm0, xmmword ptr [rax]
	movdqa	xmmword ptr [rsp + 64], xmm0
	cmp	qword ptr [rsp + 24], 0         # 8-byte Folded Reload
	je	.LBB286_49
# %bb.48:                               #   in Loop: Header=BB286_3 Depth=2
	movq	rax, xmm0
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	cmp	qword ptr [rcx], rax
	jae	.LBB286_68
.LBB286_49:                             #   in Loop: Header=BB286_3 Depth=2
	mov	r12, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	r13, r12
	jb	.LBB286_90
# %bb.50:                               #   in Loop: Header=BB286_3 Depth=2
	mov	rdi, r12
	shl	rdi, 4
	lea	rsi, [rbx + rdi]
	xor	r15d, r15d
	mov	rax, r14
	mov	rcx, rsi
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rsp + 40], rdi       # 8-byte Spill
	.p2align	4
.LBB286_51:                             #   Parent Loop BB286_2 Depth=1
                                        #     Parent Loop BB286_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB286_52 Depth 4
                                        #         Child Loop BB286_88 Depth 4
	mov	r13, rsi
	mov	rdi, rdx
	sub	rdi, 3
	mov	esi, 0
	cmovae	rsi, rdi
	shl	rsi, 4
	add	rsi, r14
	cmp	rax, rsi
	jae	.LBB286_54
	.p2align	4
.LBB286_52:                             #   Parent Loop BB286_2 Depth=1
                                        #     Parent Loop BB286_3 Depth=2
                                        #       Parent Loop BB286_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mov	rdi, qword ptr [rax]
	lea	r8, [rcx - 16]
	xor	r9d, r9d
	cmp	rdi, qword ptr [r14 + rbp]
	cmovb	r8, rbx
	setb	r9b
	mov	rdi, r15
	shl	rdi, 4
	lea	r10, [r15 + r9]
	mov	r11, qword ptr [rax + 16]
	shl	r10, 4
	cmp	r11, qword ptr [r14 + rbp]
	movups	xmm0, xmmword ptr [rax]
	lea	r11, [rcx - 32]
	cmovb	r11, rbx
	movups	xmmword ptr [r8 + rdi], xmm0
	movups	xmm0, xmmword ptr [rax + 16]
	adc	r15, r9
	movups	xmmword ptr [r11 + r10], xmm0
	mov	rdi, qword ptr [rax + 32]
	lea	r8, [rcx - 48]
	xor	r9d, r9d
	cmp	rdi, qword ptr [r14 + rbp]
	cmovb	r8, rbx
	setb	r9b
	mov	rdi, r15
	shl	rdi, 4
	movups	xmm0, xmmword ptr [rax + 32]
	movups	xmmword ptr [r8 + rdi], xmm0
	lea	rdi, [r15 + r9]
	mov	r8, qword ptr [rax + 48]
	add	rcx, -64
	shl	rdi, 4
	cmp	r8, qword ptr [r14 + rbp]
	mov	r8, rcx
	cmovb	r8, rbx
	movdqu	xmm0, xmmword ptr [rax + 48]
	movdqu	xmmword ptr [r8 + rdi], xmm0
	adc	r15, r9
	add	rax, 64
	cmp	rax, rsi
	jb	.LBB286_52
.LBB286_54:                             #   in Loop: Header=BB286_51 Depth=3
	mov	rsi, rdx
	shl	rsi, 4
	add	rsi, r14
	cmp	rax, rsi
	jae	.LBB286_56
	.p2align	4
.LBB286_88:                             #   Parent Loop BB286_2 Depth=1
                                        #     Parent Loop BB286_3 Depth=2
                                        #       Parent Loop BB286_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mov	rdi, qword ptr [rax]
	add	rcx, -16
	mov	r8, r15
	shl	r8, 4
	cmp	rdi, qword ptr [r14 + rbp]
	mov	rdi, rcx
	cmovb	rdi, rbx
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmmword ptr [rdi + r8], xmm0
	adc	r15, 0
	add	rax, 16
	cmp	rax, rsi
	jb	.LBB286_88
.LBB286_56:                             #   in Loop: Header=BB286_51 Depth=3
	cmp	rdx, r12
	je	.LBB286_58
# %bb.57:                               #   in Loop: Header=BB286_51 Depth=3
	mov	rsi, r13
	mov	rdx, r15
	shl	rdx, 4
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmmword ptr [rcx + rdx - 16], xmm0
	add	rcx, -16
	add	rax, 16
	mov	rdx, r12
	jmp	.LBB286_51
	.p2align	4
.LBB286_58:                             #   in Loop: Header=BB286_3 Depth=2
	mov	r12, r15
	shl	r12, 4
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r12
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	sub	rsi, r15
	je	.LBB286_65
# %bb.59:                               #   in Loop: Header=BB286_3 Depth=2
	lea	rax, [r14 + r12]
	lea	rcx, [r15 + 1]
	cmp	qword ptr [rsp + 8], rcx        # 8-byte Folded Reload
	jne	.LBB286_61
# %bb.60:                               #   in Loop: Header=BB286_3 Depth=2
	xor	ecx, ecx
	jmp	.LBB286_63
	.p2align	4
.LBB286_61:                             #   in Loop: Header=BB286_3 Depth=2
	mov	rdx, rsi
	and	rdx, -2
	lea	rdi, [rax + 16]
	mov	r10, qword ptr [rsp + 40]       # 8-byte Reload
	add	r10, qword ptr [rsp + 48]       # 8-byte Folded Reload
	xor	r8d, r8d
	movabs	r9, 1152921504606846974
	.p2align	4
.LBB286_62:                             #   Parent Loop BB286_2 Depth=1
                                        #     Parent Loop BB286_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [rdi - 16], xmm0
	lea	rcx, [r8 + 2]
	xor	r8, r9
	shl	r8, 4
	movdqu	xmm0, xmmword ptr [r13 + r8]
	movdqu	xmmword ptr [rdi], xmm0
	add	rdi, 32
	add	r10, -32
	mov	r8, rcx
	cmp	rdx, rcx
	jne	.LBB286_62
.LBB286_63:                             #   in Loop: Header=BB286_3 Depth=2
	test	sil, 1
	je	.LBB286_65
# %bb.64:                               #   in Loop: Header=BB286_3 Depth=2
	mov	rdx, rcx
	not	rdx
	shl	rdx, 4
	shl	rcx, 4
	movdqu	xmm0, xmmword ptr [r13 + rdx]
	movdqu	xmmword ptr [rax + rcx], xmm0
.LBB286_65:                             #   in Loop: Header=BB286_3 Depth=2
	test	r15, r15
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	je	.LBB286_68
# %bb.66:                               #   in Loop: Header=BB286_3 Depth=2
	cmp	qword ptr [rsp + 8], r15        # 8-byte Folded Reload
	jb	.LBB286_89
# %bb.67:                               #   in Loop: Header=BB286_3 Depth=2
	add	r12, r14
	mov	rdi, r12
	mov	rdx, rbx
	mov	rcx, r13
	mov	ebp, dword ptr [rsp + 20]       # 4-byte Reload
	mov	r8d, ebp
	lea	r9, [rsp + 64]
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	mov	rsi, r15
	cmp	r15, 33
	jae	.LBB286_3
	jmp	.LBB286_6
	.p2align	4
.LBB286_68:                             #   in Loop: Header=BB286_2 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	r13, rax
	jb	.LBB286_90
# %bb.69:                               #   in Loop: Header=BB286_2 Depth=1
	shl	rax, 4
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	lea	rcx, [rbx + rax]
	xor	r12d, r12d
	mov	rax, r14
	mov	qword ptr [rsp + 24], rcx       # 8-byte Spill
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	.p2align	4
.LBB286_70:                             #   Parent Loop BB286_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB286_71 Depth 3
                                        #       Child Loop BB286_91 Depth 3
	mov	rsi, r10
	sub	rsi, 3
	mov	edx, 0
	cmovae	rdx, rsi
	shl	rdx, 4
	add	rdx, r14
	cmp	rax, rdx
	jae	.LBB286_73
	.p2align	4
.LBB286_71:                             #   Parent Loop BB286_2 Depth=1
                                        #     Parent Loop BB286_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	rsi, qword ptr [r14 + rbp]
	lea	rdi, [rcx - 16]
	mov	r8, r12
	shl	r8, 4
	cmp	rsi, qword ptr [rax]
	cmovae	rdi, rbx
	sbb	r12, -1
	mov	rsi, qword ptr [r14 + rbp]
	mov	r9, r12
	shl	r9, 4
	cmp	rsi, qword ptr [rax + 16]
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rcx - 32]
	cmovae	rsi, rbx
	movups	xmmword ptr [rdi + r8], xmm0
	sbb	r12, -1
	mov	rdi, qword ptr [r14 + rbp]
	mov	r8, r12
	shl	r8, 4
	cmp	rdi, qword ptr [rax + 32]
	movups	xmm0, xmmword ptr [rax + 16]
	lea	rdi, [rcx - 48]
	cmovae	rdi, rbx
	movups	xmmword ptr [rsi + r9], xmm0
	movups	xmm0, xmmword ptr [rax + 32]
	sbb	r12, -1
	movups	xmmword ptr [rdi + r8], xmm0
	mov	rsi, qword ptr [r14 + rbp]
	add	rcx, -64
	mov	rdi, r12
	shl	rdi, 4
	cmp	rsi, qword ptr [rax + 48]
	mov	rsi, rcx
	cmovae	rsi, rbx
	movdqu	xmm0, xmmword ptr [rax + 48]
	movdqu	xmmword ptr [rsi + rdi], xmm0
	sbb	r12, -1
	add	rax, 64
	cmp	rax, rdx
	jb	.LBB286_71
.LBB286_73:                             #   in Loop: Header=BB286_70 Depth=2
	mov	rdx, r10
	shl	rdx, 4
	add	rdx, r14
	cmp	rax, rdx
	jae	.LBB286_75
	.p2align	4
.LBB286_91:                             #   Parent Loop BB286_2 Depth=1
                                        #     Parent Loop BB286_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	rsi, qword ptr [r14 + rbp]
	add	rcx, -16
	mov	rdi, r12
	shl	rdi, 4
	cmp	rsi, qword ptr [rax]
	mov	rsi, rcx
	cmovae	rsi, rbx
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmmword ptr [rsi + rdi], xmm0
	sbb	r12, -1
	add	rax, 16
	cmp	rax, rdx
	jb	.LBB286_91
.LBB286_75:                             #   in Loop: Header=BB286_70 Depth=2
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	r10, r13
	je	.LBB286_77
# %bb.76:                               #   in Loop: Header=BB286_70 Depth=2
	add	rcx, -16
	mov	rdx, r12
	shl	rdx, 4
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmmword ptr [rbx + rdx], xmm0
	inc	r12
	add	rax, 16
	mov	r10, r13
	jmp	.LBB286_70
	.p2align	4
.LBB286_77:                             #   in Loop: Header=BB286_2 Depth=1
	mov	rbp, r12
	shl	rbp, 4
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r15, r13
	sub	r15, r12
	je	.LBB286_5
# %bb.78:                               #   in Loop: Header=BB286_2 Depth=1
	add	r14, rbp
	lea	rax, [r12 + 1]
	cmp	r13, rax
	jne	.LBB286_80
# %bb.79:                               #   in Loop: Header=BB286_2 Depth=1
	xor	eax, eax
	mov	r8, qword ptr [rsp + 24]        # 8-byte Reload
	jmp	.LBB286_82
.LBB286_80:                             #   in Loop: Header=BB286_2 Depth=1
	mov	rcx, r15
	and	rcx, -2
	lea	rdx, [r14 + 16]
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	add	r9, qword ptr [rsp + 48]        # 8-byte Folded Reload
	xor	esi, esi
	movabs	rdi, 1152921504606846974
	mov	r8, qword ptr [rsp + 24]        # 8-byte Reload
	.p2align	4
.LBB286_81:                             #   Parent Loop BB286_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	xmm0, xmmword ptr [r9]
	movups	xmmword ptr [rdx - 16], xmm0
	lea	rax, [rsi + 2]
	xor	rsi, rdi
	shl	rsi, 4
	movdqu	xmm0, xmmword ptr [r8 + rsi]
	movdqu	xmmword ptr [rdx], xmm0
	add	rdx, 32
	add	r9, -32
	mov	rsi, rax
	cmp	rcx, rax
	jne	.LBB286_81
.LBB286_82:                             #   in Loop: Header=BB286_2 Depth=1
	test	r15b, 1
	je	.LBB286_84
# %bb.83:                               #   in Loop: Header=BB286_2 Depth=1
	mov	rcx, rax
	not	rcx
	shl	rcx, 4
	shl	rax, 4
	movdqu	xmm0, xmmword ptr [r8 + rcx]
	movdqu	xmmword ptr [r14 + rax], xmm0
.LBB286_84:                             #   in Loop: Header=BB286_2 Depth=1
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	rdx, r12
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	jb	.LBB286_86
# %bb.85:                               #   in Loop: Header=BB286_2 Depth=1
	mov	eax, 0
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	cmp	r15, 33
	mov	ebp, dword ptr [rsp + 20]       # 4-byte Reload
	jae	.LBB286_2
	jmp	.LBB286_6
.LBB286_4:
	mov	rdi, r14
	mov	rdx, rbx
	mov	rcx, r13
	mov	r8d, 1
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	jmp	.LBB286_5
.LBB286_8:
	cmp	r15, 7
	jbe	.LBB286_10
# %bb.9:
	mov	rax, qword ptr [r14 + 16]
	mov	rcx, qword ptr [r14 + 48]
	xor	r8d, r8d
	xor	esi, esi
	cmp	rax, qword ptr [r14]
	setae	r8b
	setb	sil
	xor	edx, edx
	cmp	rcx, qword ptr [r14 + 32]
	setb	dl
	shl	esi, 4
	lea	rcx, [r14 + rsi]
	shl	r8d, 4
	lea	rax, [r14 + r8]
	mov	r9d, edx
	shl	r9d, 4
	lea	rdi, [r14 + r9]
	add	rdi, 32
	xor	edx, 3
	shl	edx, 4
	mov	r9, qword ptr [r14 + r9 + 32]
	mov	r10, qword ptr [r14 + rdx]
	mov	r8, qword ptr [r14 + r8]
	cmp	r10, r8
	mov	r11, rax
	cmovb	r11, rdi
	cmp	r9, qword ptr [r14 + rsi]
	cmovb	r11, rcx
	cmovb	rcx, rdi
	lea	rdx, [r14 + rdx]
	cmovb	rdi, rax
	cmp	r10, r8
	cmovae	rax, rdx
	cmovb	rdi, rdx
	mov	rdx, qword ptr [rdi]
	cmp	rdx, qword ptr [r11]
	mov	rdx, r11
	cmovb	rdx, rdi
	cmovb	rdi, r11
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rbx], xmm0
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [rbx + 16], xmm0
	movups	xmm0, xmmword ptr [rdi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	rdx, qword ptr [r14 + rcx + 16]
	mov	rdi, qword ptr [r14 + rcx + 48]
	xor	r10d, r10d
	xor	r8d, r8d
	cmp	rdx, qword ptr [r14 + rcx]
	setae	r10b
	setb	r8b
	xor	esi, esi
	cmp	rdi, qword ptr [r14 + rcx + 32]
	lea	r9, [r14 + rcx]
	setb	sil
	shl	r8d, 4
	shl	r10d, 4
	lea	rdx, [r9 + r10]
	mov	r11d, esi
	shl	r11d, 4
	lea	rdi, [r11 + r9]
	add	rdi, 32
	xor	esi, 3
	shl	esi, 4
	mov	r12, qword ptr [rsi + r9]
	mov	r10, qword ptr [r10 + r9]
	cmp	r12, r10
	mov	r13, rdx
	cmovb	r13, rdi
	mov	r11, qword ptr [r9 + r11 + 32]
	cmp	r11, qword ptr [r8 + r9]
	lea	r8, [r9 + r8]
	cmovb	r13, r8
	cmovb	r8, rdi
	lea	rsi, [r9 + rsi]
	cmovb	rdi, rdx
	cmp	r12, r10
	cmovae	rdx, rsi
	cmovb	rdi, rsi
	movups	xmmword ptr [rbx + 32], xmm0
	mov	rsi, qword ptr [rdi]
	cmp	rsi, qword ptr [r13]
	movups	xmm0, xmmword ptr [rax]
	mov	rax, r13
	cmovb	rax, rdi
	movups	xmmword ptr [rbx + 48], xmm0
	cmovb	rdi, r13
	movups	xmm0, xmmword ptr [r8]
	movups	xmmword ptr [rbx + rcx], xmm0
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rbx + rcx + 16], xmm0
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rbx + rcx + 32], xmm0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rbx + rcx + 48], xmm0
	mov	ecx, 4
	mov	rdx, r15
	sub	rdx, rbp
	cmp	rcx, rbp
	jb	.LBB286_12
	jmp	.LBB286_17
.LBB286_10:
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [rbx], xmm0
	mov	rax, rbp
	shl	rax, 4
	movdqu	xmm0, xmmword ptr [r14 + rax]
	movdqu	xmmword ptr [rbx + rax], xmm0
	mov	ecx, 1
	mov	rdx, r15
	sub	rdx, rbp
	cmp	rcx, rbp
	jae	.LBB286_17
.LBB286_12:
	mov	eax, ecx
	shl	eax, 4
	mov	rsi, rcx
	jmp	.LBB286_13
	.p2align	4
.LBB286_16:                             #   in Loop: Header=BB286_13 Depth=1
	mov	r9, rbx
.LBB286_42:                             #   in Loop: Header=BB286_13 Depth=1
	mov	qword ptr [r9], rdi
	mov	qword ptr [r9 + 8], r8
.LBB286_43:                             #   in Loop: Header=BB286_13 Depth=1
	inc	rsi
	add	rax, 16
	cmp	rsi, rbp
	je	.LBB286_17
.LBB286_13:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB286_15 Depth 2
	mov	r8, rsi
	shl	r8, 4
	movdqu	xmm0, xmmword ptr [r14 + r8]
	movdqu	xmmword ptr [rbx + r8], xmm0
	mov	rdi, qword ptr [rbx + r8]
	cmp	rdi, qword ptr [rbx + r8 - 16]
	jae	.LBB286_43
# %bb.14:                               #   in Loop: Header=BB286_13 Depth=1
	add	r8, rbx
	mov	r8, qword ptr [r8 + 8]
	mov	r10, rax
	.p2align	4
.LBB286_15:                             #   Parent Loop BB286_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	xmm0, xmmword ptr [rbx + r10 - 16]
	movdqu	xmmword ptr [rbx + r10], xmm0
	cmp	r10, 16
	je	.LBB286_16
# %bb.40:                               #   in Loop: Header=BB286_15 Depth=2
	lea	r9, [r10 - 16]
	cmp	rdi, qword ptr [rbx + r10 - 32]
	mov	r10, r9
	jb	.LBB286_15
# %bb.41:                               #   in Loop: Header=BB286_13 Depth=1
	add	r9, rbx
	jmp	.LBB286_42
.LBB286_17:
	mov	rsi, rbp
	shl	rsi, 4
	lea	rax, [rbx + rsi]
	cmp	rcx, rdx
	jae	.LBB286_27
# %bb.18:
	add	rsi, r14
	mov	edi, ecx
	shl	edi, 4
	jmp	.LBB286_19
	.p2align	4
.LBB286_22:                             #   in Loop: Header=BB286_19 Depth=1
	mov	r10, rax
.LBB286_25:                             #   in Loop: Header=BB286_19 Depth=1
	mov	qword ptr [r10], r8
	mov	qword ptr [r10 + 8], r9
.LBB286_26:                             #   in Loop: Header=BB286_19 Depth=1
	inc	rcx
	add	rdi, 16
	cmp	rcx, rdx
	je	.LBB286_27
.LBB286_19:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB286_21 Depth 2
	mov	r9, rcx
	shl	r9, 4
	movdqu	xmm0, xmmword ptr [rsi + r9]
	movdqu	xmmword ptr [rax + r9], xmm0
	mov	r8, qword ptr [rax + r9]
	cmp	r8, qword ptr [rax + r9 - 16]
	jae	.LBB286_26
# %bb.20:                               #   in Loop: Header=BB286_19 Depth=1
	add	r9, rax
	mov	r9, qword ptr [r9 + 8]
	mov	r11, rdi
	.p2align	4
.LBB286_21:                             #   Parent Loop BB286_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	xmm0, xmmword ptr [rax + r11 - 16]
	movdqu	xmmword ptr [rax + r11], xmm0
	cmp	r11, 16
	je	.LBB286_22
# %bb.23:                               #   in Loop: Header=BB286_21 Depth=2
	lea	r10, [r11 - 16]
	cmp	r8, qword ptr [rax + r11 - 32]
	mov	r11, r10
	jb	.LBB286_21
# %bb.24:                               #   in Loop: Header=BB286_19 Depth=1
	add	r10, rax
	jmp	.LBB286_25
.LBB286_27:
	mov	rcx, r15
	shl	rcx, 4
	lea	r8, [r14 + rcx]
	add	r8, -16
	mov	qword ptr [rsp + 24], rcx       # 8-byte Spill
	lea	r12, [rbx + rcx - 16]
	lea	rdx, [rax - 16]
	mov	rdi, r14
	mov	rsi, rbx
	jmp	.LBB286_28
	.p2align	4
.LBB286_32:                             #   in Loop: Header=BB286_28 Depth=1
	movzx	ebp, byte ptr [rsp + 20]        # 1-byte Folded Reload
	mov	r10b, bpl
	mov	r13d, 0
	sbb	r13, r13
	shl	r10d, 4
	add	rax, r10
	movzx	r10d, byte ptr [rsp + 32]       # 1-byte Folded Reload
	mov	r9b, r10b
	shl	r9d, 4
	add	rsi, r9
	add	rdi, 16
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [r8], xmm0
	shl	r11, 4
	add	r12, r11
	shl	r13, 4
	add	rdx, r13
	add	r8, -16
	mov	rbp, qword ptr [rsp + 8]        # 8-byte Reload
	dec	rbp
	je	.LBB286_33
.LBB286_28:                             # =>This Inner Loop Header: Depth=1
	mov	qword ptr [rsp + 8], rbp        # 8-byte Spill
	mov	r11, qword ptr [rax]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rcx, rax
	cmp	r11, qword ptr [rsi]
	setae	byte ptr [rsp + 32]             # 1-byte Folded Spill
	setb	byte ptr [rsp + 20]             # 1-byte Folded Spill
	jb	.LBB286_30
# %bb.29:                               #   in Loop: Header=BB286_28 Depth=1
	mov	rcx, rsi
.LBB286_30:                             #   in Loop: Header=BB286_28 Depth=1
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rdi], xmm0
	mov	rbp, qword ptr [r12]
	mov	r13, qword ptr [rdx]
	cmp	rbp, r13
	mov	r11d, 0
	adc	r11, -1
	mov	rcx, rdx
	cmp	rbp, r13
	jb	.LBB286_32
# %bb.31:                               #   in Loop: Header=BB286_28 Depth=1
	mov	rcx, r12
	jmp	.LBB286_32
.LBB286_33:
	add	rdx, 16
	test	r15b, 1
	je	.LBB286_35
# %bb.34:
	xor	ecx, ecx
	xor	r8d, r8d
	cmp	rsi, rdx
	setae	cl
	setb	r8b
	mov	r9, rax
	cmovb	r9, rsi
	movdqu	xmm0, xmmword ptr [r9]
	movdqu	xmmword ptr [rdi], xmm0
	shl	r8d, 4
	add	rsi, r8
	shl	ecx, 4
	add	rax, rcx
.LBB286_35:
	cmp	rsi, rdx
	jne	.LBB286_37
# %bb.36:
	add	r12, 16
	cmp	rax, r12
	jne	.LBB286_37
.LBB286_5:
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
.LBB286_90:
	.cfi_def_cfa_offset 144
	ud2
.LBB286_89:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.81]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB286_37:
.Ltmp1043:
	call	_RNvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort22panic_on_ord_violation
.Ltmp1044:
# %bb.38:
.LBB286_86:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.82]
	mov	rdi, r12
	mov	rsi, rdx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB286_39:
.Ltmp1045:
	mov	r15, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end286:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end286-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB18_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyB16_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3k_8ResUnitsINtNtNtB1a_4read12endian_slice11EndianSliceNtNtB1a_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table286:
.Lexception60:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end60-.Lcst_begin60
.Lcst_begin60:
	.uleb128 .Lfunc_begin60-.Lfunc_begin60  # >> Call Site 1 <<
	.uleb128 .Ltmp1043-.Lfunc_begin60       #   Call between .Lfunc_begin60 and .Ltmp1043
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1043-.Lfunc_begin60       # >> Call Site 2 <<
	.uleb128 .Ltmp1044-.Ltmp1043            #   Call between .Ltmp1043 and .Ltmp1044
	.uleb128 .Ltmp1045-.Lfunc_begin60       #     jumps to .Ltmp1045
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1044-.Lfunc_begin60       # >> Call Site 3 <<
	.uleb128 .Lfunc_end286-.Ltmp1044        #   Call between .Ltmp1044 and .Lfunc_end286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end60:
	.p2align	2, 0x0
                                        # -- End function
