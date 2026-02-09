	.section	.text._RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
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
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rcx
	mov	r9d, edx
	shr	r9d, 8
	mov	ecx, edx
	shr	ecx, 16
	movzx	r11d, word ptr [rbx + 10]
	mov	r15, qword ptr [rsi]
	mov	r12, qword ptr [rsi + 8]
	lea	r14, [rip + .LJTI206_0]
	mov	ebp, r11d
.LBB206_1:                              # =>This Inner Loop Header: Depth=1
	mov	rax, r15
	mov	r8, r12
	movzx	r15d, bp
	lea	r12d, [r15 - 1]
	cmp	r12d, 43
	ja	.LBB206_10
# %bb.2:                                #   in Loop: Header=BB206_1 Depth=1
	movsxd	r15, dword ptr [r14 + 4*r12]
	add	r15, r14
	jmp	r15
.LBB206_3:                              #   in Loop: Header=BB206_1 Depth=1
	test	r8, r8
	je	.LBB206_170
# %bb.4:                                #   in Loop: Header=BB206_1 Depth=1
	mov	r10d, ebp
	lea	r12, [r8 - 1]
	lea	r15, [rax + 1]
	mov	qword ptr [rsi], r15
	mov	qword ptr [rsi + 8], r12
	movzx	r13d, byte ptr [rax]
	mov	ebp, r13d
	and	ebp, 127
	test	r13b, r13b
	jns	.LBB206_1
# %bb.5:                                #   in Loop: Header=BB206_1 Depth=1
	test	r12, r12
	je	.LBB206_195
# %bb.6:                                #   in Loop: Header=BB206_1 Depth=1
	lea	r12, [r8 - 2]
	lea	r15, [rax + 2]
	mov	qword ptr [rsi], r15
	mov	qword ptr [rsi + 8], r12
	mov	qword ptr [rsp + 16], rsi       # 8-byte Spill
	mov	rsi, rdi
	mov	rdi, rbx
	movzx	ebx, byte ptr [rax + 1]
	mov	r13d, ebx
	and	r13d, 127
	shl	r13d, 7
	movzx	ebp, bp
	or	ebp, r13d
	test	bl, bl
	mov	rbx, rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	jns	.LBB206_1
# %bb.7:                                #   in Loop: Header=BB206_1 Depth=1
	test	r12, r12
	je	.LBB206_195
# %bb.8:                                #   in Loop: Header=BB206_1 Depth=1
	add	r8, -3
	lea	r15, [rax + 3]
	mov	qword ptr [rsi], r15
	mov	qword ptr [rsi + 8], r8
	movzx	eax, byte ptr [rax + 2]
	cmp	ax, 3
	ja	.LBB206_233
# %bb.9:                                #   in Loop: Header=BB206_1 Depth=1
	movzx	eax, ax
	shl	eax, 14
	movzx	ebp, bp
	or	ebp, eax
	mov	r12, r8
	jmp	.LBB206_1
.LBB206_10:
	add	r15d, -7937
	cmp	r15d, 32
	ja	.LBB206_171
# %bb.11:
	lea	rcx, [rip + .LJTI206_1]
	movsxd	rdx, dword ptr [rcx + 4*r15]
	add	rdx, rcx
	jmp	rdx
.LBB206_12:
	test	r8, r8
	je	.LBB206_207
# %bb.13:
	lea	r9, [rax + r8]
	dec	r8
	inc	rax
	xor	edx, edx
	xor	ecx, ecx
	.p2align	4
.LBB206_14:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_16
# %bb.15:                               #   in Loop: Header=BB206_14 Depth=1
	cmp	r10b, 1
	ja	.LBB206_150
.LBB206_16:                             #   in Loop: Header=BB206_14 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rdx, r11
	test	r10b, r10b
	jns	.LBB206_200
# %bb.17:                               #   in Loop: Header=BB206_14 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_14
	jmp	.LBB206_149
.LBB206_19:
	test	r8, r8
	je	.LBB206_207
# %bb.20:
	lea	r9, [rax + r8]
	dec	r8
	inc	rax
	xor	edx, edx
	xor	ecx, ecx
	.p2align	4
.LBB206_21:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_23
# %bb.22:                               #   in Loop: Header=BB206_21 Depth=1
	cmp	r10b, 1
	ja	.LBB206_150
.LBB206_23:                             #   in Loop: Header=BB206_21 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rdx, r11
	test	r10b, r10b
	jns	.LBB206_201
# %bb.24:                               #   in Loop: Header=BB206_21 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_21
	jmp	.LBB206_149
.LBB206_26:
	cmp	r9b, 8
	jne	.LBB206_32
# %bb.27:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.28:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	jmp	.LBB206_34
.LBB206_29:
	cmp	r9b, 8
	jne	.LBB206_175
.LBB206_30:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.31:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	jmp	.LBB206_177
.LBB206_32:
	cmp	r8, 3
	jbe	.LBB206_193
# %bb.33:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
.LBB206_34:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 27
	jmp	.LBB206_165
.LBB206_35:
	cmp	r8, 2
	jbe	.LBB206_193
# %bb.36:
	add	r8, -3
	lea	rcx, [rax + 3]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	movzx	esi, byte ptr [rax + 2]
	mov	ecx, esi
	shl	ecx, 16
	or	ecx, edx
	shr	ecx, 8
	mov	r10d, 29
	jmp	.LBB206_164
.LBB206_37:
	cmp	r9b, 8
	jne	.LBB206_178
# %bb.38:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.39:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	jmp	.LBB206_180
.LBB206_40:
	cmp	r8, 3
	jbe	.LBB206_160
# %bb.41:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	esi, edx
	shr	esi, 16
	mov	r10d, 12
	jmp	.LBB206_164
.LBB206_42:
	cmp	r8, 1
	jbe	.LBB206_167
# %bb.43:
	add	r8, -2
	lea	rcx, [rax + 2]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	r10d, 13
	jmp	.LBB206_163
.LBB206_44:
	test	r8, r8
	je	.LBB206_207
# %bb.45:
	lea	r9, [rax + r8]
	dec	r8
	inc	rax
	xor	edx, edx
	xor	ecx, ecx
.LBB206_46:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_48
# %bb.47:                               #   in Loop: Header=BB206_46 Depth=1
	cmp	r10b, 1
	ja	.LBB206_150
.LBB206_48:                             #   in Loop: Header=BB206_46 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rdx, r11
	test	r10b, r10b
	jns	.LBB206_212
# %bb.49:                               #   in Loop: Header=BB206_46 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_46
	jmp	.LBB206_149
.LBB206_51:
	cmp	r8, 3
	jbe	.LBB206_160
# %bb.52:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	esi, edx
	shr	esi, 16
	mov	r10d, 13
	jmp	.LBB206_164
.LBB206_53:
	test	r8, r8
	je	.LBB206_207
# %bb.54:
	lea	r9, [rax + r8]
	dec	r8
	inc	rax
	xor	edx, edx
	xor	ecx, ecx
.LBB206_55:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_57
# %bb.56:                               #   in Loop: Header=BB206_55 Depth=1
	cmp	r10b, 1
	ja	.LBB206_150
.LBB206_57:                             #   in Loop: Header=BB206_55 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rdx, r11
	test	r10b, r10b
	jns	.LBB206_213
# %bb.58:                               #   in Loop: Header=BB206_55 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_55
	jmp	.LBB206_149
.LBB206_60:
	test	r8, r8
	je	.LBB206_140
# %bb.61:
	dec	r8
	lea	rcx, [rax + 1]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, byte ptr [rax]
	mov	r10d, 13
	xor	ecx, ecx
	jmp	.LBB206_163
.LBB206_62:
	test	r8, r8
	je	.LBB206_207
# %bb.63:
	lea	r9, [rax + r8]
	dec	r8
	inc	rax
	xor	edx, edx
	xor	ecx, ecx
.LBB206_64:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_66
# %bb.65:                               #   in Loop: Header=BB206_64 Depth=1
	cmp	r10b, 1
	ja	.LBB206_150
.LBB206_66:                             #   in Loop: Header=BB206_64 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rdx, r11
	test	r10b, r10b
	jns	.LBB206_215
# %bb.67:                               #   in Loop: Header=BB206_64 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_64
	jmp	.LBB206_149
.LBB206_69:
	test	r8, r8
	je	.LBB206_142
# %bb.70:
	dec	r8
	lea	rdx, [rax + 1]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], r8
	movzx	r9d, byte ptr [rax]
	jmp	.LBB206_115
.LBB206_71:
	cmp	r8, 4
	jb	.LBB206_142
# %bb.72:
	add	r8, -4
	lea	rdx, [rax + 4]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], r8
	mov	r9d, dword ptr [rax]
	jmp	.LBB206_115
.LBB206_73:
	cmp	r8, 1
	jbe	.LBB206_167
# %bb.74:
	add	r8, -2
	lea	rcx, [rax + 2]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	r10d, 12
	jmp	.LBB206_163
.LBB206_75:
	test	r8, r8
	je	.LBB206_140
# %bb.76:
	dec	r8
	lea	rcx, [rax + 1]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	cmp	byte ptr [rax], 0
	setne	dl
	mov	r10d, 9
	xor	ecx, ecx
	jmp	.LBB206_163
.LBB206_77:
	and	edx, 65280
	cmp	edx, 2048
	jne	.LBB206_81
# %bb.78:
	movzx	edx, word ptr [rbx + 8]
	add	edx, -2
	cmp	edx, 119
	ja	.LBB206_81
# %bb.79:
	lea	r9, [rip + .LJTI206_2]
	movsxd	rdx, dword ptr [r9 + 4*rdx]
	add	rdx, r9
	jmp	rdx
.LBB206_80:
	and	ecx, 65534
	cmp	cx, 2
	je	.LBB206_118
.LBB206_81:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.82:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 5
	jmp	.LBB206_165
.LBB206_83:
	test	r8, r8
	je	.LBB206_206
# %bb.84:
	lea	rdx, [rax + r8]
	dec	r8
	inc	rax
	xor	r9d, r9d
	xor	ecx, ecx
.LBB206_85:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_87
# %bb.86:                               #   in Loop: Header=BB206_85 Depth=1
	cmp	r10b, 1
	ja	.LBB206_199
.LBB206_87:                             #   in Loop: Header=BB206_85 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	r9, r11
	test	r10b, r10b
	jns	.LBB206_218
# %bb.88:                               #   in Loop: Header=BB206_85 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_85
	jmp	.LBB206_100
.LBB206_90:
	movzx	ecx, dl
	dec	ecx
	cmp	ecx, 7
	ja	.LBB206_230
# %bb.91:
	lea	r9, [rip + .LJTI206_4]
	movsxd	rcx, dword ptr [r9 + 4*rcx]
	add	rcx, r9
	jmp	rcx
.LBB206_92:
	test	r8, r8
	je	.LBB206_229
# %bb.93:
	dec	r8
	lea	rcx, [rax + 1]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, byte ptr [rax]
	jmp	.LBB206_228
.LBB206_94:
	test	r8, r8
	je	.LBB206_206
# %bb.95:
	lea	rdx, [rax + r8]
	dec	r8
	inc	rax
	xor	r9d, r9d
	xor	ecx, ecx
.LBB206_96:                             # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_98
# %bb.97:                               #   in Loop: Header=BB206_96 Depth=1
	cmp	r10b, 1
	ja	.LBB206_199
.LBB206_98:                             #   in Loop: Header=BB206_96 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	r9, r11
	test	r10b, r10b
	jns	.LBB206_216
# %bb.99:                               #   in Loop: Header=BB206_96 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_96
.LBB206_100:
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], 0
	mov	ecx, 19
	jmp	.LBB206_220
.LBB206_101:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.102:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	jmp	.LBB206_214
.LBB206_103:
	test	r8, r8
	je	.LBB206_140
# %bb.104:
	dec	r8
	lea	rcx, [rax + 1]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, byte ptr [rax]
	mov	r10d, 12
	xor	ecx, ecx
	jmp	.LBB206_163
.LBB206_105:
	cmp	r8, 3
	jbe	.LBB206_160
# %bb.106:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	esi, edx
	shr	esi, 16
	mov	r10d, 15
	jmp	.LBB206_164
.LBB206_107:
	test	r8, r8
	je	.LBB206_142
# %bb.108:
	xor	r9d, r9d
	.p2align	4
.LBB206_109:                            # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rax + r9], 0
	je	.LBB206_210
# %bb.110:                              #   in Loop: Header=BB206_109 Depth=1
	inc	r9
	cmp	r8, r9
	jne	.LBB206_109
	jmp	.LBB206_142
.LBB206_111:
	cmp	r8, 1
	jbe	.LBB206_181
# %bb.112:
	add	r8, -2
	lea	rcx, [rax + 2]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	r10d, 3
	jmp	.LBB206_163
.LBB206_113:
	cmp	r8, 2
	jb	.LBB206_142
# %bb.114:
	add	r8, -2
	lea	rdx, [rax + 2]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], r8
	movzx	r9d, word ptr [rax]
.LBB206_115:
	sub	r8, r9
	jae	.LBB206_172
# %bb.116:
	mov	rax, rdx
	jmp	.LBB206_142
.LBB206_117:
	cmp	r9b, 8
	jne	.LBB206_182
.LBB206_118:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.119:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	jmp	.LBB206_184
.LBB206_120:
	mov	r14, rdi
	cmp	ecx, 2
	jne	.LBB206_185
# %bb.121:
	movzx	edx, dl
	mov	rdi, rsp
	call	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader17read_sized_offsetCs3bNtqN8jaZB_3std
	jmp	.LBB206_186
.LBB206_122:
	and	edx, 65280
	cmp	edx, 1024
	jne	.LBB206_241
# %bb.123:
	movzx	edx, word ptr [rbx + 8]
	add	edx, -2
	cmp	edx, 119
	ja	.LBB206_241
# %bb.124:
	lea	r9, [rip + .LJTI206_3]
	movsxd	rdx, dword ptr [r9 + 4*rdx]
	add	rdx, r9
	jmp	rdx
.LBB206_125:
	cmp	r8, 3
	jbe	.LBB206_211
# %bb.126:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	esi, edx
	shr	esi, 16
	mov	r10d, 10
	jmp	.LBB206_164
.LBB206_127:
	test	r8, r8
	je	.LBB206_140
# %bb.128:
	dec	r8
	lea	rcx, [rax + 1]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, byte ptr [rax]
	mov	r10d, 2
	xor	ecx, ecx
	jmp	.LBB206_163
.LBB206_129:
	dec	r8
	xor	ecx, ecx
	xor	edx, edx
	jmp	.LBB206_131
	.p2align	4
.LBB206_130:                            #   in Loop: Header=BB206_131 Depth=1
	mov	r10d, r9d
	and	r10d, 127
	shl	r10, cl
	or	rdx, r10
	add	ecx, 7
	dec	r8
	test	r9b, r9b
	jns	.LBB206_197
.LBB206_131:                            # =>This Inner Loop Header: Depth=1
	mov	r9, rax
	cmp	r8, -1
	je	.LBB206_208
# %bb.132:                              #   in Loop: Header=BB206_131 Depth=1
	lea	rax, [r9 + 1]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	movzx	r9d, byte ptr [r9]
	cmp	ecx, 63
	jne	.LBB206_130
# %bb.133:                              #   in Loop: Header=BB206_131 Depth=1
	cmp	r9d, 127
	je	.LBB206_130
# %bb.134:                              #   in Loop: Header=BB206_131 Depth=1
	test	r9d, r9d
	je	.LBB206_130
# %bb.135:
	mov	al, 7
	jmp	.LBB206_151
.LBB206_136:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.137:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 25
	jmp	.LBB206_165
.LBB206_138:
	test	r8, r8
	je	.LBB206_140
# %bb.139:
	dec	r8
	lea	rcx, [rax + 1]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, byte ptr [rax]
	mov	r10d, 29
	xor	ecx, ecx
	jmp	.LBB206_163
.LBB206_140:
	mov	word ptr [rdi + 8], 19
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	jmp	.LBB206_236
.LBB206_141:
	cmp	r8, 16
	jae	.LBB206_189
.LBB206_142:
	mov	qword ptr [rdi + 8], 19
	jmp	.LBB206_236
.LBB206_143:
	test	r8, r8
	je	.LBB206_207
# %bb.144:
	lea	r9, [rax + r8]
	dec	r8
	inc	rax
	xor	edx, edx
	xor	ecx, ecx
.LBB206_145:                            # =>This Inner Loop Header: Depth=1
	movzx	r10d, byte ptr [rax - 1]
	cmp	ecx, 63
	jne	.LBB206_147
# %bb.146:                              #   in Loop: Header=BB206_145 Depth=1
	cmp	r10b, 1
	ja	.LBB206_150
.LBB206_147:                            #   in Loop: Header=BB206_145 Depth=1
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	rdx, r11
	test	r10b, r10b
	jns	.LBB206_221
# %bb.148:                              #   in Loop: Header=BB206_145 Depth=1
	add	ecx, 7
	inc	rax
	add	r8, -1
	jb	.LBB206_145
.LBB206_149:
	mov	qword ptr [rsi], r9
	mov	qword ptr [rsi + 8], 0
	jmp	.LBB206_208
.LBB206_207:
	mov	r9, rax
.LBB206_208:
	mov	al, 19
	jmp	.LBB206_209
.LBB206_150:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	al, 6
.LBB206_151:
                                        # implicit-def: $r9
.LBB206_209:
	mov	byte ptr [rdi + 8], al
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 14], 0
	mov	dword ptr [rdi + 10], 0
	mov	qword ptr [rdi + 16], r9
	jmp	.LBB206_237
.LBB206_152:
	cmp	r9b, 8
	jne	.LBB206_190
# %bb.153:
	cmp	r8, 7
	jbe	.LBB206_193
# %bb.154:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
	jmp	.LBB206_192
.LBB206_155:
	mov	r10d, 9
	xor	ecx, ecx
	mov	dl, 1
	jmp	.LBB206_163
.LBB206_156:
	cmp	r8, 2
	jbe	.LBB206_193
# %bb.157:
	add	r8, -3
	lea	rcx, [rax + 3]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	movzx	esi, byte ptr [rax + 2]
	mov	ecx, esi
	shl	ecx, 16
	or	ecx, edx
	shr	ecx, 8
	mov	r10d, 12
	jmp	.LBB206_164
.LBB206_158:
	cmp	r8, 3
	jbe	.LBB206_160
# %bb.159:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	esi, edx
	shr	esi, 16
	mov	r10d, 29
	jmp	.LBB206_164
.LBB206_160:
	mov	dword ptr [rdi + 9], 0
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	byte ptr [rdi + 8], 19
	jmp	.LBB206_236
.LBB206_161:
	cmp	r8, 1
	jbe	.LBB206_167
# %bb.162:
	add	r8, -2
	lea	rcx, [rax + 2]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	r10d, 29
.LBB206_163:
	xor	esi, esi
.LBB206_164:
	xor	r8d, r8d
.LBB206_165:
                                        # implicit-def: $r9
.LBB206_166:
	movzx	eax, word ptr [rbx + 8]
	shl	ecx, 8
	movzx	edx, dl
	or	edx, ecx
	shl	esi, 16
	movzx	ecx, dx
	or	ecx, esi
	or	rcx, r8
	mov	qword ptr [rdi], r10
	mov	qword ptr [rdi + 8], rcx
	mov	qword ptr [rdi + 16], r9
	mov	word ptr [rdi + 24], ax
	jmp	.LBB206_238
.LBB206_167:
	mov	word ptr [rdi + 9], 0
	mov	byte ptr [rdi + 15], 0
	mov	dword ptr [rdi + 11], 0
	mov	byte ptr [rdi + 8], 19
	jmp	.LBB206_236
.LBB206_168:
	cmp	r11w, 33
	jne	.LBB206_194
# %bb.169:
	mov	rdx, qword ptr [rbx]
	jmp	.LBB206_198
.LBB206_170:
	mov	cl, 19
	xor	r10d, r10d
	jmp	.LBB206_234
.LBB206_171:
	mov	byte ptr [rdi + 8], 12
	mov	word ptr [rdi + 10], bp
	jmp	.LBB206_237
.LBB206_172:
	lea	rax, [rdx + r9]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 1
	jmp	.LBB206_166
.LBB206_206:
	mov	rdx, rax
	mov	ecx, 19
	jmp	.LBB206_220
.LBB206_175:
	cmp	r8, 3
	jbe	.LBB206_193
# %bb.176:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
.LBB206_177:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 15
	jmp	.LBB206_165
.LBB206_178:
	cmp	r8, 3
	jbe	.LBB206_193
# %bb.179:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
.LBB206_180:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 30
	jmp	.LBB206_165
.LBB206_181:
	mov	word ptr [rsp], 0
	mov	dword ptr [rsp + 2], 0
	movzx	ecx, word ptr [rsp + 1]
	mov	word ptr [rdi + 8], 19
	mov	word ptr [rdi + 10], cx
	jmp	.LBB206_235
.LBB206_182:
	cmp	r8, 3
	jbe	.LBB206_193
# %bb.183:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
.LBB206_184:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 10
	jmp	.LBB206_165
.LBB206_185:
	movzx	edx, r9b
	mov	rdi, rsp
	call	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader11read_offsetCs3bNtqN8jaZB_3std
.LBB206_186:
	movzx	eax, byte ptr [rsp]
	cmp	al, 82
	jne	.LBB206_188
# %bb.187:
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, r14
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 14
	jmp	.LBB206_165
.LBB206_188:
	mov	ecx, dword ptr [rsp + 1]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [r14 + 12], edx
	mov	dword ptr [r14 + 9], ecx
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [r14 + 8], al
	mov	qword ptr [r14 + 16], rcx
	mov	qword ptr [r14], 46
	jmp	.LBB206_238
.LBB206_189:
	add	r8, -16
	lea	rcx, [rax + 16]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	ecx, eax
	shr	ecx, 8
	mov	rsi, rax
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rax
	mov	r10d, 1
	mov	r9d, 16
	mov	edx, eax
	jmp	.LBB206_166
.LBB206_190:
	cmp	r8, 3
	jbe	.LBB206_193
# %bb.191:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
.LBB206_192:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 26
	jmp	.LBB206_165
.LBB206_193:
	mov	byte ptr [rdi + 8], 19
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	mov	dword ptr [rdi + 9], 0
	jmp	.LBB206_236
.LBB206_194:
	mov	byte ptr [rdi + 8], 73
	jmp	.LBB206_237
.LBB206_195:
	mov	cl, 19
	xor	r10d, r10d
	mov	rax, r15
	jmp	.LBB206_234
.LBB206_197:
	mov	rax, -1
	shl	rax, cl
	xor	esi, esi
	cmp	r9b, 64
	cmovb	rax, rsi
	cmp	ecx, 64
	cmovge	rax, rsi
	or	rdx, rax
.LBB206_198:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 6
	jmp	.LBB206_165
.LBB206_199:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, 6
                                        # implicit-def: $rdx
	jmp	.LBB206_220
.LBB206_200:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 12
	jmp	.LBB206_165
.LBB206_201:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 29
	jmp	.LBB206_165
.LBB206_210:
	mov	rcx, r9
	not	rcx
	add	r8, rcx
	lea	rcx, [rax + r9]
	inc	rcx
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	ecx, eax
	shr	ecx, 8
	mov	rsi, rax
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rax
	mov	r10d, 31
	mov	edx, eax
	jmp	.LBB206_166
.LBB206_211:
	mov	byte ptr [rdi + 8], 19
	mov	dword ptr [rdi + 9], 0
	jmp	.LBB206_232
.LBB206_212:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 19
	jmp	.LBB206_165
.LBB206_213:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
.LBB206_214:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 13
	jmp	.LBB206_165
.LBB206_215:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 24
	jmp	.LBB206_165
.LBB206_216:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	sub	r8, r9
	jb	.LBB206_219
# %bb.217:
	lea	rcx, [rax + r9]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	ecx, eax
	shr	ecx, 8
	mov	rsi, rax
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rax
	mov	r10d, 1
	mov	edx, eax
	jmp	.LBB206_166
.LBB206_218:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	sub	r8, r9
	jae	.LBB206_239
.LBB206_219:
	mov	ecx, 19
	mov	rdx, rax
.LBB206_220:
	mov	qword ptr [rdi + 8], rcx
	mov	qword ptr [rdi + 16], rdx
	jmp	.LBB206_237
.LBB206_221:
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r8
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	mov	r10d, 7
	jmp	.LBB206_165
.LBB206_222:
	cmp	r8, 3
	jbe	.LBB206_229
# %bb.223:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	jmp	.LBB206_228
.LBB206_224:
	cmp	r8, 1
	jbe	.LBB206_229
# %bb.225:
	add	r8, -2
	lea	rcx, [rax + 2]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	edx, word ptr [rax]
	jmp	.LBB206_228
.LBB206_226:
	cmp	r8, 7
	jbe	.LBB206_229
# %bb.227:
	add	r8, -8
	lea	rcx, [rax + 8]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	edx, dword ptr [rax]
	shl	rsi, 40
	shl	rdx, 8
	or	rdx, rsi
	shrd	rdx, rcx, 8
.LBB206_228:
	mov	ecx, edx
	shr	ecx, 8
	mov	rsi, rdx
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rdx
	xor	r10d, r10d
	jmp	.LBB206_165
.LBB206_229:
	mov	cl, 19
	xor	edx, edx
	jmp	.LBB206_231
.LBB206_230:
	movzx	edx, dl
	mov	cl, 25
                                        # implicit-def: $rax
.LBB206_231:
	mov	byte ptr [rdi + 8], cl
	mov	dword ptr [rdi + 9], edx
.LBB206_232:
	mov	byte ptr [rdi + 15], 0
	mov	word ptr [rdi + 13], 0
	jmp	.LBB206_236
.LBB206_233:
	mov	cl, 6
                                        # implicit-def: $rax
.LBB206_234:
	mov	byte ptr [rdi + 8], cl
	mov	byte ptr [rdi + 9], 0
	mov	word ptr [rdi + 10], r10w
.LBB206_235:
	mov	dword ptr [rdi + 12], 0
.LBB206_236:
	mov	qword ptr [rdi + 16], rax
.LBB206_237:
	mov	qword ptr [rdi], 46
.LBB206_238:
	add	rsp, 24
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
.LBB206_239:
	.cfi_def_cfa_offset 80
	lea	rcx, [rax + r9]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	ecx, eax
	shr	ecx, 8
	mov	rsi, rax
	shr	rsi, 16
	movabs	r8, -4294967296
	and	r8, rax
	mov	r10d, 8
	mov	edx, eax
	jmp	.LBB206_166
.LBB206_240:
	and	ecx, 65534
	cmp	cx, 2
	je	.LBB206_125
.LBB206_241:
	cmp	r8, 3
	jbe	.LBB206_243
# %bb.242:
	add	r8, -4
	lea	rcx, [rax + 4]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r8
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	shr	ecx, 8
	mov	esi, edx
	shr	esi, 16
	mov	r10d, 4
	jmp	.LBB206_164
.LBB206_243:
	mov	dword ptr [rsp], 0
	mov	byte ptr [rsp + 6], 0
	mov	word ptr [rsp + 4], 0
	movzx	ecx, byte ptr [rsp + 2]
	mov	byte ptr [rdi + 11], cl
	mov	word ptr [rdi + 9], 0
	mov	ecx, dword ptr [rsp + 3]
	mov	byte ptr [rdi + 8], 19
	mov	dword ptr [rdi + 12], ecx
	jmp	.LBB206_236
.Lfunc_end206:
	.size	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end206-_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI206_0:
	.long	.LBB206_90-.LJTI206_0
	.long	.LBB206_171-.LJTI206_0
	.long	.LBB206_113-.LJTI206_0
	.long	.LBB206_71-.LJTI206_0
	.long	.LBB206_111-.LJTI206_0
	.long	.LBB206_122-.LJTI206_0
	.long	.LBB206_77-.LJTI206_0
	.long	.LBB206_107-.LJTI206_0
	.long	.LBB206_94-.LJTI206_0
	.long	.LBB206_69-.LJTI206_0
	.long	.LBB206_127-.LJTI206_0
	.long	.LBB206_75-.LJTI206_0
	.long	.LBB206_129-.LJTI206_0
	.long	.LBB206_152-.LJTI206_0
	.long	.LBB206_143-.LJTI206_0
	.long	.LBB206_120-.LJTI206_0
	.long	.LBB206_60-.LJTI206_0
	.long	.LBB206_42-.LJTI206_0
	.long	.LBB206_51-.LJTI206_0
	.long	.LBB206_101-.LJTI206_0
	.long	.LBB206_53-.LJTI206_0
	.long	.LBB206_3-.LJTI206_0
	.long	.LBB206_117-.LJTI206_0
	.long	.LBB206_83-.LJTI206_0
	.long	.LBB206_155-.LJTI206_0
	.long	.LBB206_19-.LJTI206_0
	.long	.LBB206_12-.LJTI206_0
	.long	.LBB206_105-.LJTI206_0
	.long	.LBB206_26-.LJTI206_0
	.long	.LBB206_141-.LJTI206_0
	.long	.LBB206_37-.LJTI206_0
	.long	.LBB206_136-.LJTI206_0
	.long	.LBB206_168-.LJTI206_0
	.long	.LBB206_44-.LJTI206_0
	.long	.LBB206_62-.LJTI206_0
	.long	.LBB206_30-.LJTI206_0
	.long	.LBB206_138-.LJTI206_0
	.long	.LBB206_161-.LJTI206_0
	.long	.LBB206_35-.LJTI206_0
	.long	.LBB206_158-.LJTI206_0
	.long	.LBB206_103-.LJTI206_0
	.long	.LBB206_73-.LJTI206_0
	.long	.LBB206_156-.LJTI206_0
	.long	.LBB206_40-.LJTI206_0
.LJTI206_1:
	.long	.LBB206_12-.LJTI206_1
	.long	.LBB206_19-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_171-.LJTI206_1
	.long	.LBB206_29-.LJTI206_1
	.long	.LBB206_26-.LJTI206_1
.LJTI206_2:
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_80-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_81-.LJTI206_2
	.long	.LBB206_118-.LJTI206_2
.LJTI206_3:
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_240-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_241-.LJTI206_3
	.long	.LBB206_125-.LJTI206_3
.LJTI206_4:
	.long	.LBB206_92-.LJTI206_4
	.long	.LBB206_224-.LJTI206_4
	.long	.LBB206_230-.LJTI206_4
	.long	.LBB206_222-.LJTI206_4
	.long	.LBB206_230-.LJTI206_4
	.long	.LBB206_230-.LJTI206_4
	.long	.LBB206_230-.LJTI206_4
	.long	.LBB206_226-.LJTI206_4
                                        # -- End function
