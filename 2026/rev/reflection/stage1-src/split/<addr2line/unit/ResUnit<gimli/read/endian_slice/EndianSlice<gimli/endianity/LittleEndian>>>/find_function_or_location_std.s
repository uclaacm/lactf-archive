	.section	.text._RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std
	.type	_RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std,@function
_RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std: # @_RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std
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
	mov	r13, rcx
	mov	rbp, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rsi + 536]
	cmp	al, 83
	jne	.LBB157_1
# %bb.6:
	cmp	dword ptr [r15 + 80], 1
	jne	.LBB157_3
# %bb.7:
	mov	rbx, qword ptr [r15 + 392]
	test	rbx, rbx
	je	.LBB157_8
# %bb.9:
	mov	r12, qword ptr [r15 + 400]
	jmp	.LBB157_10
.LBB157_8:
                                        # implicit-def: $r12
.LBB157_10:
	mov	rax, qword ptr [r15 + 88]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	rax, qword ptr [r15 + 368]
	add	rax, 16
	movups	xmm0, xmmword ptr [r15 + 40]
	movups	xmmword ptr [rsp + 104], xmm0
	mov	qword ptr [rsp + 120], r15
	mov	qword ptr [rsp + 128], rax
	mov	qword ptr [rsp + 136], 0
	mov	qword ptr [rsp + 192], 0
	mov	rdi, rsp
	lea	rsi, [rsp + 104]
	call	_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std
	movzx	edx, byte ptr [rsp]
	cmp	dl, 82
	jne	.LBB157_11
# %bb.12:
	mov	rax, qword ptr [rsp + 136]
	test	rax, rax
	je	.LBB157_13
# %bb.14:
	mov	qword ptr [rsp + 40], r14       # 8-byte Spill
	cmp	word ptr [r15 + 74], 5
	mov	ecx, 8496
	mov	r14d, 118
	cmovb	r14d, ecx
	mov	rcx, qword ptr [rsp + 144]
	mov	rdx, qword ptr [rsp + 152]
	cmp	dword ptr [rdx], 1
	mov	qword ptr [rsp + 56], r13       # 8-byte Spill
	mov	qword ptr [rsp + 48], rbp       # 8-byte Spill
	jne	.LBB157_16
# %bb.15:
	mov	rbp, qword ptr [rdx + 16]
	mov	r13, qword ptr [rdx + 24]
	jmp	.LBB157_18
.LBB157_11:
	movzx	esi, byte ptr [rsp + 1]
	mov	ecx, dword ptr [rsp + 2]
	movzx	eax, word ptr [rsp + 6]
	shl	rax, 32
	or	rax, rcx
	mov	rcx, qword ptr [rsp + 8]
	jmp	.LBB157_33
.LBB157_13:
	mov	dl, 69
                                        # implicit-def: $rcx
                                        # implicit-def: $rax
                                        # implicit-def: $sil
	jmp	.LBB157_33
.LBB157_16:
	mov	r13, qword ptr [rdx + 8]
	cmp	r13, 6
	jae	.LBB157_45
# %bb.17:
	add	rdx, 16
	mov	rbp, rdx
.LBB157_18:
	lea	rdx, [rsp + 136]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], rbp
	mov	qword ptr [rsp + 24], r13
	mov	qword ptr [rsp + 32], rdx
	test	r13, r13
	je	.LBB157_23
# %bb.19:
	dec	r13
	.p2align	4
.LBB157_20:                             # =>This Inner Loop Header: Depth=1
	cmp	r13, -1
	je	.LBB157_21
# %bb.26:                               #   in Loop: Header=BB157_20 Depth=1
	mov	rax, qword ptr [rsp + 32]
	mov	rax, qword ptr [rax + 24]
	mov	edx, dword ptr [rax + 72]
	lea	rdi, [rsp + 64]
	mov	rsi, rsp
	mov	rcx, rbp
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 64]
	cmp	rax, 46
	je	.LBB157_31
# %bb.27:                               #   in Loop: Header=BB157_20 Depth=1
	add	rbp, 16
	movzx	edx, byte ptr [rsp + 72]
	movzx	esi, byte ptr [rsp + 73]
	mov	edi, dword ptr [rsp + 74]
	movzx	ecx, word ptr [rsp + 78]
	movups	xmm0, xmmword ptr [rsp + 80]
	mov	qword ptr [rsp + 16], rbp
	mov	qword ptr [rsp + 24], r13
	dec	r13
	cmp	r14w, word ptr [rsp + 88]
	jne	.LBB157_20
# %bb.28:
	shl	rcx, 32
	or	rcx, rdi
	mov	byte ptr [rsp + 8], dl
	mov	byte ptr [rsp + 9], sil
	mov	dword ptr [rsp + 10], ecx
	shr	rcx, 32
	mov	word ptr [rsp + 14], cx
	mov	qword ptr [rsp], rax
	movups	xmmword ptr [rsp + 16], xmm0
	lea	rdi, [rsp + 64]
	mov	rsi, rsp
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rdi, qword ptr [rsp + 64]
	movzx	edx, byte ptr [rsp + 72]
	movzx	esi, byte ptr [rsp + 73]
	mov	ecx, dword ptr [rsp + 74]
	movzx	eax, word ptr [rsp + 78]
	shl	rax, 32
	or	rax, rcx
	mov	rcx, qword ptr [rsp + 80]
	cmp	rdi, 47
	je	.LBB157_32
# %bb.29:
	mov	qword ptr [rsp], rdi
	mov	byte ptr [rsp + 8], dl
	mov	byte ptr [rsp + 9], sil
	mov	dword ptr [rsp + 10], eax
	shr	rax, 32
	mov	word ptr [rsp + 14], ax
	mov	qword ptr [rsp + 16], rcx
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r14, qword ptr [r13]
	cmp	rdi, 46
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
	jne	.LBB157_34
# %bb.30:
	xor	eax, eax
                                        # implicit-def: $rcx
	jmp	.LBB157_24
.LBB157_21:
	mov	rax, qword ptr [rsp + 32]
	cmp	byte ptr [rax + 40], 0
	jne	.LBB157_23
# %bb.22:
	mov	rcx, qword ptr [rsp]
	sub	rcx, qword ptr [rax]
	mov	qword ptr [rax + 40], 1
	mov	qword ptr [rax + 48], rcx
.LBB157_23:
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r14, qword ptr [r13]
	xor	eax, eax
                                        # implicit-def: $rcx
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
.LBB157_24:
	lock		inc	qword ptr [r14]
	jle	.LBB157_25
# %bb.40:
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 16], rbp
	mov	qword ptr [rsp + 8], r13
	test	r14, r14
	je	.LBB157_41
# %bb.43:
	mov	rdx, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [rsi + 96], rdx
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rsi + 80], rdx
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rsi + 88], rdx
	mov	qword ptr [rsi], r14
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	qword ptr [rsi + 8], rdx
	mov	qword ptr [rsi + 16], rbx
	mov	qword ptr [rsi + 24], r12
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], rcx
	mov	qword ptr [rsi + 48], r15
	mov	qword ptr [rsi + 56], r13
	mov	qword ptr [rsi + 64], r15
	mov	qword ptr [rsi + 72], r15
	jmp	.LBB157_44
.LBB157_41:
	mov	rcx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rax, rcx
	and	rax, -256
	mov	r14, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB157_42
.LBB157_31:
	movzx	edx, byte ptr [rsp + 72]
	movzx	esi, byte ptr [rsp + 73]
	mov	ecx, dword ptr [rsp + 74]
	movzx	eax, word ptr [rsp + 78]
	shl	rax, 32
	or	rax, rcx
	mov	rcx, qword ptr [rsp + 80]
.LBB157_32:
	mov	r14, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
.LBB157_33:
	movzx	edx, dl
	movzx	esi, sil
	shl	esi, 8
	or	rsi, rdx
	shl	rax, 16
	or	rax, rsi
.LBB157_36:
	mov	qword ptr [rsp + 104], rax
	mov	qword ptr [rsp + 112], rcx
	movzx	eax, byte ptr [r15 + 536]
	cmp	al, 83
	je	.LBB157_37
.LBB157_1:
	cmp	al, 82
	jne	.LBB157_2
.LBB157_4:
	mov	r12, qword ptr [r15 + 544]
	test	r12, r12
	je	.LBB157_38
# %bb.5:
	mov	rbx, qword ptr [r12 + 448]
	add	rbx, 16
	mov	ecx, 2
	jmp	.LBB157_39
.LBB157_38:
	mov	rbx, qword ptr [r13]
	add	rbx, 16
	xor	ecx, ecx
	mov	r12, r15
	jmp	.LBB157_39
.LBB157_3:
	lea	rdi, [r15 + 536]
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2T_9endianity12LittleEndianEEEENtB2R_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB29_INtB29_7ResUnitB2M_E14dwarf_and_units0_0E0zECs3bNtqN8jaZB_3std
	cmp	byte ptr [r15 + 536], 82
	je	.LBB157_4
.LBB157_2:
	mov	rbx, qword ptr [r15 + 536]
	mov	r12, qword ptr [r15 + 544]
	mov	ecx, 3
.LBB157_39:
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 16], rbp
	mov	qword ptr [rsp + 8], r13
	xor	eax, eax
.LBB157_42:
	movzx	ecx, cl
	or	rcx, rax
	mov	qword ptr [rsp + 104], rcx
	mov	qword ptr [rsp + 112], rbx
	mov	qword ptr [rsp + 120], r12
	lea	rdi, [r14 + 8]
	mov	rsi, rsp
	lea	rdx, [rsp + 104]
	call	_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std
	mov	qword ptr [r14], 0
.LBB157_44:
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
.LBB157_34:
	.cfi_def_cfa_offset 256
	lea	rsi, [r14 + 16]
	mov	rcx, qword ptr [r15 + 416]
	movzx	edx, byte ptr [r15 + 73]
	lea	rdi, [rsp + 104]
	mov	r8, rsp
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 112]
	mov	rcx, qword ptr [rsp + 120]
	cmp	dword ptr [rsp + 104], 1
	jne	.LBB157_24
# %bb.35:
	mov	r14, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB157_36
.LBB157_37:
	lea	rdi, [r15 + 536]
	lea	rsi, [rsp + 104]
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtB7_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2T_9endianity12LittleEndianEEEENtB2R_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB29_INtB29_7ResUnitB2M_E14dwarf_and_units2_0E0zECs3bNtqN8jaZB_3std
	movzx	eax, byte ptr [r15 + 536]
	cmp	al, 82
	je	.LBB157_4
	jmp	.LBB157_2
.LBB157_45:
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, r13
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB157_25:
	ud2
.Lfunc_end157:
	.size	_RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std, .Lfunc_end157-_RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
