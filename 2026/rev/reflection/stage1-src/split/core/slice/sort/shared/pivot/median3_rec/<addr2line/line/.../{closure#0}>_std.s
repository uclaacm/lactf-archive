	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
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
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdx
	mov	rbx, rsi
	cmp	rcx, 8
	jb	.LBB203_2
# %bb.1:
	shr	rcx, 3
	mov	r15, rcx
	shl	r15, 7
	lea	rsi, [rdi + r15]
	imul	r12, rcx, 224
	lea	rdx, [rdi + r12]
	mov	r13, rcx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	mov	rbp, rax
	lea	rsi, [rbx + r15]
	lea	rdx, [rbx + r12]
	mov	rdi, rbx
	mov	rcx, r13
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	mov	rbx, rax
	add	r15, r14
	add	r12, r14
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	mov	rdi, rbp
	mov	r14, rax
.LBB203_2:
	mov	rax, qword ptr [rdi + 16]
	mov	rcx, qword ptr [rbx + 16]
	cmp	rax, rcx
	setb	dl
	mov	rsi, qword ptr [r14 + 16]
	cmp	rax, rsi
	setb	al
	xor	al, dl
	cmp	rcx, rsi
	setb	cl
	xor	cl, dl
	cmovne	rbx, r14
	test	al, al
	cmovne	rbx, rdi
	mov	rax, rbx
	add	rsp, 8
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
.Lfunc_end203:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std, .Lfunc_end203-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB14_11sort_by_keyyNCINvMs_B16_NtB16_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
