	.section	.text._RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std
	.type	_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std,@function
_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std: # @_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std
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
	sub	rsp, 104
	.cfi_def_cfa_offset 160
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rcx, qword ptr [rsi + 32]
	test	rcx, rcx
	je	.LBB238_4
# %bb.1:
	cmp	dword ptr [rsi + 72], 1
	jne	.LBB238_11
# %bb.2:
	mov	rax, qword ptr [rsi + 40]
	mov	rdx, qword ptr [rsi + 80]
	sub	rax, rdx
	jae	.LBB238_15
# %bb.3:
	mov	eax, 19
	jmp	.LBB238_32
.LBB238_4:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.LBB238_27
.LBB238_5:
	mov	r8, qword ptr [rsi]
	mov	rdx, qword ptr [rsi + 16]
	mov	r11, qword ptr [rsi + 24]
	mov	rcx, qword ptr [rdx + 56]
	xor	r9d, r9d
	cmp	byte ptr [rdx + 73], 8
	sete	r9b
	sub	rcx, qword ptr [rdx + 48]
	lea	r9, [rcx + 8*r9]
	add	r9, r8
	sub	r9, qword ptr [rdx + 40]
	add	r9, 4
	lea	rbx, [r8 + rax]
	dec	rax
	inc	r8
	xor	r10d, r10d
	xor	ecx, ecx
	.p2align	4
.LBB238_6:                              # =>This Inner Loop Header: Depth=1
	movzx	ebp, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB238_8
# %bb.7:                                #   in Loop: Header=BB238_6 Depth=1
	cmp	bpl, 1
	ja	.LBB238_13
.LBB238_8:                              #   in Loop: Header=BB238_6 Depth=1
	movzx	r14d, bpl
	mov	r15d, r14d
	and	r15d, 127
	shl	r15, cl
	or	r10, r15
	test	r14b, r14b
	jns	.LBB238_28
# %bb.9:                                #   in Loop: Header=BB238_6 Depth=1
	add	ecx, 7
	inc	r8
	add	rax, -1
	jb	.LBB238_6
# %bb.10:
	mov	ecx, 19
	mov	r10, rbx
	jmp	.LBB238_14
.LBB238_11:
	mov	rax, qword ptr [rsi + 40]
	mov	rdx, qword ptr [rsi + 48]
	cmp	dword ptr [rdx], 1
	jne	.LBB238_16
# %bb.12:
	mov	r13, qword ptr [rdx + 16]
	mov	rbx, qword ptr [rdx + 24]
	jmp	.LBB238_18
.LBB238_13:
	mov	ecx, 6
                                        # implicit-def: $r10
.LBB238_14:
	mov	qword ptr [rsi], 1
	mov	qword ptr [rsi + 8], 0
	mov	qword ptr [rsi + 88], 0
	mov	qword ptr [rsi + 32], 0
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 8], r10
	jmp	.LBB238_46
.LBB238_15:
	add	rcx, rdx
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], rax
	test	rax, rax
	jne	.LBB238_5
	jmp	.LBB238_27
.LBB238_16:
	mov	rbx, qword ptr [rdx + 8]
	cmp	rbx, 6
	jae	.LBB238_47
# %bb.17:
	add	rdx, 16
	mov	r13, rdx
.LBB238_18:
	lea	rdx, [rsi + 32]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], r13
	mov	qword ptr [rsp + 24], rbx
	mov	qword ptr [rsp + 32], rdx
	test	rbx, rbx
	je	.LBB238_23
# %bb.19:
	mov	qword ptr [rsp + 40], rsi       # 8-byte Spill
	mov	rbp, rdi
	add	r13, 16
	dec	rbx
	lea	r14, [rsp + 72]
	mov	r15, rsp
	lea	r12, [rsp + 48]
	.p2align	4
.LBB238_20:                             # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [r13 - 16]
	movaps	xmmword ptr [rsp + 48], xmm0
	mov	rax, qword ptr [rsp + 32]
	mov	rax, qword ptr [rax + 24]
	mov	edx, dword ptr [rax + 72]
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 72], 46
	je	.LBB238_31
# %bb.21:                               #   in Loop: Header=BB238_20 Depth=1
	mov	qword ptr [rsp + 16], r13
	mov	qword ptr [rsp + 24], rbx
	add	r13, 16
	add	rbx, -1
	jb	.LBB238_20
# %bb.22:
	mov	rcx, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 32]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
.LBB238_23:
	cmp	byte ptr [rdx + 40], 0
	jne	.LBB238_25
# %bb.24:
	mov	rax, rcx
	sub	rax, qword ptr [rdx]
	mov	qword ptr [rdx + 40], 1
	mov	qword ptr [rdx + 48], rax
.LBB238_25:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], rax
	test	rax, rax
	jne	.LBB238_5
.LBB238_27:
	mov	qword ptr [rsi + 32], 0
	mov	qword ptr [rsi + 88], 0
	mov	word ptr [rdi], 82
	jmp	.LBB238_46
.LBB238_28:
	mov	qword ptr [rsi], r8
	mov	qword ptr [rsi + 8], rax
	test	r10, r10
	je	.LBB238_33
# %bb.29:
	lea	rcx, [r10 - 1]
	cmp	rcx, qword ptr [r11 + 16]
	jae	.LBB238_34
# %bb.30:
	imul	rbx, rcx, 112
	add	rbx, qword ptr [r11 + 8]
	jmp	.LBB238_44
.LBB238_31:
	mov	rax, qword ptr [rsp + 80]
	mov	rcx, qword ptr [rsp + 88]
	mov	rdi, rbp
.LBB238_32:
	mov	qword ptr [rdi], rax
	mov	qword ptr [rdi + 8], rcx
	jmp	.LBB238_46
.LBB238_33:
	mov	qword ptr [rsi + 88], -1
	mov	qword ptr [rsi + 32], 0
	jmp	.LBB238_45
.LBB238_34:
	mov	rbx, qword ptr [r11 + 24]
	mov	ecx, 18
	test	rbx, rbx
	je	.LBB238_14
# %bb.35:
	mov	r11, qword ptr [r11 + 32]
.LBB238_36:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB238_37 Depth 2
	movzx	r15d, word ptr [rbx + 1330]
	mov	r12d, r15d
	shl	r12d, 3
	mov	r14, -1
	.p2align	4
.LBB238_37:                             #   Parent Loop BB238_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r12, r12
	je	.LBB238_40
# %bb.38:                               #   in Loop: Header=BB238_37 Depth=2
	cmp	r10, qword ptr [rbx + 8*r14 + 1248]
	seta	bpl
	sbb	bpl, 0
	inc	r14
	add	r12, -8
	cmp	bpl, 1
	je	.LBB238_37
# %bb.39:                               #   in Loop: Header=BB238_36 Depth=1
	movzx	ebp, bpl
	test	ebp, ebp
	jne	.LBB238_41
	jmp	.LBB238_43
.LBB238_40:                             #   in Loop: Header=BB238_36 Depth=1
	mov	r14, r15
.LBB238_41:                             #   in Loop: Header=BB238_36 Depth=1
	sub	r11, 1
	jb	.LBB238_14
# %bb.42:                               #   in Loop: Header=BB238_36 Depth=1
	mov	rbx, qword ptr [rbx + 8*r14 + 1336]
	jmp	.LBB238_36
.LBB238_43:
	imul	rcx, r14, 112
	add	rbx, rcx
.LBB238_44:
	xor	ecx, ecx
	cmp	byte ptr [rbx + 106], 1
	sete	cl
	mov	qword ptr [rsi + 88], rcx
	mov	qword ptr [rsi + 32], r8
	mov	qword ptr [rsi + 40], rax
	mov	qword ptr [rsi + 48], rbx
	mov	qword ptr [rsi + 56], rdx
	mov	qword ptr [rsi + 64], r9
	mov	qword ptr [rsi + 72], 0
.LBB238_45:
	mov	word ptr [rdi], 338
.LBB238_46:
	add	rsp, 104
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
.LBB238_47:
	.cfi_def_cfa_offset 160
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end238:
	.size	_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std, .Lfunc_end238-_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
