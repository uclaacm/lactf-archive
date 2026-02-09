	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	shl	rsi, 5
	add	rsi, rdi
	lea	rdx, [rdi + 32]
	mov	eax, 32
	mov	r8, rdi
	jmp	.LBB184_1
	.p2align	4
.LBB184_9:                              #   in Loop: Header=BB184_1 Depth=1
	add	r9, rdi
	mov	r10, rdi
.LBB184_6:                              #   in Loop: Header=BB184_1 Depth=1
	movaps	xmm0, xmmword ptr [rsp - 24]
	movups	xmmword ptr [r10], xmm0
	mov	qword ptr [r9 - 16], rdx
	mov	qword ptr [r9 - 8], r8
.LBB184_7:                              #   in Loop: Header=BB184_1 Depth=1
	lea	rdx, [rcx + 32]
	add	rax, 32
	mov	r8, rcx
	cmp	rdx, rsi
	je	.LBB184_8
.LBB184_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB184_3 Depth 2
	mov	rcx, rdx
	mov	rdx, qword ptr [r8 + 48]
	cmp	rdx, qword ptr [r8 + 16]
	jae	.LBB184_7
# %bb.2:                                #   in Loop: Header=BB184_1 Depth=1
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp - 24], xmm0
	mov	r8, qword ptr [r8 + 56]
	mov	r10, rax
	.p2align	4
.LBB184_3:                              #   Parent Loop BB184_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r9, r10
	movups	xmm0, xmmword ptr [rdi + r10 - 32]
	movups	xmm1, xmmword ptr [rdi + r10 - 16]
	movups	xmmword ptr [rdi + r10 + 16], xmm1
	movups	xmmword ptr [rdi + r10], xmm0
	cmp	r10, 32
	je	.LBB184_9
# %bb.4:                                #   in Loop: Header=BB184_3 Depth=2
	lea	r10, [r9 - 32]
	cmp	rdx, qword ptr [rdi + r9 - 48]
	jb	.LBB184_3
# %bb.5:                                #   in Loop: Header=BB184_1 Depth=1
	add	r9, rdi
	add	r10, rdi
	jmp	.LBB184_6
.LBB184_8:
	ret
.Lfunc_end184:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std, .Lfunc_end184-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
