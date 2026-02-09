	.section	.text._RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	shr	edx, 8
	movzx	eax, cx
	lea	r8d, [rax - 3]
	cmp	r8d, 37
	ja	.LBB244_4
# %bb.1:
	lea	rax, [rip + .LJTI244_0]
	movsxd	r8, dword ptr [rax + 4*r8]
	add	r8, rax
	jmp	r8
.LBB244_2:
	mov	rdx, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 1
	jbe	.LBB244_93
# %bb.3:
	add	rcx, -2
	lea	rax, [rdx + 2]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], rcx
	movzx	r8d, word ptr [rdx]
	sub	rcx, r8
	jae	.LBB244_55
	jmp	.LBB244_119
.LBB244_4:
	cmp	eax, 7938
	je	.LBB244_9
# %bb.5:
	cmp	eax, 7969
	jne	.LBB244_16
.LBB244_6:
	cmp	dl, 8
	jne	.LBB244_81
# %bb.7:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 7
	jbe	.LBB244_102
# %bb.8:
	add	rcx, -8
	lea	rdx, [rax + 8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	jmp	.LBB244_83
.LBB244_9:
	mov	r8, qword ptr [rsi]
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	je	.LBB244_107
# %bb.10:
	lea	rdx, [r8 + r9]
	dec	r9
	inc	r8
	xor	eax, eax
	xor	ecx, ecx
	.p2align	4
.LBB244_11:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB244_13
# %bb.12:                               #   in Loop: Header=BB244_11 Depth=1
	cmp	r10b, 1
	ja	.LBB244_85
.LBB244_13:                             #   in Loop: Header=BB244_11 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rax, r11
	test	r10b, r10b
	jns	.LBB244_106
# %bb.14:                               #   in Loop: Header=BB244_11 Depth=1
	add	ecx, 7
	inc	r8
	add	r9, -1
	jb	.LBB244_11
	jmp	.LBB244_67
.LBB244_16:
	mov	byte ptr [rdi + 8], 12
	mov	word ptr [rdi + 10], cx
	mov	qword ptr [rdi], 46
	ret
.LBB244_17:
	mov	rcx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, 2
	jbe	.LBB244_86
# %bb.18:
	add	rax, -3
	lea	rdx, [rcx + 3]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rax
	movzx	eax, word ptr [rcx]
	movzx	edx, byte ptr [rcx + 2]
	mov	ecx, edx
	shl	ecx, 16
	or	ecx, eax
	shr	ecx, 8
	jmp	.LBB244_21
.LBB244_19:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_87
# %bb.20:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, eax
	shr	edx, 16
.LBB244_21:
	mov	r9d, 29
	xor	esi, esi
	jmp	.LBB244_116
.LBB244_22:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 16
	jb	.LBB244_119
# %bb.23:
	add	rcx, -16
	lea	rdx, [rax + 16]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 1
	mov	r8d, 16
	jmp	.LBB244_117
.LBB244_24:
	mov	r8, qword ptr [rsi]
	mov	rdx, qword ptr [rsi + 8]
	dec	rdx
	xor	ecx, ecx
	xor	eax, eax
	jmp	.LBB244_26
	.p2align	4
.LBB244_25:                             #   in Loop: Header=BB244_26 Depth=1
	mov	r10d, r9d
	and	r10d, 127
	shl	r10, cl
	or	rax, r10
	add	ecx, 7
	dec	rdx
	test	r9b, r9b
	jns	.LBB244_105
.LBB244_26:                             # =>This Inner Loop Header: Depth=1
	mov	r9, r8
	cmp	rdx, -1
	je	.LBB244_103
# %bb.27:                               #   in Loop: Header=BB244_26 Depth=1
	lea	r8, [r9 + 1]
	mov	qword ptr [rsi], r8
	mov	qword ptr [rsi + 8], rdx
	movzx	r9d, byte ptr [r9]
	cmp	ecx, 63
	jne	.LBB244_25
# %bb.28:                               #   in Loop: Header=BB244_26 Depth=1
	cmp	r9d, 127
	je	.LBB244_25
# %bb.29:                               #   in Loop: Header=BB244_26 Depth=1
	test	r9d, r9d
	je	.LBB244_25
# %bb.30:
	mov	al, 7
                                        # implicit-def: $r9
	jmp	.LBB244_104
.LBB244_31:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB244_74
# %bb.32:
	dec	rcx
	lea	rdx, [rax + 1]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	cmp	byte ptr [rax], 0
	setne	al
	mov	r9d, 9
	jmp	.LBB244_72
.LBB244_33:
	mov	r8, qword ptr [rsi]
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	je	.LBB244_107
# %bb.34:
	lea	rdx, [r8 + r9]
	dec	r9
	inc	r8
	xor	eax, eax
	xor	ecx, ecx
	.p2align	4
.LBB244_35:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB244_37
# %bb.36:                               #   in Loop: Header=BB244_35 Depth=1
	cmp	r10b, 1
	ja	.LBB244_85
.LBB244_37:                             #   in Loop: Header=BB244_35 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rax, r11
	test	r10b, r10b
	jns	.LBB244_115
# %bb.38:                               #   in Loop: Header=BB244_35 Depth=1
	add	ecx, 7
	inc	r8
	add	r9, -1
	jb	.LBB244_35
	jmp	.LBB244_67
.LBB244_107:
	mov	rdx, r8
	mov	al, 19
	jmp	.LBB244_113
.LBB244_40:
	cmp	dl, 8
	jne	.LBB244_88
# %bb.41:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 7
	jbe	.LBB244_102
# %bb.42:
	add	rcx, -8
	lea	rdx, [rax + 8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	jmp	.LBB244_90
.LBB244_43:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 1
	jbe	.LBB244_91
# %bb.44:
	add	rcx, -2
	lea	rdx, [rax + 2]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	eax, word ptr [rax]
	mov	ecx, eax
	shr	ecx, 8
	mov	r9d, 3
	jmp	.LBB244_73
.LBB244_45:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB244_119
# %bb.46:
	xor	r8d, r8d
	.p2align	4
.LBB244_47:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rax + r8], 0
	je	.LBB244_110
# %bb.48:                               #   in Loop: Header=BB244_47 Depth=1
	inc	r8
	cmp	rcx, r8
	jne	.LBB244_47
	jmp	.LBB244_119
.LBB244_49:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 7
	jbe	.LBB244_102
# %bb.50:
	add	rcx, -8
	lea	rdx, [rax + 8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 5
	jmp	.LBB244_116
.LBB244_51:
	mov	rdx, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_92
# %bb.52:
	add	rcx, -4
	lea	rax, [rdx + 4]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], rcx
	mov	r8d, dword ptr [rdx]
	sub	rcx, r8
	jae	.LBB244_55
	jmp	.LBB244_119
.LBB244_53:
	mov	rdx, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB244_108
# %bb.54:
	dec	rcx
	lea	rax, [rdx + 1]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], rcx
	movzx	r8d, byte ptr [rdx]
	sub	rcx, r8
	jb	.LBB244_119
.LBB244_55:
	lea	rdx, [rax + r8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
.LBB244_56:
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 1
	jmp	.LBB244_117
.LBB244_57:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 1
	jbe	.LBB244_94
# %bb.58:
	add	rcx, -2
	lea	rdx, [rax + 2]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	eax, word ptr [rax]
	mov	ecx, eax
	shr	ecx, 8
	mov	r9d, 29
	jmp	.LBB244_73
.LBB244_59:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB244_74
# %bb.60:
	dec	rcx
	lea	rdx, [rax + 1]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	eax, byte ptr [rax]
	mov	r9d, 2
	jmp	.LBB244_72
.LBB244_61:
	mov	rax, qword ptr [rsi]
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	je	.LBB244_109
# %bb.62:
	lea	rdx, [rax + r9]
	dec	r9
	inc	rax
	xor	r8d, r8d
	xor	ecx, ecx
	.p2align	4
.LBB244_63:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB244_65
# %bb.64:                               #   in Loop: Header=BB244_63 Depth=1
	cmp	r10b, 1
	ja	.LBB244_111
.LBB244_65:                             #   in Loop: Header=BB244_63 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	r8, r11
	test	r10b, r10b
	jns	.LBB244_118
# %bb.66:                               #   in Loop: Header=BB244_63 Depth=1
	add	ecx, 7
	inc	rax
	add	r9, -1
	jb	.LBB244_63
.LBB244_67:
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], 0
	mov	al, 19
	jmp	.LBB244_113
.LBB244_68:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_95
# %bb.69:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, eax
	shr	edx, 16
	mov	r9d, 4
	xor	esi, esi
	jmp	.LBB244_116
.LBB244_70:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.LBB244_74
# %bb.71:
	dec	rcx
	lea	rdx, [rax + 1]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	eax, byte ptr [rax]
	mov	r9d, 29
.LBB244_72:
	xor	ecx, ecx
.LBB244_73:
	xor	edx, edx
	xor	esi, esi
	jmp	.LBB244_116
.LBB244_74:
	mov	word ptr [rdi + 8], 19
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_75:
	cmp	dl, 8
	jne	.LBB244_96
# %bb.76:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 7
	jbe	.LBB244_102
# %bb.77:
	add	rcx, -8
	lea	rdx, [rax + 8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	jmp	.LBB244_98
.LBB244_78:
	cmp	dl, 8
	jne	.LBB244_99
# %bb.79:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 7
	jbe	.LBB244_102
# %bb.80:
	add	rcx, -8
	lea	rdx, [rax + 8]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	jmp	.LBB244_101
.LBB244_81:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_102
# %bb.82:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
.LBB244_83:
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 27
	jmp	.LBB244_116
.LBB244_85:
	mov	qword ptr [rsi], r8
	jmp	.LBB244_112
.LBB244_86:
	mov	byte ptr [rdi + 8], 19
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	dword ptr [rdi + 9], 0
	mov	qword ptr [rdi + 16], rcx
	mov	qword ptr [rdi], 46
	ret
.LBB244_87:
	mov	dword ptr [rdi + 9], 0
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	byte ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_88:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_102
# %bb.89:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
.LBB244_90:
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 26
	jmp	.LBB244_116
.LBB244_91:
	mov	word ptr [rsp - 8], 0
	mov	dword ptr [rsp - 6], 0
	movzx	ecx, word ptr [rsp - 7]
	mov	word ptr [rdi + 8], 19
	mov	word ptr [rdi + 10], cx
	mov	dword ptr [rdi + 12], 0
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_92:
	mov	dword ptr [rdi + 9], 0
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	byte ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], rdx
	mov	qword ptr [rdi], 46
	ret
.LBB244_93:
	mov	word ptr [rdi + 9], 0
	mov	byte ptr [rdi + 15], 0
	mov	dword ptr [rdi + 11], 0
	mov	byte ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], rdx
	mov	qword ptr [rdi], 46
	ret
.LBB244_94:
	mov	word ptr [rdi + 9], 0
	mov	byte ptr [rdi + 15], 0
	mov	dword ptr [rdi + 11], 0
	mov	byte ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_95:
	mov	dword ptr [rsp - 16], 0
	mov	byte ptr [rsp - 10], 0
	mov	word ptr [rsp - 12], 0
	movzx	ecx, byte ptr [rsp - 14]
	mov	byte ptr [rdi + 11], cl
	mov	word ptr [rdi + 9], 0
	mov	ecx, dword ptr [rsp - 13]
	mov	byte ptr [rdi + 8], 19
	mov	dword ptr [rdi + 12], ecx
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_96:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_102
# %bb.97:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
.LBB244_98:
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 30
	jmp	.LBB244_116
.LBB244_99:
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	cmp	rcx, 3
	jbe	.LBB244_102
# %bb.100:
	add	rcx, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	eax, dword ptr [rax]
.LBB244_101:
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 10
	jmp	.LBB244_116
.LBB244_102:
	mov	byte ptr [rdi + 8], 19
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	dword ptr [rdi + 9], 0
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_103:
	mov	al, 19
.LBB244_104:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], r9
	mov	qword ptr [rdi], 46
	ret
.LBB244_105:
	mov	rdx, -1
	shl	rdx, cl
	xor	esi, esi
	cmp	r9b, 64
	cmovb	rdx, rsi
	cmp	ecx, 64
	cmovge	rdx, rsi
	or	rax, rdx
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 6
	jmp	.LBB244_116
.LBB244_106:
	mov	qword ptr [rsi], r8
	mov	qword ptr [rsi + 8], r9
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 29
	jmp	.LBB244_116
.LBB244_108:
	mov	word ptr [rdi + 8], 19
	jmp	.LBB244_114
.LBB244_109:
	mov	rdx, rax
	mov	al, 19
	jmp	.LBB244_113
.LBB244_110:
	mov	rdx, r8
	not	rdx
	add	rcx, rdx
	lea	rdx, [rax + r8]
	inc	rdx
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 31
	jmp	.LBB244_117
.LBB244_111:
	mov	qword ptr [rsi], rax
.LBB244_112:
	mov	qword ptr [rsi + 8], r9
	mov	al, 6
                                        # implicit-def: $rdx
.LBB244_113:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
.LBB244_114:
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], rdx
	mov	qword ptr [rdi], 46
	ret
.LBB244_115:
	mov	qword ptr [rsi], r8
	mov	qword ptr [rsi + 8], r9
	mov	ecx, eax
	shr	ecx, 8
	mov	rdx, rax
	shr	rdx, 16
	movabs	rsi, -4294967296
	and	rsi, rax
	mov	r9d, 7
.LBB244_116:
                                        # implicit-def: $r8
.LBB244_117:
	mov	qword ptr [rdi], r9
	shl	ecx, 8
	movzx	eax, al
	or	eax, ecx
	shl	edx, 16
	movzx	eax, ax
	or	eax, edx
	or	rax, rsi
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rdi + 16], r8
	ret
.LBB244_118:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r9
	sub	r9, r8
	jae	.LBB244_120
.LBB244_119:
	mov	qword ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 46
	ret
.LBB244_120:
	lea	rcx, [rax + r8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r9
	jmp	.LBB244_56
.Lfunc_end244:
	.size	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end244-_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI244_0:
	.long	.LBB244_2-.LJTI244_0
	.long	.LBB244_51-.LJTI244_0
	.long	.LBB244_43-.LJTI244_0
	.long	.LBB244_68-.LJTI244_0
	.long	.LBB244_49-.LJTI244_0
	.long	.LBB244_45-.LJTI244_0
	.long	.LBB244_61-.LJTI244_0
	.long	.LBB244_53-.LJTI244_0
	.long	.LBB244_59-.LJTI244_0
	.long	.LBB244_31-.LJTI244_0
	.long	.LBB244_24-.LJTI244_0
	.long	.LBB244_40-.LJTI244_0
	.long	.LBB244_33-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_78-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_9-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_6-.LJTI244_0
	.long	.LBB244_22-.LJTI244_0
	.long	.LBB244_75-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_16-.LJTI244_0
	.long	.LBB244_70-.LJTI244_0
	.long	.LBB244_57-.LJTI244_0
	.long	.LBB244_17-.LJTI244_0
	.long	.LBB244_19-.LJTI244_0
                                        # -- End function
