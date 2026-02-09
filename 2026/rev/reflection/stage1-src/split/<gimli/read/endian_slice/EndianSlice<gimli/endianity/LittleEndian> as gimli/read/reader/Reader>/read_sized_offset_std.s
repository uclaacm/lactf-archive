	.section	.text._RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std
	.type	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std,@function
_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std: # @_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	movzx	eax, dl
	mov	cl, 26
	dec	eax
	cmp	eax, 7
	ja	.LBB224_1
# %bb.2:
	lea	r8, [rip + .LJTI224_0]
	movsxd	r9, dword ptr [r8 + 4*rax]
	add	r9, r8
                                        # implicit-def: $rax
	jmp	r9
.LBB224_5:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB224_10
# %bb.6:
	dec	rcx
	lea	rdx, [rax + 1]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	eax, byte ptr [rax]
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi], 82
	ret
.LBB224_9:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB224_10
# %bb.12:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi], 82
	ret
.LBB224_7:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 1
	jbe	.LBB224_10
# %bb.8:
	add	rcx, -2
	lea	rdx, [rax + 2]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	eax, word ptr [rax]
	mov	qword ptr [rdi + 8], rax
	mov	byte ptr [rdi], 82
	ret
.LBB224_3:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 8
	jb	.LBB224_10
# %bb.4:
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
.LBB224_10:
	mov	cl, 19
	xor	edx, edx
	jmp	.LBB224_11
.LBB224_1:
                                        # implicit-def: $rax
.LBB224_11:
	mov	byte ptr [rdi], cl
	movzx	ecx, dl
	mov	dword ptr [rdi + 1], ecx
	mov	byte ptr [rdi + 7], 0
	mov	word ptr [rdi + 5], 0
	mov	qword ptr [rdi + 8], rax
	ret
.Lfunc_end224:
	.size	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std, .Lfunc_end224-_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI224_0:
	.long	.LBB224_5-.LJTI224_0
	.long	.LBB224_7-.LJTI224_0
	.long	.LBB224_11-.LJTI224_0
	.long	.LBB224_9-.LJTI224_0
	.long	.LBB224_11-.LJTI224_0
	.long	.LBB224_11-.LJTI224_0
	.long	.LBB224_11-.LJTI224_0
	.long	.LBB224_3-.LJTI224_0
                                        # -- End function
