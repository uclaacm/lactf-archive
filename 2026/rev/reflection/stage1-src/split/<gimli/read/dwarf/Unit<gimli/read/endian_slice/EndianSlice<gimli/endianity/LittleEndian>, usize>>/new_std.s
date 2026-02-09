	.section	.text._RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std
	.type	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std,@function
_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std: # @_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception28
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
	sub	rsp, 1288
	.cfi_def_cfa_offset 1344
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, rdx
	mov	r13, rdi
	mov	rax, qword ptr [rdx + 64]
	mov	rcx, qword ptr [rsi + 248]
	mov	r12, qword ptr [rsi]
	mov	rbx, qword ptr [rsi + 8]
	test	rcx, rcx
	mov	qword ptr [rsp + 136], rsi      # 8-byte Spill
	je	.LBB164_12
# %bb.1:
	mov	rdx, qword ptr [rsi + 256]
.LBB164_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB164_3 Depth 2
	movzx	edi, word ptr [rcx + 274]
	mov	r8d, edi
	shl	r8d, 3
	mov	r10, -1
	.p2align	4
.LBB164_3:                              #   Parent Loop BB164_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r8, r8
	je	.LBB164_6
# %bb.4:                                #   in Loop: Header=BB164_3 Depth=2
	cmp	rax, qword ptr [rcx + 8*r10 + 192]
	seta	r9b
	sbb	r9b, 0
	inc	r10
	add	r8, -8
	cmp	r9b, 1
	je	.LBB164_3
# %bb.5:                                #   in Loop: Header=BB164_2 Depth=1
	movzx	edi, r9b
	test	edi, edi
	jne	.LBB164_7
	jmp	.LBB164_9
	.p2align	4
.LBB164_6:                              #   in Loop: Header=BB164_2 Depth=1
	mov	r10, rdi
.LBB164_7:                              #   in Loop: Header=BB164_2 Depth=1
	sub	rdx, 1
	jb	.LBB164_12
# %bb.8:                                #   in Loop: Header=BB164_2 Depth=1
	mov	rcx, qword ptr [rcx + 8*r10 + 280]
	jmp	.LBB164_2
.LBB164_9:
	shl	r10, 4
	lea	rax, [rcx + r10]
	movzx	ebp, byte ptr [rcx + r10]
	cmp	bpl, 82
	jne	.LBB164_14
# %bb.10:
	mov	rcx, qword ptr [rax + 8]
	lock		inc	qword ptr [rcx]
	jle	.LBB164_303
# %bb.11:
	mov	r12, qword ptr [rax + 8]
	jmp	.LBB164_107
.LBB164_12:
	sub	rbx, rax
	jae	.LBB164_15
# %bb.13:
	mov	bpl, 19
                                        # implicit-def: $r14b
                                        # implicit-def: $rbx
	jmp	.LBB164_112
.LBB164_14:
	movzx	r14d, byte ptr [rax + 1]
	mov	ecx, dword ptr [rax + 2]
	movzx	ebx, word ptr [rax + 6]
	shl	rbx, 32
	or	rbx, rcx
	mov	r12, qword ptr [rax + 8]
	jmp	.LBB164_112
.LBB164_15:
	mov	qword ptr [rsp + 8], r13        # 8-byte Spill
	add	r12, rax
	mov	qword ptr [rsp + 320], 0
	mov	qword ptr [rsp + 328], 8
	mov	qword ptr [rsp + 360], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 336], xmm0
	lea	r10, [rsp + 152]
	mov	r11, r12
.LBB164_16:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB164_18 Depth 2
                                        #     Child Loop BB164_34 Depth 2
                                        #       Child Loop BB164_54 Depth 3
	test	rbx, rbx
	je	.LBB164_91
# %bb.17:                               #   in Loop: Header=BB164_16 Depth=1
	xor	eax, eax
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdx, rbx
	mov	rsi, r11
	.p2align	4
.LBB164_18:                             #   Parent Loop BB164_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	edi, byte ptr [rsi]
	mov	bpl, 6
	cmp	ecx, 63
	jne	.LBB164_20
# %bb.19:                               #   in Loop: Header=BB164_18 Depth=2
	cmp	dil, 1
	ja	.LBB164_102
.LBB164_20:                             #   in Loop: Header=BB164_18 Depth=2
	movzx	r8d, dil
	mov	r9d, r8d
	and	r9d, 127
	shl	r9, cl
	lea	rdi, [rdx - 1]
	lea	r12, [rsi + 1]
	or	r13, r9
	test	r8b, r8b
	jns	.LBB164_22
# %bb.21:                               #   in Loop: Header=BB164_18 Depth=2
	add	ecx, 7
	mov	rdx, rdi
	mov	rsi, r12
	test	rdi, rdi
	jne	.LBB164_18
	jmp	.LBB164_82
.LBB164_22:                             #   in Loop: Header=BB164_16 Depth=1
	test	r13, r13
	je	.LBB164_91
# %bb.23:                               #   in Loop: Header=BB164_16 Depth=1
	test	rdi, rdi
	je	.LBB164_97
# %bb.24:                               #   in Loop: Header=BB164_16 Depth=1
	lea	r14, [rdx - 2]
	lea	r11, [rsi + 2]
	movzx	eax, byte ptr [rsi + 1]
	mov	edi, eax
	and	edi, 127
	test	al, al
	jns	.LBB164_30
# %bb.25:                               #   in Loop: Header=BB164_16 Depth=1
	test	r14, r14
	je	.LBB164_83
# %bb.26:                               #   in Loop: Header=BB164_16 Depth=1
	lea	r14, [rdx - 3]
	lea	r11, [rsi + 3]
	movzx	eax, byte ptr [rsi + 2]
	mov	ecx, eax
	and	ecx, 127
	shl	ecx, 7
	movzx	edi, di
	or	edi, ecx
	test	al, al
	jns	.LBB164_30
# %bb.27:                               #   in Loop: Header=BB164_16 Depth=1
	test	r14, r14
	je	.LBB164_83
# %bb.28:                               #   in Loop: Header=BB164_16 Depth=1
	movzx	eax, byte ptr [r11]
	cmp	ax, 3
	ja	.LBB164_101
# %bb.29:                               #   in Loop: Header=BB164_16 Depth=1
	add	rsi, 4
	add	rdx, -4
	movzx	eax, ax
	shl	eax, 14
	movzx	edi, di
	or	edi, eax
	mov	r11, rsi
	mov	r14, rdx
.LBB164_30:                             #   in Loop: Header=BB164_16 Depth=1
	test	di, di
	je	.LBB164_99
# %bb.31:                               #   in Loop: Header=BB164_16 Depth=1
	test	r14, r14
	je	.LBB164_83
# %bb.32:                               #   in Loop: Header=BB164_16 Depth=1
	movzx	eax, byte ptr [r11]
	cmp	al, 1
	ja	.LBB164_100
# %bb.33:                               #   in Loop: Header=BB164_16 Depth=1
	mov	byte ptr [rsp + 112], al        # 1-byte Spill
	mov	dword ptr [rsp + 312], edi      # 4-byte Spill
	inc	r11
	dec	r14
	mov	qword ptr [rsp + 176], 0
	mov	dword ptr [rsp + 184], 0
	mov	qword ptr [rsp + 192], 0
	mov	dword ptr [rsp + 200], 0
	mov	qword ptr [rsp + 208], 0
	mov	dword ptr [rsp + 216], 0
	mov	qword ptr [rsp + 224], 0
	mov	dword ptr [rsp + 232], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 144], xmm0
	movups	xmmword ptr [rsp + 156], xmm0
	xor	ebp, ebp
                                        # implicit-def: $r12
.LBB164_34:                             #   Parent Loop BB164_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB164_54 Depth 3
	test	r14, r14
	je	.LBB164_85
# %bb.35:                               #   in Loop: Header=BB164_34 Depth=2
	lea	rsi, [r14 - 1]
	lea	rcx, [r11 + 1]
	movzx	edx, byte ptr [r11]
	mov	eax, edx
	and	eax, 127
	test	dl, dl
	jns	.LBB164_41
# %bb.36:                               #   in Loop: Header=BB164_34 Depth=2
	test	rsi, rsi
	je	.LBB164_94
# %bb.37:                               #   in Loop: Header=BB164_34 Depth=2
	lea	rsi, [r14 - 2]
	lea	rcx, [r11 + 2]
	movzx	edx, byte ptr [r11 + 1]
	mov	edi, edx
	and	edi, 127
	shl	edi, 7
	movzx	eax, ax
	or	eax, edi
	test	dl, dl
	jns	.LBB164_41
# %bb.38:                               #   in Loop: Header=BB164_34 Depth=2
	test	rsi, rsi
	je	.LBB164_94
# %bb.39:                               #   in Loop: Header=BB164_34 Depth=2
	movzx	ecx, byte ptr [rcx]
	cmp	cx, 3
	ja	.LBB164_231
# %bb.40:                               #   in Loop: Header=BB164_34 Depth=2
	add	r11, 3
	add	r14, -3
	movzx	ecx, cx
	shl	ecx, 14
	movzx	eax, ax
	or	eax, ecx
	mov	rcx, r11
	mov	rsi, r14
.LBB164_41:                             #   in Loop: Header=BB164_34 Depth=2
	test	ax, ax
	je	.LBB164_69
# %bb.42:                               #   in Loop: Header=BB164_34 Depth=2
	test	rsi, rsi
	je	.LBB164_94
# %bb.43:                               #   in Loop: Header=BB164_34 Depth=2
	lea	r14, [rsi - 1]
	lea	r11, [rcx + 1]
	movzx	edi, byte ptr [rcx]
	mov	edx, edi
	and	edx, 127
	test	dil, dil
	jns	.LBB164_49
# %bb.44:                               #   in Loop: Header=BB164_34 Depth=2
	test	r14, r14
	je	.LBB164_85
# %bb.45:                               #   in Loop: Header=BB164_34 Depth=2
	lea	r14, [rsi - 2]
	lea	r11, [rcx + 2]
	movzx	edi, byte ptr [rcx + 1]
	mov	r8d, edi
	and	r8d, 127
	shl	r8d, 7
	movzx	edx, dx
	or	edx, r8d
	test	dil, dil
	jns	.LBB164_49
# %bb.46:                               #   in Loop: Header=BB164_34 Depth=2
	test	r14, r14
	je	.LBB164_85
# %bb.47:                               #   in Loop: Header=BB164_34 Depth=2
	movzx	edi, byte ptr [r11]
	cmp	di, 3
	ja	.LBB164_231
# %bb.48:                               #   in Loop: Header=BB164_34 Depth=2
	add	rcx, 3
	add	rsi, -3
	movzx	edi, di
	shl	edi, 14
	movzx	edx, dx
	or	edx, edi
	mov	r11, rcx
	mov	r14, rsi
.LBB164_49:                             #   in Loop: Header=BB164_34 Depth=2
	cmp	dx, 33
	je	.LBB164_52
# %bb.50:                               #   in Loop: Header=BB164_34 Depth=2
	movzx	ebp, dx
	test	ebp, ebp
	je	.LBB164_98
# %bb.51:                               #   in Loop: Header=BB164_34 Depth=2
	xor	ebp, ebp
	jmp	.LBB164_59
.LBB164_52:                             #   in Loop: Header=BB164_34 Depth=2
	xor	ecx, ecx
	mov	rsi, r11
	mov	rdi, r14
	xor	ebp, ebp
	jmp	.LBB164_54
	.p2align	4
.LBB164_53:                             #   in Loop: Header=BB164_54 Depth=3
	mov	r9d, r8d
	and	r9d, 127
	shl	r9, cl
	inc	rsi
	or	rbp, r9
	add	ecx, 7
	test	r8b, r8b
	jns	.LBB164_58
.LBB164_54:                             #   Parent Loop BB164_16 Depth=1
                                        #     Parent Loop BB164_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub	rdi, 1
	jb	.LBB164_84
# %bb.55:                               #   in Loop: Header=BB164_54 Depth=3
	movzx	r8d, byte ptr [rsi]
	cmp	ecx, 63
	jne	.LBB164_53
# %bb.56:                               #   in Loop: Header=BB164_54 Depth=3
	cmp	r8d, 127
	je	.LBB164_53
# %bb.57:                               #   in Loop: Header=BB164_54 Depth=3
	test	r8d, r8d
	je	.LBB164_53
	jmp	.LBB164_93
.LBB164_58:                             #   in Loop: Header=BB164_34 Depth=2
	mov	r9, -1
	shl	r9, cl
	cmp	r8b, 64
	mov	r8d, 0
	cmovb	r9, r8
	cmp	ecx, 64
	cmovge	r9, r8
	or	rbp, r9
	mov	r11, rsi
	mov	r14, rdi
.LBB164_59:                             #   in Loop: Header=BB164_34 Depth=2
	shl	edx, 16
	movabs	rcx, -4294967296
	and	r12, rcx
	movzx	eax, ax
	or	r12, rax
	or	r12, rdx
	test	byte ptr [rsp + 144], 1
	je	.LBB164_63
# %bb.60:                               #   in Loop: Header=BB164_34 Depth=2
	mov	qword ptr [rsp + 32], r11       # 8-byte Spill
	mov	rbx, qword ptr [rsp + 168]
	cmp	rbx, qword ptr [rsp + 152]
	jne	.LBB164_62
# %bb.61:                               #   in Loop: Header=BB164_34 Depth=2
.Ltmp746:
	mov	rdi, r10
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_
	lea	r10, [rsp + 152]
.Ltmp747:
.LBB164_62:                             #   in Loop: Header=BB164_34 Depth=2
	mov	rax, qword ptr [rsp + 160]
	mov	rcx, rbx
	shl	rcx, 4
	mov	qword ptr [rax + rcx], rbp
	mov	qword ptr [rax + rcx + 8], r12
	inc	rbx
	mov	qword ptr [rsp + 168], rbx
	mov	r11, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB164_34
.LBB164_63:                             #   in Loop: Header=BB164_34 Depth=2
	mov	rdi, qword ptr [rsp + 152]
	cmp	rdi, 5
	jne	.LBB164_67
# %bb.64:                               #   in Loop: Header=BB164_34 Depth=2
	mov	qword ptr [rsp + 32], r11       # 8-byte Spill
	mov	rbx, r10
	mov	edi, 80
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB164_280
# %bb.65:                               #   in Loop: Header=BB164_34 Depth=2
	mov	qword ptr [rsp + 64], 5
	mov	qword ptr [rsp + 72], rax
	lea	rcx, [rsp + 160]
	movups	xmm0, xmmword ptr [rcx + 64]
	movups	xmmword ptr [rax + 64], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 16]
	movups	xmm2, xmmword ptr [rcx + 32]
	movups	xmm3, xmmword ptr [rcx + 48]
	movups	xmmword ptr [rax + 48], xmm3
	movups	xmmword ptr [rax + 32], xmm2
	movups	xmmword ptr [rax + 16], xmm1
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rsp + 80], 5
.Ltmp740:
	lea	rdi, [rsp + 64]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_
.Ltmp741:
# %bb.66:                               #   in Loop: Header=BB164_34 Depth=2
	mov	rax, qword ptr [rsp + 72]
	mov	qword ptr [rax + 80], rbp
	mov	qword ptr [rax + 88], r12
	mov	qword ptr [rsp + 80], 6
	mov	qword ptr [rsp + 144], 1
	movups	xmm0, xmmword ptr [rsp + 64]
	mov	r10, rbx
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 16], 6
	mov	r11, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB164_34
.LBB164_67:                             #   in Loop: Header=BB164_34 Depth=2
	jae	.LBB164_323
# %bb.68:                               #   in Loop: Header=BB164_34 Depth=2
	mov	rax, rdi
	shl	rax, 4
	lea	rcx, [rsp + 160]
	mov	qword ptr [rcx + rax], rbp
	mov	qword ptr [rcx + rax + 8], r12
	inc	rdi
	mov	qword ptr [rsp + 152], rdi
	jmp	.LBB164_34
.LBB164_69:                             #   in Loop: Header=BB164_16 Depth=1
	test	rsi, rsi
	movabs	r14, -4294967296
	je	.LBB164_94
# %bb.70:                               #   in Loop: Header=BB164_16 Depth=1
	lea	rbx, [rsi - 1]
	lea	r8, [rcx + 1]
	movzx	edx, byte ptr [rcx]
	mov	eax, edx
	and	eax, 127
	test	dl, dl
	jns	.LBB164_76
# %bb.71:                               #   in Loop: Header=BB164_16 Depth=1
	test	rbx, rbx
	je	.LBB164_249
# %bb.72:                               #   in Loop: Header=BB164_16 Depth=1
	lea	rbx, [rsi - 2]
	lea	r8, [rcx + 2]
	movzx	edx, byte ptr [rcx + 1]
	mov	edi, edx
	and	edi, 127
	shl	edi, 7
	movzx	eax, ax
	or	eax, edi
	test	dl, dl
	jns	.LBB164_76
# %bb.73:                               #   in Loop: Header=BB164_16 Depth=1
	test	rbx, rbx
	je	.LBB164_249
# %bb.74:                               #   in Loop: Header=BB164_16 Depth=1
	movzx	edx, byte ptr [r8]
	cmp	dx, 3
	ja	.LBB164_273
# %bb.75:                               #   in Loop: Header=BB164_16 Depth=1
	add	rcx, 3
	add	rsi, -3
	movzx	edx, dx
	shl	edx, 14
	movzx	eax, ax
	or	eax, edx
	mov	r8, rcx
	mov	rbx, rsi
.LBB164_76:                             #   in Loop: Header=BB164_16 Depth=1
	test	ax, ax
	jne	.LBB164_245
# %bb.77:                               #   in Loop: Header=BB164_16 Depth=1
	mov	rdx, qword ptr [rsp + 144]
	mov	rbp, qword ptr [rsp + 152]
	mov	r12, qword ptr [rsp + 160]
	lea	rax, [rsp + 160]
	movups	xmm0, xmmword ptr [rax + 8]
	movups	xmm1, xmmword ptr [rax + 24]
	movups	xmm2, xmmword ptr [rax + 40]
	movups	xmm3, xmmword ptr [rax + 56]
	movaps	xmmword ptr [rsp + 416], xmm0
	movaps	xmmword ptr [rsp + 432], xmm1
	movaps	xmmword ptr [rsp + 448], xmm2
	movaps	xmmword ptr [rsp + 464], xmm3
	mov	rax, qword ptr [rax + 72]
	mov	qword ptr [rsp + 480], rax
	cmp	rdx, 2
	je	.LBB164_246
# %bb.78:                               #   in Loop: Header=BB164_16 Depth=1
	mov	rax, qword ptr [rsp + 480]
	mov	qword ptr [rsp + 576], rax
	movaps	xmm0, xmmword ptr [rsp + 416]
	movaps	xmm1, xmmword ptr [rsp + 432]
	movaps	xmm2, xmmword ptr [rsp + 448]
	movaps	xmm3, xmmword ptr [rsp + 464]
	movaps	xmmword ptr [rsp + 560], xmm3
	movaps	xmmword ptr [rsp + 544], xmm2
	movaps	xmmword ptr [rsp + 528], xmm1
	movaps	xmmword ptr [rsp + 512], xmm0
	mov	r14d, ebp
	shr	r14d, 8
	mov	rcx, rbp
	shr	rcx, 16
	mov	rax, rbp
	shr	rax, 32
	cmp	rdx, 3
	je	.LBB164_103
# %bb.79:                               #   in Loop: Header=BB164_16 Depth=1
	mov	qword ptr [rsp + 32], r8        # 8-byte Spill
	mov	rsi, qword ptr [rsp + 576]
	lea	rdi, [rsp + 616]
	mov	qword ptr [rdi + 64], rsi
	movaps	xmm0, xmmword ptr [rsp + 512]
	movaps	xmm1, xmmword ptr [rsp + 528]
	movaps	xmm2, xmmword ptr [rsp + 544]
	movaps	xmm3, xmmword ptr [rsp + 560]
	movups	xmmword ptr [rdi + 48], xmm3
	movups	xmmword ptr [rdi + 32], xmm2
	movups	xmmword ptr [rdi + 16], xmm1
	movups	xmmword ptr [rdi], xmm0
	mov	rsi, rax
	shl	rsi, 16
	movzx	ecx, cx
	or	rcx, rsi
	mov	qword ptr [rsp + 592], rdx
	mov	byte ptr [rsp + 600], bpl
	mov	byte ptr [rsp + 601], r14b
	shr	eax, 16
	mov	word ptr [rsp + 606], ax
	mov	dword ptr [rsp + 602], ecx
	mov	qword ptr [rsp + 608], r12
	mov	qword ptr [rsp + 688], r13
	mov	eax, dword ptr [rsp + 312]      # 4-byte Reload
	mov	word ptr [rsp + 696], ax
	movzx	eax, byte ptr [rsp + 112]       # 1-byte Folded Reload
	mov	byte ptr [rsp + 698], al
.Ltmp749:
	lea	rdi, [rsp + 320]
	lea	rsi, [rsp + 592]
	call	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert
.Ltmp750:
# %bb.80:                               #   in Loop: Header=BB164_16 Depth=1
	test	al, al
	lea	r10, [rsp + 152]
	mov	r11, qword ptr [rsp + 32]       # 8-byte Reload
	je	.LBB164_16
# %bb.81:
	mov	bpl, 14
                                        # implicit-def: $r14b
                                        # implicit-def: $rbx
                                        # implicit-def: $r12
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB164_105
.LBB164_82:
	add	r11, rbx
.LBB164_83:
	mov	bpl, 19
	xor	eax, eax
	xor	ecx, ecx
	xor	r14d, r14d
	mov	r12, r11
	jmp	.LBB164_103
.LBB164_84:
	add	r11, r14
.LBB164_85:
	mov	eax, 19
	xor	r14d, r14d
	xor	edx, edx
	xor	ebp, ebp
	mov	r12, r11
.LBB164_86:
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	or	rbp, rax
	or	r14, rdx
	cmp	qword ptr [rsp + 144], 0
	je	.LBB164_89
# %bb.87:
	cmp	qword ptr [rsp + 152], 0
	je	.LBB164_89
# %bb.88:
	mov	rdi, qword ptr [rsp + 160]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_89:
	or	r14, rbp
	mov	rbp, r14
.LBB164_90:
	mov	r14d, ebp
	shr	r14d, 8
	mov	ecx, ebp
	shr	ecx, 16
	mov	rax, rbp
	shr	rax, 32
	jmp	.LBB164_104
.LBB164_91:
	mov	rax, qword ptr [rsp + 320]
	movzx	ebp, byte ptr [rsp + 328]
	movzx	r14d, byte ptr [rsp + 329]
	mov	ecx, dword ptr [rsp + 330]
	movzx	ebx, word ptr [rsp + 334]
	shl	rbx, 32
	or	rbx, rcx
	mov	r12, qword ptr [rsp + 336]
	movups	xmm0, xmmword ptr [rsp + 344]
	movaps	xmmword ptr [rsp + 272], xmm0
	mov	rcx, qword ptr [rsp + 360]
	mov	qword ptr [rsp + 288], rcx
	mov	rcx, rax
	neg	rcx
	jno	.LBB164_95
# %bb.92:
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB164_106
.LBB164_93:
	mov	eax, 7
	xor	r14d, r14d
	xor	edx, edx
	xor	ebp, ebp
                                        # implicit-def: $r12
	jmp	.LBB164_86
.LBB164_94:
	mov	eax, 19
	xor	r14d, r14d
	xor	edx, edx
	xor	ebp, ebp
	mov	r12, rcx
	jmp	.LBB164_86
.LBB164_95:
	mov	byte ptr [rsp + 617], r14b
	mov	dword ptr [rsp + 618], ebx
	shr	rbx, 32
	mov	word ptr [rsp + 622], bx
	movaps	xmm0, xmmword ptr [rsp + 272]
	movups	xmmword ptr [rsp + 632], xmm0
	mov	rcx, qword ptr [rsp + 288]
	mov	qword ptr [rsp + 648], rcx
	mov	qword ptr [rsp + 592], 1
	mov	qword ptr [rsp + 600], 1
	mov	qword ptr [rsp + 608], rax
	mov	byte ptr [rsp + 616], bpl
	mov	qword ptr [rsp + 624], r12
	mov	edi, 64
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	je	.LBB164_286
# %bb.96:
	mov	r12, rax
	movups	xmm0, xmmword ptr [rsp + 592]
	movups	xmm1, xmmword ptr [rsp + 608]
	movups	xmm2, xmmword ptr [rsp + 624]
	movups	xmm3, xmmword ptr [rsp + 640]
	movups	xmmword ptr [rax + 48], xmm3
	movups	xmmword ptr [rax + 32], xmm2
	movups	xmmword ptr [rax + 16], xmm1
	movups	xmmword ptr [rax], xmm0
	jmp	.LBB164_107
.LBB164_97:
	mov	bpl, 19
	xor	eax, eax
	xor	ecx, ecx
	xor	r14d, r14d
	jmp	.LBB164_103
.LBB164_98:
	mov	eax, 9
	jmp	.LBB164_232
.LBB164_99:
	mov	bpl, 8
	jmp	.LBB164_101
.LBB164_100:
	mov	bpl, 10
.LBB164_101:
	xor	eax, eax
.LBB164_102:
	xor	ecx, ecx
	xor	r14d, r14d
                                        # implicit-def: $r12
.LBB164_103:
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
.LBB164_104:
	shl	rax, 16
	movzx	ebx, cx
	or	rbx, rax
.LBB164_105:
	lea	rdi, [rsp + 320]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
.LBB164_106:
	cmp	bpl, 82
	jne	.LBB164_112
.LBB164_107:
	mov	ecx, dword ptr [r15 + 72]
	cmp	ecx, 327680
	setae	dl
	and	ecx, 65280
	xor	eax, eax
	cmp	ecx, 2048
	sete	al
	shl	eax, 3
	lea	rcx, [rax + 8]
	add	rax, 12
	xor	esi, esi
	mov	rbp, qword ptr [rsp + 136]      # 8-byte Reload
	test	byte ptr [rbp + 272], dl
	cmove	rcx, rsi
	cmove	rax, rsi
	mov	rdx, qword ptr [r15 + 16]
	mov	rsi, qword ptr [r15 + 24]
	add	rdx, -3
	xor	edi, edi
	cmp	rdx, 2
	setb	dil
	movups	xmm0, xmmword ptr [r15 + 64]
	movaps	xmmword ptr [rsp + 656], xmm0
	movups	xmm0, xmmword ptr [r15 + 48]
	movaps	xmmword ptr [rsp + 640], xmm0
	movups	xmm0, xmmword ptr [r15 + 32]
	movaps	xmmword ptr [rsp + 624], xmm0
	movups	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 16]
	movaps	xmmword ptr [rsp + 608], xmm1
	movaps	xmmword ptr [rsp + 592], xmm0
	mov	qword ptr [rsp + 960], r12
	mov	qword ptr [rsp + 968], 0
	mov	qword ptr [rsp + 984], 0
	mov	qword ptr [rsp + 1000], 0
	mov	qword ptr [rsp + 1008], rcx
	mov	qword ptr [rsp + 1016], 0
	mov	qword ptr [rsp + 1024], rax
	mov	qword ptr [rsp + 1032], rax
	mov	qword ptr [rsp + 688], 47
	mov	qword ptr [rsp + 672], rdi
	mov	qword ptr [rsp + 680], rsi
	movups	xmm0, xmmword ptr [rsp + 632]
	add	r12, 16
	movups	xmmword ptr [rsp + 144], xmm0
	lea	rax, [rsp + 592]
	mov	qword ptr [rsp + 160], rax
	mov	qword ptr [rsp + 168], r12
	lea	r14, [rsp + 176]
	mov	qword ptr [rsp + 176], 0
	mov	qword ptr [rsp + 232], 0
	lea	r15, [rsp + 416]
	lea	r12, [rsp + 144]
	.p2align	4
.LBB164_108:                            # =>This Inner Loop Header: Depth=1
.Ltmp761:
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvMsf_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_13EntriesCursorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE10next_entryCs3bNtqN8jaZB_3std
.Ltmp762:
# %bb.109:                              #   in Loop: Header=BB164_108 Depth=1
	movzx	eax, byte ptr [rsp + 416]
	movzx	ecx, byte ptr [rsp + 417]
	cmp	rax, 82
	jne	.LBB164_113
# %bb.110:                              #   in Loop: Header=BB164_108 Depth=1
	mov	rax, qword ptr [rsp + 176]
	test	cl, 1
	je	.LBB164_114
# %bb.111:                              #   in Loop: Header=BB164_108 Depth=1
	test	rax, rax
	je	.LBB164_108
	jmp	.LBB164_115
.LBB164_112:
	mov	byte ptr [r13 + 9], r14b
	mov	dword ptr [r13 + 10], ebx
	shr	rbx, 32
	mov	word ptr [r13 + 14], bx
	mov	byte ptr [r13 + 8], bpl
	mov	qword ptr [r13 + 16], r12
	mov	qword ptr [r13], 2
	jmp	.LBB164_223
.LBB164_113:
	movzx	esi, word ptr [rsp + 422]
	mov	edi, dword ptr [rsp + 418]
	mov	rdx, qword ptr [rsp + 424]
	shl	rdi, 16
	shl	rsi, 48
	or	rsi, rdi
	shl	ecx, 8
	or	rcx, rax
	or	rcx, rsi
	mov	qword ptr [r13 + 8], rcx
	jmp	.LBB164_161
.LBB164_114:
	test	rax, rax
	je	.LBB164_160
.LBB164_115:
	mov	rcx, qword ptr [rsp + 184]
	mov	rdx, qword ptr [rsp + 192]
	cmp	dword ptr [rdx], 1
	jne	.LBB164_117
# %bb.116:
	mov	rbx, qword ptr [rdx + 16]
	mov	r15, qword ptr [rdx + 24]
	jmp	.LBB164_119
.LBB164_117:
	mov	r15, qword ptr [rdx + 8]
	cmp	r15, 6
	jae	.LBB164_247
# %bb.118:
	add	rdx, 16
	mov	rbx, rdx
.LBB164_119:
	mov	qword ptr [rsp + 416], rax
	mov	qword ptr [rsp + 424], rcx
	mov	qword ptr [rsp + 432], rbx
	mov	qword ptr [rsp + 440], r15
	mov	qword ptr [rsp + 448], r14
	test	r15, r15
	je	.LBB164_150
# %bb.120:
	mov	qword ptr [rsp + 8], r13        # 8-byte Spill
	lea	r14, [rsp + 520]
	mov	rax, qword ptr [rsp + 672]
	mov	qword ptr [rsp + 264], rax      # 8-byte Spill
	dec	r15
	add	rbx, 16
	mov	eax, 46
	mov	qword ptr [rsp + 304], rax      # 8-byte Spill
	mov	qword ptr [rsp + 32], 0         # 8-byte Folded Spill
	lea	r12, [rsp + 512]
	lea	r13, [rsp + 416]
	lea	rbp, [rsp + 320]
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	qword ptr [rsp + 312], rax      # 8-byte Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jmp	.LBB164_123
.LBB164_121:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [rsp + 304], rax      # 8-byte Spill
	lea	rax, [rsp + 328]
	movups	xmm0, xmmword ptr [rax]
	movaps	xmmword ptr [rsp + 1184], xmm0
	.p2align	4
.LBB164_122:                            #   in Loop: Header=BB164_123 Depth=1
	add	rbx, 16
	add	r15, -1
	jae	.LBB164_159
.LBB164_123:                            # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [rbx - 16]
	movaps	xmmword ptr [rsp + 320], xmm0
	mov	rax, qword ptr [rsp + 448]
	mov	rax, qword ptr [rax + 24]
	mov	edx, dword ptr [rax + 72]
	mov	rdi, r12
	mov	rsi, r13
	mov	rcx, rbp
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 512]
	cmp	rax, 46
	je	.LBB164_158
# %bb.124:                              #   in Loop: Header=BB164_123 Depth=1
	movups	xmm0, xmmword ptr [r14]
	mov	rcx, qword ptr [rsp + 536]
	mov	qword ptr [rsp + 432], rbx
	mov	qword ptr [rsp + 440], r15
	movaps	xmmword ptr [rsp + 1088], xmm0
	mov	qword ptr [rsp + 512], rax
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [rsp + 536], rcx
	movzx	eax, cx
	cmp	eax, 113
	jle	.LBB164_130
# %bb.125:                              #   in Loop: Header=BB164_123 Depth=1
	cmp	eax, 8496
	jg	.LBB164_135
# %bb.126:                              #   in Loop: Header=BB164_123 Depth=1
	add	eax, -114
	cmp	eax, 26
	ja	.LBB164_122
# %bb.127:                              #   in Loop: Header=BB164_123 Depth=1
	lea	rcx, [rip + .LJTI164_1]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB164_128:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 320], 28
	jne	.LBB164_122
# %bb.129:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rax, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 1008], rax
	jmp	.LBB164_122
	.p2align	4
.LBB164_130:                            #   in Loop: Header=BB164_123 Depth=1
	add	eax, -3
	cmp	eax, 24
	ja	.LBB164_122
# %bb.131:                              #   in Loop: Header=BB164_123 Depth=1
	lea	rcx, [rip + .LJTI164_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB164_132:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rcx, qword ptr [rsp + 320]
	cmp	rcx, 16
	sete	al
	cmp	ecx, 16
	jne	.LBB164_134
# %bb.133:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rcx, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 384], rcx      # 8-byte Spill
.LBB164_134:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	or	cl, al
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	jmp	.LBB164_122
	.p2align	4
.LBB164_135:                            #   in Loop: Header=BB164_123 Depth=1
	cmp	eax, 8497
	je	.LBB164_146
# %bb.136:                              #   in Loop: Header=BB164_123 Depth=1
	cmp	eax, 8498
	je	.LBB164_140
# %bb.137:                              #   in Loop: Header=BB164_123 Depth=1
	cmp	eax, 8499
	jne	.LBB164_122
.LBB164_138:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 320], 11
	jne	.LBB164_122
# %bb.139:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rax, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 1016], rax
	jmp	.LBB164_122
.LBB164_140:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 320], 23
	jne	.LBB164_122
# %bb.141:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rax, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 1032], rax
	jmp	.LBB164_122
.LBB164_142:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	lea	rax, [rsp + 328]
	movups	xmm0, xmmword ptr [rax]
	movaps	xmmword ptr [rsp + 1200], xmm0
	jmp	.LBB164_122
.LBB164_143:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [rsp + 312], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 504], rax      # 8-byte Spill
	jmp	.LBB164_122
.LBB164_144:                            #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 320], 18
	jne	.LBB164_122
# %bb.145:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rax, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 1024], rax
	jmp	.LBB164_122
.LBB164_146:                            #   in Loop: Header=BB164_123 Depth=1
	cmp	qword ptr [rsp + 264], 0        # 8-byte Folded Reload
	jne	.LBB164_122
# %bb.147:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rdi, rbp
	mov	rsi, r12
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 320], 45
	jne	.LBB164_149
# %bb.148:                              #   in Loop: Header=BB164_123 Depth=1
	mov	rax, qword ptr [rsp + 328]
	mov	qword ptr [rsp + 672], 1
	mov	qword ptr [rsp + 680], rax
	mov	eax, 1
	mov	qword ptr [rsp + 264], rax      # 8-byte Spill
	jmp	.LBB164_122
.LBB164_149:                            #   in Loop: Header=BB164_123 Depth=1
	mov	qword ptr [rsp + 264], 0        # 8-byte Folded Spill
	jmp	.LBB164_122
.LBB164_150:
	mov	r15d, 46
	xor	r12d, r12d
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	eax, 46
	mov	edx, 46
	cmp	byte ptr [r14 + 40], 0
	jne	.LBB164_152
.LBB164_151:
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 416]
	sub	rax, qword ptr [r14]
	mov	qword ptr [r14 + 40], 1
	mov	qword ptr [r14 + 48], rax
	mov	rax, rcx
.LBB164_152:
	movaps	xmm0, xmmword ptr [rsp + 64]
	movaps	xmmword ptr [rsp + 1088], xmm0
	cmp	rdx, 46
	jne	.LBB164_156
# %bb.153:
	mov	r14, r13
	xor	r13d, r13d
                                        # implicit-def: $rbx
	mov	qword ptr [rsp + 968], r13
	mov	qword ptr [rsp + 976], rbx
	cmp	rax, 46
	je	.LBB164_168
.LBB164_154:
	mov	qword ptr [rsp + 1264], rax
	movaps	xmm0, xmmword ptr [rsp + 1200]
	movups	xmmword ptr [rsp + 1272], xmm0
	mov	rcx, qword ptr [rsp + 1008]
	movzx	edx, byte ptr [rsp + 665]
	lea	rdi, [rsp + 144]
	lea	r8, [rsp + 1264]
	mov	rsi, rbp
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	mov	r9, qword ptr [rsp + 160]
	cmp	byte ptr [rsp + 144], 0
	jne	.LBB164_162
# %bb.155:
	mov	rcx, qword ptr [rsp + 152]
	jmp	.LBB164_163
.LBB164_156:
	mov	rbx, rax
	mov	r14, r13
	mov	qword ptr [rsp + 1240], rdx
	movaps	xmm0, xmmword ptr [rsp + 1184]
	movups	xmmword ptr [rsp + 1248], xmm0
	mov	rcx, qword ptr [rsp + 1008]
	movzx	edx, byte ptr [rsp + 665]
	lea	rdi, [rsp + 144]
	lea	r8, [rsp + 1240]
	mov	rsi, rbp
	call	_RNvMs0_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE11attr_stringCs3bNtqN8jaZB_3std
	cmp	byte ptr [rsp + 144], 0
	jne	.LBB164_166
# %bb.157:
	mov	r13, qword ptr [rsp + 152]
	jmp	.LBB164_167
.LBB164_158:
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 1088], xmm0
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmmword ptr [rax + 8], xmm0
	mov	qword ptr [rax], 2
	mov	rax, qword ptr [rsp + 960]
	lock		dec	qword ptr [rax]
	jne	.LBB164_214
	jmp	.LBB164_213
.LBB164_159:
	mov	r14, qword ptr [rsp + 448]
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rbp, qword ptr [rsp + 136]      # 8-byte Reload
	mov	r15, qword ptr [rsp + 312]      # 8-byte Reload
	mov	r12, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 304]      # 8-byte Reload
	cmp	byte ptr [r14 + 40], 0
	je	.LBB164_151
	jmp	.LBB164_152
.LBB164_160:
	mov	byte ptr [r13 + 8], 69
	xor	edx, edx
.LBB164_161:
	mov	qword ptr [r13 + 16], rdx
	mov	qword ptr [r13], 2
	mov	rax, qword ptr [rsp + 960]
	lock		dec	qword ptr [rax]
	jne	.LBB164_214
	jmp	.LBB164_213
.LBB164_162:
	xor	ecx, ecx
.LBB164_163:
	mov	rax, qword ptr [rsp + 384]      # 8-byte Reload
	mov	qword ptr [rsp + 984], rcx
	mov	qword ptr [rsp + 992], r9
	test	r12b, 1
	je	.LBB164_174
# %bb.164:
	mov	r12, qword ptr [rbp + 64]
	mov	rdx, qword ptr [rbp + 72]
	sub	rdx, rax
	jae	.LBB164_170
.LBB164_165:
	mov	eax, 19
	jmp	.LBB164_210
.LBB164_166:
	xor	r13d, r13d
.LBB164_167:
	mov	rax, rbx
	mov	rbx, qword ptr [rsp + 160]
	mov	qword ptr [rsp + 968], r13
	mov	qword ptr [rsp + 976], rbx
	cmp	rax, 46
	jne	.LBB164_154
.LBB164_168:
	mov	qword ptr [rsp + 984], 0
	test	r12b, 1
	mov	rax, qword ptr [rsp + 384]      # 8-byte Reload
	je	.LBB164_174
# %bb.169:
	xor	ecx, ecx
                                        # implicit-def: $r9
	mov	r12, qword ptr [rbp + 64]
	mov	rdx, qword ptr [rbp + 72]
	sub	rdx, rax
	jb	.LBB164_165
.LBB164_170:
	add	r12, rax
	cmp	rdx, 3
	jbe	.LBB164_190
# %bb.171:
	mov	qword ptr [rsp + 304], rcx      # 8-byte Spill
	movzx	eax, byte ptr [rsp + 664]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	lea	rsi, [rdx - 4]
	lea	rax, [r12 + 4]
	mov	ecx, dword ptr [r12]
	mov	edi, ecx
	shr	edi, 4
	cmp	edi, 268435455
	jb	.LBB164_195
# %bb.172:
	cmp	ecx, -1
	je	.LBB164_197
# %bb.173:
	mov	ebp, 16
                                        # implicit-def: $r12
	jmp	.LBB164_191
.LBB164_174:
	mov	ebp, 47
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
                                        # implicit-def: $r12
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rdx
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $al
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
                                        # implicit-def: $ax
	mov	dword ptr [rsp + 32], eax       # 4-byte Spill
                                        # implicit-def: $al
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
                                        # implicit-def: $r13
                                        # implicit-def: $rax
                                        # kill: killed $rax
	cmp	qword ptr [rsp + 688], 47
	je	.LBB164_183
.LBB164_175:
	mov	rbx, rdx
	cmp	qword ptr [rsp + 776], 0
	je	.LBB164_177
# %bb.176:
	mov	rdi, qword ptr [rsp + 784]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_177:
	cmp	qword ptr [rsp + 800], 0
	je	.LBB164_179
# %bb.178:
	mov	rdi, qword ptr [rsp + 808]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_179:
	cmp	qword ptr [rsp + 824], 0
	je	.LBB164_181
# %bb.180:
	mov	rdi, qword ptr [rsp + 832]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_181:
	cmp	qword ptr [rsp + 848], 0
	mov	rdx, rbx
	je	.LBB164_183
# %bb.182:
	mov	rdi, qword ptr [rsp + 856]
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdx, rbx
.LBB164_183:
	mov	qword ptr [rsp + 688], rbp
	mov	qword ptr [rsp + 696], r13
	mov	rax, qword ptr [rsp + 1064]     # 8-byte Reload
	mov	qword ptr [rsp + 704], rax
	mov	qword ptr [rsp + 712], 46
	mov	rax, qword ptr [rsp + 176]
	lea	rcx, [rsp + 720]
	mov	qword ptr [rcx + 32], rax
	movaps	xmm0, xmmword ptr [rsp + 144]
	movaps	xmm1, xmmword ptr [rsp + 160]
	movups	xmmword ptr [rcx + 16], xmm1
	movups	xmmword ptr [rcx], xmm0
	movaps	xmm0, xmmword ptr [rsp + 1168]
	movups	xmmword ptr [rcx + 40], xmm0
	mov	rax, qword ptr [rsp + 256]      # 8-byte Reload
	mov	qword ptr [rsp + 776], rax
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [rsp + 784], rax
	mov	rax, qword ptr [rsp + 376]      # 8-byte Reload
	mov	qword ptr [rsp + 792], rax
	mov	rax, qword ptr [rsp + 1152]
	mov	qword ptr [rcx + 96], rax
	movaps	xmm0, xmmword ptr [rsp + 1136]
	movups	xmmword ptr [rcx + 80], xmm0
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	qword ptr [rsp + 824], rax
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rsp + 832], rax
	mov	qword ptr [rsp + 840], r12
	mov	rax, qword ptr [rsp + 1120]
	mov	qword ptr [rcx + 144], rax
	movaps	xmm0, xmmword ptr [rsp + 1104]
	movups	xmmword ptr [rcx + 128], xmm0
	mov	rax, qword ptr [rsp + 392]      # 8-byte Reload
	mov	qword ptr [rsp + 872], rax
	mov	rax, qword ptr [rsp + 496]      # 8-byte Reload
	mov	qword ptr [rsp + 880], rax
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	mov	qword ptr [rsp + 888], rax
	mov	rax, qword ptr [rsp + 1080]     # 8-byte Reload
	mov	qword ptr [rsp + 896], rax
	mov	qword ptr [rsp + 904], rdx
	mov	rax, qword ptr [rsp + 264]      # 8-byte Reload
	mov	qword ptr [rsp + 912], rax
	mov	rax, qword ptr [rsp + 400]      # 8-byte Reload
	mov	qword ptr [rsp + 920], rax
	mov	rax, qword ptr [rsp + 304]      # 8-byte Reload
	mov	qword ptr [rsp + 928], rax
	mov	rax, qword ptr [rsp + 1072]     # 8-byte Reload
	mov	qword ptr [rsp + 936], rax
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	byte ptr [rsp + 944], al
	movzx	eax, byte ptr [rsp + 22]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 945], al
	mov	eax, dword ptr [rsp + 32]       # 4-byte Reload
	mov	word ptr [rsp + 946], ax
	movzx	eax, byte ptr [rsp + 44]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 948], al
	movzx	eax, byte ptr [rsp + 47]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 949], al
	movzx	eax, byte ptr [rsp + 23]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 950], al
	movzx	eax, byte ptr [rsp + 46]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 951], al
	movzx	eax, byte ptr [rsp + 45]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 952], al
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	mov	byte ptr [rsp + 953], al
	cmp	r15, 46
	je	.LBB164_194
# %bb.184:
	test	r15, r15
	je	.LBB164_192
# %bb.185:
	cmp	r15, 12
	jne	.LBB164_194
# %bb.186:
	mov	rbx, qword ptr [rsp + 136]      # 8-byte Reload
	mov	rax, qword ptr [rbx + 16]
	mov	rsi, qword ptr [rbx + 24]
	mov	rcx, qword ptr [rsp + 1016]
	sub	rsi, rcx
	jb	.LBB164_188
# %bb.187:
	movzx	edx, byte ptr [rsp + 664]
	movzx	r8d, dl
	add	rax, rcx
	mov	rcx, qword ptr [rsp + 504]      # 8-byte Reload
	imul	rcx, r8
	mov	r10, rsi
	sub	r10, rcx
	jae	.LBB164_202
.LBB164_188:
	mov	ecx, 19
                                        # implicit-def: $dl
.LBB164_189:
	movzx	edx, dl
	shl	edx, 8
	or	rdx, rcx
	mov	qword ptr [r14 + 8], rdx
	mov	qword ptr [r14 + 16], rax
	jmp	.LBB164_211
.LBB164_190:
	mov	dword ptr [rsp + 144], 0
	mov	byte ptr [rsp + 150], 0
	mov	word ptr [rsp + 148], 0
	mov	ebp, dword ptr [rsp + 147]
	shl	rbp, 32
	or	rbp, 19
.LBB164_191:
	mov	r13d, ebp
	shr	r13d, 8
	mov	ebx, ebp
	shr	ebx, 16
	mov	r15, rbp
	shr	r15, 32
	jmp	.LBB164_209
.LBB164_192:
	mov	rax, qword ptr [rsp + 504]      # 8-byte Reload
.LBB164_193:
	mov	qword ptr [rsp + 1000], rax
.LBB164_194:
	lea	rsi, [rsp + 592]
	mov	edx, 448
	mov	rdi, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	jmp	.LBB164_223
.LBB164_195:
	mov	dil, 4
	mov	r10, rcx
	cmp	rsi, r10
	jae	.LBB164_199
.LBB164_196:
	mov	bpl, 19
	xor	ebx, ebx
	jmp	.LBB164_207
.LBB164_197:
	cmp	rsi, 7
	jbe	.LBB164_224
# %bb.198:
	add	rdx, -12
	lea	rax, [r12 + 12]
	movzx	esi, byte ptr [r12 + 11]
	movzx	edi, word ptr [r12 + 8]
	movzx	r8d, byte ptr [r12 + 10]
	shl	r8d, 16
	or	r8d, edi
	mov	r10d, dword ptr [r12 + 4]
	shl	r8, 40
	shl	r10, 8
	or	r10, r8
	shrd	r10, rsi, 8
	mov	dil, 8
	mov	rsi, rdx
	cmp	rsi, r10
	jb	.LBB164_196
.LBB164_199:
	mov	qword ptr [rsp + 56], r10
	mov	qword ptr [rsp + 264], r10      # 8-byte Spill
	cmp	r10, 1
	jbe	.LBB164_206
# %bb.200:
	movzx	esi, word ptr [rax]
	mov	edx, esi
	add	edx, -6
	cmp	dx, -5
	ja	.LBB164_225
# %bb.201:
	movzx	r12d, si
	mov	bpl, 17
                                        # implicit-def: $bx
                                        # implicit-def: $r13b
	jmp	.LBB164_208
.LBB164_202:
	mov	r11, rcx
	mov	ecx, 25
	dec	r8d
	cmp	r8d, 7
	ja	.LBB164_241
# %bb.203:
	add	rax, r11
	lea	r9, [rip + .LJTI164_2]
	movsxd	r8, dword ptr [r9 + 4*r8]
	add	r8, r9
	jmp	r8
.LBB164_204:
	cmp	rsi, r11
	je	.LBB164_240
# %bb.205:
	movzx	eax, byte ptr [rax]
	jmp	.LBB164_193
.LBB164_206:
	mov	word ptr [rsp + 144], 0
	mov	dword ptr [rsp + 146], 0
	movzx	ebx, word ptr [rsp + 145]
	mov	bpl, 19
.LBB164_207:
	xor	r13d, r13d
	mov	r12, rax
.LBB164_208:
	xor	r15d, r15d
.LBB164_209:
	shl	r15, 24
	movzx	eax, bx
	shl	eax, 8
	or	rax, r15
	movzx	ecx, r13b
	or	rcx, rax
	shl	rcx, 8
	movzx	eax, bpl
	or	rax, rcx
.LBB164_210:
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 16], r12
.LBB164_211:
	mov	qword ptr [r14], 2
	mov	rax, qword ptr [rsp + 960]
	lock		dec	qword ptr [rax]
	jne	.LBB164_214
.LBB164_213:
	#MEMBARRIER
	mov	rdi, qword ptr [rsp + 960]
.Ltmp792:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp793:
.LBB164_214:
	cmp	qword ptr [rsp + 688], 47
	je	.LBB164_223
# %bb.215:
	cmp	qword ptr [rsp + 776], 0
	je	.LBB164_217
# %bb.216:
	mov	rdi, qword ptr [rsp + 784]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_217:
	cmp	qword ptr [rsp + 800], 0
	je	.LBB164_219
# %bb.218:
	mov	rdi, qword ptr [rsp + 808]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_219:
	cmp	qword ptr [rsp + 824], 0
	je	.LBB164_221
# %bb.220:
	mov	rdi, qword ptr [rsp + 832]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_221:
	cmp	qword ptr [rsp + 848], 0
	je	.LBB164_223
# %bb.222:
	mov	rdi, qword ptr [rsp + 856]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_223:
	add	rsp, 1288
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
.LBB164_224:
	.cfi_def_cfa_offset 1344
	mov	ebp, 19
	mov	r12, rax
	jmp	.LBB164_191
.LBB164_225:
	mov	byte ptr [rsp + 22], dil        # 1-byte Spill
	mov	rdx, qword ptr [rsp + 264]      # 8-byte Reload
	add	rdx, -2
	lea	r12, [rax + 2]
	mov	dword ptr [rsp + 32], esi       # 4-byte Spill
	cmp	si, 4
	jbe	.LBB164_251
# %bb.226:
	test	rdx, rdx
	je	.LBB164_258
# %bb.227:
	mov	r8, rbx
	movzx	edi, byte ptr [rax + 2]
	xor	ebx, ebx
	mov	bpl, 25
	cmp	edi, 8
	ja	.LBB164_272
# %bb.228:
	mov	edx, 278
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	bt	edx, edi
	jae	.LBB164_271
# %bb.229:
	mov	rdx, qword ptr [rsp + 264]      # 8-byte Reload
	cmp	rdx, 3
	jne	.LBB164_243
# %bb.230:
	add	rax, 3
	jmp	.LBB164_196
.LBB164_231:
	mov	eax, 6
	xor	ebp, ebp
.LBB164_232:
                                        # implicit-def: $r12
	movabs	r14, -4294967296
.LBB164_233:
	and	r14, rbp
	mov	edx, ebp
	and	edx, -65536
	and	ebp, 65280
	jmp	.LBB164_86
.LBB164_234:
	cmp	r10, 3
	jbe	.LBB164_240
# %bb.235:
	mov	eax, dword ptr [rax]
	jmp	.LBB164_193
.LBB164_236:
	cmp	r10, 1
	jbe	.LBB164_240
# %bb.237:
	movzx	eax, word ptr [rax]
	jmp	.LBB164_193
.LBB164_238:
	cmp	r10, 7
	jbe	.LBB164_240
# %bb.239:
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
	jmp	.LBB164_193
.LBB164_240:
	mov	ecx, 19
	xor	edx, edx
	jmp	.LBB164_189
.LBB164_241:
                                        # implicit-def: $rax
	jmp	.LBB164_189
.LBB164_243:
	lea	rdi, [rdx - 4]
	mov	qword ptr [rsp + 56], rdi
	cmp	byte ptr [rax + 3], 0
	je	.LBB164_250
# %bb.244:
	mov	bpl, 68
                                        # implicit-def: $bx
                                        # implicit-def: $r13b
                                        # implicit-def: $r12
	jmp	.LBB164_208
.LBB164_245:
	mov	eax, 13
	jmp	.LBB164_233
.LBB164_246:
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB164_90
.LBB164_247:
.Ltmp764:
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, r15
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp765:
# %bb.248:
.LBB164_249:
	mov	eax, 19
	xor	r14d, r14d
	xor	edx, edx
	xor	ebp, ebp
	mov	r12, r8
	jmp	.LBB164_86
.LBB164_250:
	mov	rdx, rdi
	add	rax, 4
	mov	r12, rax
	mov	rbx, r8
.LBB164_251:
	cmp	ecx, -16
	jb	.LBB164_254
# %bb.252:
	cmp	rdx, 7
	jbe	.LBB164_258
# %bb.253:
	add	rdx, -8
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	mov	qword ptr [rsp + 48], rax
	movzx	eax, byte ptr [r12 + 7]
	mov	rsi, rdx
	movzx	ecx, word ptr [r12 + 4]
	movzx	edx, byte ptr [r12 + 6]
	shl	edx, 16
	or	edx, ecx
	mov	rcx, rsi
	mov	esi, dword ptr [r12]
	shl	rdx, 40
	shl	rsi, 8
	or	rsi, rdx
	shrd	rsi, rax, 8
	jmp	.LBB164_256
.LBB164_254:
	cmp	rdx, 3
	jbe	.LBB164_258
# %bb.255:
	mov	rcx, rdx
	add	rcx, -4
	lea	rax, [r12 + 4]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	mov	qword ptr [rsp + 48], rax
	mov	esi, dword ptr [r12]
.LBB164_256:
	sub	rcx, rsi
	jae	.LBB164_259
# %bb.257:
	mov	bpl, 19
                                        # implicit-def: $r15d
                                        # implicit-def: $bx
                                        # implicit-def: $r13b
	mov	r12, qword ptr [rsp + 128]      # 8-byte Reload
	jmp	.LBB164_209
.LBB164_258:
	mov	bpl, 19
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.LBB164_208
.LBB164_259:
	mov	qword ptr [rsp + 1080], rcx     # 8-byte Spill
	test	rsi, rsi
	je	.LBB164_268
# %bb.260:
	mov	qword ptr [rsp + 1064], rbx     # 8-byte Spill
	mov	qword ptr [rsp + 1072], r9      # 8-byte Spill
	mov	qword ptr [rsp + 312], r15      # 8-byte Spill
	mov	qword ptr [rsp + 400], rsi      # 8-byte Spill
	lea	rcx, [rsi - 1]
	mov	qword ptr [rsp + 56], rcx
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	movzx	edx, byte ptr [rax]
	mov	byte ptr [rsp + 47], dl         # 1-byte Spill
	test	dl, dl
	je	.LBB164_269
# %bb.261:
	inc	rax
	mov	byte ptr [rsp + 23], 1          # 1-byte Folded Spill
	cmp	word ptr [rsp + 32], 4          # 2-byte Folded Reload
	jb	.LBB164_265
# %bb.262:
	test	rcx, rcx
	je	.LBB164_284
# %bb.263:
	mov	rax, qword ptr [rsp + 400]      # 8-byte Reload
	lea	rcx, [rax - 2]
	mov	qword ptr [rsp + 56], rcx
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	movzx	eax, byte ptr [rax + 1]
	mov	byte ptr [rsp + 23], al         # 1-byte Spill
	test	al, al
	je	.LBB164_282
# %bb.264:
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	add	rax, 2
.LBB164_265:
	test	rcx, rcx
	je	.LBB164_284
# %bb.266:
	lea	r12, [rax + 1]
	mov	qword ptr [rsp + 48], r12
	cmp	rcx, 1
	jne	.LBB164_274
.LBB164_267:
	mov	bpl, 19
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.LBB164_209
.LBB164_268:
	mov	bpl, 19
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r13d, r13d
	mov	r12, qword ptr [rsp + 128]      # 8-byte Reload
	jmp	.LBB164_209
.LBB164_269:
	mov	bpl, 28
.LBB164_270:
                                        # implicit-def: $r15d
                                        # implicit-def: $bx
                                        # implicit-def: $r13b
                                        # implicit-def: $r12
	jmp	.LBB164_209
.LBB164_271:
                                        # implicit-def: $r12
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB164_208
.LBB164_272:
                                        # implicit-def: $r12
	mov	r13, rdi
	jmp	.LBB164_208
.LBB164_273:
	mov	eax, 6
	xor	ebp, ebp
                                        # implicit-def: $r12
	jmp	.LBB164_233
.LBB164_274:
	movzx	edx, byte ptr [rax]
	mov	rsi, rcx
	add	rsi, -2
	mov	qword ptr [rsp + 56], rsi
	je	.LBB164_283
# %bb.275:
	movzx	esi, byte ptr [rax + 1]
	mov	byte ptr [rsp + 46], sil        # 1-byte Spill
	lea	r12, [rax + 3]
	mov	qword ptr [rsp + 48], r12
	movzx	esi, byte ptr [rax + 2]
	mov	byte ptr [rsp + 45], sil        # 1-byte Spill
	test	sil, sil
	je	.LBB164_285
# %bb.276:
	test	dl, dl
	setne	byte ptr [rsp + 44]             # 1-byte Folded Spill
	cmp	rcx, 3
	je	.LBB164_267
# %bb.277:
	movzx	edx, byte ptr [rax + 3]
	mov	qword ptr [rsp + 112], rdx      # 8-byte Spill
	test	dl, dl
	je	.LBB164_288
# %bb.278:
	lea	rdx, [rcx - 4]
	lea	rsi, [rax + 4]
	mov	qword ptr [rsp + 392], rsi      # 8-byte Spill
	mov	rsi, qword ptr [rsp + 112]      # 8-byte Reload
	dec	esi
	movzx	edi, sil
	mov	qword ptr [rsp + 496], rdi      # 8-byte Spill
	sub	rdx, rdi
	jae	.LBB164_289
# %bb.279:
	mov	bpl, 19
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r13d, r13d
	mov	r12, qword ptr [rsp + 392]      # 8-byte Reload
	jmp	.LBB164_209
.LBB164_280:
.Ltmp743:
	mov	edi, 80
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp744:
# %bb.281:
.LBB164_282:
	mov	bpl, 29
	jmp	.LBB164_270
.LBB164_283:
	add	rax, 2
.LBB164_284:
	mov	bpl, 19
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r13d, r13d
	mov	r12, rax
	jmp	.LBB164_209
.LBB164_285:
	mov	bpl, 30
	jmp	.LBB164_270
.LBB164_286:
.Ltmp755:
	lea	r14, [rsp + 608]
	mov	edi, 64
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp756:
# %bb.287:
.LBB164_288:
	mov	bpl, 31
	jmp	.LBB164_270
.LBB164_289:
	mov	rsi, qword ptr [rsp + 392]      # 8-byte Reload
	mov	rdi, qword ptr [rsp + 496]      # 8-byte Reload
	lea	r12, [rsi + rdi]
	mov	qword ptr [rsp + 48], r12
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 272], 0
	mov	qword ptr [rsp + 280], 8
	mov	qword ptr [rsp + 288], 0
	cmp	word ptr [rsp + 32], 4          # 2-byte Folded Reload
	ja	.LBB164_300
# %bb.290:
	test	rdx, rdx
	je	.LBB164_314
# %bb.291:
	add	rax, rcx
	mov	ecx, 8
	mov	qword ptr [rsp + 376], 0        # 8-byte Folded Spill
	xor	ebx, ebx
                                        # implicit-def: $rbp
.LBB164_292:                            # =>This Loop Header: Depth=1
                                        #     Child Loop BB164_293 Depth 2
	mov	r15, rbp
	mov	rbp, r12
	xor	r12d, r12d
.LBB164_293:                            #   Parent Loop BB164_292 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rbp + r12], 0
	je	.LBB164_295
# %bb.294:                              #   in Loop: Header=BB164_293 Depth=2
	lea	rsi, [r12 + rbp]
	inc	rsi
	inc	r12
	cmp	rsi, rax
	jne	.LBB164_293
	jmp	.LBB164_304
.LBB164_295:                            #   in Loop: Header=BB164_292 Depth=1
	mov	rax, r12
	not	rax
	add	rdx, rax
	lea	rax, [r12 + rbp]
	inc	rax
	mov	qword ptr [rsp + 48], rax
	mov	qword ptr [rsp + 56], rdx
	test	r12, r12
	je	.LBB164_325
# %bb.296:                              #   in Loop: Header=BB164_292 Depth=1
	cmp	rbx, qword ptr [rsp + 272]
	jne	.LBB164_299
# %bb.297:                              #   in Loop: Header=BB164_292 Depth=1
.Ltmp775:
	lea	rdi, [rsp + 272]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp776:
# %bb.298:                              #   in Loop: Header=BB164_292 Depth=1
	mov	rcx, qword ptr [rsp + 280]
.LBB164_299:                            #   in Loop: Header=BB164_292 Depth=1
	mov	rdx, rbx
	lea	rax, [rbx + 2*rbx]
	mov	qword ptr [rcx + 8*rax], 31
	mov	qword ptr [rcx + 8*rax + 8], rbp
	mov	qword ptr [rcx + 8*rax + 16], r12
	inc	rdx
	mov	rbx, rdx
	mov	qword ptr [rsp + 288], rdx
	mov	r12, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 56]
	lea	rax, [r12 + rdx]
	mov	r15, rbp
	test	rdx, rdx
	jne	.LBB164_292
	jmp	.LBB164_315
.LBB164_300:
.Ltmp767:
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	call	_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Ltmp768:
# %bb.301:
	mov	rcx, qword ptr [rsp + 144]
	mov	rax, qword ptr [rsp + 152]
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	rax, rcx
	mov	qword ptr [rsp + 256], rcx      # 8-byte Spill
	neg	rax
	mov	rax, qword ptr [rsp + 160]
	mov	qword ptr [rsp + 376], rax      # 8-byte Spill
	jno	.LBB164_305
# %bb.302:
	mov	rbp, qword ptr [rsp + 120]      # 8-byte Reload
	mov	r13d, ebp
	shr	r13d, 8
	mov	ebx, ebp
	shr	ebx, 16
	mov	r15, rbp
	shr	r15, 32
                                        # kill: def $bpl killed $bpl killed $rbp def $rbp
	mov	r12, qword ptr [rsp + 376]      # 8-byte Reload
	jmp	.LBB164_209
.LBB164_303:
	ud2
.LBB164_304:
	mov	r12, rbp
	jmp	.LBB164_315
.LBB164_305:
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	call	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std
	movzx	ebp, byte ptr [rsp + 144]
	cmp	bpl, 82
	jne	.LBB164_318
# %bb.306:
	mov	rax, qword ptr [rsp + 152]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	test	rax, rax
	je	.LBB164_321
# %bb.307:
	movzx	eax, byte ptr [rsp + 22]        # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, byte ptr [rsp + 8]         # 1-byte Folded Reload
	add	eax, ecx
	add	eax, 327680
	mov	dword ptr [rsp + 248], eax      # 4-byte Spill
	mov	eax, 8
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	mov	ebx, 16
	mov	qword ptr [rsp + 304], 0        # 8-byte Folded Spill
	xor	r15d, r15d
	jmp	.LBB164_309
.LBB164_308:                            #   in Loop: Header=BB164_309 Depth=1
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rax + rbx - 16], rcx
	mov	qword ptr [rax + rbx - 8], rbp
	mov	qword ptr [rax + rbx], r12
	inc	r15
	mov	qword ptr [rsp + 288], r15
	add	rbx, 24
	cmp	qword ptr [rsp + 96], r15       # 8-byte Folded Reload
	je	.LBB164_326
.LBB164_309:                            # =>This Inner Loop Header: Depth=1
.Ltmp770:
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	mov	edx, dword ptr [rsp + 248]      # 4-byte Reload
	mov	rcx, qword ptr [rsp + 120]      # 8-byte Reload
	mov	r8, qword ptr [rsp + 376]       # 8-byte Reload
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Ltmp771:
# %bb.310:                              #   in Loop: Header=BB164_309 Depth=1
	mov	rax, qword ptr [rsp + 144]
	mov	rbp, qword ptr [rsp + 152]
	mov	r12, qword ptr [rsp + 160]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	cmp	rax, 46
	je	.LBB164_322
# %bb.311:                              #   in Loop: Header=BB164_309 Depth=1
	cmp	r15, qword ptr [rsp + 272]
	jne	.LBB164_308
# %bb.312:                              #   in Loop: Header=BB164_309 Depth=1
.Ltmp772:
	lea	rdi, [rsp + 272]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp773:
# %bb.313:                              #   in Loop: Header=BB164_309 Depth=1
	mov	rax, qword ptr [rsp + 280]
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	jmp	.LBB164_308
.LBB164_314:
                                        # implicit-def: $r15
.LBB164_315:
	mov	r13d, r15d
	shr	r13d, 8
	mov	ebx, r15d
	shr	ebx, 16
	shr	r15, 32
	mov	eax, 2
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	bpl, 19
	mov	qword ptr [rsp + 256], 0        # 8-byte Folded Spill
.LBB164_316:
	cmp	qword ptr [rsp + 272], 0
	je	.LBB164_319
# %bb.317:
	mov	rdi, qword ptr [rsp + 280]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB164_319
.LBB164_318:
	movzx	eax, byte ptr [rsp + 151]
	shl	eax, 16
	movzx	r15d, word ptr [rsp + 149]
	or	r15d, eax
	shl	r15, 32
	mov	eax, dword ptr [rsp + 145]
	or	r15, rax
	mov	r13, rax
	mov	ebx, eax
	shr	ebx, 8
	shr	r15, 24
	mov	r12, qword ptr [rsp + 152]
.LBB164_319:
	cmp	qword ptr [rsp + 256], 0        # 8-byte Folded Reload
	je	.LBB164_209
# %bb.320:
	mov	rdi, qword ptr [rsp + 120]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB164_209
.LBB164_321:
	mov	qword ptr [rsp + 64], 0
	mov	qword ptr [rsp + 72], 8
	mov	qword ptr [rsp + 80], 0
	mov	qword ptr [rsp + 304], 0        # 8-byte Folded Spill
	jmp	.LBB164_329
.LBB164_322:
	mov	r13d, ebp
	shr	r13d, 8
	mov	ebx, ebp
	shr	ebx, 16
	mov	r15, rbp
	shr	r15, 32
	jmp	.LBB164_316
.LBB164_323:
.Ltmp738:
	lea	rdx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.763]
	mov	esi, 5
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Ltmp739:
# %bb.324:
.LBB164_325:
	mov	eax, 2
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	qword ptr [rsp + 256], 0        # 8-byte Folded Spill
.LBB164_326:
	mov	qword ptr [rsp + 64], 0
	mov	qword ptr [rsp + 72], 8
	mov	qword ptr [rsp + 80], 0
	cmp	word ptr [rsp + 32], 5          # 2-byte Folded Reload
	jae	.LBB164_329
# %bb.327:
	test	r13, r13
	je	.LBB164_342
# %bb.328:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 1216], xmm0
	mov	ebp, 31
	jmp	.LBB164_343
.LBB164_329:
.Ltmp778:
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	call	_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Ltmp779:
# %bb.330:
	mov	rax, qword ptr [rsp + 144]
	mov	rcx, qword ptr [rsp + 152]
	mov	qword ptr [rsp + 24], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	neg	rax
	mov	r12, qword ptr [rsp + 160]
	jno	.LBB164_332
# %bb.331:
	mov	dword ptr [rsp + 136], 0        # 4-byte Folded Spill
	mov	rbp, qword ptr [rsp + 24]       # 8-byte Reload
	mov	r15, rbp
                                        # kill: def $bpl killed $bpl killed $rbp def $rbp
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jmp	.LBB164_357
.LBB164_332:
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	call	_RNvYINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianENtNtB7_6reader6Reader12read_uleb128Cs3bNtqN8jaZB_3std
	movzx	ebp, byte ptr [rsp + 144]
	cmp	bpl, 82
	jne	.LBB164_341
# %bb.333:
	mov	rax, qword ptr [rsp + 152]
	mov	ebp, 46
	mov	qword ptr [rsp + 1048], rax     # 8-byte Spill
	test	rax, rax
	je	.LBB164_364
# %bb.334:
	movzx	eax, byte ptr [rsp + 22]        # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, byte ptr [rsp + 8]         # 1-byte Folded Reload
	add	eax, ecx
	add	eax, 327680
	mov	dword ptr [rsp + 412], eax      # 4-byte Spill
	mov	eax, 8
	mov	qword ptr [rsp + 488], rax      # 8-byte Spill
	mov	ebx, 24
	mov	qword ptr [rsp + 96], 0         # 8-byte Folded Spill
	jmp	.LBB164_337
.LBB164_335:                            #   in Loop: Header=BB164_337 Depth=1
	mov	rax, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 488], rax      # 8-byte Spill
.LBB164_336:                            #   in Loop: Header=BB164_337 Depth=1
	mov	rax, qword ptr [rsp + 488]      # 8-byte Reload
	mov	rcx, qword ptr [rsp + 1056]     # 8-byte Reload
	mov	qword ptr [rax + rbx - 24], rcx
	mov	qword ptr [rax + rbx - 16], r15
	mov	rcx, qword ptr [rsp + 248]      # 8-byte Reload
	mov	qword ptr [rax + rbx - 8], rcx
	movaps	xmm0, xmmword ptr [rsp + 416]
	movaps	xmm1, xmmword ptr [rsp + 432]
	movaps	xmm2, xmmword ptr [rsp + 448]
	movaps	xmm3, xmmword ptr [rsp + 464]
	movups	xmmword ptr [rax + rbx], xmm0
	movups	xmmword ptr [rax + rbx + 16], xmm1
	movups	xmmword ptr [rax + rbx + 32], xmm2
	movups	xmmword ptr [rax + rbx + 48], xmm3
	mov	rcx, qword ptr [rsp + 96]       # 8-byte Reload
	inc	rcx
	mov	qword ptr [rsp + 80], rcx
	add	rbx, 88
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	cmp	qword ptr [rsp + 1048], rcx     # 8-byte Folded Reload
	je	.LBB164_364
.LBB164_337:                            # =>This Inner Loop Header: Depth=1
.Ltmp781:
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	mov	edx, dword ptr [rsp + 412]      # 4-byte Reload
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	r8, r12
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Ltmp782:
# %bb.338:                              #   in Loop: Header=BB164_337 Depth=1
	mov	rcx, qword ptr [rsp + 144]
	mov	r15, qword ptr [rsp + 152]
	mov	rax, qword ptr [rsp + 160]
	mov	qword ptr [rsp + 248], rax      # 8-byte Spill
	mov	qword ptr [rsp + 1056], rcx     # 8-byte Spill
	cmp	rcx, 46
	je	.LBB164_362
# %bb.339:                              #   in Loop: Header=BB164_337 Depth=1
	lea	rax, [rsp + 168]
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmm2, xmmword ptr [rax + 32]
	movups	xmm3, xmmword ptr [rax + 48]
	movaps	xmmword ptr [rsp + 464], xmm3
	movaps	xmmword ptr [rsp + 448], xmm2
	movaps	xmmword ptr [rsp + 432], xmm1
	movaps	xmmword ptr [rsp + 416], xmm0
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	cmp	rax, qword ptr [rsp + 64]
	jne	.LBB164_336
# %bb.340:                              #   in Loop: Header=BB164_337 Depth=1
.Ltmp783:
	lea	rdi, [rsp + 64]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4line9FileEntryINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp784:
	jmp	.LBB164_335
.LBB164_341:
	movzx	eax, byte ptr [rsp + 151]
	shl	eax, 16
	movzx	r15d, word ptr [rsp + 149]
	or	r15d, eax
	shl	r15, 32
	mov	eax, dword ptr [rsp + 145]
	or	r15, rax
	mov	r13, rax
	mov	ebx, eax
	shr	ebx, 8
	shr	r15, 24
	mov	r12, qword ptr [rsp + 152]
	jmp	.LBB164_360
.LBB164_342:
	mov	ebp, 46
.LBB164_343:
	mov	r12, qword ptr [rsp + 48]
	mov	rax, qword ptr [rsp + 56]
	test	rax, rax
	je	.LBB164_355
# %bb.344:
	lea	rdx, [r12 + rax]
	mov	ecx, 8
	mov	qword ptr [rsp + 248], rcx      # 8-byte Spill
	mov	qword ptr [rsp + 104], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 96], 0         # 8-byte Folded Spill
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
.LBB164_345:                            # =>This Loop Header: Depth=1
                                        #     Child Loop BB164_346 Depth 2
	mov	r15, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rsp + 24], r12       # 8-byte Spill
	xor	ecx, ecx
.LBB164_346:                            #   Parent Loop BB164_345 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rsi, qword ptr [rsp + 24]       # 8-byte Reload
	cmp	byte ptr [rsi + rcx], 0
	je	.LBB164_348
# %bb.347:                              #   in Loop: Header=BB164_346 Depth=2
	mov	rsi, qword ptr [rsp + 24]       # 8-byte Reload
	add	rsi, rcx
	inc	rsi
	inc	rcx
	cmp	rsi, rdx
	jne	.LBB164_346
	jmp	.LBB164_354
.LBB164_348:                            #   in Loop: Header=BB164_345 Depth=1
	mov	rdx, rcx
	not	rdx
	add	rax, rdx
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	add	rdx, rcx
	inc	rdx
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 56], rax
	test	rcx, rcx
	je	.LBB164_363
# %bb.349:                              #   in Loop: Header=BB164_345 Depth=1
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 48]
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	call	_RNvMsd_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE5parseCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 144]
	mov	r15, qword ptr [rsp + 152]
	mov	r12, qword ptr [rsp + 160]
	cmp	rax, 46
	je	.LBB164_365
# %bb.350:                              #   in Loop: Header=BB164_345 Depth=1
	mov	rbx, rax
	lea	rax, [rsp + 168]
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 16]
	movups	xmm2, xmmword ptr [rax + 32]
	movups	xmm3, xmmword ptr [rax + 48]
	movaps	xmmword ptr [rsp + 560], xmm3
	movaps	xmmword ptr [rsp + 544], xmm2
	movaps	xmmword ptr [rsp + 528], xmm1
	movaps	xmmword ptr [rsp + 512], xmm0
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	cmp	rax, qword ptr [rsp + 64]
	jne	.LBB164_353
# %bb.351:                              #   in Loop: Header=BB164_345 Depth=1
.Ltmp786:
	lea	rdi, [rsp + 64]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4line9FileEntryINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp787:
# %bb.352:                              #   in Loop: Header=BB164_345 Depth=1
	mov	rax, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 248], rax      # 8-byte Spill
.LBB164_353:                            #   in Loop: Header=BB164_345 Depth=1
	mov	rcx, qword ptr [rsp + 96]       # 8-byte Reload
	imul	rax, rcx, 88
	mov	rdx, qword ptr [rsp + 248]      # 8-byte Reload
	mov	qword ptr [rdx + rax], rbx
	mov	qword ptr [rdx + rax + 8], r15
	mov	qword ptr [rdx + rax + 16], r12
	movaps	xmm0, xmmword ptr [rsp + 512]
	movaps	xmm1, xmmword ptr [rsp + 528]
	movaps	xmm2, xmmword ptr [rsp + 544]
	movaps	xmm3, xmmword ptr [rsp + 560]
	movups	xmmword ptr [rdx + rax + 24], xmm0
	movups	xmmword ptr [rdx + rax + 40], xmm1
	movups	xmmword ptr [rdx + rax + 56], xmm2
	movups	xmmword ptr [rdx + rax + 72], xmm3
	inc	rcx
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 80], rcx
	mov	r12, qword ptr [rsp + 48]
	mov	rax, qword ptr [rsp + 56]
	lea	rdx, [r12 + rax]
	mov	r15, qword ptr [rsp + 24]       # 8-byte Reload
	test	rax, rax
	jne	.LBB164_345
	jmp	.LBB164_356
.LBB164_354:
	mov	r12, qword ptr [rsp + 24]       # 8-byte Reload
	jmp	.LBB164_356
.LBB164_355:
                                        # implicit-def: $r15
.LBB164_356:
	mov	al, 1
	mov	dword ptr [rsp + 136], eax      # 4-byte Spill
	mov	eax, 2
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	mov	bpl, 19
	mov	qword ptr [rsp + 104], 0        # 8-byte Folded Spill
.LBB164_357:
	mov	r13d, r15d
	shr	r13d, 8
	mov	ebx, r15d
	shr	ebx, 16
	shr	r15, 32
	cmp	qword ptr [rsp + 64], 0
	je	.LBB164_359
# %bb.358:
	mov	rdi, qword ptr [rsp + 72]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_359:
	cmp	byte ptr [rsp + 136], 0         # 1-byte Folded Reload
	je	.LBB164_316
.LBB164_360:
	cmp	qword ptr [rsp + 104], 0        # 8-byte Folded Reload
	je	.LBB164_316
# %bb.361:
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB164_316
.LBB164_362:
	mov	al, 1
	mov	dword ptr [rsp + 136], eax      # 4-byte Spill
	mov	ebp, r15d
	mov	r12, qword ptr [rsp + 248]      # 8-byte Reload
	jmp	.LBB164_357
.LBB164_363:
	mov	eax, 2
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	xor	r12d, r12d
.LBB164_364:
	mov	rax, qword ptr [rsp + 400]      # 8-byte Reload
	add	qword ptr [rsp + 128], rax      # 8-byte Folded Spill
	mov	rax, qword ptr [rsp + 288]
	mov	qword ptr [rsp + 1152], rax
	movups	xmm0, xmmword ptr [rsp + 272]
	movaps	xmmword ptr [rsp + 1136], xmm0
	movups	xmm0, xmmword ptr [rsp + 64]
	movaps	xmmword ptr [rsp + 1104], xmm0
	mov	rax, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 1120], rax
	movaps	xmm0, xmmword ptr [rsp + 1216]
	movaps	xmmword ptr [rsp + 1168], xmm0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 336], xmm0
	mov	qword ptr [rsp + 352], 0
	movaps	xmmword ptr [rsp + 160], xmm0
	movups	xmm0, xmmword ptr [rsp + 320]
	movaps	xmmword ptr [rsp + 144], xmm0
	mov	qword ptr [rsp + 176], 0
	mov	r15, qword ptr [rsp + 312]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 384]      # 8-byte Reload
	cmp	qword ptr [rsp + 688], 47
	jne	.LBB164_175
	jmp	.LBB164_183
.LBB164_365:
	mov	al, 1
	mov	dword ptr [rsp + 136], eax      # 4-byte Spill
	mov	eax, 2
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	mov	qword ptr [rsp + 104], 0        # 8-byte Folded Spill
	mov	ebp, r15d
	jmp	.LBB164_357
.LBB164_366:
.Ltmp788:
	mov	rbx, rax
	mov	eax, 2
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	mov	r14b, 1
	jmp	.LBB164_370
.LBB164_367:
.Ltmp780:
	mov	rbx, rax
	mov	bpl, 1
                                        # implicit-def: $r14b
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jmp	.LBB164_371
.LBB164_368:
.Ltmp777:
	mov	rbx, rax
	mov	eax, 2
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	qword ptr [rsp + 256], 0        # 8-byte Folded Spill
	jmp	.LBB164_377
.LBB164_369:
.Ltmp785:
	mov	rbx, rax
	cmp	qword ptr [rsp + 104], 0        # 8-byte Folded Reload
	sete	r14b
.LBB164_370:
	xor	ebp, ebp
.LBB164_371:
	cmp	qword ptr [rsp + 64], 0
	je	.LBB164_373
# %bb.372:
	mov	rdi, qword ptr [rsp + 72]
	call	qword ptr [rip + free@GOTPCREL]
.LBB164_373:
	or	r14b, bpl
	test	r14b, 1
	jne	.LBB164_377
# %bb.374:
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB164_377
.LBB164_375:
.Ltmp769:
	mov	rbx, rax
	mov	bpl, 1
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jmp	.LBB164_378
.LBB164_376:
.Ltmp774:
	mov	rbx, rax
.LBB164_377:
	xor	ebp, ebp
.LBB164_378:
	cmp	qword ptr [rsp + 272], 0
	jne	.LBB164_381
# %bb.379:
	cmp	qword ptr [rsp + 256], 0        # 8-byte Folded Reload
	sete	al
	or	bpl, al
	je	.LBB164_382
.LBB164_380:
	mov	rax, qword ptr [rsp + 960]
	lock		dec	qword ptr [rax]
	je	.LBB164_400
	jmp	.LBB164_401
.LBB164_381:
	mov	rdi, qword ptr [rsp + 280]
	call	qword ptr [rip + free@GOTPCREL]
	cmp	qword ptr [rsp + 256], 0        # 8-byte Folded Reload
	sete	al
	or	bpl, al
	jne	.LBB164_380
.LBB164_382:
	mov	rdi, qword ptr [rsp + 120]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	mov	rax, qword ptr [rsp + 960]
	lock		dec	qword ptr [rax]
	je	.LBB164_400
	jmp	.LBB164_401
.LBB164_383:
.Ltmp751:
	jmp	.LBB164_394
.LBB164_384:
.Ltmp748:
	mov	rbx, rax
	cmp	qword ptr [rsp + 144], 0
	je	.LBB164_395
# %bb.385:
	cmp	qword ptr [rsp + 152], 0
	je	.LBB164_395
# %bb.386:
	mov	rdi, qword ptr [rsp + 160]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB164_395
.LBB164_387:
.Ltmp742:
	mov	rbx, rax
	cmp	qword ptr [rsp + 64], 0
	je	.LBB164_395
# %bb.388:
	mov	rdi, qword ptr [rsp + 72]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB164_395
.LBB164_389:
.Ltmp794:
	mov	rbx, rax
	lea	rdi, [rsp + 688]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB164_390:
.Ltmp757:
	mov	rbx, rax
.Ltmp758:
	mov	rdi, r14
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
.Ltmp759:
	jmp	.LBB164_396
.LBB164_391:
.Ltmp760:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB164_392:
.Ltmp763:
	jmp	.LBB164_399
.LBB164_393:
.Ltmp745:
.LBB164_394:
	mov	rbx, rax
.LBB164_395:
.Ltmp752:
	lea	rdi, [rsp + 320]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
.Ltmp753:
.LBB164_396:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB164_397:
.Ltmp754:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB164_398:
.Ltmp766:
.LBB164_399:
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 960]
	lock		dec	qword ptr [rax]
	jne	.LBB164_401
.LBB164_400:
	#MEMBARRIER
	mov	rdi, qword ptr [rsp + 960]
.Ltmp789:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp790:
.LBB164_401:
	lea	rdi, [rsp + 688]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB164_402:
.Ltmp791:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end164:
	.size	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std, .Lfunc_end164-_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI164_0:
	.long	.LBB164_121-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_132-.LJTI164_0
	.long	.LBB164_143-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_122-.LJTI164_0
	.long	.LBB164_142-.LJTI164_0
.LJTI164_1:
	.long	.LBB164_128-.LJTI164_1
	.long	.LBB164_138-.LJTI164_1
	.long	.LBB164_140-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_122-.LJTI164_1
	.long	.LBB164_144-.LJTI164_1
.LJTI164_2:
	.long	.LBB164_204-.LJTI164_2
	.long	.LBB164_236-.LJTI164_2
	.long	.LBB164_189-.LJTI164_2
	.long	.LBB164_234-.LJTI164_2
	.long	.LBB164_189-.LJTI164_2
	.long	.LBB164_189-.LJTI164_2
	.long	.LBB164_189-.LJTI164_2
	.long	.LBB164_238-.LJTI164_2
	.section	.gcc_except_table._RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table164:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp746-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp747-.Ltmp746              #   Call between .Ltmp746 and .Ltmp747
	.uleb128 .Ltmp748-.Lfunc_begin28        #     jumps to .Ltmp748
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp740-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp741-.Ltmp740              #   Call between .Ltmp740 and .Ltmp741
	.uleb128 .Ltmp742-.Lfunc_begin28        #     jumps to .Ltmp742
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp749-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Ltmp750-.Ltmp749              #   Call between .Ltmp749 and .Ltmp750
	.uleb128 .Ltmp751-.Lfunc_begin28        #     jumps to .Ltmp751
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin28        # >> Call Site 4 <<
	.uleb128 .Ltmp761-.Ltmp750              #   Call between .Ltmp750 and .Ltmp761
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp761-.Lfunc_begin28        # >> Call Site 5 <<
	.uleb128 .Ltmp762-.Ltmp761              #   Call between .Ltmp761 and .Ltmp762
	.uleb128 .Ltmp763-.Lfunc_begin28        #     jumps to .Ltmp763
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin28        # >> Call Site 6 <<
	.uleb128 .Ltmp792-.Ltmp762              #   Call between .Ltmp762 and .Ltmp792
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin28        # >> Call Site 7 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin28        #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp764-.Lfunc_begin28        # >> Call Site 8 <<
	.uleb128 .Ltmp765-.Ltmp764              #   Call between .Ltmp764 and .Ltmp765
	.uleb128 .Ltmp766-.Lfunc_begin28        #     jumps to .Ltmp766
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin28        # >> Call Site 9 <<
	.uleb128 .Ltmp744-.Ltmp743              #   Call between .Ltmp743 and .Ltmp744
	.uleb128 .Ltmp745-.Lfunc_begin28        #     jumps to .Ltmp745
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin28        # >> Call Site 10 <<
	.uleb128 .Ltmp756-.Ltmp755              #   Call between .Ltmp755 and .Ltmp756
	.uleb128 .Ltmp757-.Lfunc_begin28        #     jumps to .Ltmp757
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp775-.Lfunc_begin28        # >> Call Site 11 <<
	.uleb128 .Ltmp776-.Ltmp775              #   Call between .Ltmp775 and .Ltmp776
	.uleb128 .Ltmp777-.Lfunc_begin28        #     jumps to .Ltmp777
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp767-.Lfunc_begin28        # >> Call Site 12 <<
	.uleb128 .Ltmp768-.Ltmp767              #   Call between .Ltmp767 and .Ltmp768
	.uleb128 .Ltmp769-.Lfunc_begin28        #     jumps to .Ltmp769
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp770-.Lfunc_begin28        # >> Call Site 13 <<
	.uleb128 .Ltmp773-.Ltmp770              #   Call between .Ltmp770 and .Ltmp773
	.uleb128 .Ltmp774-.Lfunc_begin28        #     jumps to .Ltmp774
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin28        # >> Call Site 14 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.uleb128 .Ltmp745-.Lfunc_begin28        #     jumps to .Ltmp745
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp778-.Lfunc_begin28        # >> Call Site 15 <<
	.uleb128 .Ltmp779-.Ltmp778              #   Call between .Ltmp778 and .Ltmp779
	.uleb128 .Ltmp780-.Lfunc_begin28        #     jumps to .Ltmp780
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp781-.Lfunc_begin28        # >> Call Site 16 <<
	.uleb128 .Ltmp784-.Ltmp781              #   Call between .Ltmp781 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin28        #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin28        # >> Call Site 17 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin28        #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp787-.Lfunc_begin28        # >> Call Site 18 <<
	.uleb128 .Ltmp758-.Ltmp787              #   Call between .Ltmp787 and .Ltmp758
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp758-.Lfunc_begin28        # >> Call Site 19 <<
	.uleb128 .Ltmp759-.Ltmp758              #   Call between .Ltmp758 and .Ltmp759
	.uleb128 .Ltmp760-.Lfunc_begin28        #     jumps to .Ltmp760
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp752-.Lfunc_begin28        # >> Call Site 20 <<
	.uleb128 .Ltmp753-.Ltmp752              #   Call between .Ltmp752 and .Ltmp753
	.uleb128 .Ltmp754-.Lfunc_begin28        #     jumps to .Ltmp754
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp753-.Lfunc_begin28        # >> Call Site 21 <<
	.uleb128 .Ltmp789-.Ltmp753              #   Call between .Ltmp753 and .Ltmp789
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin28        # >> Call Site 22 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin28        #     jumps to .Ltmp791
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp790-.Lfunc_begin28        # >> Call Site 23 <<
	.uleb128 .Lfunc_end164-.Ltmp790         #   Call between .Ltmp790 and .Lfunc_end164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase13:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
