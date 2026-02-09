	.section	.text._RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
	.type	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std,@function
_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std: # @_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rcx, qword ptr [rsi]
	mov	r10, qword ptr [rsi + 8]
	cmp	r10, 3
	jbe	.LBB272_4
# %bb.1:
	lea	r11, [r10 - 4]
	lea	r9, [rcx + 4]
	mov	qword ptr [rsi], r9
	mov	qword ptr [rsi + 8], r11
	mov	eax, dword ptr [rcx]
	mov	r8d, eax
	shr	r8d, 4
	cmp	r8d, 268435455
	jb	.LBB272_6
# %bb.2:
	cmp	eax, -1
	je	.LBB272_8
# %bb.3:
	mov	eax, 16
                                        # implicit-def: $rcx
	jmp	.LBB272_5
.LBB272_4:
	mov	dword ptr [rsp - 16], 0
	mov	byte ptr [rsp - 10], 0
	mov	word ptr [rsp - 12], 0
	mov	eax, dword ptr [rsp - 13]
	shl	rax, 32
	or	rax, 19
.LBB272_5:
	mov	rdx, rcx
	shr	rdx, 8
	mov	qword ptr [rdi], rax
	mov	byte ptr [rdi + 8], cl
	mov	rax, rcx
	shr	rax, 56
	mov	byte ptr [rdi + 15], al
	shr	rcx, 40
	mov	word ptr [rdi + 13], cx
	mov	dword ptr [rdi + 9], edx
	jmp	.LBB272_17
.LBB272_6:
	mov	r8b, 4
	mov	rcx, rax
	sub	r11, rcx
	jae	.LBB272_10
.LBB272_7:
	mov	qword ptr [rdi], 19
	jmp	.LBB272_16
.LBB272_8:
	cmp	r11, 7
	jbe	.LBB272_19
# %bb.9:
	add	r10, -12
	lea	r9, [rcx + 12]
	mov	qword ptr [rsi], r9
	mov	qword ptr [rsi + 8], r10
	movzx	r8d, byte ptr [rcx + 11]
	movzx	r11d, word ptr [rcx + 8]
	movzx	ebx, byte ptr [rcx + 10]
	shl	ebx, 16
	or	ebx, r11d
	mov	ecx, dword ptr [rcx + 4]
	shl	rbx, 40
	shl	rcx, 8
	or	rcx, rbx
	shrd	rcx, r8, 8
	mov	r8b, 8
	mov	r11, r10
	sub	r11, rcx
	jb	.LBB272_7
.LBB272_10:
	lea	r10, [r9 + rcx]
	mov	qword ptr [rsi], r10
	mov	qword ptr [rsi + 8], r11
	cmp	rcx, 1
	jbe	.LBB272_15
# %bb.11:
	movzx	esi, word ptr [r9]
	mov	r10d, esi
	and	r10d, -2
	cmp	r10w, 2
	jne	.LBB272_20
# %bb.12:
	lea	r10, [rcx - 2]
	cmp	eax, -16
	jb	.LBB272_21
# %bb.13:
	cmp	r10, 7
	jbe	.LBB272_28
# %bb.14:
	lea	r11, [rcx - 10]
	lea	r10, [r9 + 10]
	movzx	r14d, byte ptr [r9 + 9]
	movzx	ebx, word ptr [r9 + 6]
	movzx	r15d, byte ptr [r9 + 8]
	shl	r15d, 16
	or	r15d, ebx
	mov	ebx, dword ptr [r9 + 2]
	shl	r15, 40
	shl	rbx, 8
	or	rbx, r15
	shrd	rbx, r14, 8
	jmp	.LBB272_23
.LBB272_15:
	mov	word ptr [rsp - 8], 0
	mov	dword ptr [rsp - 6], 0
	movzx	eax, word ptr [rsp - 7]
	mov	word ptr [rdi], 19
	mov	word ptr [rdi + 2], ax
	mov	dword ptr [rdi + 4], 0
.LBB272_16:
	mov	qword ptr [rdi + 8], r9
.LBB272_17:
	mov	byte ptr [rdi + 41], 3
.LBB272_18:
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB272_19:
	.cfi_def_cfa_offset 40
	mov	eax, 19
	mov	rcx, r9
	jmp	.LBB272_5
.LBB272_20:
	movzx	eax, si
	mov	byte ptr [rdi], 17
	mov	qword ptr [rdi + 8], rax
	jmp	.LBB272_17
.LBB272_21:
	cmp	r10, 3
	jbe	.LBB272_28
# %bb.22:
	lea	r11, [rcx - 6]
	mov	ebx, dword ptr [r9 + 2]
	add	r9, 6
	mov	r10, r9
.LBB272_23:
	test	r11, r11
	je	.LBB272_29
# %bb.24:
	movzx	r9d, byte ptr [r10]
	mov	bpl, 25
	cmp	r9d, 8
	ja	.LBB272_32
# %bb.25:
	mov	r14d, 278
	bt	r14d, r9d
	jae	.LBB272_32
# %bb.26:
	cmp	r11, 1
	jne	.LBB272_30
# %bb.27:
	inc	r10
	mov	word ptr [rdi], 19
	jmp	.LBB272_34
.LBB272_28:
	add	r9, 2
	mov	byte ptr [rdi], 19
	mov	byte ptr [rdi + 7], 0
	mov	word ptr [rdi + 5], 0
	mov	dword ptr [rdi + 1], 0
	jmp	.LBB272_16
.LBB272_29:
	mov	bpl, 19
	xor	r9d, r9d
	jmp	.LBB272_33
.LBB272_30:
	cmp	byte ptr [r10 + 1], 0
	je	.LBB272_36
# %bb.31:
	mov	byte ptr [rdi], 68
	jmp	.LBB272_17
.LBB272_32:
                                        # implicit-def: $r10
.LBB272_33:
	mov	byte ptr [rdi], bpl
	mov	byte ptr [rdi + 1], r9b
.LBB272_34:
	mov	word ptr [rdi + 6], 0
	mov	dword ptr [rdi + 2], 0
.LBB272_35:
	mov	qword ptr [rdi + 8], r10
	jmp	.LBB272_17
.LBB272_36:
	add	r11, -2
	add	r10, 2
	cmp	eax, -16
	setae	al
	shl	al, 3
	add	al, r8b
	add	al, 8
	lea	ebp, [r9 + r9]
	movzx	eax, al
	div	bpl
	movzx	eax, ah
	sub	bpl, al
	xor	r14d, r14d
	test	al, al
	movzx	eax, bpl
	cmove	eax, r14d
	movzx	eax, al
	sub	r11, rax
	jae	.LBB272_38
# %bb.37:
	mov	byte ptr [rdi], 19
	jmp	.LBB272_35
.LBB272_38:
	add	r10, rax
	mov	qword ptr [rdi], r10
	mov	qword ptr [rdi + 8], r11
	mov	qword ptr [rdi + 16], rdx
	mov	qword ptr [rdi + 24], rcx
	mov	qword ptr [rdi + 32], rbx
	mov	byte ptr [rdi + 40], r9b
	mov	byte ptr [rdi + 41], r8b
	mov	word ptr [rdi + 42], si
	jmp	.LBB272_18
.Lfunc_end272:
	.size	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std, .Lfunc_end272-_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read7arangesINtB5_12ArangeHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
