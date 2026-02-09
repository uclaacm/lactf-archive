	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r13
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rax, qword ptr [rdi + 16]
	mov	rcx, qword ptr [rdi + 48]
	xor	r11d, r11d
	xor	r9d, r9d
	cmp	rax, qword ptr [rdi]
	setae	r11b
	setb	r9b
	xor	r8d, r8d
	cmp	rcx, qword ptr [rdi + 32]
	setb	r8b
	shl	r9d, 4
	lea	rax, [rdi + r9]
	shl	r11d, 4
	lea	rcx, [rdi + r11]
	mov	ebx, r8d
	shl	ebx, 4
	lea	r10, [rdi + rbx]
	add	r10, 32
	xor	r8d, 3
	shl	r8d, 4
	mov	rbx, qword ptr [rdi + rbx + 32]
	mov	r14, qword ptr [rdi + r8]
	mov	r11, qword ptr [rdi + r11]
	cmp	r14, r11
	mov	r15, rcx
	cmovb	r15, r10
	cmp	rbx, qword ptr [rdi + r9]
	cmovb	r15, rax
	cmovb	rax, r10
	lea	r8, [rdi + r8]
	cmovb	r10, rcx
	cmp	r14, r11
	cmovae	rcx, r8
	cmovb	r10, r8
	mov	r8, qword ptr [r10]
	cmp	r8, qword ptr [r15]
	mov	r8, r15
	cmovb	r8, r10
	cmovb	r10, r15
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rdx], xmm0
	movups	xmm0, xmmword ptr [r8]
	movups	xmmword ptr [rdx + 16], xmm0
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [rdx + 32], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rdx + 48], xmm0
	mov	rax, qword ptr [rdi + 80]
	mov	rcx, qword ptr [rdi + 112]
	xor	r11d, r11d
	xor	r9d, r9d
	cmp	rax, qword ptr [rdi + 64]
	setae	r11b
	setb	r9b
	xor	r8d, r8d
	cmp	rcx, qword ptr [rdi + 96]
	setb	r8b
	shl	r9d, 4
	lea	rax, [rdi + r9]
	add	rax, 64
	shl	r11d, 4
	lea	rcx, [rdi + r11]
	add	rcx, 64
	mov	ebx, r8d
	shl	ebx, 4
	lea	r10, [rdi + rbx]
	add	r10, 96
	xor	r8d, 3
	shl	r8d, 4
	mov	rbx, qword ptr [rdi + rbx + 96]
	mov	r14, qword ptr [rdi + r8 + 64]
	mov	r11, qword ptr [rdi + r11 + 64]
	cmp	r14, r11
	mov	r15, rcx
	cmovb	r15, r10
	cmp	rbx, qword ptr [rdi + r9 + 64]
	cmovb	r15, rax
	cmovb	rax, r10
	cmovb	r10, rcx
	cmp	r14, r11
	lea	rdi, [rdi + r8 + 64]
	cmovae	rcx, rdi
	cmovb	r10, rdi
	mov	rdi, qword ptr [r10]
	cmp	rdi, qword ptr [r15]
	mov	rdi, r15
	cmovb	rdi, r10
	cmovb	r10, r15
	lea	r8, [rdx + 64]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rdx + 64], xmm0
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rdx + 80], xmm0
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [rdx + 96], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rdx + 112], xmm0
	mov	rax, qword ptr [rdx + 64]
	xor	ecx, ecx
	xor	r10d, r10d
	cmp	rax, qword ptr [rdx]
	setae	cl
	setb	r10b
	cmovae	r8, rdx
	movups	xmm0, xmmword ptr [r8]
	movups	xmmword ptr [rsi], xmm0
	mov	rdi, qword ptr [rdx + 112]
	mov	r11, qword ptr [rdx + 48]
	xor	eax, eax
	cmp	rdi, r11
	mov	r8d, 0
	adc	r8, -1
	cmp	rdi, r11
	mov	r9d, 0
	sbb	r9, r9
	lea	rbx, [rdx + 48]
	lea	r14, [rdx + 112]
	cmp	rdi, r11
	cmovb	r14, rbx
	shl	r10d, 4
	lea	rdi, [rdx + r10]
	add	rdi, 64
	shl	ecx, 4
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [rsi + 112], xmm0
	shl	r8, 4
	shl	r9, 4
	mov	r10, qword ptr [rdx + r10 + 64]
	xor	r14d, r14d
	xor	r11d, r11d
	cmp	r10, qword ptr [rdx + rcx]
	lea	r12, [rdx + rcx]
	setae	r14b
	setb	r11b
	mov	rcx, r12
	cmovb	rcx, rdi
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rsi + 16], xmm0
	mov	r10, qword ptr [rdx + r8 + 112]
	mov	rbx, qword ptr [rdx + r9 + 48]
	cmp	r10, rbx
	mov	ecx, 0
	adc	rcx, -1
	cmp	r10, rbx
	lea	rbx, [rdx + r8 + 112]
	lea	r9, [rdx + r9 + 48]
	mov	r8, rbx
	cmovb	r8, r9
	mov	edx, 0
	sbb	rdx, rdx
	shl	r11d, 4
	lea	r10, [rdi + r11]
	shl	r14d, 4
	movups	xmm0, xmmword ptr [r8]
	movups	xmmword ptr [rsi + 96], xmm0
	shl	rcx, 4
	shl	rdx, 4
	mov	rdi, qword ptr [r11 + rdi]
	xor	r11d, r11d
	xor	r15d, r15d
	cmp	rdi, qword ptr [r14 + r12]
	lea	r14, [r12 + r14]
	setae	r11b
	setb	r15b
	mov	rdi, r14
	cmovb	rdi, r10
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rsi + 32], xmm0
	mov	r12, qword ptr [rcx + rbx]
	mov	r13, qword ptr [rdx + r9]
	cmp	r12, r13
	mov	edi, 0
	adc	rdi, -1
	cmp	r12, r13
	mov	r8d, 0
	sbb	r8, r8
	add	rcx, rbx
	add	rdx, r9
	cmp	r12, r13
	mov	rbx, rcx
	cmovb	rbx, rdx
	shl	r15d, 4
	lea	r9, [r10 + r15]
	shl	r11d, 4
	movups	xmm0, xmmword ptr [rbx]
	movups	xmmword ptr [rsi + 80], xmm0
	lea	rbx, [r14 + r11]
	shl	rdi, 4
	shl	r8, 4
	mov	r12, qword ptr [r15 + r10]
	xor	r15d, r15d
	xor	r10d, r10d
	cmp	r12, qword ptr [r11 + r14]
	setae	r15b
	setb	r11b
	mov	r14, rbx
	cmovb	r14, r9
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [rsi + 48], xmm0
	mov	r12, qword ptr [rdi + rcx]
	mov	r13, qword ptr [r8 + rdx]
	cmp	r12, r13
	mov	r14d, 0
	adc	r14, -1
	cmp	r12, r13
	sbb	rax, rax
	add	rdi, rcx
	add	r8, rdx
	cmp	r12, r13
	mov	rcx, rdi
	cmovb	rcx, r8
	shl	r15d, 4
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rsi + 64], xmm0
	add	r15, rbx
	shl	rax, 4
	add	rax, r8
	add	rax, 16
	cmp	r15, rax
	jne	.LBB287_3
# %bb.1:
	mov	r10b, r11b
	shl	r10d, 4
	add	r9, r10
	shl	r14, 4
	lea	rax, [r14 + rdi]
	add	rax, 16
	cmp	r9, rax
	jne	.LBB287_3
# %bb.2:
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB287_3:
	.cfi_def_cfa_offset 48
	call	_RNvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort22panic_on_ord_violation
.Lfunc_end287:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end287-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB1c_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3o_8ResUnitsINtNtNtB1e_4read12endian_slice11EndianSliceNtNtB1e_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
