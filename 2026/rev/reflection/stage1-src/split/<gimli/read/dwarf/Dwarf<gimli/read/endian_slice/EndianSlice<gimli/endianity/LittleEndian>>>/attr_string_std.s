	.section	.text._RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	.type	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std,@function
_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std: # @_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [r8]
	add	rax, -26
	cmp	rax, 5
	ja	.LBB194_29
# %bb.1:
	lea	r9, [rip + .LJTI194_0]
	movsxd	rax, dword ptr [r9 + 4*rax]
	add	rax, r9
	jmp	rax
.LBB194_2:
	mov	rdx, qword ptr [r8 + 8]
	mov	rcx, qword ptr [rsi + 128]
	mov	rax, qword ptr [rsi + 136]
	cmp	rax, rdx
	jb	.LBB194_3
# %bb.4:
	add	rcx, rdx
	sub	rax, rdx
	je	.LBB194_3
# %bb.5:
	xor	edx, edx
	.p2align	4
.LBB194_6:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rcx + rdx], 0
	je	.LBB194_35
# %bb.7:                                #   in Loop: Header=BB194_6 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB194_6
	jmp	.LBB194_3
.LBB194_8:
	mov	rax, qword ptr [rsi + 144]
	mov	r9, qword ptr [rsi + 152]
	sub	r9, rcx
	jb	.LBB194_30
# %bb.9:
	add	rax, rcx
	movzx	ecx, dl
	imul	rcx, qword ptr [r8 + 8]
	sub	r9, rcx
	jae	.LBB194_10
.LBB194_30:
	mov	byte ptr [rdi + 8], 19
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	dword ptr [rdi + 9], 0
	mov	qword ptr [rdi + 16], rax
	mov	eax, 1
	mov	qword ptr [rdi], rax
	ret
.LBB194_23:
	mov	rax, qword ptr [rsi + 240]
	test	rax, rax
	je	.LBB194_29
# %bb.24:
	mov	rdx, qword ptr [r8 + 8]
	mov	rcx, qword ptr [rax + 144]
	mov	rax, qword ptr [rax + 152]
	cmp	rax, rdx
	jb	.LBB194_3
# %bb.25:
	add	rcx, rdx
	sub	rax, rdx
	je	.LBB194_3
# %bb.26:
	xor	edx, edx
	.p2align	4
.LBB194_27:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rcx + rdx], 0
	je	.LBB194_35
# %bb.28:                               #   in Loop: Header=BB194_27 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB194_27
	jmp	.LBB194_3
.LBB194_29:
	mov	byte ptr [rdi + 8], 72
	mov	eax, 1
	mov	qword ptr [rdi], rax
	ret
.LBB194_17:
	mov	rdx, qword ptr [r8 + 8]
	mov	rcx, qword ptr [rsi + 80]
	mov	rax, qword ptr [rsi + 88]
	cmp	rax, rdx
	jb	.LBB194_3
# %bb.18:
	add	rcx, rdx
	sub	rax, rdx
	je	.LBB194_3
# %bb.19:
	xor	edx, edx
	.p2align	4
.LBB194_20:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rcx + rdx], 0
	je	.LBB194_35
# %bb.21:                               #   in Loop: Header=BB194_20 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB194_20
.LBB194_3:
	mov	byte ptr [rdi + 8], 19
	mov	eax, 1
	mov	qword ptr [rdi + 16], rcx
	mov	qword ptr [rdi], rax
	ret
.LBB194_22:
	movups	xmm0, xmmword ptr [r8 + 8]
	movups	xmmword ptr [rdi + 8], xmm0
	xor	eax, eax
	mov	qword ptr [rdi], rax
	ret
.LBB194_10:
	add	rax, rcx
	cmp	dl, 8
	jne	.LBB194_13
# %bb.11:
	cmp	r9, 7
	jbe	.LBB194_30
# %bb.12:
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	r8d, byte ptr [rax + 6]
	shl	r8d, 16
	or	r8d, edx
	mov	edx, dword ptr [rax]
	shl	r8, 40
	shl	rdx, 8
	or	rdx, r8
	shrd	rdx, rcx, 8
	jmp	.LBB194_15
.LBB194_13:
	cmp	r9, 3
	jbe	.LBB194_30
# %bb.14:
	mov	edx, dword ptr [rax]
.LBB194_15:
	mov	rcx, qword ptr [rsi + 128]
	mov	rax, qword ptr [rsi + 136]
	cmp	rax, rdx
	jb	.LBB194_16
# %bb.31:
	add	rcx, rdx
	sub	rax, rdx
	je	.LBB194_16
# %bb.32:
	xor	edx, edx
.LBB194_33:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rcx + rdx], 0
	je	.LBB194_35
# %bb.34:                               #   in Loop: Header=BB194_33 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB194_33
.LBB194_16:
	mov	byte ptr [rdi + 8], 19
	mov	eax, 1
	mov	rdx, rcx
	mov	qword ptr [rdi + 16], rdx
	mov	qword ptr [rdi], rax
	ret
.LBB194_35:
	mov	qword ptr [rdi + 8], rcx
	xor	eax, eax
	mov	qword ptr [rdi + 16], rdx
	mov	qword ptr [rdi], rax
	ret
.Lfunc_end194:
	.size	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std, .Lfunc_end194-_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI194_0:
	.long	.LBB194_2-.LJTI194_0
	.long	.LBB194_23-.LJTI194_0
	.long	.LBB194_29-.LJTI194_0
	.long	.LBB194_8-.LJTI194_0
	.long	.LBB194_17-.LJTI194_0
	.long	.LBB194_22-.LJTI194_0
                                        # -- End function
