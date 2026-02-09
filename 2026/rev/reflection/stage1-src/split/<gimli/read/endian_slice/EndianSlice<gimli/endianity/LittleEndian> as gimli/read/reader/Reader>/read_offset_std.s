	.section	.text._RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std
	.type	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std,@function
_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std: # @_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	cmp	dl, 8
	jne	.LBB225_4
# %bb.1:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 7
	jbe	.LBB225_2
# %bb.3:
	add	rcx, -8
	lea	rdx, [rax + 8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi], 82
	ret
.LBB225_4:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB225_5
# %bb.6:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
	mov	cl, 82
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi], cl
	ret
.LBB225_2:
	mov	byte ptr [rdi], 19
	mov	byte ptr [rdi + 7], 0
	mov	word ptr [rdi + 5], 0
	mov	dword ptr [rdi + 1], 0
	mov	qword ptr [rdi + 8], rax
	ret
.LBB225_5:
	mov	dword ptr [rdi + 1], 0
	mov	byte ptr [rdi + 7], 0
	mov	word ptr [rdi + 5], 0
	mov	cl, 19
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi], cl
	ret
.Lfunc_end225:
	.size	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std, .Lfunc_end225-_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
