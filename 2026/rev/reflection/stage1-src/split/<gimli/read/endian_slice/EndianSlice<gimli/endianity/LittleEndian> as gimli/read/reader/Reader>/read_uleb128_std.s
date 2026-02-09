	.section	.text._RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std
	.type	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std,@function
_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std: # @_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rdx, qword ptr [rsi]
	mov	r8, qword ptr [rsi + 8]
	test	r8, r8
	je	.LBB240_1
# %bb.5:
	lea	rax, [rdx + r8]
	dec	r8
	inc	rdx
	xor	r9d, r9d
	xor	ecx, ecx
	.p2align	4
.LBB240_6:                              # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rdx - 1]
	cmp	ecx, 63
	jne	.LBB240_8
# %bb.7:                                #   in Loop: Header=BB240_6 Depth=1
	cmp	r10b, 1
	ja	.LBB240_11
.LBB240_8:                              #   in Loop: Header=BB240_6 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	r9, r11
	test	r10b, r10b
	jns	.LBB240_9
# %bb.2:                                #   in Loop: Header=BB240_6 Depth=1
	add	ecx, 7
	inc	rdx
	add	r8, -1
	jb	.LBB240_6
# %bb.3:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], 0
	jmp	.LBB240_4
.LBB240_1:
	mov	rax, rdx
.LBB240_4:
	mov	word ptr [rdi], 19
	mov	word ptr [rdi + 6], 0
	mov	dword ptr [rdi + 2], 0
	mov	qword ptr [rdi + 8], rax
	ret
.LBB240_11:
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], r8
	mov	byte ptr [rdi], 6
	ret
.LBB240_9:
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], r8
	mov	qword ptr [rdi + 8], r9
	mov	byte ptr [rdi], 82
	ret
.Lfunc_end240:
	.size	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std, .Lfunc_end240-_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
