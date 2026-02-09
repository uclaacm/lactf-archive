	.section	.text._RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
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
	test	r8, r8
	je	.LBB220_81
# %bb.1:
	shl	r8, 4
	add	r8, rcx
	mov	r13, qword ptr [rsi]
	mov	r9, qword ptr [rsi + 8]
	mov	r10d, edx
	shr	r10d, 8
	mov	eax, edx
	and	eax, -65536
	cmp	eax, 131072
	mov	r12d, r10d
	cmove	r12d, edx
	xor	r11d, r11d
	lea	r15, [rip + .LJTI220_0]
                                        # implicit-def: $ax
	mov	dword ptr [rsp - 28], eax       # 4-byte Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	.p2align	4
.LBB220_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB220_44 Depth 2
                                        #     Child Loop BB220_20 Depth 2
                                        #     Child Loop BB220_57 Depth 2
                                        #     Child Loop BB220_31 Depth 2
	movzx	r14d, word ptr [rcx + 10]
	movzx	ebx, r14w
	mov	eax, 1
	lea	ebp, [rbx - 1]
	cmp	ebp, 43
	ja	.LBB220_9
# %bb.3:                                #   in Loop: Header=BB220_2 Depth=1
	movsxd	rbp, dword ptr [r15 + 4*rbp]
	add	rbp, r15
	jmp	rbp
.LBB220_4:                              #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, 4
	jmp	.LBB220_28
.LBB220_5:                              #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	jmp	.LBB220_28
.LBB220_7:                              #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, 8
	jmp	.LBB220_28
.LBB220_8:                              #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, 2
	jmp	.LBB220_28
.LBB220_9:                              #   in Loop: Header=BB220_2 Depth=1
	lea	ebp, [rbx - 7968]
	cmp	ebp, 2
	jae	.LBB220_13
.LBB220_10:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, r10d
	jmp	.LBB220_28
.LBB220_11:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	xor	eax, eax
	jmp	.LBB220_28
.LBB220_12:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, 3
	jmp	.LBB220_28
.LBB220_13:                             #   in Loop: Header=BB220_2 Depth=1
	test	r11, r11
	je	.LBB220_16
# %bb.14:                               #   in Loop: Header=BB220_2 Depth=1
	sub	r9, r11
	jb	.LBB220_78
# %bb.15:                               #   in Loop: Header=BB220_2 Depth=1
	add	r13, r11
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
.LBB220_16:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	lea	r11d, [rbx - 3]
	cmp	r11d, 32
	ja	.LBB220_30
# %bb.17:                               #   in Loop: Header=BB220_2 Depth=1
	lea	rbx, [rip + .LJTI220_1]
	movsxd	r11, dword ptr [rbx + 4*r11]
	add	r11, rbx
	jmp	r11
.LBB220_18:                             #   in Loop: Header=BB220_2 Depth=1
	test	r9, r9
	je	.LBB220_84
# %bb.19:                               #   in Loop: Header=BB220_2 Depth=1
	mov	qword ptr [rsp - 24], rcx       # 8-byte Spill
	lea	r14, [r9 - 1]
	lea	r13, [rbp + 1]
	xor	r11d, r11d
	xor	ecx, ecx
	.p2align	4
.LBB220_20:                             #   Parent Loop BB220_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	ebx, byte ptr [r13 - 1]
	cmp	ecx, 63
	jne	.LBB220_22
# %bb.21:                               #   in Loop: Header=BB220_20 Depth=2
	cmp	bl, 1
	ja	.LBB220_82
.LBB220_22:                             #   in Loop: Header=BB220_20 Depth=2
	movzx	eax, bl
	mov	ebx, eax
	and	ebx, 127
	shl	rbx, cl
	or	r11, rbx
	test	al, al
	jns	.LBB220_37
# %bb.23:                               #   in Loop: Header=BB220_20 Depth=2
	add	ecx, 7
	inc	r13
	add	r14, -1
	jb	.LBB220_20
	jmp	.LBB220_83
.LBB220_24:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, edx
	jmp	.LBB220_28
.LBB220_25:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
	mov	eax, r12d
	jmp	.LBB220_28
.LBB220_26:                             #   in Loop: Header=BB220_2 Depth=1
	mov	rbp, r13
.LBB220_27:                             #   in Loop: Header=BB220_2 Depth=1
	mov	eax, 16
	.p2align	4
.LBB220_28:                             #   in Loop: Header=BB220_2 Depth=1
	movzx	eax, al
	add	r11, rax
	mov	r13, rbp
.LBB220_29:                             #   in Loop: Header=BB220_2 Depth=1
	add	rcx, 16
	cmp	rcx, r8
	jne	.LBB220_2
	jmp	.LBB220_76
.LBB220_30:                             #   in Loop: Header=BB220_2 Depth=1
	add	ebx, -7937
	cmp	ebx, 2
	jae	.LBB220_95
	.p2align	4
.LBB220_31:                             #   Parent Loop BB220_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub	r9, 1
	jb	.LBB220_79
# %bb.32:                               #   in Loop: Header=BB220_31 Depth=2
	lea	r13, [rbp + 1]
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
	cmp	byte ptr [rbp], 0
	mov	rbp, r13
	js	.LBB220_31
# %bb.33:                               #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	jmp	.LBB220_29
.LBB220_34:                             #   in Loop: Header=BB220_2 Depth=1
	test	r9, r9
	je	.LBB220_90
# %bb.35:                               #   in Loop: Header=BB220_2 Depth=1
	lea	rbx, [r9 - 1]
	lea	r11, [rbp + 1]
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], rbx
	movzx	r14d, byte ptr [rbp]
	mov	r13d, r14d
	and	r13d, 127
	test	r14b, r14b
	js	.LBB220_38
# %bb.36:                               #   in Loop: Header=BB220_2 Depth=1
	mov	r14, rbx
                                        # kill: def $r13w killed $r13w killed $r13d def $r13d
	jmp	.LBB220_44
.LBB220_37:                             #   in Loop: Header=BB220_2 Depth=1
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r14
	mov	r9, r14
	mov	qword ptr [rsp - 8], r11        # 8-byte Spill
	mov	rcx, qword ptr [rsp - 24]       # 8-byte Reload
	jmp	.LBB220_29
.LBB220_38:                             #   in Loop: Header=BB220_2 Depth=1
	test	rbx, rbx
	je	.LBB220_96
# %bb.39:                               #   in Loop: Header=BB220_2 Depth=1
	lea	rbx, [r9 - 2]
	lea	r11, [rbp + 2]
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsp - 24], rbx       # 8-byte Spill
	mov	qword ptr [rsi + 8], rbx
	movzx	ebx, byte ptr [rbp + 1]
	mov	r14d, ebx
	and	r14d, 127
	shl	r14d, 7
	movzx	r13d, r13w
	or	r13d, r14d
	test	bl, bl
	js	.LBB220_41
# %bb.40:                               #   in Loop: Header=BB220_2 Depth=1
	mov	r14, qword ptr [rsp - 24]       # 8-byte Reload
                                        # kill: def $r13w killed $r13w killed $r13d def $r13d
	jmp	.LBB220_44
.LBB220_41:                             #   in Loop: Header=BB220_2 Depth=1
	cmp	qword ptr [rsp - 24], 0         # 8-byte Folded Reload
	je	.LBB220_96
# %bb.42:                               #   in Loop: Header=BB220_2 Depth=1
	add	r9, -3
	lea	r11, [rbp + 3]
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], r9
	movzx	ebx, byte ptr [rbp + 2]
	cmp	bx, 3
	ja	.LBB220_98
# %bb.43:                               #   in Loop: Header=BB220_2 Depth=1
	movzx	ebx, bx
	shl	ebx, 14
	movzx	r13d, r13w
	or	r13d, ebx
	mov	r14, r9
                                        # kill: def $r13w killed $r13w killed $r13d def $r13d
.LBB220_44:                             #   Parent Loop BB220_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rbp, r11
	mov	r9, r14
	mov	dword ptr [rsp - 28], r13d      # 4-byte Spill
	movzx	r11d, r13w
	lea	ebx, [r11 - 1]
	cmp	ebx, 43
	ja	.LBB220_66
# %bb.45:                               #   in Loop: Header=BB220_44 Depth=2
	lea	r14, [rip + .LJTI220_2]
	movsxd	r11, dword ptr [r14 + 4*rbx]
	add	r11, r14
	jmp	r11
.LBB220_46:                             #   in Loop: Header=BB220_44 Depth=2
	test	r9, r9
	je	.LBB220_90
# %bb.47:                               #   in Loop: Header=BB220_44 Depth=2
	lea	r14, [r9 - 1]
	lea	r11, [rbp + 1]
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], r14
	movzx	ebx, byte ptr [rbp]
	mov	r13d, ebx
	and	r13d, 127
	test	bl, bl
	jns	.LBB220_44
# %bb.48:                               #   in Loop: Header=BB220_44 Depth=2
	mov	dword ptr [rsp - 28], r13d      # 4-byte Spill
	test	r14, r14
	je	.LBB220_96
# %bb.49:                               #   in Loop: Header=BB220_44 Depth=2
	lea	r14, [r9 - 2]
	lea	r11, [rbp + 2]
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], r14
	movzx	r13d, byte ptr [rbp + 1]
	mov	dword ptr [rsp - 24], r13d      # 4-byte Spill
	and	r13d, 127
	shl	r13d, 7
	mov	ebx, dword ptr [rsp - 28]       # 4-byte Reload
	movzx	ebx, bx
	or	ebx, r13d
	cmp	byte ptr [rsp - 24], 0          # 1-byte Folded Reload
	mov	r13d, ebx
	jns	.LBB220_44
# %bb.50:                               #   in Loop: Header=BB220_44 Depth=2
	test	r14, r14
	je	.LBB220_96
# %bb.51:                               #   in Loop: Header=BB220_44 Depth=2
	add	r9, -3
	lea	r11, [rbp + 3]
	mov	qword ptr [rsi], r11
	mov	qword ptr [rsi + 8], r9
	movzx	ebx, byte ptr [rbp + 2]
	cmp	bx, 3
	ja	.LBB220_99
# %bb.52:                               #   in Loop: Header=BB220_44 Depth=2
	movzx	ebx, bx
	shl	ebx, 14
	movzx	r13d, r13w
	or	r13d, ebx
	mov	r14, r9
	jmp	.LBB220_44
.LBB220_53:                             #   in Loop: Header=BB220_2 Depth=1
	cmp	r9, 3
	jbe	.LBB220_92
# %bb.54:                               #   in Loop: Header=BB220_2 Depth=1
	add	r9, -4
	lea	r13, [rbp + 4]
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
	mov	r11d, dword ptr [rbp]
	jmp	.LBB220_29
.LBB220_55:                             #   in Loop: Header=BB220_2 Depth=1
	test	r9, r9
	je	.LBB220_89
# %bb.56:                               #   in Loop: Header=BB220_2 Depth=1
	xor	eax, eax
	.p2align	4
.LBB220_57:                             #   Parent Loop BB220_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rbp + rax], 0
	je	.LBB220_63
# %bb.58:                               #   in Loop: Header=BB220_57 Depth=2
	inc	rax
	cmp	r9, rax
	jne	.LBB220_57
	jmp	.LBB220_89
.LBB220_59:                             #   in Loop: Header=BB220_2 Depth=1
	cmp	r9, 1
	jbe	.LBB220_91
# %bb.60:                               #   in Loop: Header=BB220_2 Depth=1
	add	r9, -2
	lea	r13, [rbp + 2]
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
	movzx	r11d, word ptr [rbp]
	jmp	.LBB220_29
.LBB220_61:                             #   in Loop: Header=BB220_2 Depth=1
	test	r9, r9
	je	.LBB220_79
# %bb.62:                               #   in Loop: Header=BB220_2 Depth=1
	dec	r9
	lea	r13, [rbp + 1]
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
	movzx	r11d, byte ptr [rbp]
	jmp	.LBB220_29
.LBB220_63:                             #   in Loop: Header=BB220_2 Depth=1
	lea	r13, [rax + rbp]
	inc	r13
	not	rax
	add	r9, rax
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
	mov	qword ptr [rsp - 16], rbp       # 8-byte Spill
	xor	r11d, r11d
	jmp	.LBB220_29
.LBB220_64:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, 4
	jmp	.LBB220_28
.LBB220_65:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	jmp	.LBB220_28
.LBB220_66:                             #   in Loop: Header=BB220_2 Depth=1
	lea	eax, [r11 - 7937]
	cmp	eax, 2
	jb	.LBB220_31
# %bb.67:                               #   in Loop: Header=BB220_2 Depth=1
	add	r11d, -7968
	cmp	r11d, 2
	jae	.LBB220_94
.LBB220_68:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, r10d
	jmp	.LBB220_28
.LBB220_69:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, 2
	jmp	.LBB220_28
.LBB220_70:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, 8
	jmp	.LBB220_28
.LBB220_71:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	xor	eax, eax
	jmp	.LBB220_28
.LBB220_72:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, 3
	jmp	.LBB220_28
.LBB220_73:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	jmp	.LBB220_27
.LBB220_74:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, edx
	jmp	.LBB220_28
.LBB220_75:                             #   in Loop: Header=BB220_2 Depth=1
	xor	r11d, r11d
	mov	eax, r12d
	jmp	.LBB220_28
.LBB220_76:
	test	r11, r11
	je	.LBB220_81
# %bb.77:
	sub	r9, r11
	jae	.LBB220_80
.LBB220_78:
	mov	byte ptr [rdi], 19
	mov	qword ptr [rdi + 8], r13
	jmp	.LBB220_88
.LBB220_79:
	mov	word ptr [rdi], 19
	jmp	.LBB220_86
.LBB220_80:
	add	r13, r11
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r9
.LBB220_81:
	mov	byte ptr [rdi], 82
	jmp	.LBB220_88
.LBB220_82:
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r14
	mov	al, 6
	mov	rbp, qword ptr [rsp - 8]        # 8-byte Reload
	jmp	.LBB220_85
.LBB220_83:
	add	rbp, r9
	mov	qword ptr [rsi], rbp
	mov	qword ptr [rsi + 8], 0
.LBB220_84:
	mov	al, 19
.LBB220_85:
	mov	byte ptr [rdi], al
	mov	byte ptr [rdi + 1], 0
.LBB220_86:
	mov	word ptr [rdi + 6], 0
	mov	dword ptr [rdi + 2], 0
.LBB220_87:
	mov	qword ptr [rdi + 8], rbp
.LBB220_88:
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
.LBB220_89:
	.cfi_def_cfa_offset 56
	mov	rax, qword ptr [rsp - 16]       # 8-byte Reload
	and	rax, -256
	or	rax, 19
	mov	qword ptr [rdi], rax
	jmp	.LBB220_87
.LBB220_90:
	mov	al, 19
	xor	ecx, ecx
	jmp	.LBB220_97
.LBB220_91:
	mov	word ptr [rdi + 1], 0
	mov	byte ptr [rdi + 7], 0
	mov	dword ptr [rdi + 3], 0
	jmp	.LBB220_93
.LBB220_92:
	mov	dword ptr [rdi + 1], 0
	mov	byte ptr [rdi + 7], 0
	mov	word ptr [rdi + 5], 0
.LBB220_93:
	mov	byte ptr [rdi], 19
	jmp	.LBB220_87
.LBB220_94:
	mov	eax, dword ptr [rsp - 28]       # 4-byte Reload
	mov	r14d, eax
.LBB220_95:
	mov	byte ptr [rdi], 12
	mov	word ptr [rdi + 2], r14w
	jmp	.LBB220_88
.LBB220_96:
	mov	al, 19
	xor	ecx, ecx
	mov	rbp, r11
.LBB220_97:
	mov	byte ptr [rdi], al
	mov	byte ptr [rdi + 1], 0
	mov	word ptr [rdi + 2], cx
	mov	dword ptr [rdi + 4], 0
	jmp	.LBB220_87
.LBB220_98:
	mov	al, 6
                                        # implicit-def: $rbp
	mov	ecx, dword ptr [rsp - 28]       # 4-byte Reload
	jmp	.LBB220_97
.LBB220_99:
	mov	al, 6
	mov	cx, 22
                                        # implicit-def: $rbp
	jmp	.LBB220_97
.Lfunc_end220:
	.size	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end220-_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI220_0:
	.long	.LBB220_24-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_8-.LJTI220_0
	.long	.LBB220_4-.LJTI220_0
	.long	.LBB220_7-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_5-.LJTI220_0
	.long	.LBB220_5-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_10-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_25-.LJTI220_0
	.long	.LBB220_5-.LJTI220_0
	.long	.LBB220_8-.LJTI220_0
	.long	.LBB220_4-.LJTI220_0
	.long	.LBB220_7-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_10-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_11-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_4-.LJTI220_0
	.long	.LBB220_10-.LJTI220_0
	.long	.LBB220_26-.LJTI220_0
	.long	.LBB220_10-.LJTI220_0
	.long	.LBB220_7-.LJTI220_0
	.long	.LBB220_11-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_13-.LJTI220_0
	.long	.LBB220_7-.LJTI220_0
	.long	.LBB220_5-.LJTI220_0
	.long	.LBB220_8-.LJTI220_0
	.long	.LBB220_12-.LJTI220_0
	.long	.LBB220_4-.LJTI220_0
	.long	.LBB220_5-.LJTI220_0
	.long	.LBB220_8-.LJTI220_0
	.long	.LBB220_12-.LJTI220_0
	.long	.LBB220_4-.LJTI220_0
.LJTI220_1:
	.long	.LBB220_59-.LJTI220_1
	.long	.LBB220_53-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_55-.LJTI220_1
	.long	.LBB220_18-.LJTI220_1
	.long	.LBB220_61-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
	.long	.LBB220_34-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_18-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_95-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
	.long	.LBB220_31-.LJTI220_1
.LJTI220_2:
	.long	.LBB220_74-.LJTI220_2
	.long	.LBB220_94-.LJTI220_2
	.long	.LBB220_59-.LJTI220_2
	.long	.LBB220_53-.LJTI220_2
	.long	.LBB220_69-.LJTI220_2
	.long	.LBB220_64-.LJTI220_2
	.long	.LBB220_70-.LJTI220_2
	.long	.LBB220_55-.LJTI220_2
	.long	.LBB220_18-.LJTI220_2
	.long	.LBB220_61-.LJTI220_2
	.long	.LBB220_65-.LJTI220_2
	.long	.LBB220_65-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_68-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_75-.LJTI220_2
	.long	.LBB220_65-.LJTI220_2
	.long	.LBB220_69-.LJTI220_2
	.long	.LBB220_64-.LJTI220_2
	.long	.LBB220_70-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_46-.LJTI220_2
	.long	.LBB220_68-.LJTI220_2
	.long	.LBB220_18-.LJTI220_2
	.long	.LBB220_71-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_64-.LJTI220_2
	.long	.LBB220_68-.LJTI220_2
	.long	.LBB220_73-.LJTI220_2
	.long	.LBB220_68-.LJTI220_2
	.long	.LBB220_70-.LJTI220_2
	.long	.LBB220_71-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_31-.LJTI220_2
	.long	.LBB220_70-.LJTI220_2
	.long	.LBB220_65-.LJTI220_2
	.long	.LBB220_69-.LJTI220_2
	.long	.LBB220_72-.LJTI220_2
	.long	.LBB220_64-.LJTI220_2
	.long	.LBB220_65-.LJTI220_2
	.long	.LBB220_69-.LJTI220_2
	.long	.LBB220_72-.LJTI220_2
	.long	.LBB220_64-.LJTI220_2
                                        # -- End function
