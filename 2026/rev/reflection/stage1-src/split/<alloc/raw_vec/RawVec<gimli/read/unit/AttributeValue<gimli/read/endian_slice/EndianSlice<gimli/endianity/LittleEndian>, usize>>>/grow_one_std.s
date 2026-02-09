	.section	.text.unlikely._RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
	.type	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std,@function
_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std: # @_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	mov	rsi, qword ptr [rdi]
	lea	rax, [rsi + rsi]
	cmp	rax, 5
	mov	r14d, 4
	cmovae	r14, rax
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, rsp
	mov	r8d, 8
	mov	r9d, 24
	mov	rcx, r14
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp], 1
	je	.LBB185_2
# %bb.1:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], r14
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB185_2:
	.cfi_def_cfa_offset 48
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 16]
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Lfunc_end185:
	.size	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std, .Lfunc_end185-_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
