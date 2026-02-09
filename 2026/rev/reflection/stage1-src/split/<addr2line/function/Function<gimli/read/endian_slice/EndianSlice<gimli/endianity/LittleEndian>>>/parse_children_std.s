	.section	.text._RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std
	.type	_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std,@function
_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std: # @_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std
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
	sub	rsp, 360
	.cfi_def_cfa_offset 416
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	lea	rax, [rsi + 48]
	mov	qword ptr [rsp + 216], rax      # 8-byte Spill
	mov	qword ptr [rsp + 256], rcx      # 8-byte Spill
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 328], rax      # 8-byte Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB207_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB207_4 Depth 2
                                        #     Child Loop BB207_19 Depth 2
                                        #       Child Loop BB207_20 Depth 3
                                        #     Child Loop BB207_73 Depth 2
                                        #     Child Loop BB207_172 Depth 2
                                        #     Child Loop BB207_33 Depth 2
                                        #       Child Loop BB207_35 Depth 3
                                        #       Child Loop BB207_45 Depth 3
                                        #         Child Loop BB207_46 Depth 4
	mov	rbp, qword ptr [rsi + 80]
	cmp	rbp, rdx
	jle	.LBB207_208
# %bb.2:                                #   in Loop: Header=BB207_1 Depth=1
	mov	r13, qword ptr [rsi + 48]
	mov	r11, qword ptr [rsi + 56]
	mov	r9b, 19
	test	r11, r11
	je	.LBB207_206
# %bb.3:                                #   in Loop: Header=BB207_1 Depth=1
	mov	rax, qword ptr [rsi + 64]
	mov	rcx, qword ptr [rax + 56]
	mov	qword ptr [rsp + 344], rcx      # 8-byte Spill
	movzx	r8d, byte ptr [rax + 73]
	mov	rcx, qword ptr [rax + 40]
	mov	qword ptr [rsp + 336], rcx      # 8-byte Spill
	mov	rcx, qword ptr [rax + 48]
	mov	qword ptr [rsp + 352], rcx      # 8-byte Spill
	lea	r14, [r11 - 1]
	lea	r12, [r13 + 1]
	xor	r10d, r10d
	xor	ecx, ecx
	.p2align	4
.LBB207_4:                              #   Parent Loop BB207_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	ebx, byte ptr [r12 - 1]
	cmp	ecx, 63
	jne	.LBB207_6
# %bb.5:                                #   in Loop: Header=BB207_4 Depth=2
	cmp	bl, 1
	ja	.LBB207_204
.LBB207_6:                              #   in Loop: Header=BB207_4 Depth=2
	movzx	r15d, bl
	mov	ebx, r15d
	and	ebx, 127
	shl	rbx, cl
	or	r10, rbx
	test	r15b, r15b
	jns	.LBB207_8
# %bb.7:                                #   in Loop: Header=BB207_4 Depth=2
	add	ecx, 7
	inc	r12
	add	r14, -1
	jb	.LBB207_4
	jmp	.LBB207_205
	.p2align	4
.LBB207_8:                              #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsi + 48], r12
	mov	qword ptr [rsi + 56], r14
	test	r10, r10
	je	.LBB207_16
# %bb.9:                                #   in Loop: Header=BB207_1 Depth=1
	mov	rcx, qword ptr [rsi + 72]
	lea	r9, [r10 - 1]
	cmp	r9, qword ptr [rcx + 16]
	jae	.LBB207_17
# %bb.10:                               #   in Loop: Header=BB207_1 Depth=1
	imul	r9, r9, 112
	add	r9, qword ptr [rcx + 8]
	cmp	byte ptr [r9 + 106], 1
	jne	.LBB207_12
.LBB207_11:                             #   in Loop: Header=BB207_1 Depth=1
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsi + 80], rcx
.LBB207_12:                             #   in Loop: Header=BB207_1 Depth=1
	movzx	ecx, word ptr [r9 + 104]
	cmp	ecx, 46
	je	.LBB207_26
# %bb.13:                               #   in Loop: Header=BB207_1 Depth=1
	cmp	ecx, 29
	je	.LBB207_62
# %bb.14:                               #   in Loop: Header=BB207_1 Depth=1
	cmp	dword ptr [r9], 1
	jne	.LBB207_58
# %bb.15:                               #   in Loop: Header=BB207_1 Depth=1
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r9 + 16]
	mov	r8, qword ptr [r9 + 24]
	jmp	.LBB207_60
.LBB207_16:                             #   in Loop: Header=BB207_1 Depth=1
	dec	rbp
	mov	qword ptr [rsi + 80], rbp
	jmp	.LBB207_1
.LBB207_17:                             #   in Loop: Header=BB207_1 Depth=1
	mov	r9, qword ptr [rcx + 24]
	test	r9, r9
	je	.LBB207_213
# %bb.18:                               #   in Loop: Header=BB207_1 Depth=1
	mov	rcx, qword ptr [rcx + 32]
.LBB207_19:                             #   Parent Loop BB207_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB207_20 Depth 3
	movzx	r14d, word ptr [r9 + 1330]
	mov	r12d, r14d
	shl	r12d, 3
	mov	r11, -1
	.p2align	4
.LBB207_20:                             #   Parent Loop BB207_1 Depth=1
                                        #     Parent Loop BB207_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	test	r12, r12
	je	.LBB207_23
# %bb.21:                               #   in Loop: Header=BB207_20 Depth=3
	cmp	r10, qword ptr [r9 + 8*r11 + 1248]
	seta	bl
	sbb	bl, 0
	inc	r11
	add	r12, -8
	cmp	bl, 1
	je	.LBB207_20
# %bb.22:                               #   in Loop: Header=BB207_19 Depth=2
	movzx	ebx, bl
	test	ebx, ebx
	jne	.LBB207_24
	jmp	.LBB207_28
.LBB207_23:                             #   in Loop: Header=BB207_19 Depth=2
	mov	r11, r14
.LBB207_24:                             #   in Loop: Header=BB207_19 Depth=2
	sub	rcx, 1
	jb	.LBB207_213
# %bb.25:                               #   in Loop: Header=BB207_19 Depth=2
	mov	r9, qword ptr [r9 + 8*r11 + 1336]
	jmp	.LBB207_19
.LBB207_26:                             #   in Loop: Header=BB207_1 Depth=1
	cmp	dword ptr [r9], 1
	jne	.LBB207_29
# %bb.27:                               #   in Loop: Header=BB207_1 Depth=1
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r9 + 16]
	mov	r8, qword ptr [r9 + 24]
	jmp	.LBB207_31
.LBB207_28:                             #   in Loop: Header=BB207_1 Depth=1
	imul	rcx, r11, 112
	add	r9, rcx
	cmp	byte ptr [r9 + 106], 1
	je	.LBB207_11
	jmp	.LBB207_12
.LBB207_29:                             #   in Loop: Header=BB207_1 Depth=1
	mov	r8, qword ptr [r9 + 8]
	cmp	r8, 6
	jae	.LBB207_218
# %bb.30:                               #   in Loop: Header=BB207_1 Depth=1
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	add	r9, 16
	mov	rcx, r9
.LBB207_31:                             #   in Loop: Header=BB207_1 Depth=1
	mov	edx, dword ptr [rax + 72]
	lea	rdi, [rsp + 144]
	mov	rsi, qword ptr [rsp + 216]      # 8-byte Reload
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	movzx	eax, byte ptr [rsp + 144]
	cmp	al, 82
	jne	.LBB207_214
# %bb.32:                               #   in Loop: Header=BB207_1 Depth=1
	mov	rsi, r12
	mov	r8, qword ptr [r12 + 80]
	cmp	r8, rbp
	mov	rdi, r14
	mov	rdx, r15
	jle	.LBB207_1
.LBB207_33:                             #   Parent Loop BB207_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB207_35 Depth 3
                                        #       Child Loop BB207_45 Depth 3
                                        #         Child Loop BB207_46 Depth 4
	mov	r10, qword ptr [rsi + 48]
	mov	r11, qword ptr [rsi + 56]
	mov	al, 19
	xor	ecx, ecx
	test	r11, r11
	je	.LBB207_211
# %bb.34:                               #   in Loop: Header=BB207_33 Depth=2
	lea	r14, [r11 - 1]
	lea	r15, [r10 + 1]
	xor	r9d, r9d
	.p2align	4
.LBB207_35:                             #   Parent Loop BB207_1 Depth=1
                                        #     Parent Loop BB207_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	ebx, byte ptr [r15 - 1]
	cmp	ecx, 63
	jne	.LBB207_37
# %bb.36:                               #   in Loop: Header=BB207_35 Depth=3
	cmp	bl, 1
	ja	.LBB207_209
.LBB207_37:                             #   in Loop: Header=BB207_35 Depth=3
	movzx	ebx, bl
	mov	r12d, ebx
	and	r12d, 127
	shl	r12, cl
	or	r9, r12
	test	bl, bl
	jns	.LBB207_39
# %bb.38:                               #   in Loop: Header=BB207_35 Depth=3
	add	ecx, 7
	inc	r15
	add	r14, -1
	jb	.LBB207_35
	jmp	.LBB207_210
.LBB207_39:                             #   in Loop: Header=BB207_33 Depth=2
	mov	qword ptr [rsi + 48], r15
	mov	qword ptr [rsi + 56], r14
	test	r9, r9
	je	.LBB207_42
# %bb.40:                               #   in Loop: Header=BB207_33 Depth=2
	mov	rcx, qword ptr [rsi + 72]
	lea	rax, [r9 - 1]
	cmp	rax, qword ptr [rcx + 16]
	jae	.LBB207_43
# %bb.41:                               #   in Loop: Header=BB207_33 Depth=2
	imul	rax, rax, 112
	add	rax, qword ptr [rcx + 8]
	jmp	.LBB207_53
.LBB207_42:                             #   in Loop: Header=BB207_33 Depth=2
	dec	r8
	mov	qword ptr [rsi + 80], r8
	jmp	.LBB207_57
.LBB207_43:                             #   in Loop: Header=BB207_33 Depth=2
	mov	rax, qword ptr [rcx + 24]
	test	rax, rax
	je	.LBB207_216
# %bb.44:                               #   in Loop: Header=BB207_33 Depth=2
	mov	rcx, qword ptr [rcx + 32]
.LBB207_45:                             #   Parent Loop BB207_1 Depth=1
                                        #     Parent Loop BB207_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB207_46 Depth 4
	movzx	r11d, word ptr [rax + 1330]
	mov	r14d, r11d
	shl	r14d, 3
	mov	r10, -1
	.p2align	4
.LBB207_46:                             #   Parent Loop BB207_1 Depth=1
                                        #     Parent Loop BB207_33 Depth=2
                                        #       Parent Loop BB207_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	test	r14, r14
	je	.LBB207_49
# %bb.47:                               #   in Loop: Header=BB207_46 Depth=4
	cmp	r9, qword ptr [rax + 8*r10 + 1248]
	seta	bl
	sbb	bl, 0
	inc	r10
	add	r14, -8
	cmp	bl, 1
	je	.LBB207_46
# %bb.48:                               #   in Loop: Header=BB207_45 Depth=3
	movzx	r11d, bl
	test	r11d, r11d
	jne	.LBB207_50
	jmp	.LBB207_52
.LBB207_49:                             #   in Loop: Header=BB207_45 Depth=3
	mov	r10, r11
.LBB207_50:                             #   in Loop: Header=BB207_45 Depth=3
	sub	rcx, 1
	jb	.LBB207_216
# %bb.51:                               #   in Loop: Header=BB207_45 Depth=3
	mov	rax, qword ptr [rax + 8*r10 + 1336]
	jmp	.LBB207_45
.LBB207_52:                             #   in Loop: Header=BB207_33 Depth=2
	imul	rcx, r10, 112
	add	rax, rcx
.LBB207_53:                             #   in Loop: Header=BB207_33 Depth=2
	mov	r15, rdx
	mov	r14, rdi
	cmp	byte ptr [rax + 106], 1
	jne	.LBB207_55
# %bb.54:                               #   in Loop: Header=BB207_33 Depth=2
	inc	r8
	mov	qword ptr [rsi + 80], r8
.LBB207_55:                             #   in Loop: Header=BB207_33 Depth=2
	mov	rdi, rax
	mov	rbx, rsi
	call	_RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref
	mov	r8, rdx
	mov	r12, rbx
	mov	rcx, qword ptr [rbx + 64]
	mov	edx, dword ptr [rcx + 72]
	lea	rdi, [rsp + 144]
	mov	rsi, qword ptr [rsp + 216]      # 8-byte Reload
	mov	rcx, rax
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	movzx	eax, byte ptr [rsp + 144]
	cmp	al, 82
	jne	.LBB207_214
# %bb.56:                               #   in Loop: Header=BB207_33 Depth=2
	mov	rsi, r12
	mov	r8, qword ptr [r12 + 80]
	mov	rdi, r14
	mov	rdx, r15
.LBB207_57:                             #   in Loop: Header=BB207_33 Depth=2
	cmp	r8, rbp
	jg	.LBB207_33
	jmp	.LBB207_1
.LBB207_58:                             #   in Loop: Header=BB207_1 Depth=1
	mov	r8, qword ptr [r9 + 8]
	cmp	r8, 6
	jae	.LBB207_218
# %bb.59:                               #   in Loop: Header=BB207_1 Depth=1
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	add	r9, 16
	mov	rcx, r9
.LBB207_60:                             #   in Loop: Header=BB207_1 Depth=1
	mov	edx, dword ptr [rax + 72]
	lea	rdi, [rsp + 144]
	mov	rsi, qword ptr [rsp + 216]      # 8-byte Reload
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 144], 82
	jne	.LBB207_215
# %bb.61:                               #   in Loop: Header=BB207_1 Depth=1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	jmp	.LBB207_1
.LBB207_62:                             #   in Loop: Header=BB207_1 Depth=1
	cmp	r8b, 8
	sete	byte ptr [rsp + 27]             # 1-byte Folded Spill
	mov	rax, qword ptr [rsi + 88]
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	mov	r15, qword ptr [rsi + 96]
	cmp	dword ptr [r9], 1
	jne	.LBB207_64
# %bb.63:                               #   in Loop: Header=BB207_1 Depth=1
	mov	rax, qword ptr [r9 + 16]
	mov	qword ptr [rsp + 296], rax      # 8-byte Spill
	mov	rbx, qword ptr [r9 + 24]
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	jmp	.LBB207_66
.LBB207_64:                             #   in Loop: Header=BB207_1 Depth=1
	mov	rbx, qword ptr [r9 + 8]
	cmp	rbx, 6
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	jae	.LBB207_219
# %bb.65:                               #   in Loop: Header=BB207_1 Depth=1
	add	r9, 16
	mov	qword ptr [rsp + 296], r9       # 8-byte Spill
.LBB207_66:                             #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsp + 64], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 128], rdi      # 8-byte Spill
	test	rbx, rbx
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	mov	qword ptr [rsp + 16], rsi       # 8-byte Spill
	je	.LBB207_161
# %bb.67:                               #   in Loop: Header=BB207_1 Depth=1
	shl	rbx, 4
	xor	edx, edx
	xor	r14d, r14d
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	dword ptr [rsp + 56], 0         # 4-byte Folded Spill
	mov	dword ptr [rsp + 60], 0         # 4-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	qword ptr [rsp + 232], 0        # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	dword ptr [rsp + 28], 0         # 4-byte Folded Spill
	mov	qword ptr [rsp + 224], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 112], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 120], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 248], rbx      # 8-byte Spill
	jmp	.LBB207_73
.LBB207_69:                             #   in Loop: Header=BB207_73 Depth=2
	mov	qword ptr [rsp + 240], rax      # 8-byte Spill
.LBB207_70:                             #   in Loop: Header=BB207_73 Depth=2
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	mov	rbx, qword ptr [rsp + 248]      # 8-byte Reload
.LBB207_71:                             #   in Loop: Header=BB207_73 Depth=2
	mov	rdx, r12
.LBB207_72:                             #   in Loop: Header=BB207_73 Depth=2
	add	rdx, 16
	cmp	rbx, rdx
	je	.LBB207_162
.LBB207_73:                             #   Parent Loop BB207_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	mov	qword ptr [rsp], r8             # 8-byte Spill
	mov	rax, qword ptr [rsp + 296]      # 8-byte Reload
	mov	r12, rdx
	movups	xmm0, xmmword ptr [rax + rdx]
	movaps	xmmword ptr [rsp + 80], xmm0
	mov	rax, qword ptr [rsi + 64]
	mov	edx, dword ptr [rax + 72]
	lea	rdi, [rsp + 144]
	mov	rsi, qword ptr [rsp + 216]      # 8-byte Reload
	lea	rcx, [rsp + 80]
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 144]
	cmp	rax, 46
	je	.LBB207_170
# %bb.74:                               #   in Loop: Header=BB207_73 Depth=2
	movzx	ecx, word ptr [rsp + 168]
	lea	edx, [rcx - 3]
	cmp	edx, 86
	ja	.LBB207_78
# %bb.75:                               #   in Loop: Header=BB207_73 Depth=2
	lea	rsi, [rip + .LJTI207_0]
	movsxd	rcx, dword ptr [rsi + 4*rdx]
	add	rcx, rsi
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jmp	rcx
.LBB207_76:                             #   in Loop: Header=BB207_73 Depth=2
	test	r14, r14
	jne	.LBB207_71
# %bb.68:                               #   in Loop: Header=BB207_73 Depth=2
	lea	rdi, [rsp + 80]
	mov	rbx, rsi
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rsi, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 88]
	mov	ecx, dword ptr [rbx + 112]
	lea	rdi, [rsp + 264]
	mov	r8, qword ptr [rsp + 72]        # 8-byte Reload
	mov	r9, r15
	push	16
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rbx + 104]
	.cfi_adjust_cfa_offset 8
	call	_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	add	rsp, 16
	.cfi_adjust_cfa_offset -16
	mov	r14, qword ptr [rsp + 272]
	mov	rax, qword ptr [rsp + 280]
	cmp	dword ptr [rsp + 264], 1
	jne	.LBB207_69
	jmp	.LBB207_191
.LBB207_78:                             #   in Loop: Header=BB207_73 Depth=2
	cmp	ecx, 110
	je	.LBB207_80
# %bb.79:                               #   in Loop: Header=BB207_73 Depth=2
	cmp	ecx, 8199
	jne	.LBB207_109
.LBB207_80:                             #   in Loop: Header=BB207_73 Depth=2
	lea	rbx, [rsp + 80]
	mov	rdi, rbx
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rcx, qword ptr [r15 + 416]
	movzx	edx, byte ptr [r15 + 73]
	lea	rdi, [rsp + 264]
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	r8, rbx
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 264], 0
	jne	.LBB207_70
# %bb.81:                               #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 280]
	mov	qword ptr [rsp + 240], rax      # 8-byte Spill
	mov	r14, qword ptr [rsp + 272]
	jmp	.LBB207_70
.LBB207_82:                             #   in Loop: Header=BB207_73 Depth=2
	mov	dword ptr [rsp + 56], 0         # 4-byte Folded Spill
	add	rax, -2
	cmp	rax, 5
	ja	.LBB207_71
# %bb.83:                               #   in Loop: Header=BB207_73 Depth=2
	lea	rcx, [rip + .LJTI207_2]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	mov	rdx, r12
	jmp	rax
.LBB207_84:                             #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 152]
	jmp	.LBB207_136
.LBB207_85:                             #   in Loop: Header=BB207_73 Depth=2
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 80]
	test	rax, rax
	je	.LBB207_129
# %bb.86:                               #   in Loop: Header=BB207_73 Depth=2
	cmp	eax, 7
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	rdx, r12
	je	.LBB207_128
# %bb.87:                               #   in Loop: Header=BB207_73 Depth=2
	cmp	eax, 12
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jne	.LBB207_72
# %bb.88:                               #   in Loop: Header=BB207_73 Depth=2
	mov	rdi, qword ptr [r15 + 424]
	mov	rcx, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rax, qword ptr [rcx + 16]
	mov	rcx, qword ptr [rcx + 24]
	sub	rcx, rdi
	jb	.LBB207_195
# %bb.89:                               #   in Loop: Header=BB207_73 Depth=2
	movzx	edx, byte ptr [r15 + 72]
	add	rax, rdi
	mov	rdi, qword ptr [rsp + 88]
	imul	rdi, rdx
	mov	r8, rcx
	sub	r8, rdi
	jb	.LBB207_195
# %bb.90:                               #   in Loop: Header=BB207_73 Depth=2
	lea	r9d, [rdx - 1]
	cmp	r9d, 7
	ja	.LBB207_202
# %bb.91:                               #   in Loop: Header=BB207_73 Depth=2
	add	rax, rdi
	lea	r10, [rip + .LJTI207_3]
	movsxd	r9, dword ptr [r10 + 4*r9]
	add	r9, r10
	jmp	r9
.LBB207_92:                             #   in Loop: Header=BB207_73 Depth=2
	cmp	rcx, rdi
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	je	.LBB207_197
# %bb.93:                               #   in Loop: Header=BB207_73 Depth=2
	movzx	r9d, byte ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	qword ptr [rsp + 200], r9       # 8-byte Spill
	jmp	.LBB207_71
.LBB207_94:                             #   in Loop: Header=BB207_73 Depth=2
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 80]
	test	rax, rax
	je	.LBB207_120
# %bb.95:                               #   in Loop: Header=BB207_73 Depth=2
	cmp	eax, 12
	jne	.LBB207_109
# %bb.96:                               #   in Loop: Header=BB207_73 Depth=2
	mov	rdi, qword ptr [r15 + 424]
	mov	rcx, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rax, qword ptr [rcx + 16]
	mov	rcx, qword ptr [rcx + 24]
	sub	rcx, rdi
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	jb	.LBB207_192
# %bb.97:                               #   in Loop: Header=BB207_73 Depth=2
	movzx	edx, byte ptr [r15 + 72]
	add	rax, rdi
	mov	rdi, qword ptr [rsp + 88]
	imul	rdi, rdx
	mov	r8, rcx
	sub	r8, rdi
	jb	.LBB207_192
# %bb.98:                               #   in Loop: Header=BB207_73 Depth=2
	lea	r9d, [rdx - 1]
	cmp	r9d, 7
	ja	.LBB207_200
# %bb.99:                               #   in Loop: Header=BB207_73 Depth=2
	add	rax, rdi
	lea	r10, [rip + .LJTI207_4]
	movsxd	r9, dword ptr [r10 + 4*r9]
	add	r9, r10
	jmp	r9
.LBB207_100:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	rcx, rdi
	je	.LBB207_196
# %bb.101:                              #   in Loop: Header=BB207_73 Depth=2
	movzx	r8d, byte ptr [rax]
	jmp	.LBB207_152
.LBB207_102:                            #   in Loop: Header=BB207_73 Depth=2
	mov	dword ptr [rsp + 60], 0         # 4-byte Folded Spill
	add	rax, -2
	cmp	rax, 5
	ja	.LBB207_71
# %bb.103:                              #   in Loop: Header=BB207_73 Depth=2
	lea	rcx, [rip + .LJTI207_1]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	mov	rdx, r12
	jmp	rax
.LBB207_104:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 152]
	jmp	.LBB207_144
.LBB207_105:                            #   in Loop: Header=BB207_73 Depth=2
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 80], 44
	jne	.LBB207_109
# %bb.106:                              #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 88]
	test	rax, rax
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	mov	rdx, r12
	jne	.LBB207_108
# %bb.107:                              #   in Loop: Header=BB207_73 Depth=2
	cmp	word ptr [r15 + 74], 5
	jb	.LBB207_72
.LBB207_108:                            #   in Loop: Header=BB207_73 Depth=2
	mov	ecx, 1
	mov	qword ptr [rsp + 232], rcx      # 8-byte Spill
	mov	qword ptr [rsp + 320], rax      # 8-byte Spill
	jmp	.LBB207_72
.LBB207_109:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
.LBB207_110:                            #   in Loop: Header=BB207_73 Depth=2
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jmp	.LBB207_71
.LBB207_111:                            #   in Loop: Header=BB207_73 Depth=2
	test	r14, r14
	jne	.LBB207_71
# %bb.119:                              #   in Loop: Header=BB207_73 Depth=2
	lea	rbx, [rsp + 80]
	mov	rdi, rbx
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rcx, qword ptr [r15 + 416]
	movzx	edx, byte ptr [r15 + 73]
	lea	rdi, [rsp + 264]
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 248]      # 8-byte Reload
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	cmp	byte ptr [rsp + 264], 0
	mov	rcx, qword ptr [rsp + 304]      # 8-byte Reload
	cmove	rcx, qword ptr [rsp + 280]
	mov	r14, qword ptr [rsp + 272]
	mov	eax, 0
	cmovne	r14, rax
	mov	qword ptr [rsp + 304], rcx      # 8-byte Spill
	mov	qword ptr [rsp + 240], rcx      # 8-byte Spill
	jmp	.LBB207_71
.LBB207_113:                            #   in Loop: Header=BB207_73 Depth=2
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 144]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 80]
	mov	rcx, qword ptr [rsp + 88]
	cmp	rax, 24
	je	.LBB207_121
# %bb.114:                              #   in Loop: Header=BB207_73 Depth=2
	cmp	eax, 22
	jne	.LBB207_126
# %bb.115:                              #   in Loop: Header=BB207_73 Depth=2
	cmp	word ptr [r15 + 74], 5
	mov	eax, 0
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jae	.LBB207_117
# %bb.116:                              #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [r15 + 440]
.LBB207_117:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rdx, qword ptr [rsp + 72]       # 8-byte Reload
	cmp	byte ptr [rdx + 272], 0
	mov	rdx, rax
	mov	eax, 0
	cmove	rdx, rax
	mov	rax, rdx
	add	rax, rcx
	mov	cl, 1
	mov	dword ptr [rsp + 28], ecx       # 4-byte Spill
	jmp	.LBB207_127
.LBB207_120:                            #   in Loop: Header=BB207_73 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	r8, qword ptr [rsp + 88]
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB207_110
.LBB207_121:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rdi, qword ptr [r15 + 440]
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	mov	r8, qword ptr [rax + 224]
	mov	rdx, qword ptr [rax + 232]
	sub	rdx, rdi
	jb	.LBB207_193
# %bb.122:                              #   in Loop: Header=BB207_73 Depth=2
	mov	eax, dword ptr [r15 + 72]
	add	r8, rdi
	movzx	esi, ah
	imul	rcx, rsi
	sub	rdx, rcx
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jb	.LBB207_193
# %bb.123:                              #   in Loop: Header=BB207_73 Depth=2
	add	r8, rcx
	mov	qword ptr [rsp + 104], r8       # 8-byte Spill
	and	eax, 65280
	cmp	eax, 2048
	jne	.LBB207_130
# %bb.124:                              #   in Loop: Header=BB207_73 Depth=2
	cmp	rdx, 7
	jbe	.LBB207_194
# %bb.125:                              #   in Loop: Header=BB207_73 Depth=2
	mov	r8, qword ptr [rsp + 104]       # 8-byte Reload
	movzx	eax, byte ptr [r8 + 7]
	movzx	ecx, word ptr [r8 + 4]
	movzx	edx, byte ptr [r8 + 6]
	shl	edx, 16
	or	edx, ecx
	mov	r8d, dword ptr [r8]
	shl	rdx, 40
	shl	r8, 8
	or	r8, rdx
	shrd	r8, rax, 8
	mov	rax, r8
	jmp	.LBB207_132
.LBB207_126:                            #   in Loop: Header=BB207_73 Depth=2
	mov	dword ptr [rsp + 28], 0         # 4-byte Folded Spill
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
.LBB207_127:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rdx, r12
	jmp	.LBB207_133
.LBB207_128:                            #   in Loop: Header=BB207_73 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 224], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 88]
	mov	qword ptr [rsp + 312], rax      # 8-byte Spill
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jmp	.LBB207_72
.LBB207_129:                            #   in Loop: Header=BB207_73 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	r9, qword ptr [rsp + 88]
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB207_160
.LBB207_130:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	rdx, 3
	jbe	.LBB207_194
# %bb.131:                              #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	eax, dword ptr [rax]
.LBB207_132:                            #   in Loop: Header=BB207_73 Depth=2
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	rdx, r12
	add	rax, rdi
	mov	cl, 1
	mov	dword ptr [rsp + 28], ecx       # 4-byte Spill
.LBB207_133:                            #   in Loop: Header=BB207_73 Depth=2
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	jmp	.LBB207_72
.LBB207_134:                            #   in Loop: Header=BB207_73 Depth=2
	mov	eax, dword ptr [rsp + 152]
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rsp + 56], eax       # 4-byte Spill
	jmp	.LBB207_72
.LBB207_135:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 152]
	test	rax, rax
	js	.LBB207_72
.LBB207_136:                            #   in Loop: Header=BB207_73 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rsp + 56], eax       # 4-byte Spill
	jmp	.LBB207_72
.LBB207_137:                            #   in Loop: Header=BB207_73 Depth=2
	movzx	eax, byte ptr [rsp + 152]
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rsp + 56], eax       # 4-byte Spill
	jmp	.LBB207_72
.LBB207_138:                            #   in Loop: Header=BB207_73 Depth=2
	movzx	eax, word ptr [rsp + 152]
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rsp + 56], eax       # 4-byte Spill
	jmp	.LBB207_72
.LBB207_139:                            #   in Loop: Header=BB207_73 Depth=2
	mov	eax, dword ptr [rsp + 152]
	jmp	.LBB207_144
.LBB207_140:                            #   in Loop: Header=BB207_73 Depth=2
	mov	rax, qword ptr [rsp + 152]
	test	rax, rax
	jns	.LBB207_144
	jmp	.LBB207_72
.LBB207_142:                            #   in Loop: Header=BB207_73 Depth=2
	movzx	eax, byte ptr [rsp + 152]
	jmp	.LBB207_144
.LBB207_143:                            #   in Loop: Header=BB207_73 Depth=2
	movzx	eax, word ptr [rsp + 152]
.LBB207_144:                            #   in Loop: Header=BB207_73 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rsp + 60], eax       # 4-byte Spill
	jmp	.LBB207_72
.LBB207_146:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	r8, 1
	jbe	.LBB207_196
# %bb.147:                              #   in Loop: Header=BB207_73 Depth=2
	movzx	r8d, word ptr [rax]
	jmp	.LBB207_152
.LBB207_148:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	r8, 7
	jbe	.LBB207_196
# %bb.149:                              #   in Loop: Header=BB207_73 Depth=2
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	edi, byte ptr [rax + 6]
	shl	edi, 16
	or	edi, edx
	mov	r8d, dword ptr [rax]
	shl	rdi, 40
	shl	r8, 8
	or	r8, rdi
	shrd	r8, rcx, 8
	jmp	.LBB207_152
.LBB207_150:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	r8, 3
	jbe	.LBB207_196
# %bb.151:                              #   in Loop: Header=BB207_73 Depth=2
	mov	r8d, dword ptr [rax]
.LBB207_152:                            #   in Loop: Header=BB207_73 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	qword ptr [rsp + 208], r8       # 8-byte Spill
	jmp	.LBB207_110
.LBB207_153:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	r8, 1
	jbe	.LBB207_197
# %bb.154:                              #   in Loop: Header=BB207_73 Depth=2
	movzx	r9d, word ptr [rax]
	jmp	.LBB207_159
.LBB207_155:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	r8, 7
	jbe	.LBB207_197
# %bb.156:                              #   in Loop: Header=BB207_73 Depth=2
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	edi, byte ptr [rax + 6]
	shl	edi, 16
	or	edi, edx
	mov	r9d, dword ptr [rax]
	shl	rdi, 40
	shl	r9, 8
	or	r9, rdi
	shrd	r9, rcx, 8
	jmp	.LBB207_159
.LBB207_157:                            #   in Loop: Header=BB207_73 Depth=2
	cmp	r8, 3
	jbe	.LBB207_197
# %bb.158:                              #   in Loop: Header=BB207_73 Depth=2
	mov	r9d, dword ptr [rax]
.LBB207_159:                            #   in Loop: Header=BB207_73 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	qword ptr [rsp + 200], r9       # 8-byte Spill
.LBB207_160:                            #   in Loop: Header=BB207_73 Depth=2
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	jmp	.LBB207_71
.LBB207_161:                            #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsp + 120], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 112], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 224], 0        # 8-byte Folded Spill
	mov	dword ptr [rsp + 28], 0         # 4-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	qword ptr [rsp + 232], 0        # 8-byte Folded Spill
	mov	dword ptr [rsp + 60], 0         # 4-byte Folded Spill
	mov	dword ptr [rsp + 56], 0         # 4-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
	xor	r14d, r14d
.LBB207_162:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rbx, qword ptr [rsi + 16]
	cmp	rbx, qword ptr [rsi]
	mov	qword ptr [rsp], r8             # 8-byte Spill
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	je	.LBB207_190
.LBB207_163:                            #   in Loop: Header=BB207_1 Depth=1
	movzx	eax, byte ptr [rsp + 27]        # 1-byte Folded Reload
	xor	ecx, ecx
	mov	cl, al
	mov	rax, qword ptr [rsp + 344]      # 8-byte Reload
	add	rax, r13
	lea	rax, [rax + 8*rcx]
	mov	rcx, qword ptr [rsp + 352]      # 8-byte Reload
	add	rcx, qword ptr [rsp + 336]      # 8-byte Folded Reload
	sub	rax, rcx
	add	rax, 4
	mov	rcx, qword ptr [rsi + 8]
	lea	rdx, [rbx + 2*rbx]
	shl	rdx, 4
	mov	rdi, qword ptr [rsp + 232]      # 8-byte Reload
	mov	qword ptr [rcx + rdx], rdi
	mov	rdi, qword ptr [rsp + 320]      # 8-byte Reload
	mov	qword ptr [rcx + rdx + 8], rdi
	mov	qword ptr [rcx + rdx + 16], rax
	mov	qword ptr [rcx + rdx + 24], r14
	mov	rax, qword ptr [rsp + 240]      # 8-byte Reload
	mov	qword ptr [rcx + rdx + 32], rax
	mov	eax, dword ptr [rsp + 56]       # 4-byte Reload
	mov	dword ptr [rcx + rdx + 40], eax
	mov	eax, dword ptr [rsp + 60]       # 4-byte Reload
	mov	dword ptr [rcx + rdx + 44], eax
	lea	rax, [rbx + 1]
	mov	qword ptr [rsi + 16], rax
	test	byte ptr [rsp + 28], 1          # 1-byte Folded Reload
	mov	rax, qword ptr [rsp + 312]      # 8-byte Reload
	je	.LBB207_166
# %bb.164:                              #   in Loop: Header=BB207_1 Depth=1
	mov	eax, dword ptr [r15 + 72]
	xor	ecx, ecx
	cmp	eax, 327680
	setae	cl
	shl	ecx, 4
	mov	rdi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	r14, qword ptr [rdi + rcx + 208]
	mov	rcx, qword ptr [rdi + rcx + 216]
	mov	r8, qword ptr [rsp + 48]        # 8-byte Reload
	sub	rcx, r8
	jae	.LBB207_171
# %bb.165:                              #   in Loop: Header=BB207_1 Depth=1
	mov	r15b, 19
	xor	eax, eax
	xor	ecx, ecx
	mov	rdx, qword ptr [rsp + 64]       # 8-byte Reload
	jmp	.LBB207_184
.LBB207_166:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rcx, qword ptr [rsp + 120]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 112]      # 8-byte Reload
	and	dl, cl
	test	dl, 1
	je	.LBB207_178
# %bb.167:                              #   in Loop: Header=BB207_1 Depth=1
	cmp	r8, r9
	jae	.LBB207_186
# %bb.168:                              #   in Loop: Header=BB207_1 Depth=1
	mov	r14, qword ptr [rsi + 40]
	cmp	r14, qword ptr [rsi + 24]
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	je	.LBB207_198
.LBB207_169:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rax, qword ptr [rsi + 32]
	mov	rcx, r14
	shl	rcx, 5
	mov	qword ptr [rax + rcx], r8
	mov	qword ptr [rax + rcx + 8], rdx
	mov	rdx, qword ptr [rsp + 256]      # 8-byte Reload
	mov	qword ptr [rax + rcx + 16], rdx
	mov	qword ptr [rax + rcx + 24], rbx
	inc	r14
	mov	qword ptr [rsi + 40], r14
	jmp	.LBB207_186
.LBB207_170:                            #   in Loop: Header=BB207_1 Depth=1
	lea	rax, [rsp + 152]
	movups	xmm0, xmmword ptr [rax]
	movaps	xmmword ptr [rsp + 32], xmm0
	jmp	.LBB207_187
.LBB207_171:                            #   in Loop: Header=BB207_1 Depth=1
	mov	edx, eax
	shr	edx, 16
	add	r14, r8
	cmp	eax, 327680
	movups	xmm0, xmmword ptr [rdi + 16]
	mov	rsi, qword ptr [r15 + 408]
	mov	rdi, qword ptr [r15 + 424]
	movups	xmmword ptr [rsp + 144], xmm0
	mov	qword ptr [rsp + 160], rsi
	mov	qword ptr [rsp + 168], rdi
	mov	qword ptr [rsp + 176], r14
	mov	qword ptr [rsp + 184], rcx
	mov	word ptr [rsp + 192], ax
	mov	word ptr [rsp + 194], dx
	setae	byte ptr [rsp + 196]
.LBB207_172:                            #   Parent Loop BB207_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 144]
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 80]
	mov	r15, qword ptr [rsp + 88]
	mov	r14, qword ptr [rsp + 96]
	cmp	rax, 2
	je	.LBB207_182
# %bb.173:                              #   in Loop: Header=BB207_172 Depth=2
	test	al, 1
	je	.LBB207_185
# %bb.174:                              #   in Loop: Header=BB207_172 Depth=2
	cmp	r15, r14
	jae	.LBB207_172
# %bb.175:                              #   in Loop: Header=BB207_172 Depth=2
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r12, qword ptr [rax + 40]
	cmp	r12, qword ptr [rax + 24]
	je	.LBB207_177
.LBB207_176:                            #   in Loop: Header=BB207_172 Depth=2
	mov	rcx, qword ptr [rax + 32]
	mov	rdx, r12
	shl	rdx, 5
	mov	qword ptr [rcx + rdx], r15
	mov	qword ptr [rcx + rdx + 8], r14
	mov	rsi, qword ptr [rsp + 256]      # 8-byte Reload
	mov	qword ptr [rcx + rdx + 16], rsi
	mov	qword ptr [rcx + rdx + 24], rbx
	inc	r12
	mov	qword ptr [rax + 40], r12
	jmp	.LBB207_172
.LBB207_177:                            #   in Loop: Header=BB207_172 Depth=2
	lea	rdi, [rax + 24]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceE8grow_oneCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB207_176
.LBB207_178:                            #   in Loop: Header=BB207_1 Depth=1
	and	cl, byte ptr [rsp + 224]        # 1-byte Folded Reload
	test	cl, 1
	je	.LBB207_186
# %bb.179:                              #   in Loop: Header=BB207_1 Depth=1
	lea	r14, [rax + r8]
	cmp	r8, r14
	jae	.LBB207_186
# %bb.180:                              #   in Loop: Header=BB207_1 Depth=1
	mov	r15, qword ptr [rsi + 40]
	cmp	r15, qword ptr [rsi + 24]
	je	.LBB207_199
.LBB207_181:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rax, qword ptr [rsi + 32]
	mov	rcx, r15
	shl	rcx, 5
	mov	qword ptr [rax + rcx], r8
	mov	qword ptr [rax + rcx + 8], r14
	mov	rdx, qword ptr [rsp + 256]      # 8-byte Reload
	mov	qword ptr [rax + rcx + 16], rdx
	mov	qword ptr [rax + rcx + 24], rbx
	inc	r15
	mov	qword ptr [rsi + 40], r15
	jmp	.LBB207_186
.LBB207_182:                            #   in Loop: Header=BB207_1 Depth=1
	cmp	r15b, 82
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	je	.LBB207_186
# %bb.183:                              #   in Loop: Header=BB207_1 Depth=1
	mov	ecx, r15d
	shr	ecx, 8
	mov	rax, r15
	shr	rax, 16
	mov	rdx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 48]        # 8-byte Reload
.LBB207_184:                            #   in Loop: Header=BB207_1 Depth=1
	mov	byte ptr [rsp + 32], r15b
	mov	byte ptr [rsp + 33], cl
	mov	dword ptr [rsp + 34], eax
	shr	rax, 32
	mov	word ptr [rsp + 38], ax
	mov	qword ptr [rsp + 40], r14
	mov	rdi, qword ptr [rsp + 128]      # 8-byte Reload
	jmp	.LBB207_188
.LBB207_185:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
.LBB207_186:                            #   in Loop: Header=BB207_1 Depth=1
	lea	rdi, [rsp + 32]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 328]      # 8-byte Reload
	call	_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std
.LBB207_187:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rdi, qword ptr [rsp + 128]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 48]        # 8-byte Reload
.LBB207_188:                            #   in Loop: Header=BB207_1 Depth=1
	cmp	byte ptr [rsp + 32], 82
	jne	.LBB207_217
# %bb.189:                              #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsp + 48], r8        # 8-byte Spill
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB207_1
.LBB207_190:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rdi, rsi
	mov	r12, rbx
	mov	rbx, rsi
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtCsfwdNdOnv07X_9addr2line8function15InlinedFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1M_9endianity12LittleEndianEEE8grow_oneCs3bNtqN8jaZB_3std
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	rsi, rbx
	mov	rbx, r12
	jmp	.LBB207_163
.LBB207_191:                            #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsp + 32], r14
	mov	qword ptr [rsp + 40], rax
	jmp	.LBB207_187
.LBB207_192:                            #   in Loop: Header=BB207_1 Depth=1
	mov	cl, 19
	mov	rdx, rax
	mov	rsi, qword ptr [rsp + 288]      # 8-byte Reload
	jmp	.LBB207_201
.LBB207_193:                            #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsp + 104], r8       # 8-byte Spill
.LBB207_194:                            #   in Loop: Header=BB207_1 Depth=1
	mov	qword ptr [rsp + 32], 19
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	qword ptr [rsp + 40], rax
	jmp	.LBB207_187
.LBB207_195:                            #   in Loop: Header=BB207_1 Depth=1
	mov	cl, 19
	mov	rdx, rax
	jmp	.LBB207_203
.LBB207_196:                            #   in Loop: Header=BB207_1 Depth=1
	mov	cl, 19
	mov	rdx, rax
	xor	esi, esi
	jmp	.LBB207_201
.LBB207_197:                            #   in Loop: Header=BB207_1 Depth=1
	mov	cl, 19
	mov	rdx, rax
	mov	qword ptr [rsp + 136], 0        # 8-byte Folded Spill
	jmp	.LBB207_203
.LBB207_198:                            #   in Loop: Header=BB207_1 Depth=1
	lea	rdi, [rsi + 24]
	mov	r15, rbx
	mov	rbx, rsi
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceE8grow_oneCs3bNtqN8jaZB_3std
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	rsi, rbx
	mov	rbx, r15
	jmp	.LBB207_169
.LBB207_199:                            #   in Loop: Header=BB207_1 Depth=1
	lea	rdi, [rsi + 24]
	mov	r12, rbx
	mov	rbx, rsi
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceE8grow_oneCs3bNtqN8jaZB_3std
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	mov	rsi, rbx
	mov	rbx, r12
	jmp	.LBB207_181
.LBB207_200:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rsi, qword ptr [rsp + 288]      # 8-byte Reload
	and	rsi, -256
	or	rsi, rdx
	mov	cl, 25
	mov	rdx, qword ptr [rsp + 208]      # 8-byte Reload
.LBB207_201:                            #   in Loop: Header=BB207_1 Depth=1
	mov	byte ptr [rsp + 32], cl
	mov	dword ptr [rsp + 33], esi
	mov	rax, rsi
	shr	rax, 48
	mov	byte ptr [rsp + 39], al
	mov	qword ptr [rsp + 288], rsi      # 8-byte Spill
	mov	rax, rsi
	shr	rax, 32
	mov	word ptr [rsp + 37], ax
	mov	qword ptr [rsp + 208], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 40], rdx
	jmp	.LBB207_187
.LBB207_202:                            #   in Loop: Header=BB207_1 Depth=1
	mov	rax, qword ptr [rsp + 136]      # 8-byte Reload
	and	rax, -256
	or	rax, rdx
	mov	qword ptr [rsp + 136], rax      # 8-byte Spill
	mov	cl, 25
	mov	rdx, qword ptr [rsp + 200]      # 8-byte Reload
.LBB207_203:                            #   in Loop: Header=BB207_1 Depth=1
	mov	byte ptr [rsp + 32], cl
	mov	rcx, qword ptr [rsp + 136]      # 8-byte Reload
	mov	dword ptr [rsp + 33], ecx
	mov	rax, rcx
	shr	rax, 48
	mov	byte ptr [rsp + 39], al
	mov	rax, rcx
	shr	rax, 32
	mov	word ptr [rsp + 37], ax
	mov	qword ptr [rsp + 200], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 40], rdx
	jmp	.LBB207_187
.LBB207_204:
	mov	qword ptr [rsi + 48], r12
	mov	qword ptr [rsi + 56], r14
	mov	r9b, 6
                                        # implicit-def: $r13
	jmp	.LBB207_206
.LBB207_205:
	add	r13, r11
	mov	qword ptr [rsi + 48], r13
	mov	qword ptr [rsi + 56], 0
.LBB207_206:
	mov	byte ptr [rdi], r9b
	mov	byte ptr [rdi + 1], 0
	mov	word ptr [rdi + 6], 0
	mov	dword ptr [rdi + 2], 0
	mov	qword ptr [rdi + 8], r13
.LBB207_207:
	add	rsp, 360
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
.LBB207_208:
	.cfi_def_cfa_offset 416
	mov	byte ptr [rdi], 82
	jmp	.LBB207_207
.LBB207_209:
	mov	qword ptr [rsi + 48], r15
	mov	qword ptr [rsi + 56], r14
	mov	al, 6
	xor	ecx, ecx
                                        # implicit-def: $r10
	jmp	.LBB207_211
.LBB207_210:
	add	r10, r11
	mov	qword ptr [rsi + 48], r10
	mov	qword ptr [rsi + 56], 0
	xor	ecx, ecx
.LBB207_211:
	xor	edx, edx
.LBB207_212:
	mov	byte ptr [rdi], al
	mov	byte ptr [rdi + 1], dl
	mov	dword ptr [rdi + 2], ecx
	shr	rcx, 32
	mov	word ptr [rdi + 6], cx
	mov	qword ptr [rdi + 8], r10
	jmp	.LBB207_207
.LBB207_213:
	mov	r9b, 18
	mov	r13, r10
	jmp	.LBB207_206
.LBB207_214:
	movzx	edx, byte ptr [rsp + 145]
	mov	esi, dword ptr [rsp + 146]
	movzx	ecx, word ptr [rsp + 150]
	shl	rcx, 32
	or	rcx, rsi
	mov	r10, qword ptr [rsp + 152]
	mov	rdi, r14
	jmp	.LBB207_212
.LBB207_215:
	movups	xmm0, xmmword ptr [rsp + 144]
	movups	xmmword ptr [r14], xmm0
	jmp	.LBB207_207
.LBB207_216:
	mov	al, 18
	xor	ecx, ecx
	mov	r10, r9
	jmp	.LBB207_211
.LBB207_217:
	movaps	xmm0, xmmword ptr [rsp + 32]
	movups	xmmword ptr [rdi], xmm0
	jmp	.LBB207_207
.LBB207_218:
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, r8
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB207_219:
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end207:
	.size	_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std, .Lfunc_end207-_RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMs1_NtCsfwdNdOnv07X_9addr2line8functionINtB5_8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB10_9endianity12LittleEndianEE14parse_childrenCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI207_0:
	.long	.LBB207_111-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_94-.LJTI207_0
	.long	.LBB207_85-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_76-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_76-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_113-.LJTI207_0
	.long	.LBB207_71-.LJTI207_0
	.long	.LBB207_102-.LJTI207_0
	.long	.LBB207_105-.LJTI207_0
	.long	.LBB207_82-.LJTI207_0
.LJTI207_1:
	.long	.LBB207_142-.LJTI207_1
	.long	.LBB207_143-.LJTI207_1
	.long	.LBB207_139-.LJTI207_1
	.long	.LBB207_104-.LJTI207_1
	.long	.LBB207_140-.LJTI207_1
	.long	.LBB207_104-.LJTI207_1
.LJTI207_2:
	.long	.LBB207_137-.LJTI207_2
	.long	.LBB207_138-.LJTI207_2
	.long	.LBB207_134-.LJTI207_2
	.long	.LBB207_84-.LJTI207_2
	.long	.LBB207_135-.LJTI207_2
	.long	.LBB207_84-.LJTI207_2
.LJTI207_3:
	.long	.LBB207_92-.LJTI207_3
	.long	.LBB207_153-.LJTI207_3
	.long	.LBB207_202-.LJTI207_3
	.long	.LBB207_157-.LJTI207_3
	.long	.LBB207_202-.LJTI207_3
	.long	.LBB207_202-.LJTI207_3
	.long	.LBB207_202-.LJTI207_3
	.long	.LBB207_155-.LJTI207_3
.LJTI207_4:
	.long	.LBB207_100-.LJTI207_4
	.long	.LBB207_146-.LJTI207_4
	.long	.LBB207_200-.LJTI207_4
	.long	.LBB207_150-.LJTI207_4
	.long	.LBB207_200-.LJTI207_4
	.long	.LBB207_200-.LJTI207_4
	.long	.LBB207_200-.LJTI207_4
	.long	.LBB207_148-.LJTI207_4
                                        # -- End function
