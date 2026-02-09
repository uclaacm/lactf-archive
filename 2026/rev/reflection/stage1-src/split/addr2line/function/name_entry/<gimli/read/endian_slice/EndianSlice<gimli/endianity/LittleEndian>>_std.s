	.section	.text._RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
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
	sub	rsp, 200
	.cfi_def_cfa_offset 256
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rcx
	mov	r15, rdx
	mov	r13, qword ptr [rcx + 48]
	mov	rcx, qword ptr [rcx + 56]
	movzx	eax, byte ptr [r14 + 73]
	xor	edx, edx
	cmp	al, 8
	sete	dl
	mov	r10, rcx
	sub	r10, r13
	lea	r11, [r10 + 8*rdx]
	add	r11, 4
	mov	r10, r8
	sub	r10, r11
	setae	r11b
	cmp	r10, r13
	setb	r10b
	test	r11b, r10b
	je	.LBB213_7
# %bb.1:
	mov	r12, qword ptr [r14 + 368]
	lea	rdx, [8*rdx + 4]
	add	r13, qword ptr [r14 + 40]
	lea	r10, [r12 + 16]
	mov	qword ptr [rsp + 120], r14
	mov	qword ptr [rsp + 128], r10
	mov	qword ptr [rsp + 136], 0
	mov	r10, r8
	not	r10
	add	r10, rdx
	add	r10, rcx
	sub	r8, rdx
	sub	r8, rcx
	xor	edx, edx
	xor	ecx, ecx
	.p2align	4
.LBB213_2:                              # =>This Inner Loop Header: Depth=1
	movzx	r11d, byte ptr [r13 + r8]
	cmp	ecx, 63
	jne	.LBB213_4
# %bb.3:                                #   in Loop: Header=BB213_2 Depth=1
	cmp	r11b, 1
	ja	.LBB213_8
.LBB213_4:                              #   in Loop: Header=BB213_2 Depth=1
	movzx	r11d, r11b
	mov	ebx, r11d
	and	ebx, 127
	shl	rbx, cl
	or	rdx, rbx
	test	r11b, r11b
	jns	.LBB213_12
# %bb.5:                                #   in Loop: Header=BB213_2 Depth=1
	add	ecx, 7
	dec	r10
	inc	r8
	jne	.LBB213_2
# %bb.6:
	mov	al, 19
	jmp	.LBB213_9
.LBB213_7:
	mov	qword ptr [rdi + 8], 59
	mov	qword ptr [rdi + 16], r14
	jmp	.LBB213_10
.LBB213_8:
	mov	al, 6
.LBB213_9:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], r13
.LBB213_10:
	mov	qword ptr [rdi], 1
.LBB213_11:
	add	rsp, 200
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
.LBB213_12:
	.cfi_def_cfa_offset 256
	lea	rcx, [r8 + r13]
	inc	rcx
	mov	qword ptr [rsp + 104], rcx
	mov	qword ptr [rsp + 112], r10
	test	rdx, rdx
	je	.LBB213_18
# %bb.13:
	lea	rcx, [rdx - 1]
	cmp	rcx, qword ptr [r12 + 32]
	jae	.LBB213_19
# %bb.14:
	imul	rcx, rcx, 112
	add	rcx, qword ptr [r12 + 24]
	cmp	byte ptr [rcx + 106], 1
	jne	.LBB213_16
.LBB213_15:
	mov	qword ptr [rsp + 136], 1
.LBB213_16:
	cmp	dword ptr [rcx], 1
	jne	.LBB213_28
# %bb.17:
	mov	r13, qword ptr [rcx + 16]
	mov	r12, qword ptr [rcx + 24]
	test	r12, r12
	jne	.LBB213_30
	jmp	.LBB213_49
.LBB213_18:
	mov	byte ptr [rdi + 8], 58
	jmp	.LBB213_10
.LBB213_19:
	mov	rcx, qword ptr [r12 + 40]
	test	rcx, rcx
	je	.LBB213_47
# %bb.20:
	mov	r12, qword ptr [r12 + 48]
.LBB213_21:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB213_22 Depth 2
	movzx	ebx, word ptr [rcx + 1330]
	mov	r10d, ebx
	shl	r10d, 3
	mov	r8, -1
	.p2align	4
.LBB213_22:                             #   Parent Loop BB213_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r10, r10
	je	.LBB213_25
# %bb.23:                               #   in Loop: Header=BB213_22 Depth=2
	cmp	rdx, qword ptr [rcx + 8*r8 + 1248]
	seta	r11b
	sbb	r11b, 0
	inc	r8
	add	r10, -8
	cmp	r11b, 1
	je	.LBB213_22
# %bb.24:                               #   in Loop: Header=BB213_21 Depth=1
	movzx	r10d, r11b
	test	r10d, r10d
	jne	.LBB213_26
	jmp	.LBB213_43
.LBB213_25:                             #   in Loop: Header=BB213_21 Depth=1
	mov	r8, rbx
.LBB213_26:                             #   in Loop: Header=BB213_21 Depth=1
	sub	r12, 1
	jb	.LBB213_47
# %bb.27:                               #   in Loop: Header=BB213_21 Depth=1
	mov	rcx, qword ptr [rcx + 8*r8 + 1336]
	jmp	.LBB213_21
.LBB213_28:
	mov	r12, qword ptr [rcx + 8]
	cmp	r12, 6
	jae	.LBB213_52
# %bb.29:
	add	rcx, 16
	mov	r13, rcx
	test	r12, r12
	je	.LBB213_49
.LBB213_30:
	mov	dword ptr [rsp + 28], esi       # 4-byte Spill
	mov	qword ptr [rsp + 80], r9        # 8-byte Spill
	mov	qword ptr [rsp + 16], rdi       # 8-byte Spill
	shl	r12, 4
	mov	rcx, qword ptr [r14 + 416]
	mov	qword ptr [rsp + 48], rcx       # 8-byte Spill
	mov	ecx, 46
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 32], 0         # 8-byte Folded Spill
	lea	rbx, [rsp + 144]
	lea	rbp, [rsp + 176]
	movzx	eax, al
	mov	dword ptr [rsp + 12], eax       # 4-byte Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jmp	.LBB213_35
	.p2align	4
.LBB213_31:                             #   in Loop: Header=BB213_35 Depth=1
	cmp	eax, 3
	je	.LBB213_41
# %bb.32:                               #   in Loop: Header=BB213_35 Depth=1
	cmp	eax, 49
	jne	.LBB213_34
.LBB213_33:                             #   in Loop: Header=BB213_35 Depth=1
	mov	rdi, rbp
	mov	rsi, rbx
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 176]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 184]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
.LBB213_34:                             #   in Loop: Header=BB213_35 Depth=1
	add	r13, 16
	add	r12, -16
	je	.LBB213_45
.LBB213_35:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsp + 120]
	mov	edx, dword ptr [rax + 72]
	mov	rdi, rbx
	lea	rsi, [rsp + 104]
	mov	rcx, r13
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 144], 46
	je	.LBB213_44
# %bb.36:                               #   in Loop: Header=BB213_35 Depth=1
	movzx	eax, word ptr [rsp + 168]
	cmp	eax, 70
	jle	.LBB213_31
# %bb.37:                               #   in Loop: Header=BB213_35 Depth=1
	cmp	eax, 71
	je	.LBB213_33
# %bb.38:                               #   in Loop: Header=BB213_35 Depth=1
	cmp	eax, 8199
	je	.LBB213_40
# %bb.39:                               #   in Loop: Header=BB213_35 Depth=1
	cmp	eax, 110
	jne	.LBB213_34
.LBB213_40:                             #   in Loop: Header=BB213_35 Depth=1
	mov	rdi, rbp
	mov	rsi, rbx
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	lea	rdi, [rsp + 56]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 12]       # 4-byte Reload
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r8, rbp
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 56], 0
	jne	.LBB213_34
	jmp	.LBB213_50
.LBB213_41:                             #   in Loop: Header=BB213_35 Depth=1
	mov	rdi, rbp
	mov	rsi, rbx
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	lea	rdi, [rsp + 56]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 12]       # 4-byte Reload
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r8, rbp
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 56], 0
	jne	.LBB213_34
# %bb.42:                               #   in Loop: Header=BB213_35 Depth=1
	mov	rax, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 64]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	jmp	.LBB213_34
.LBB213_43:
	imul	rdx, r8, 112
	add	rcx, rdx
	cmp	byte ptr [rcx + 106], 1
	je	.LBB213_15
	jmp	.LBB213_16
.LBB213_44:
	movups	xmm0, xmmword ptr [rsp + 152]
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	movups	xmmword ptr [rax + 8], xmm0
	mov	qword ptr [rax], 1
	jmp	.LBB213_11
.LBB213_45:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	test	rcx, rcx
	je	.LBB213_48
# %bb.46:
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp + 88]       # 8-byte Reload
	mov	qword ptr [rax + 16], rcx
	mov	qword ptr [rax], 0
	jmp	.LBB213_11
.LBB213_47:
	mov	al, 18
	mov	r13, rdx
	jmp	.LBB213_9
.LBB213_48:
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	cmp	rsi, 46
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	mov	ecx, dword ptr [rsp + 28]       # 4-byte Reload
	mov	r10, qword ptr [rsp + 256]
	jne	.LBB213_51
.LBB213_49:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	jmp	.LBB213_11
.LBB213_50:
	movups	xmm0, xmmword ptr [rsp + 64]
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	movups	xmmword ptr [rax + 8], xmm0
	mov	qword ptr [rax], 0
	jmp	.LBB213_11
.LBB213_51:
	dec	r10
	movzx	ecx, cl
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	r8, r15
	mov	r9, r14
	push	r10
	.cfi_adjust_cfa_offset 8
	push	rax
	.cfi_adjust_cfa_offset 8
	call	_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	add	rsp, 16
	.cfi_adjust_cfa_offset -16
	jmp	.LBB213_11
.LBB213_52:
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, r12
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end213:
	.size	_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end213-_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
