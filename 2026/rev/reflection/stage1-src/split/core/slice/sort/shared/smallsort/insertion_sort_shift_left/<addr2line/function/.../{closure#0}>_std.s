	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	shl	rsi, 5
	add	rsi, rdi
	lea	rdx, [rdi + 32]
	xor	eax, eax
	mov	rcx, rdi
	jmp	.LBB209_1
	.p2align	4
.LBB209_10:                             #   in Loop: Header=BB209_1 Depth=1
	mov	r11, rdi
.LBB209_11:                             #   in Loop: Header=BB209_1 Depth=1
	mov	qword ptr [r11], r8
	mov	qword ptr [r11 + 8], r10
	mov	qword ptr [r11 + 16], rdx
	mov	qword ptr [r11 + 24], r9
.LBB209_12:                             #   in Loop: Header=BB209_1 Depth=1
	lea	rdx, [rcx + 32]
	add	rax, 32
	cmp	rdx, rsi
	je	.LBB209_13
.LBB209_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB209_6 Depth 2
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbx + 48]
	mov	r8, qword ptr [rbx + 32]
	cmp	rdx, qword ptr [rbx + 16]
	jb	.LBB209_4
# %bb.2:                                #   in Loop: Header=BB209_1 Depth=1
	ja	.LBB209_12
# %bb.3:                                #   in Loop: Header=BB209_1 Depth=1
	cmp	r8, qword ptr [rbx]
	jae	.LBB209_12
.LBB209_4:                              #   in Loop: Header=BB209_1 Depth=1
	mov	r10, qword ptr [rbx + 40]
	mov	r9, qword ptr [rbx + 56]
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 16]
	movups	xmmword ptr [rcx + 16], xmm1
	movups	xmmword ptr [rcx], xmm0
	mov	r11, rdi
	cmp	rbx, rdi
	je	.LBB209_11
# %bb.5:                                #   in Loop: Header=BB209_1 Depth=1
	mov	rbx, rax
	jmp	.LBB209_6
	.p2align	4
.LBB209_9:                              #   in Loop: Header=BB209_6 Depth=2
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmmword ptr [r11 + 16], xmm1
	movups	xmmword ptr [r11], xmm0
	add	rbx, -32
	je	.LBB209_10
.LBB209_6:                              #   Parent Loop BB209_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r11, [rdi + rbx]
	lea	r14, [rdi + rbx]
	add	r14, -32
	cmp	rdx, qword ptr [rdi + rbx - 16]
	jb	.LBB209_9
# %bb.7:                                #   in Loop: Header=BB209_6 Depth=2
	ja	.LBB209_11
# %bb.8:                                #   in Loop: Header=BB209_6 Depth=2
	cmp	r8, qword ptr [r14]
	jb	.LBB209_9
	jmp	.LBB209_11
.LBB209_13:
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end209:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std, .Lfunc_end209-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
