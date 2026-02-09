	.section	.text._RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
	.type	_RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std,@function
_RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std: # @_RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
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
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r10, qword ptr [rsi]
	mov	r8, qword ptr [rsi + 8]
	test	r8, r8
	je	.LBB243_1
# %bb.5:
	mov	r13, rcx
	mov	qword ptr [rsp - 16], rdx       # 8-byte Spill
	lea	rbx, [r10 + r8]
	xor	r11d, r11d
	xor	r9d, r9d
	xor	ecx, ecx
	mov	r14, r8
	.p2align	4
.LBB243_6:                              # =>This Inner Loop Header: Depth=1
	lea	r12, [r14 - 1]
	lea	r15, [r10 + r11]
	inc	r15
	movzx	eax, byte ptr [r10 + r11]
	cmp	rax, 2
	setae	dl
	cmp	ecx, 63
	sete	bpl
	test	bpl, dl
	jne	.LBB243_19
# %bb.7:                                #   in Loop: Header=BB243_6 Depth=1
	mov	edx, eax
	and	edx, 127
	shl	rdx, cl
	or	r9, rdx
	test	al, al
	jns	.LBB243_8
# %bb.2:                                #   in Loop: Header=BB243_6 Depth=1
	add	ecx, 7
	inc	r11
	mov	r14, r12
	cmp	r8, r11
	jne	.LBB243_6
# %bb.3:
	mov	qword ptr [rsi], rbx
	mov	qword ptr [rsi + 8], 0
	mov	al, 19
	jmp	.LBB243_20
.LBB243_1:
	mov	rbx, r10
	mov	al, 19
	jmp	.LBB243_20
.LBB243_19:
	mov	qword ptr [rsi], r15
	mov	qword ptr [rsi + 8], r12
	mov	al, 6
                                        # implicit-def: $rbx
.LBB243_20:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], rbx
.LBB243_31:
	mov	qword ptr [rdi], 46
.LBB243_32:
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
.LBB243_8:
	.cfi_def_cfa_offset 56
	mov	qword ptr [rsi], r15
	mov	qword ptr [rsi + 8], r12
	test	r12, r12
	je	.LBB243_23
# %bb.9:
	mov	qword ptr [rsp - 24], r13       # 8-byte Spill
	mov	r13, -2
	sub	r13, r11
	mov	r12, r11
	not	r12
	add	r14, r10
	add	r14, r11
	lea	rax, [r8 - 1]
	mov	qword ptr [rsp - 8], rax        # 8-byte Spill
	xor	ebx, ebx
	xor	ecx, ecx
	.p2align	4
.LBB243_10:                             # =>This Inner Loop Header: Depth=1
	lea	rax, [r8 + r13]
	lea	rbp, [r10 + r11]
	add	rbp, 2
	movzx	r15d, byte ptr [r10 + r11 + 1]
	cmp	ecx, 63
	jne	.LBB243_12
# %bb.11:                               #   in Loop: Header=BB243_10 Depth=1
	cmp	r15b, 1
	ja	.LBB243_24
.LBB243_12:                             #   in Loop: Header=BB243_10 Depth=1
	movzx	edx, r15b
	mov	r15d, edx
	and	r15d, 127
	shl	r15, cl
	or	rbx, r15
	test	dl, dl
	jns	.LBB243_13
# %bb.21:                               #   in Loop: Header=BB243_10 Depth=1
	add	ecx, 7
	inc	r11
	dec	r12
	dec	r13
	cmp	qword ptr [rsp - 8], r11        # 8-byte Folded Reload
	jne	.LBB243_10
# %bb.22:
	mov	qword ptr [rsi], r14
	mov	qword ptr [rsi + 8], 0
	mov	r15, r14
.LBB243_23:
	mov	al, 19
	jmp	.LBB243_25
.LBB243_24:
	mov	qword ptr [rsi], rbp
	mov	qword ptr [rsi + 8], rax
	mov	al, 6
                                        # implicit-def: $r15
.LBB243_25:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], r15
	jmp	.LBB243_31
.LBB243_13:
	mov	qword ptr [rsi], rbp
	mov	qword ptr [rsi + 8], rax
	test	rax, rax
	je	.LBB243_28
# %bb.14:
	add	r12, r8
	lea	rbp, [r10 + r11]
	inc	rbp
	add	rbp, r12
	sub	r8, r11
	add	r8, -3
	add	r11, r10
	add	r11, 3
	xor	r10d, r10d
	xor	ecx, ecx
	mov	r14, qword ptr [rsp - 24]       # 8-byte Reload
	.p2align	4
.LBB243_15:                             # =>This Inner Loop Header: Depth=1
	movzx	eax, byte ptr [r11 - 1]
	cmp	ecx, 63
	jne	.LBB243_17
# %bb.16:                               #   in Loop: Header=BB243_15 Depth=1
	cmp	al, 1
	ja	.LBB243_29
.LBB243_17:                             #   in Loop: Header=BB243_15 Depth=1
	movzx	eax, al
	mov	edx, eax
	and	edx, 127
	shl	rdx, cl
	or	r10, rdx
	test	al, al
	jns	.LBB243_18
# %bb.26:                               #   in Loop: Header=BB243_15 Depth=1
	add	ecx, 7
	inc	r11
	add	r8, -1
	jb	.LBB243_15
# %bb.27:
	mov	qword ptr [rsi], rbp
	mov	qword ptr [rsi + 8], 0
.LBB243_28:
	mov	al, 19
	jmp	.LBB243_30
.LBB243_29:
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], r8
	mov	al, 6
                                        # implicit-def: $rbp
.LBB243_30:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], rbp
	jmp	.LBB243_31
.LBB243_18:
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 72], xmm0
	mov	qword ptr [rdi], 31
	mov	rax, qword ptr [rsp - 16]       # 8-byte Reload
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rdi + 16], r14
	mov	qword ptr [rdi + 24], 46
	mov	qword ptr [rdi + 48], r9
	mov	qword ptr [rdi + 56], rbx
	mov	qword ptr [rdi + 64], r10
	jmp	.LBB243_32
.Lfunc_end243:
	.size	_RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std, .Lfunc_end243-_RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
