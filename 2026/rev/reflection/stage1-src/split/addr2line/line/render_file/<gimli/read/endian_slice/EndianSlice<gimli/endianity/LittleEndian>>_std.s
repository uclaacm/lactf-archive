	.section	.text._RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception35
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
	sub	rsp, 136
	.cfi_def_cfa_offset 192
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r13, r8
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	rsi, qword ptr [rdx + 392]
	test	rsi, rsi
	je	.LBB189_4
# %bb.1:
	mov	rdx, qword ptr [r15 + 400]
	mov	rdi, rsp
	call	_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
	mov	rax, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 16]
	mov	rcx, rax
	neg	rcx
	jo	.LBB189_5
# %bb.2:
	movabs	rcx, -9223372036854775807
	cmp	rax, rcx
	jne	.LBB189_8
# %bb.3:
	mov	qword ptr [r12 + 8], r14
	mov	qword ptr [r12 + 16], rbp
	movabs	rax, -9223372036854775808
	mov	qword ptr [r12], rax
	jmp	.LBB189_81
.LBB189_4:
	mov	qword ptr [rsp + 24], r12       # 8-byte Spill
	mov	r14d, 1
	xor	eax, eax
	xor	ebp, ebp
	jmp	.LBB189_11
.LBB189_5:
	mov	qword ptr [rsp + 24], r12       # 8-byte Spill
	test	rbp, rbp
	je	.LBB189_9
# %bb.6:
	mov	rdi, rbp
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB189_90
# %bb.7:
	mov	r12, rax
	jmp	.LBB189_10
.LBB189_8:
	mov	qword ptr [rsp + 24], r12       # 8-byte Spill
	jmp	.LBB189_11
.LBB189_9:
	mov	r12d, 1
.LBB189_10:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, rbp
	mov	r14, r12
.LBB189_11:
	movabs	r12, -9223372036854775808
	mov	qword ptr [rsp + 40], rax
	mov	qword ptr [rsp + 48], r14
	mov	qword ptr [rsp + 56], rbp
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rax, qword ptr [rax + 48]
	test	rax, rax
	je	.LBB189_67
# %bb.12:
	cmp	word ptr [r13 + 258], 5
	jae	.LBB189_15
# %bb.13:
	dec	rax
	cmp	rax, qword ptr [r13 + 128]
	jae	.LBB189_67
# %bb.14:
	mov	rdx, qword ptr [r13 + 120]
	lea	rax, [rax + 2*rax]
	lea	rcx, [rdx + 8*rax]
	mov	rax, qword ptr [rdx + 8*rax]
	lea	rdx, [rip + .LJTI189_1]
	movsxd	rax, dword ptr [rdx + 4*rax]
	add	rax, rdx
	jmp	rax
.LBB189_15:
	cmp	rax, qword ptr [r13 + 128]
	jae	.LBB189_67
# %bb.16:
	mov	rdx, qword ptr [r13 + 120]
	lea	rax, [rax + 2*rax]
	lea	rcx, [rdx + 8*rax]
	mov	rax, qword ptr [rdx + 8*rax]
	lea	rdx, [rip + .LJTI189_0]
	movsxd	rax, dword ptr [rdx + 4*rax]
	add	rax, rdx
	jmp	rax
.LBB189_17:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	xor	esi, esi
	jmp	.LBB189_61
.LBB189_18:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 43
	jmp	.LBB189_58
.LBB189_19:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 37
	jmp	.LBB189_58
.LBB189_20:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 35
	jmp	.LBB189_58
.LBB189_21:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 36
	jmp	.LBB189_58
.LBB189_22:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 27
	jmp	.LBB189_61
.LBB189_23:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 34
	jmp	.LBB189_58
.LBB189_24:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 16
	jmp	.LBB189_61
.LBB189_25:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 44
	jmp	.LBB189_61
.LBB189_26:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 14
	jmp	.LBB189_61
.LBB189_27:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 33
	jmp	.LBB189_58
.LBB189_28:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 11
	jmp	.LBB189_61
.LBB189_29:
	mov	eax, dword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, eax
	shr	edx, 16
	mov	esi, 4
	jmp	.LBB189_60
.LBB189_30:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 40
	jmp	.LBB189_58
.LBB189_31:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 12
	jmp	.LBB189_61
.LBB189_32:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 9
	jmp	.LBB189_58
.LBB189_33:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 25
	jmp	.LBB189_61
.LBB189_34:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 24
	jmp	.LBB189_61
.LBB189_35:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 2
	jmp	.LBB189_58
.LBB189_36:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 15
	jmp	.LBB189_61
.LBB189_37:
	movzx	eax, word ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	esi, 3
	jmp	.LBB189_59
.LBB189_38:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 7
	jmp	.LBB189_61
.LBB189_39:
	mov	rax, qword ptr [rcx + 8]
	mov	r8, qword ptr [rcx + 16]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 1
	jmp	.LBB189_62
.LBB189_40:
	mov	rax, qword ptr [rcx + 8]
	mov	r8, qword ptr [rcx + 16]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 31
	jmp	.LBB189_62
.LBB189_41:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 17
	jmp	.LBB189_61
.LBB189_42:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 41
	jmp	.LBB189_58
.LBB189_43:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 20
	jmp	.LBB189_61
.LBB189_44:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 5
	jmp	.LBB189_61
.LBB189_45:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 21
	jmp	.LBB189_61
.LBB189_46:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 13
	jmp	.LBB189_61
.LBB189_47:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 6
	jmp	.LBB189_61
.LBB189_48:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 18
	jmp	.LBB189_61
.LBB189_49:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 10
	jmp	.LBB189_61
.LBB189_50:
	mov	rax, qword ptr [rcx + 8]
	mov	r8, qword ptr [rcx + 16]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 8
	jmp	.LBB189_62
.LBB189_51:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 30
	jmp	.LBB189_61
.LBB189_52:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 32
	jmp	.LBB189_58
.LBB189_53:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 45
	jmp	.LBB189_61
.LBB189_54:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 22
	jmp	.LBB189_61
.LBB189_55:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 39
	jmp	.LBB189_61
.LBB189_56:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 19
	jmp	.LBB189_61
.LBB189_57:
	movzx	eax, byte ptr [rcx + 8]
	mov	esi, 42
.LBB189_58:
	xor	ecx, ecx
.LBB189_59:
	xor	edx, edx
.LBB189_60:
	xor	edi, edi
.LBB189_61:
                                        # implicit-def: $r8
.LBB189_62:
	shl	ecx, 8
	movzx	eax, al
	or	eax, ecx
	shl	edx, 16
	movzx	eax, ax
	or	eax, edx
	or	rax, rdi
	mov	qword ptr [rsp + 88], rsi
	mov	qword ptr [rsp + 96], rax
	mov	qword ptr [rsp + 104], r8
	mov	rcx, qword ptr [r15 + 416]
	movzx	edx, byte ptr [r15 + 73]
	mov	rdi, rsp
	lea	r8, [rsp + 88]
	mov	rsi, rbx
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 16]
	cmp	dword ptr [rsp], 1
	je	.LBB189_72
# %bb.63:
.Ltmp867:
	lea	rdi, [rsp + 64]
	call	_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
.Ltmp868:
# %bb.64:
	mov	r13, qword ptr [rsp + 64]
	mov	r14, qword ptr [rsp + 72]
	lea	rax, [r12 + 1]
	mov	rdx, qword ptr [rsp + 80]
	cmp	r13, rax
	je	.LBB189_75
# %bb.65:
.Ltmp870:
	lea	rdi, [rsp + 40]
	mov	rsi, r14
	call	_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push
.Ltmp871:
# %bb.66:
	shl	r13
	test	r13, r13
	jne	.LBB189_69
.LBB189_67:
	mov	rsi, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rax, qword ptr [rsi]
	lea	rcx, [rip + .LJTI189_2]
	movsxd	rdx, dword ptr [rcx + 4*rax]
	add	rdx, rcx
	jmp	rdx
.LBB189_68:
	mov	rcx, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 8], rcx
	jmp	.LBB189_71
.LBB189_69:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	rsi, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rax, qword ptr [rsi]
	lea	rcx, [rip + .LJTI189_2]
	movsxd	rdx, dword ptr [rcx + 4*rax]
	add	rdx, rcx
	jmp	rdx
.LBB189_70:
	movzx	ecx, byte ptr [rsi + 8]
	mov	byte ptr [rsp + 8], cl
.LBB189_71:
	mov	qword ptr [rsp], rax
	mov	rcx, qword ptr [r15 + 416]
	movzx	edx, byte ptr [r15 + 73]
	lea	rdi, [rsp + 64]
	mov	r8, rsp
	mov	rsi, rbx
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 72]
	mov	rdx, qword ptr [rsp + 80]
	cmp	dword ptr [rsp + 64], 1
	jne	.LBB189_73
.LBB189_72:
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rax + 8], rsi
	mov	qword ptr [rax + 16], rdx
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 40], 0
	jne	.LBB189_76
	jmp	.LBB189_81
.LBB189_73:
.Ltmp873:
	lea	rdi, [rsp + 112]
	call	_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
.Ltmp874:
# %bb.74:
	mov	r15, qword ptr [rsp + 112]
	mov	r14, qword ptr [rsp + 120]
	lea	rax, [r12 + 1]
	mov	rdx, qword ptr [rsp + 128]
	cmp	r15, rax
	jne	.LBB189_77
.LBB189_75:
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rax + 8], r14
	mov	qword ptr [rax + 16], rdx
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 40], 0
	je	.LBB189_81
.LBB189_76:
	mov	rdi, qword ptr [rsp + 48]
	add	rsp, 136
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
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB189_77:
	.cfi_def_cfa_offset 192
.Ltmp876:
	lea	rdi, [rsp + 40]
	mov	rsi, r14
	call	_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push
.Ltmp877:
# %bb.78:
	shl	r15
	test	r15, r15
	mov	rbx, qword ptr [rsp + 24]       # 8-byte Reload
	je	.LBB189_80
# %bb.79:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB189_80:
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rbx + 16], rax
	movups	xmm0, xmmword ptr [rsp + 40]
	movups	xmmword ptr [rbx], xmm0
.LBB189_81:
	add	rsp, 136
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
.LBB189_82:
	.cfi_def_cfa_offset 192
	movups	xmm0, xmmword ptr [rsi + 8]
	movups	xmmword ptr [rsp + 8], xmm0
	jmp	.LBB189_71
.LBB189_83:
	movzx	ecx, word ptr [rsi + 8]
	mov	word ptr [rsp + 8], cx
	jmp	.LBB189_71
.LBB189_84:
	mov	ecx, dword ptr [rsi + 8]
	mov	dword ptr [rsp + 8], ecx
	jmp	.LBB189_71
.LBB189_85:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 23
	jmp	.LBB189_61
.LBB189_86:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 28
	jmp	.LBB189_61
.LBB189_87:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 29
	jmp	.LBB189_61
.LBB189_88:
	movzx	eax, word ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	esi, 38
	jmp	.LBB189_59
.LBB189_89:
	mov	rax, qword ptr [rcx + 8]
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rdi, -4294967296
	and	rdi, rax
	mov	esi, 26
	jmp	.LBB189_61
.LBB189_90:
	mov	rdi, rbp
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB189_91:
.Ltmp872:
	mov	rbx, rax
	shl	r13
	test	r13, r13
	je	.LBB189_97
	jmp	.LBB189_94
.LBB189_92:
.Ltmp869:
	jmp	.LBB189_96
.LBB189_93:
.Ltmp878:
	mov	rbx, rax
	shl	r15
	test	r15, r15
	je	.LBB189_97
.LBB189_94:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB189_97
.LBB189_95:
.Ltmp875:
.LBB189_96:
	mov	rbx, rax
.LBB189_97:
	cmp	qword ptr [rsp + 40], 0
	je	.LBB189_99
# %bb.98:
	mov	rdi, qword ptr [rsp + 48]
	call	qword ptr [rip + free@GOTPCREL]
.LBB189_99:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end189:
	.size	_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end189-_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI189_0:
	.long	.LBB189_17-.LJTI189_0
	.long	.LBB189_39-.LJTI189_0
	.long	.LBB189_35-.LJTI189_0
	.long	.LBB189_37-.LJTI189_0
	.long	.LBB189_29-.LJTI189_0
	.long	.LBB189_44-.LJTI189_0
	.long	.LBB189_47-.LJTI189_0
	.long	.LBB189_38-.LJTI189_0
	.long	.LBB189_50-.LJTI189_0
	.long	.LBB189_32-.LJTI189_0
	.long	.LBB189_49-.LJTI189_0
	.long	.LBB189_28-.LJTI189_0
	.long	.LBB189_31-.LJTI189_0
	.long	.LBB189_46-.LJTI189_0
	.long	.LBB189_26-.LJTI189_0
	.long	.LBB189_36-.LJTI189_0
	.long	.LBB189_24-.LJTI189_0
	.long	.LBB189_41-.LJTI189_0
	.long	.LBB189_48-.LJTI189_0
	.long	.LBB189_56-.LJTI189_0
	.long	.LBB189_43-.LJTI189_0
	.long	.LBB189_45-.LJTI189_0
	.long	.LBB189_54-.LJTI189_0
	.long	.LBB189_85-.LJTI189_0
	.long	.LBB189_34-.LJTI189_0
	.long	.LBB189_33-.LJTI189_0
	.long	.LBB189_89-.LJTI189_0
	.long	.LBB189_22-.LJTI189_0
	.long	.LBB189_86-.LJTI189_0
	.long	.LBB189_87-.LJTI189_0
	.long	.LBB189_51-.LJTI189_0
	.long	.LBB189_40-.LJTI189_0
	.long	.LBB189_52-.LJTI189_0
	.long	.LBB189_27-.LJTI189_0
	.long	.LBB189_23-.LJTI189_0
	.long	.LBB189_20-.LJTI189_0
	.long	.LBB189_21-.LJTI189_0
	.long	.LBB189_19-.LJTI189_0
	.long	.LBB189_88-.LJTI189_0
	.long	.LBB189_55-.LJTI189_0
	.long	.LBB189_30-.LJTI189_0
	.long	.LBB189_42-.LJTI189_0
	.long	.LBB189_57-.LJTI189_0
	.long	.LBB189_18-.LJTI189_0
	.long	.LBB189_25-.LJTI189_0
	.long	.LBB189_53-.LJTI189_0
.LJTI189_1:
	.long	.LBB189_17-.LJTI189_1
	.long	.LBB189_39-.LJTI189_1
	.long	.LBB189_35-.LJTI189_1
	.long	.LBB189_37-.LJTI189_1
	.long	.LBB189_29-.LJTI189_1
	.long	.LBB189_44-.LJTI189_1
	.long	.LBB189_47-.LJTI189_1
	.long	.LBB189_38-.LJTI189_1
	.long	.LBB189_50-.LJTI189_1
	.long	.LBB189_32-.LJTI189_1
	.long	.LBB189_49-.LJTI189_1
	.long	.LBB189_28-.LJTI189_1
	.long	.LBB189_31-.LJTI189_1
	.long	.LBB189_46-.LJTI189_1
	.long	.LBB189_26-.LJTI189_1
	.long	.LBB189_36-.LJTI189_1
	.long	.LBB189_24-.LJTI189_1
	.long	.LBB189_41-.LJTI189_1
	.long	.LBB189_48-.LJTI189_1
	.long	.LBB189_56-.LJTI189_1
	.long	.LBB189_43-.LJTI189_1
	.long	.LBB189_45-.LJTI189_1
	.long	.LBB189_54-.LJTI189_1
	.long	.LBB189_85-.LJTI189_1
	.long	.LBB189_34-.LJTI189_1
	.long	.LBB189_33-.LJTI189_1
	.long	.LBB189_89-.LJTI189_1
	.long	.LBB189_22-.LJTI189_1
	.long	.LBB189_86-.LJTI189_1
	.long	.LBB189_87-.LJTI189_1
	.long	.LBB189_51-.LJTI189_1
	.long	.LBB189_40-.LJTI189_1
	.long	.LBB189_52-.LJTI189_1
	.long	.LBB189_27-.LJTI189_1
	.long	.LBB189_23-.LJTI189_1
	.long	.LBB189_20-.LJTI189_1
	.long	.LBB189_21-.LJTI189_1
	.long	.LBB189_19-.LJTI189_1
	.long	.LBB189_88-.LJTI189_1
	.long	.LBB189_55-.LJTI189_1
	.long	.LBB189_30-.LJTI189_1
	.long	.LBB189_42-.LJTI189_1
	.long	.LBB189_57-.LJTI189_1
	.long	.LBB189_18-.LJTI189_1
	.long	.LBB189_25-.LJTI189_1
	.long	.LBB189_53-.LJTI189_1
.LJTI189_2:
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_82-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_83-.LJTI189_2
	.long	.LBB189_84-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_82-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_82-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_83-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_70-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.long	.LBB189_68-.LJTI189_2
	.section	.gcc_except_table._RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table189:
.Lexception35:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Lfunc_begin35-.Lfunc_begin35  # >> Call Site 1 <<
	.uleb128 .Ltmp867-.Lfunc_begin35        #   Call between .Lfunc_begin35 and .Ltmp867
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp867-.Lfunc_begin35        # >> Call Site 2 <<
	.uleb128 .Ltmp868-.Ltmp867              #   Call between .Ltmp867 and .Ltmp868
	.uleb128 .Ltmp869-.Lfunc_begin35        #     jumps to .Ltmp869
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin35        # >> Call Site 3 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin35        #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin35        # >> Call Site 4 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp875-.Lfunc_begin35        #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin35        # >> Call Site 5 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin35        #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp877-.Lfunc_begin35        # >> Call Site 6 <<
	.uleb128 .Lfunc_end189-.Ltmp877         #   Call between .Ltmp877 and .Lfunc_end189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end35:
	.p2align	2, 0x0
                                        # -- End function
