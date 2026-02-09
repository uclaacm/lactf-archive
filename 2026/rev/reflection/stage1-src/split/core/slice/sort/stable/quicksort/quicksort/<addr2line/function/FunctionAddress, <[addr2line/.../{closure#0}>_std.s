	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
.Lfunc_begin43:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception43
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
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	mov	rbx, rdx
	mov	r15, rsi
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	cmp	rsi, 33
	jae	.LBB233_1
.LBB233_6:
	cmp	r15, 2
	jb	.LBB233_5
# %bb.7:
	mov	rbp, r15
	shr	rbp
	cmp	r15, 8
	jb	.LBB233_9
# %bb.8:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rax + 24]
	mov	rdx, qword ptr [rax + 72]
	xor	r8d, r8d
	xor	esi, esi
	cmp	rcx, qword ptr [rax]
	setae	r8b
	setb	sil
	lea	rdi, [rax + 72]
	lea	r9, [rax + 48]
	cmp	rdx, qword ptr [rax + 48]
	lea	r10, [rsi + 2*rsi]
	lea	rsi, [rax + 8*r10]
	lea	r8, [r8 + 2*r8]
	mov	rdx, r9
	cmovb	rdx, rdi
	lea	rcx, [rax + 8*r8]
	cmovb	rdi, r9
	mov	r9, qword ptr [rdx]
	mov	r11, qword ptr [rdi]
	mov	r8, qword ptr [rax + 8*r8]
	cmp	r11, r8
	mov	r14, rcx
	cmovb	r14, rdx
	cmp	r9, qword ptr [rax + 8*r10]
	cmovb	r14, rsi
	cmovb	rsi, rdx
	cmovb	rdx, rcx
	cmp	r11, r8
	cmovae	rcx, rdi
	cmovb	rdx, rdi
	mov	rdi, qword ptr [rdx]
	cmp	rdi, qword ptr [r14]
	mov	rdi, r14
	cmovb	rdi, rdx
	cmovb	rdx, r14
	mov	r8, qword ptr [rsi + 16]
	mov	qword ptr [rbx + 16], r8
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [rdi + 16]
	mov	qword ptr [rbx + 40], rsi
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rbx + 24], xmm0
	mov	rsi, qword ptr [rdx + 16]
	mov	qword ptr [rbx + 64], rsi
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [rbx + 48], xmm0
	lea	rdx, [8*rbp]
	lea	rdx, [rdx + 2*rdx]
	lea	r9, [rax + rdx]
	mov	rsi, qword ptr [rax + rdx + 24]
	mov	rdi, qword ptr [rax + rdx + 72]
	xor	r10d, r10d
	xor	r11d, r11d
	cmp	rsi, qword ptr [rax + rdx]
	setae	r10b
	setb	r11b
	lea	r8, [rax + rdx]
	add	r8, 72
	lea	r14, [rax + rdx]
	add	r14, 48
	cmp	rdi, qword ptr [rax + rdx + 48]
	lea	r11, [r11 + 2*r11]
	lea	r10, [r10 + 2*r10]
	lea	rsi, [r9 + 8*r10]
	mov	rdi, r14
	cmovb	rdi, r8
	cmovb	r8, r14
	mov	r14, qword ptr [r8]
	mov	r10, qword ptr [r9 + 8*r10]
	cmp	r14, r10
	mov	r12, rsi
	cmovb	r12, rdi
	mov	r13, qword ptr [rdi]
	cmp	r13, qword ptr [r9 + 8*r11]
	lea	r9, [r9 + 8*r11]
	cmovb	r12, r9
	cmovb	r9, rdi
	mov	r11, qword ptr [rcx + 16]
	cmovb	rdi, rsi
	cmp	r14, r10
	cmovae	rsi, r8
	cmovb	rdi, r8
	mov	qword ptr [rbx + 88], r11
	mov	r8, qword ptr [rdi]
	cmp	r8, qword ptr [r12]
	movups	xmm0, xmmword ptr [rcx]
	mov	rcx, r12
	cmovb	rcx, rdi
	movups	xmmword ptr [rbx + 72], xmm0
	cmovb	rdi, r12
	mov	r8, qword ptr [r9 + 16]
	mov	qword ptr [rbx + rdx + 16], r8
	movups	xmm0, xmmword ptr [r9]
	movups	xmmword ptr [rbx + rdx], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rbx + rdx + 24], xmm0
	mov	rcx, qword ptr [rcx + 16]
	mov	qword ptr [rbx + rdx + 40], rcx
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rbx + rdx + 48], xmm0
	mov	rcx, qword ptr [rdi + 16]
	mov	qword ptr [rbx + rdx + 64], rcx
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx + rdx + 72], xmm0
	mov	rcx, qword ptr [rsi + 16]
	mov	qword ptr [rbx + rdx + 88], rcx
	mov	edx, 4
	mov	rsi, r15
	sub	rsi, rbp
	cmp	rdx, rbp
	jb	.LBB233_11
	jmp	.LBB233_16
.LBB233_1:
	mov	r14d, r8d
	mov	rbp, rcx
	lea	rax, [rbx - 24]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
.LBB233_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB233_3 Depth 2
                                        #       Child Loop BB233_50 Depth 3
                                        #         Child Loop BB233_80 Depth 4
                                        #       Child Loop BB233_58 Depth 3
                                        #     Child Loop BB233_66 Depth 2
                                        #       Child Loop BB233_83 Depth 3
                                        #     Child Loop BB233_74 Depth 2
	mov	r13, r15
	.p2align	4
.LBB233_3:                              #   Parent Loop BB233_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB233_50 Depth 3
                                        #         Child Loop BB233_80 Depth 4
                                        #       Child Loop BB233_58 Depth 3
	sub	r14d, 1
	jb	.LBB233_4
# %bb.43:                               #   in Loop: Header=BB233_3 Depth=2
	mov	rcx, r13
	shr	rcx, 3
	lea	r12, [rcx + 2*rcx]
	shl	r12, 5
	mov	r15, qword ptr [rsp + 8]        # 8-byte Reload
	add	r12, r15
	imul	rdx, rcx, 168
	add	rdx, r15
	cmp	r13, 64
	mov	dword ptr [rsp + 24], r14d      # 4-byte Spill
	jae	.LBB233_44
# %bb.45:                               #   in Loop: Header=BB233_3 Depth=2
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [r12]
	cmp	rax, rcx
	setb	sil
	mov	rdi, qword ptr [rdx]
	cmp	rax, rdi
	setb	al
	xor	al, sil
	cmp	rcx, rdi
	setb	cl
	xor	cl, sil
	cmovne	r12, rdx
	test	al, al
	cmovne	r12, r15
	jmp	.LBB233_46
	.p2align	4
.LBB233_44:                             #   in Loop: Header=BB233_3 Depth=2
	mov	rdi, r15
	mov	rsi, r12
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCNvMs0_B16_INtB16_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3n_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	mov	r12, rax
.LBB233_46:                             #   in Loop: Header=BB233_3 Depth=2
	mov	r14, r12
	sub	r14, r15
	shr	r14, 3
	movabs	rax, -6148914691236517205
	imul	r14, rax
	mov	rax, qword ptr [r12 + 16]
	mov	qword ptr [rsp + 64], rax
	movups	xmm0, xmmword ptr [r12]
	movaps	xmmword ptr [rsp + 48], xmm0
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	je	.LBB233_48
# %bb.47:                               #   in Loop: Header=BB233_3 Depth=2
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [r12]
	jae	.LBB233_64
.LBB233_48:                             #   in Loop: Header=BB233_3 Depth=2
	cmp	rbp, r13
	jb	.LBB233_82
# %bb.49:                               #   in Loop: Header=BB233_3 Depth=2
	lea	rax, [2*r13]
	add	rax, r13
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	lea	rbp, [rbx + 8*rax]
	xor	r15d, r15d
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, rbp
	mov	rdx, r14
	.p2align	4
.LBB233_50:                             #   Parent Loop BB233_2 Depth=1
                                        #     Parent Loop BB233_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB233_80 Depth 4
	lea	rsi, [rdx + 2*rdx]
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rsi, [rdi + 8*rsi]
	cmp	rax, rsi
	jae	.LBB233_52
	.p2align	4
.LBB233_80:                             #   Parent Loop BB233_2 Depth=1
                                        #     Parent Loop BB233_3 Depth=2
                                        #       Parent Loop BB233_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	rcx, -24
	mov	rdi, qword ptr [rax]
	cmp	rdi, qword ptr [r12]
	mov	rdi, qword ptr [rax + 16]
	mov	r8, rcx
	cmovb	r8, rbx
	lea	r9, [r15 + 2*r15]
	mov	qword ptr [r8 + 8*r9 + 16], rdi
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r8 + 8*r9], xmm0
	adc	r15, 0
	add	rax, 24
	cmp	rax, rsi
	jb	.LBB233_80
.LBB233_52:                             #   in Loop: Header=BB233_50 Depth=3
	cmp	rdx, r13
	je	.LBB233_54
# %bb.53:                               #   in Loop: Header=BB233_50 Depth=3
	lea	rdx, [r15 + 2*r15]
	mov	rsi, qword ptr [rax + 16]
	mov	qword ptr [rcx + 8*rdx - 8], rsi
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rcx + 8*rdx - 24], xmm0
	add	rcx, -24
	add	rax, 24
	mov	rdx, r13
	jmp	.LBB233_50
	.p2align	4
.LBB233_54:                             #   in Loop: Header=BB233_3 Depth=2
	lea	rax, [8*r15]
	lea	rdx, [rax + 2*rax]
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	movabs	r10, 2305843009213693950
	mov	rsi, r13
	sub	rsi, r15
	je	.LBB233_61
# %bb.55:                               #   in Loop: Header=BB233_3 Depth=2
	lea	rax, [r15 + 2*r15]
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rax, [rcx + 8*rax]
	lea	rcx, [r15 + 1]
	cmp	r13, rcx
	jne	.LBB233_57
# %bb.56:                               #   in Loop: Header=BB233_3 Depth=2
	xor	edi, edi
	jmp	.LBB233_59
	.p2align	4
.LBB233_57:                             #   in Loop: Header=BB233_3 Depth=2
	mov	rcx, rsi
	and	rcx, -2
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 80]       # 8-byte Reload
	lea	rdx, [rdx + 8*rdi]
	mov	r8, rax
	xor	r9d, r9d
	.p2align	4
.LBB233_58:                             #   Parent Loop BB233_2 Depth=1
                                        #     Parent Loop BB233_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	rdi, qword ptr [rdx + 16]
	mov	qword ptr [r8 + 16], rdi
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [r8], xmm0
	lea	rdi, [r9 + 2]
	xor	r9, r10
	lea	r9, [r9 + 2*r9]
	movups	xmm0, xmmword ptr [rbp + 8*r9]
	movups	xmmword ptr [r8 + 24], xmm0
	mov	r9, qword ptr [rbp + 8*r9 + 16]
	mov	qword ptr [r8 + 40], r9
	add	r8, 48
	add	rdx, -48
	mov	r9, rdi
	cmp	rcx, rdi
	jne	.LBB233_58
.LBB233_59:                             #   in Loop: Header=BB233_3 Depth=2
	test	sil, 1
	je	.LBB233_61
# %bb.60:                               #   in Loop: Header=BB233_3 Depth=2
	lea	rcx, [rdi + 2*rdi]
	not	rdi
	lea	rdx, [rdi + 2*rdi]
	mov	rdi, qword ptr [rbp + 8*rdx + 16]
	mov	qword ptr [rax + 8*rcx + 16], rdi
	movups	xmm0, xmmword ptr [rbp + 8*rdx]
	movups	xmmword ptr [rax + 8*rcx], xmm0
.LBB233_61:                             #   in Loop: Header=BB233_3 Depth=2
	test	r15, r15
	mov	rbp, qword ptr [rsp + 40]       # 8-byte Reload
	je	.LBB233_64
# %bb.62:                               #   in Loop: Header=BB233_3 Depth=2
	cmp	r13, r15
	jb	.LBB233_81
# %bb.63:                               #   in Loop: Header=BB233_3 Depth=2
	lea	rax, [r15 + 2*r15]
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rdi, [rcx + 8*rax]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r14d, dword ptr [rsp + 24]      # 4-byte Reload
	mov	r8d, r14d
	lea	r9, [rsp + 48]
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	mov	r13, r15
	cmp	r15, 33
	jae	.LBB233_3
	jmp	.LBB233_6
	.p2align	4
.LBB233_64:                             #   in Loop: Header=BB233_2 Depth=1
	cmp	rbp, r13
	jb	.LBB233_82
# %bb.65:                               #   in Loop: Header=BB233_2 Depth=1
	lea	rax, [2*r13]
	add	rax, r13
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	lea	r9, [rbx + 8*rax]
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, r15
	mov	rcx, r9
	.p2align	4
.LBB233_66:                             #   Parent Loop BB233_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB233_83 Depth 3
	lea	rdx, [r14 + 2*r14]
	lea	rdx, [r15 + 8*rdx]
	cmp	rax, rdx
	jae	.LBB233_68
	.p2align	4
.LBB233_83:                             #   Parent Loop BB233_2 Depth=1
                                        #     Parent Loop BB233_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	rsi, qword ptr [r12]
	add	rcx, -24
	cmp	rsi, qword ptr [rax]
	mov	rsi, rcx
	cmovae	rsi, rbx
	lea	rdi, [rbp + 2*rbp]
	mov	r8, qword ptr [rax + 16]
	mov	qword ptr [rsi + 8*rdi + 16], r8
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rsi + 8*rdi], xmm0
	sbb	rbp, -1
	add	rax, 24
	cmp	rax, rdx
	jb	.LBB233_83
.LBB233_68:                             #   in Loop: Header=BB233_66 Depth=2
	cmp	r14, r13
	je	.LBB233_70
# %bb.69:                               #   in Loop: Header=BB233_66 Depth=2
	add	rcx, -24
	lea	rdx, [2*rbp]
	add	rdx, rbp
	mov	rsi, qword ptr [rax + 16]
	mov	qword ptr [rbx + 8*rdx + 16], rsi
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rbx + 8*rdx], xmm0
	inc	rbp
	add	rax, 24
	mov	r14, r13
	jmp	.LBB233_66
	.p2align	4
.LBB233_70:                             #   in Loop: Header=BB233_2 Depth=1
	mov	r14, r9
	lea	rax, [8*rbp]
	lea	rdx, [rax + 2*rax]
	mov	rdi, r15
	mov	rsi, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rsi, r15
	mov	r15, r13
	sub	r15, rbp
	je	.LBB233_5
# %bb.71:                               #   in Loop: Header=BB233_2 Depth=1
	lea	rax, [2*rbp]
	add	rax, rbp
	lea	rsi, [rsi + 8*rax]
	lea	rax, [rbp + 1]
	cmp	r13, rax
	mov	qword ptr [rsp + 8], rsi        # 8-byte Spill
	mov	r9, r14
	jne	.LBB233_73
# %bb.72:                               #   in Loop: Header=BB233_2 Depth=1
	xor	edx, edx
	mov	r14d, dword ptr [rsp + 24]      # 4-byte Reload
	jmp	.LBB233_75
.LBB233_73:                             #   in Loop: Header=BB233_2 Depth=1
	mov	rax, r15
	and	rax, -2
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rcx, [rcx + 8*rdx]
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 24]      # 4-byte Reload
	movabs	r8, 2305843009213693950
	.p2align	4
.LBB233_74:                             #   Parent Loop BB233_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdx, qword ptr [rcx + 16]
	mov	qword ptr [rsi + 16], rdx
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rsi], xmm0
	lea	rdx, [rdi + 2]
	xor	rdi, r8
	lea	rdi, [rdi + 2*rdi]
	movups	xmm0, xmmword ptr [r9 + 8*rdi]
	movups	xmmword ptr [rsi + 24], xmm0
	mov	rdi, qword ptr [r9 + 8*rdi + 16]
	mov	qword ptr [rsi + 40], rdi
	add	rsi, 48
	add	rcx, -48
	mov	rdi, rdx
	cmp	rax, rdx
	jne	.LBB233_74
.LBB233_75:                             #   in Loop: Header=BB233_2 Depth=1
	test	r15b, 1
	je	.LBB233_77
# %bb.76:                               #   in Loop: Header=BB233_2 Depth=1
	lea	rax, [rdx + 2*rdx]
	not	rdx
	lea	rcx, [rdx + 2*rdx]
	mov	rdx, qword ptr [r9 + 8*rcx + 16]
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsi + 8*rax + 16], rdx
	movups	xmm0, xmmword ptr [r9 + 8*rcx]
	movups	xmmword ptr [rsi + 8*rax], xmm0
.LBB233_77:                             #   in Loop: Header=BB233_2 Depth=1
	cmp	r13, rbp
	jb	.LBB233_79
# %bb.78:                               #   in Loop: Header=BB233_2 Depth=1
	mov	eax, 0
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	cmp	r15, 33
	mov	rbp, qword ptr [rsp + 40]       # 8-byte Reload
	jae	.LBB233_2
	jmp	.LBB233_6
.LBB233_4:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8d, 1
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	jmp	.LBB233_5
.LBB233_9:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rax + 16]
	mov	qword ptr [rbx + 16], rcx
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rbx], xmm0
	lea	rcx, [8*rbp]
	lea	rcx, [rcx + 2*rcx]
	mov	rdx, qword ptr [rax + rcx + 16]
	mov	qword ptr [rbx + rcx + 16], rdx
	movups	xmm0, xmmword ptr [rax + rcx]
	movups	xmmword ptr [rbx + rcx], xmm0
	mov	edx, 1
	mov	rsi, r15
	sub	rsi, rbp
	cmp	rdx, rbp
	jae	.LBB233_16
.LBB233_11:
	lea	ecx, [8*rdx]
	lea	rcx, [rcx + 2*rcx]
	mov	rdi, rdx
	jmp	.LBB233_12
	.p2align	4
.LBB233_15:                             #   in Loop: Header=BB233_12 Depth=1
	mov	r9, rbx
.LBB233_41:                             #   in Loop: Header=BB233_12 Depth=1
	mov	qword ptr [r9], r8
	movaps	xmm0, xmmword ptr [rsp + 48]
	movups	xmmword ptr [r9 + 8], xmm0
.LBB233_42:                             #   in Loop: Header=BB233_12 Depth=1
	inc	rdi
	add	rcx, 24
	cmp	rdi, rbp
	je	.LBB233_16
.LBB233_12:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB233_14 Depth 2
	lea	rax, [8*rdi]
	lea	r9, [rax + 2*rax]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmm0, xmmword ptr [rax + r9]
	movups	xmmword ptr [rbx + r9], xmm0
	mov	rax, qword ptr [rax + r9 + 16]
	mov	qword ptr [rbx + r9 + 16], rax
	mov	r8, qword ptr [rbx + r9]
	cmp	r8, qword ptr [rbx + r9 - 24]
	jae	.LBB233_42
# %bb.13:                               #   in Loop: Header=BB233_12 Depth=1
	add	r9, qword ptr [rsp + 8]         # 8-byte Folded Reload
	movups	xmm0, xmmword ptr [r9 + 8]
	movaps	xmmword ptr [rsp + 48], xmm0
	mov	r10, rcx
	.p2align	4
.LBB233_14:                             #   Parent Loop BB233_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbx + r10 - 8]
	mov	qword ptr [rbx + r10 + 16], rax
	movups	xmm0, xmmword ptr [rbx + r10 - 24]
	movups	xmmword ptr [rbx + r10], xmm0
	cmp	r10, 24
	je	.LBB233_15
# %bb.39:                               #   in Loop: Header=BB233_14 Depth=2
	lea	r9, [r10 - 24]
	cmp	r8, qword ptr [rbx + r10 - 48]
	mov	r10, r9
	jb	.LBB233_14
# %bb.40:                               #   in Loop: Header=BB233_12 Depth=1
	add	r9, rbx
	jmp	.LBB233_41
.LBB233_16:
	lea	rcx, [8*rbp]
	lea	rdi, [rcx + 2*rcx]
	lea	rcx, [rbx + rdi]
	cmp	rdx, rsi
	jae	.LBB233_26
# %bb.17:
	add	rdi, qword ptr [rsp + 8]        # 8-byte Folded Reload
	lea	r8d, [8*rdx]
	lea	r8, [r8 + 2*r8]
	jmp	.LBB233_18
	.p2align	4
.LBB233_21:                             #   in Loop: Header=BB233_18 Depth=1
	mov	r10, rcx
.LBB233_24:                             #   in Loop: Header=BB233_18 Depth=1
	mov	qword ptr [r10], r9
	movaps	xmm0, xmmword ptr [rsp + 48]
	movups	xmmword ptr [r10 + 8], xmm0
.LBB233_25:                             #   in Loop: Header=BB233_18 Depth=1
	inc	rdx
	add	r8, 24
	cmp	rdx, rsi
	je	.LBB233_26
.LBB233_18:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB233_20 Depth 2
	lea	r9, [8*rdx]
	lea	r10, [r9 + 2*r9]
	movups	xmm0, xmmword ptr [rdi + r10]
	movups	xmmword ptr [rcx + r10], xmm0
	mov	r9, qword ptr [rdi + r10 + 16]
	mov	qword ptr [rcx + r10 + 16], r9
	mov	r9, qword ptr [rcx + r10]
	cmp	r9, qword ptr [rcx + r10 - 24]
	jae	.LBB233_25
# %bb.19:                               #   in Loop: Header=BB233_18 Depth=1
	add	r10, rdi
	movups	xmm0, xmmword ptr [r10 + 8]
	movaps	xmmword ptr [rsp + 48], xmm0
	mov	r11, r8
	.p2align	4
.LBB233_20:                             #   Parent Loop BB233_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r10, qword ptr [rcx + r11 - 8]
	mov	qword ptr [rcx + r11 + 16], r10
	movups	xmm0, xmmword ptr [rcx + r11 - 24]
	movups	xmmword ptr [rcx + r11], xmm0
	cmp	r11, 24
	je	.LBB233_21
# %bb.22:                               #   in Loop: Header=BB233_20 Depth=2
	lea	r10, [r11 - 24]
	cmp	r9, qword ptr [rcx + r11 - 48]
	mov	r11, r10
	jb	.LBB233_20
# %bb.23:                               #   in Loop: Header=BB233_18 Depth=1
	add	r10, rcx
	jmp	.LBB233_24
.LBB233_26:
	lea	rdx, [r15 + 2*r15]
	mov	r8, qword ptr [rsp + 8]         # 8-byte Reload
	lea	r9, [r8 + 8*rdx]
	add	r9, -24
	lea	rdx, [rbx + 8*rdx]
	add	rdx, -24
	lea	rsi, [rcx - 24]
	mov	rdi, rbx
	jmp	.LBB233_27
	.p2align	4
.LBB233_31:                             #   in Loop: Header=BB233_27 Depth=1
	mov	r11b, r12b
	lea	rax, [r11 + 2*r11]
	lea	rcx, [rcx + 8*rax]
	movzx	eax, byte ptr [rsp + 16]        # 1-byte Folded Reload
	mov	r10b, al
	lea	rax, [r10 + 2*r10]
	mov	r10d, 0
	sbb	r10, r10
	lea	rdi, [rdi + 8*rax]
	add	r8, 24
	mov	rax, qword ptr [r13 + 16]
	mov	qword ptr [r9 + 16], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmmword ptr [r9], xmm0
	lea	rax, [r14 + 2*r14]
	lea	rdx, [rdx + 8*rax]
	lea	rax, [r10 + 2*r10]
	lea	rsi, [rsi + 8*rax]
	add	r9, -24
	mov	rbp, qword ptr [rsp + 24]       # 8-byte Reload
	dec	rbp
	je	.LBB233_32
.LBB233_27:                             # =>This Inner Loop Header: Depth=1
	mov	qword ptr [rsp + 24], rbp       # 8-byte Spill
	mov	r12, qword ptr [rcx]
	xor	r10d, r10d
	xor	r11d, r11d
	mov	r14, rcx
	cmp	r12, qword ptr [rdi]
	setae	byte ptr [rsp + 16]             # 1-byte Folded Spill
	setb	r12b
	jb	.LBB233_29
# %bb.28:                               #   in Loop: Header=BB233_27 Depth=1
	mov	r14, rdi
.LBB233_29:                             #   in Loop: Header=BB233_27 Depth=1
	mov	r13, qword ptr [r14 + 16]
	mov	qword ptr [r8 + 16], r13
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [r8], xmm0
	mov	rax, qword ptr [rdx]
	mov	rbp, qword ptr [rsi]
	cmp	rax, rbp
	mov	r14d, 0
	adc	r14, -1
	mov	r13, rsi
	cmp	rax, rbp
	jb	.LBB233_31
# %bb.30:                               #   in Loop: Header=BB233_27 Depth=1
	mov	r13, rdx
	jmp	.LBB233_31
.LBB233_32:
	add	rsi, 24
	test	r15b, 1
	je	.LBB233_34
# %bb.33:
	xor	eax, eax
	xor	r9d, r9d
	cmp	rdi, rsi
	setae	al
	setb	r9b
	mov	r10, rcx
	cmovb	r10, rdi
	mov	r11, qword ptr [r10 + 16]
	mov	qword ptr [r8 + 16], r11
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [r8], xmm0
	lea	r8, [r9 + 2*r9]
	lea	rdi, [rdi + 8*r8]
	lea	rax, [rax + 2*rax]
	lea	rcx, [rcx + 8*rax]
.LBB233_34:
	cmp	rdi, rsi
	jne	.LBB233_36
# %bb.35:
	add	rdx, 24
	cmp	rcx, rdx
	jne	.LBB233_36
.LBB233_5:
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
.LBB233_82:
	.cfi_def_cfa_offset 144
	ud2
.LBB233_81:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.81]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB233_36:
.Ltmp935:
	call	_RNvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort22panic_on_ord_violation
.Ltmp936:
# %bb.37:
.LBB233_79:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.82]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r13
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB233_38:
.Ltmp937:
	mov	r12, rax
	shl	r15, 3
	lea	rdx, [r15 + 2*r15]
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end233:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std, .Lfunc_end233-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable9quicksort9quicksortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB15_11sort_by_keyyNCNvMs0_B17_INtB17_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3o_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table233:
.Lexception43:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end43-.Lcst_begin43
.Lcst_begin43:
	.uleb128 .Lfunc_begin43-.Lfunc_begin43  # >> Call Site 1 <<
	.uleb128 .Ltmp935-.Lfunc_begin43        #   Call between .Lfunc_begin43 and .Ltmp935
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp935-.Lfunc_begin43        # >> Call Site 2 <<
	.uleb128 .Ltmp936-.Ltmp935              #   Call between .Ltmp935 and .Ltmp936
	.uleb128 .Ltmp937-.Lfunc_begin43        #     jumps to .Ltmp937
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp936-.Lfunc_begin43        # >> Call Site 3 <<
	.uleb128 .Lfunc_end233-.Ltmp936         #   Call between .Ltmp936 and .Lfunc_end233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end43:
	.p2align	2, 0x0
                                        # -- End function
