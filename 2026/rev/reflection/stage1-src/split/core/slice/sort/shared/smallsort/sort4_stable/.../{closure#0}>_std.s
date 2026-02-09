	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi + 16]
	mov	rcx, qword ptr [rdi + 48]
	mov	dl, 1
	cmp	rcx, rax
	jb	.LBB218_2
# %bb.1:
	mov	rax, qword ptr [rdi]
	setbe	cl
	cmp	qword ptr [rdi + 32], rax
	setb	dl
	and	dl, cl
.LBB218_2:
	mov	rcx, qword ptr [rdi + 80]
	mov	r8, qword ptr [rdi + 112]
	cmp	r8, rcx
	jae	.LBB218_4
# %bb.3:
	lea	rax, [rdi + 96]
	mov	ecx, 2
	jmp	.LBB218_5
.LBB218_4:
	lea	rax, [rdi + 64]
	mov	r9, qword ptr [rdi + 64]
	lea	r10, [rdi + 96]
	cmp	r8, rcx
	setbe	cl
	cmp	qword ptr [rdi + 96], r9
	setb	r8b
	and	r8b, cl
	cmovne	rax, r10
	movzx	ecx, r8b
	xor	rcx, 3
.LBB218_5:
	movzx	r9d, dl
	xor	dl, 1
	movzx	edx, dl
	shl	edx, 5
	add	rdx, rdi
	shl	r9d, 5
	lea	r8, [rdi + r9]
	shl	ecx, 5
	add	rcx, rdi
	mov	r10, qword ptr [rax + 16]
	mov	r9, qword ptr [rdi + r9 + 16]
	mov	dil, 1
	cmp	r10, r9
	jb	.LBB218_7
# %bb.6:
	mov	rdi, qword ptr [r8]
	setbe	r9b
	cmp	qword ptr [rax], rdi
	setb	dil
	and	dil, r9b
.LBB218_7:
	mov	r9, qword ptr [rcx + 16]
	mov	r10, qword ptr [rdx + 16]
	cmp	r9, r10
	jae	.LBB218_9
# %bb.8:
	test	dil, dil
	mov	rdi, r8
	cmovne	rdi, rax
	cmovne	rax, r8
	mov	r8, qword ptr [rax + 16]
	cmp	r9, r8
	jae	.LBB218_11
	jmp	.LBB218_12
.LBB218_9:
	mov	r9, qword ptr [rdx]
	setbe	r10b
	cmp	qword ptr [rcx], r9
	setb	r9b
	test	r10b, r9b
	mov	r11, rdx
	cmovne	r11, rax
	test	dil, dil
	cmovne	r11, r8
	cmovne	r8, rax
	cmovne	rax, rdx
	test	r10b, r9b
	cmove	rdx, rcx
	cmove	rcx, rax
	mov	r9, qword ptr [rcx + 16]
	mov	rax, r11
	mov	rdi, r8
	mov	r8, qword ptr [rax + 16]
	cmp	r9, r8
	jb	.LBB218_12
.LBB218_11:
	setbe	r8b
	mov	r9, qword ptr [rax]
	cmp	qword ptr [rcx], r9
	setb	r9b
	test	r8b, r9b
	mov	r8, rax
	cmovne	r8, rcx
	cmove	rax, rcx
	mov	rcx, r8
.LBB218_12:
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movups	xmmword ptr [rsi + 16], xmm1
	movups	xmmword ptr [rsi], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmmword ptr [rsi + 48], xmm1
	movups	xmmword ptr [rsi + 32], xmm0
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmmword ptr [rsi + 64], xmm0
	movups	xmmword ptr [rsi + 80], xmm1
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 16]
	movups	xmmword ptr [rsi + 96], xmm0
	movups	xmmword ptr [rsi + 112], xmm1
	ret
.Lfunc_end218:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end218-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB19_7sort_byNCNvMs1_B1b_INtB1b_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3s_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
