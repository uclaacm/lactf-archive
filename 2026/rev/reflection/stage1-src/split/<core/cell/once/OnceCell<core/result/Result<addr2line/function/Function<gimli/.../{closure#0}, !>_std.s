	.section	.text.unlikely._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std
	.type	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std,@function
_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std: # @_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std
.Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception39
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
	sub	rsp, 296
	.cfi_def_cfa_offset 352
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 16]
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 64]
	mov	r14, qword ptr [rdi + 8]
	mov	rdx, qword ptr [r14 + 48]
	mov	rcx, qword ptr [r14 + 56]
	movzx	eax, byte ptr [r14 + 73]
	xor	r8d, r8d
	cmp	al, 8
	sete	r8b
	mov	r9, rcx
	sub	r9, rdx
	lea	r10, [r9 + 8*r8]
	add	r10, 4
	mov	r9, r15
	sub	r9, r10
	setae	r11b
	mov	r10, rdx
	sub	r10, r9
	seta	bpl
	test	r11b, bpl
	mov	qword ptr [rsp + 240], r15      # 8-byte Spill
	je	.LBB205_1
# %bb.7:
	mov	r11, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rsi + 24]
	movzx	ebp, byte ptr [r11]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rsp + 24], rdi       # 8-byte Spill
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsp + 232], rsi      # 8-byte Spill
	mov	rsi, qword ptr [r14 + 368]
	lea	r11, [8*r8 + 4]
	lea	rdi, [rsi + 16]
	mov	r8, qword ptr [r14 + 40]
	add	r9, r8
	mov	qword ptr [rsp + 248], r9
	mov	qword ptr [rsp + 256], r10
	mov	qword ptr [rsp + 264], r14
	mov	qword ptr [rsp + 272], rdi
	mov	qword ptr [rsp + 280], 0
	add	rdx, r8
	mov	rdi, r15
	not	rdi
	add	rdi, r11
	add	rdi, rcx
	mov	r8, r15
	sub	r8, r11
	sub	r8, rcx
	xor	r12d, r12d
	xor	ecx, ecx
	.p2align	4
.LBB205_8:                              # =>This Inner Loop Header: Depth=1
	movzx	r9d, byte ptr [rdx + r8]
	cmp	ecx, 63
	jne	.LBB205_11
# %bb.9:                                #   in Loop: Header=BB205_8 Depth=1
	cmp	r9b, 1
	ja	.LBB205_10
.LBB205_11:                             #   in Loop: Header=BB205_8 Depth=1
	movzx	r9d, r9b
	mov	r10d, r9d
	and	r10d, 127
	shl	r10, cl
	or	r12, r10
	test	r9b, r9b
	jns	.LBB205_12
# %bb.4:                                #   in Loop: Header=BB205_8 Depth=1
	add	ecx, 7
	dec	rdi
	inc	r8
	jne	.LBB205_8
# %bb.5:
	mov	cl, 19
	jmp	.LBB205_6
.LBB205_1:
	mov	dl, 59
	xor	r15d, r15d
	xor	ebp, ebp
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $r13
	mov	r12, r14
	xor	r14d, r14d
	jmp	.LBB205_2
.LBB205_10:
	mov	cl, 6
.LBB205_6:
	xor	r15d, r15d
	xor	ebp, ebp
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $r13
	mov	r12, rdx
	xor	r14d, r14d
	mov	rdx, rcx
.LBB205_2:
	shl	r15, 16
	movzx	eax, bpl
	shl	eax, 8
	or	rax, r15
	movzx	ecx, dl
	or	rcx, rax
	cmp	dword ptr [rbx], 1
	je	.LBB205_3
# %bb.88:
	mov	qword ptr [rbx], 1
	lea	rax, [rbx + 8]
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 16], rcx
	mov	qword ptr [rbx + 24], r12
	mov	qword ptr [rbx + 32], r13
	mov	rcx, qword ptr [rsp + 240]      # 8-byte Reload
	mov	qword ptr [rbx + 40], rcx
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rbx + 48], rcx
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rbx + 56], rcx
	add	rsp, 296
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
.LBB205_12:
	.cfi_def_cfa_offset 352
	lea	rcx, [rdx + r8]
	inc	rcx
	mov	qword ptr [rsp + 248], rcx
	mov	qword ptr [rsp + 256], rdi
	test	r12, r12
	je	.LBB205_89
# %bb.13:
	lea	rcx, [r12 - 1]
	cmp	rcx, qword ptr [rsi + 32]
	jae	.LBB205_14
# %bb.24:
	imul	rcx, rcx, 112
	add	rcx, qword ptr [rsi + 24]
	cmp	byte ptr [rcx + 106], 1
	jne	.LBB205_28
.LBB205_27:
	mov	qword ptr [rsp + 280], 1
.LBB205_28:
	cmp	dword ptr [rcx], 1
	mov	byte ptr [rsp + 15], bpl        # 1-byte Spill
	jne	.LBB205_30
# %bb.29:
	mov	rbp, qword ptr [rcx + 16]
	mov	r12, qword ptr [rcx + 24]
	test	r12, r12
	je	.LBB205_33
.LBB205_41:
	shl	r12, 4
	mov	rcx, qword ptr [r14 + 416]
	mov	qword ptr [rsp + 224], rcx      # 8-byte Spill
	movzx	eax, al
	mov	dword ptr [rsp + 44], eax       # 4-byte Spill
	movzx	eax, byte ptr [rsp + 15]        # 1-byte Folded Reload
	mov	dword ptr [rsp + 100], eax      # 4-byte Spill
	xor	r15d, r15d
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jmp	.LBB205_42
	.p2align	4
.LBB205_70:                             #   in Loop: Header=BB205_42 Depth=1
	cmp	eax, 3
	je	.LBB205_80
# %bb.71:                               #   in Loop: Header=BB205_42 Depth=1
	cmp	eax, 49
	jne	.LBB205_82
.LBB205_72:                             #   in Loop: Header=BB205_42 Depth=1
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	je	.LBB205_73
.LBB205_82:                             #   in Loop: Header=BB205_42 Depth=1
	add	r15, 16
	cmp	r12, r15
	je	.LBB205_34
.LBB205_42:                             # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [rbp + r15]
	movaps	xmmword ptr [rsp + 48], xmm0
	mov	rax, qword ptr [rsp + 264]
	mov	edx, dword ptr [rax + 72]
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 104]
	lea	rsi, [rsp + 248]
	lea	rcx, [rsp + 48]
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 104], 46
	je	.LBB205_43
# %bb.69:                               #   in Loop: Header=BB205_42 Depth=1
	movzx	eax, word ptr [rsp + 128]
	cmp	eax, 70
	jle	.LBB205_70
# %bb.75:                               #   in Loop: Header=BB205_42 Depth=1
	cmp	eax, 71
	je	.LBB205_72
# %bb.76:                               #   in Loop: Header=BB205_42 Depth=1
	cmp	eax, 8199
	je	.LBB205_78
# %bb.77:                               #   in Loop: Header=BB205_42 Depth=1
	cmp	eax, 110
	jne	.LBB205_82
.LBB205_78:                             #   in Loop: Header=BB205_42 Depth=1
	.cfi_escape 0x2e, 0x00
	lea	r13, [rsp + 48]
	mov	rdi, r13
	lea	rsi, [rsp + 104]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 72]
	mov	rsi, qword ptr [rsp + 24]       # 8-byte Reload
	mov	edx, dword ptr [rsp + 44]       # 4-byte Reload
	mov	rcx, qword ptr [rsp + 224]      # 8-byte Reload
	mov	r8, r13
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 72], 0
	jne	.LBB205_82
# %bb.79:                               #   in Loop: Header=BB205_42 Depth=1
	mov	rax, qword ptr [rsp + 88]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB205_82
.LBB205_80:                             #   in Loop: Header=BB205_42 Depth=1
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	jne	.LBB205_82
# %bb.81:                               #   in Loop: Header=BB205_42 Depth=1
	.cfi_escape 0x2e, 0x00
	lea	r13, [rsp + 48]
	mov	rdi, r13
	lea	rsi, [rsp + 104]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 72]
	mov	rsi, qword ptr [rsp + 24]       # 8-byte Reload
	mov	edx, dword ptr [rsp + 44]       # 4-byte Reload
	mov	rcx, qword ptr [rsp + 224]      # 8-byte Reload
	mov	r8, r13
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 72], 0
	mov	rdx, qword ptr [rsp + 288]      # 8-byte Reload
	cmove	rdx, qword ptr [rsp + 88]
	mov	rax, qword ptr [rsp + 80]
	mov	ecx, 0
	cmovne	rax, rcx
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	qword ptr [rsp + 288], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	jmp	.LBB205_82
.LBB205_73:                             #   in Loop: Header=BB205_42 Depth=1
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 48]
	lea	rsi, [rsp + 104]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 56]
	.cfi_escape 0x2e, 0x10
	lea	rdi, [rsp + 72]
	mov	ecx, dword ptr [rsp + 100]      # 4-byte Reload
	mov	r8, qword ptr [rsp + 24]        # 8-byte Reload
	mov	r9, r14
	push	16
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rsp + 240]           # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	call	_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	add	rsp, 16
	.cfi_adjust_cfa_offset -16
	mov	rax, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 88]
	cmp	dword ptr [rsp + 72], 1
	je	.LBB205_83
# %bb.74:                               #   in Loop: Header=BB205_42 Depth=1
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	jmp	.LBB205_82
.LBB205_14:
	mov	rcx, qword ptr [rsi + 40]
	test	rcx, rcx
	je	.LBB205_15
# %bb.16:
	mov	rdx, qword ptr [rsi + 48]
.LBB205_17:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB205_18 Depth 2
	movzx	edi, word ptr [rcx + 1330]
	mov	r8d, edi
	shl	r8d, 3
	mov	rsi, -1
	.p2align	4
.LBB205_18:                             #   Parent Loop BB205_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r8, r8
	je	.LBB205_19
# %bb.20:                               #   in Loop: Header=BB205_18 Depth=2
	cmp	r12, qword ptr [rcx + 8*rsi + 1248]
	seta	r9b
	sbb	r9b, 0
	inc	rsi
	add	r8, -8
	cmp	r9b, 1
	je	.LBB205_18
# %bb.21:                               #   in Loop: Header=BB205_17 Depth=1
	movzx	edi, r9b
	test	edi, edi
	je	.LBB205_25
	jmp	.LBB205_22
.LBB205_19:                             #   in Loop: Header=BB205_17 Depth=1
	mov	rsi, rdi
.LBB205_22:                             #   in Loop: Header=BB205_17 Depth=1
	sub	rdx, 1
	jb	.LBB205_15
# %bb.23:                               #   in Loop: Header=BB205_17 Depth=1
	mov	rcx, qword ptr [rcx + 8*rsi + 1336]
	jmp	.LBB205_17
.LBB205_30:
	mov	r12, qword ptr [rcx + 8]
	cmp	r12, 6
	jae	.LBB205_90
# %bb.31:
	add	rcx, 16
	mov	rbp, rcx
	test	r12, r12
	jne	.LBB205_41
.LBB205_33:
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB205_34:
	mov	rax, qword ptr [rsp + 280]
	mov	qword ptr [rsp + 184], rax
	movups	xmm0, xmmword ptr [rsp + 248]
	movups	xmm1, xmmword ptr [rsp + 264]
	movups	xmmword ptr [rsp + 168], xmm1
	movups	xmmword ptr [rsp + 152], xmm0
	mov	qword ptr [rsp + 104], 0
	mov	qword ptr [rsp + 112], 8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 120], xmm0
	mov	qword ptr [rsp + 136], 8
	mov	qword ptr [rsp + 144], 0
	movzx	eax, byte ptr [rsp + 15]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 216], al
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rsp + 192], rax
	mov	qword ptr [rsp + 200], r14
	mov	rax, qword ptr [rsp + 232]      # 8-byte Reload
	mov	qword ptr [rsp + 208], rax
.Ltmp915:
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 48]
	lea	rsi, [rsp + 104]
	xor	edx, edx
	xor	ecx, ecx
	call	_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std
.Ltmp916:
# %bb.35:
	movzx	eax, byte ptr [rsp + 48]
	cmp	al, 82
	jne	.LBB205_36
# %bb.44:
	mov	rsi, qword ptr [rsp + 144]
	cmp	rsi, 2
	jae	.LBB205_45
.LBB205_48:
	mov	rax, qword ptr [rsp + 104]
	mov	r15, qword ptr [rsp + 112]
	mov	rcx, qword ptr [rsp + 120]
	cmp	rax, rcx
	jbe	.LBB205_49
# %bb.50:
	test	rcx, rcx
	je	.LBB205_51
# %bb.54:
	shl	rax, 4
	lea	rsi, [rax + 2*rax]
	mov	rbp, rcx
	mov	rax, rcx
	shl	rax, 4
	lea	r12, [rax + 2*rax]
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	mov	rdx, r12
	call	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	mov	r14, rax
	test	rax, rax
	jne	.LBB205_52
# %bb.55:
.Ltmp920:
	.cfi_escape 0x2e, 0x00
	mov	rdi, r12
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp921:
# %bb.56:
.LBB205_25:
	imul	rdx, rsi, 112
	add	rcx, rdx
	cmp	byte ptr [rcx + 106], 1
	je	.LBB205_27
	jmp	.LBB205_28
.LBB205_36:
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	movzx	ebp, byte ptr [rsp + 49]
	mov	r15d, dword ptr [rsp + 50]
	movzx	r14d, word ptr [rsp + 54]
	mov	r12, qword ptr [rsp + 56]
	cmp	qword ptr [rsp + 104], 0
	je	.LBB205_38
# %bb.37:
	mov	rdi, qword ptr [rsp + 112]
	.cfi_escape 0x2e, 0x00
	call	qword ptr [rip + free@GOTPCREL]
.LBB205_38:
	shl	r14, 32
	cmp	qword ptr [rsp + 128], 0
	je	.LBB205_40
# %bb.39:
	mov	rdi, qword ptr [rsp + 136]
	.cfi_escape 0x2e, 0x00
	call	qword ptr [rip + free@GOTPCREL]
.LBB205_40:
	or	r15, r14
	xor	r14d, r14d
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $r13
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	jmp	.LBB205_2
.LBB205_43:
	mov	rcx, qword ptr [rsp + 112]
	mov	rax, qword ptr [rsp + 120]
.LBB205_84:
	mov	ebp, ecx
	shr	ebp, 8
	mov	r15, rcx
	shr	r15, 16
	mov	rdx, rcx
	xor	r14d, r14d
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $r13
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	r12, rax
	jmp	.LBB205_2
.LBB205_15:
	xor	r15d, r15d
	xor	ebp, ebp
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $r13
	xor	r14d, r14d
	mov	dl, 18
	jmp	.LBB205_2
.LBB205_49:
	mov	rbp, rcx
	mov	r14, r15
	jmp	.LBB205_52
.LBB205_51:
	mov	rbp, rcx
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	mov	r14d, 8
.LBB205_52:
	mov	rsi, qword ptr [rsp + 128]
	mov	r15, qword ptr [rsp + 136]
	mov	r13, qword ptr [rsp + 144]
	cmp	rsi, r13
	jbe	.LBB205_53
# %bb.58:
	test	r13, r13
	je	.LBB205_59
# %bb.61:
	shl	rsi, 5
	mov	rdx, r13
	shl	rdx, 5
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	mov	qword ptr [rsp + 24], rdx       # 8-byte Spill
	call	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	mov	r12, rax
	test	rax, rax
	jne	.LBB205_60
# %bb.62:
.Ltmp923:
	.cfi_escape 0x2e, 0x00
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp924:
# %bb.63:
.LBB205_53:
	mov	r12, r15
	jmp	.LBB205_60
.LBB205_59:
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	mov	r12d, 8
.LBB205_60:
	mov	rdx, rbp
	shr	ebp, 8
	mov	r15, rdx
	shr	r15, 16
	jmp	.LBB205_2
.LBB205_83:
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB205_84
.LBB205_90:
	.cfi_escape 0x2e, 0x00
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, r12
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB205_45:
	mov	rdi, qword ptr [rsp + 136]
	cmp	rsi, 21
	jae	.LBB205_46
# %bb.47:
	.cfi_escape 0x2e, 0x00
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_7sort_byNCNvMs1_B1o_INtB1o_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3F_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
	jmp	.LBB205_48
.LBB205_3:
	add	rbx, 8
	mov	qword ptr [rsp + 104], rbx
	mov	qword ptr [rsp + 112], r14
	mov	qword ptr [rsp + 120], rcx
	mov	qword ptr [rsp + 128], r12
	mov	qword ptr [rsp + 136], r13
	mov	rax, qword ptr [rsp + 240]      # 8-byte Reload
	mov	qword ptr [rsp + 144], rax
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rsp + 152], rax
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rsp + 160], rax
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 104]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1Z_9endianity12LittleEndianEENtB1X_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.0]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.2]
	mov	esi, 29
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB205_89:
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.258]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB205_46:
.Ltmp917:
	.cfi_escape 0x2e, 0x00
	call	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function22InlinedFunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_7sort_byNCNvMs1_B11_INtB11_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parse0E0INtNtB26_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Ltmp918:
	jmp	.LBB205_48
.LBB205_85:
.Ltmp925:
	mov	rbx, rax
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	test	rbp, rbp
	jne	.LBB205_86
	jmp	.LBB205_87
.LBB205_57:
.Ltmp922:
	mov	rbx, rax
	jmp	.LBB205_66
.LBB205_64:
.Ltmp919:
	mov	rbx, rax
	cmp	qword ptr [rsp + 104], 0
	je	.LBB205_67
# %bb.65:
	mov	r15, qword ptr [rsp + 112]
.LBB205_66:
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB205_67:
	cmp	qword ptr [rsp + 128], 0
	je	.LBB205_87
# %bb.68:
	mov	r14, qword ptr [rsp + 136]
.LBB205_86:
	.cfi_escape 0x2e, 0x00
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB205_87:
	.cfi_escape 0x2e, 0x00
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end205:
	.size	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std, .Lfunc_end205-_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table205:
.Lexception39:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Lfunc_begin39-.Lfunc_begin39  # >> Call Site 1 <<
	.uleb128 .Ltmp915-.Lfunc_begin39        #   Call between .Lfunc_begin39 and .Ltmp915
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp915-.Lfunc_begin39        # >> Call Site 2 <<
	.uleb128 .Ltmp916-.Ltmp915              #   Call between .Ltmp915 and .Ltmp916
	.uleb128 .Ltmp919-.Lfunc_begin39        #     jumps to .Ltmp919
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp920-.Lfunc_begin39        # >> Call Site 3 <<
	.uleb128 .Ltmp921-.Ltmp920              #   Call between .Ltmp920 and .Ltmp921
	.uleb128 .Ltmp922-.Lfunc_begin39        #     jumps to .Ltmp922
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp923-.Lfunc_begin39        # >> Call Site 4 <<
	.uleb128 .Ltmp924-.Ltmp923              #   Call between .Ltmp923 and .Ltmp924
	.uleb128 .Ltmp925-.Lfunc_begin39        #     jumps to .Ltmp925
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp924-.Lfunc_begin39        # >> Call Site 5 <<
	.uleb128 .Ltmp917-.Ltmp924              #   Call between .Ltmp924 and .Ltmp917
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp917-.Lfunc_begin39        # >> Call Site 6 <<
	.uleb128 .Ltmp918-.Ltmp917              #   Call between .Ltmp917 and .Ltmp918
	.uleb128 .Ltmp919-.Lfunc_begin39        #     jumps to .Ltmp919
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin39        # >> Call Site 7 <<
	.uleb128 .Lfunc_end205-.Ltmp918         #   Call between .Ltmp918 and .Lfunc_end205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end39:
	.p2align	2, 0x0
                                        # -- End function
