	.section	.text._RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	.type	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std,@function
_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std: # @_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
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
	mov	r10, qword ptr [rsi + 40]
	mov	r9, qword ptr [rsi + 32]
	mov	edx, dword ptr [rsi + 48]
	movzx	r14d, byte ptr [rsi + 52]
	mov	ecx, edx
	neg	cl
	shl	cl, 3
	mov	r8, -1
	shr	r8, cl
	mov	rax, qword ptr [rsi + 24]
	mov	r11, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	qword ptr [rsp - 56], rcx       # 8-byte Spill
	sub	rcx, rax
	mov	qword ptr [rsp - 112], rcx      # 8-byte Spill
	mov	qword ptr [rsp - 48], rax       # 8-byte Spill
	add	rax, r11
	mov	qword ptr [rsp - 120], rax      # 8-byte Spill
	movzx	eax, dl
	mov	qword ptr [rsp - 104], rax      # 8-byte Spill
	mov	qword ptr [rsp - 64], r8        # 8-byte Spill
	and	r8, -2
	mov	qword ptr [rsp - 32], r8        # 8-byte Spill
	mov	rax, qword ptr [rsi + 16]
	mov	qword ptr [rsp - 40], rax       # 8-byte Spill
	xor	ebp, ebp
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
	xor	r15d, r15d
                                        # implicit-def: $rbx
	mov	qword ptr [rsp - 96], rdx       # 8-byte Spill
.LBB223_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB223_2 Depth 2
                                        #       Child Loop BB223_7 Depth 3
                                        #       Child Loop BB223_17 Depth 3
                                        #     Child Loop BB223_106 Depth 2
                                        #     Child Loop BB223_51 Depth 2
                                        #     Child Loop BB223_77 Depth 2
                                        #     Child Loop BB223_61 Depth 2
                                        #     Child Loop BB223_83 Depth 2
                                        #     Child Loop BB223_39 Depth 2
	mov	r8, r9
	mov	r13, r10
.LBB223_2:                              #   Parent Loop BB223_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB223_7 Depth 3
                                        #       Child Loop BB223_17 Depth 3
	test	r13, r13
	je	.LBB223_185
# %bb.3:                                #   in Loop: Header=BB223_2 Depth=2
	test	r14b, r14b
	je	.LBB223_11
# %bb.4:                                #   in Loop: Header=BB223_2 Depth=2
	lea	r12, [r13 - 1]
	lea	rax, [r8 + 1]
	movzx	ecx, byte ptr [r8]
	cmp	ecx, 4
	jne	.LBB223_35
# %bb.5:                                #   in Loop: Header=BB223_2 Depth=2
	test	r12, r12
	je	.LBB223_167
# %bb.6:                                #   in Loop: Header=BB223_2 Depth=2
	mov	byte ptr [rsp - 121], r14b      # 1-byte Spill
	mov	qword ptr [rsp - 88], r11       # 8-byte Spill
	mov	r11, rdi
	lea	rbx, [r13 - 1]
	lea	r10, [r13 - 3]
	lea	r9, [r8 + 3]
	xor	r15d, r15d
	xor	eax, eax
	xor	ecx, ecx
	.p2align	4
.LBB223_7:                              #   Parent Loop BB223_1 Depth=1
                                        #     Parent Loop BB223_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	ebp, byte ptr [r8 + r15 + 1]
	mov	r14d, 6
	cmp	ecx, 63
	jne	.LBB223_9
# %bb.8:                                #   in Loop: Header=BB223_7 Depth=3
	cmp	bpl, 1
	ja	.LBB223_165
.LBB223_9:                              #   in Loop: Header=BB223_7 Depth=3
	movzx	edi, bpl
	mov	edx, edi
	and	edx, 127
	shl	rdx, cl
	lea	rbp, [r12 - 1]
	or	rax, rdx
	test	dil, dil
	jns	.LBB223_15
# %bb.10:                               #   in Loop: Header=BB223_7 Depth=3
	add	ecx, 7
	inc	r15
	dec	r10
	inc	r9
	mov	r12, rbp
	cmp	rbx, r15
	jne	.LBB223_7
	jmp	.LBB223_166
	.p2align	4
.LBB223_11:                             #   in Loop: Header=BB223_2 Depth=2
	mov	rax, qword ptr [rsp - 104]      # 8-byte Reload
	dec	eax
	cmp	eax, 7
	ja	.LBB223_182
# %bb.12:                               #   in Loop: Header=BB223_2 Depth=2
	lea	rcx, [rip + .LJTI223_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB223_13:                             #   in Loop: Header=BB223_2 Depth=2
	lea	rbx, [r8 + 1]
	mov	qword ptr [rsi + 32], rbx
	mov	rax, r13
	dec	rax
	mov	qword ptr [rsi + 40], rax
	je	.LBB223_173
# %bb.14:                               #   in Loop: Header=BB223_2 Depth=2
	movzx	ecx, byte ptr [r8]
	add	r13, -2
	lea	rax, [r8 + 2]
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], r13
	movzx	ebx, byte ptr [r8 + 1]
	jmp	.LBB223_30
.LBB223_15:                             #   in Loop: Header=BB223_2 Depth=2
	lea	rbx, [r8 + r15]
	add	rbx, 2
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rbp
	test	rbp, rbp
	je	.LBB223_170
# %bb.16:                               #   in Loop: Header=BB223_2 Depth=2
	add	r8, r15
	inc	r8
	xor	ebx, ebx
	xor	ecx, ecx
	mov	r15, qword ptr [rsp - 8]        # 8-byte Reload
	.p2align	4
.LBB223_17:                             #   Parent Loop BB223_1 Depth=1
                                        #     Parent Loop BB223_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	ebp, byte ptr [r9 - 1]
	cmp	ecx, 63
	jne	.LBB223_19
# %bb.18:                               #   in Loop: Header=BB223_17 Depth=3
	cmp	bpl, 1
	ja	.LBB223_168
.LBB223_19:                             #   in Loop: Header=BB223_17 Depth=3
	movzx	edx, bpl
	mov	edi, edx
	and	edi, 127
	shl	rdi, cl
	or	rbx, rdi
	test	dl, dl
	jns	.LBB223_33
# %bb.20:                               #   in Loop: Header=BB223_17 Depth=3
	add	ecx, 7
	inc	r9
	add	r10, -1
	jb	.LBB223_17
	jmp	.LBB223_169
.LBB223_21:                             #   in Loop: Header=BB223_2 Depth=2
	cmp	r13, 1
	je	.LBB223_175
# %bb.22:                               #   in Loop: Header=BB223_2 Depth=2
	lea	rax, [r13 - 2]
	lea	rbx, [r8 + 2]
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rax
	cmp	rax, 1
	jbe	.LBB223_173
# %bb.23:                               #   in Loop: Header=BB223_2 Depth=2
	movzx	ecx, word ptr [r8]
	add	r13, -4
	lea	rax, [r8 + 4]
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], r13
	movzx	ebx, word ptr [r8 + 2]
	jmp	.LBB223_30
.LBB223_24:                             #   in Loop: Header=BB223_2 Depth=2
	cmp	r13, 7
	jbe	.LBB223_175
# %bb.25:                               #   in Loop: Header=BB223_2 Depth=2
	lea	rax, [r13 - 8]
	lea	rbx, [r8 + 8]
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rax
	cmp	rax, 8
	jb	.LBB223_173
# %bb.26:                               #   in Loop: Header=BB223_2 Depth=2
	movzx	eax, byte ptr [r8 + 7]
	movzx	ecx, word ptr [r8 + 4]
	movzx	r9d, byte ptr [r8 + 6]
	shl	r9d, 16
	or	r9d, ecx
	shl	r9, 32
	mov	ecx, dword ptr [r8]
	or	rcx, r9
	shl	rcx, 8
	shrd	rcx, rax, 8
	add	r13, -16
	lea	rax, [r8 + 16]
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], r13
	movzx	r9d, byte ptr [r8 + 15]
	movzx	r10d, word ptr [r8 + 12]
	mov	edx, r14d
	movzx	r14d, byte ptr [r8 + 14]
	shl	r14d, 16
	or	r14d, r10d
	mov	ebx, dword ptr [r8 + 8]
	shl	r14, 40
	shl	rbx, 8
	or	rbx, r14
	mov	r14d, edx
	shrd	rbx, r9, 8
	jmp	.LBB223_30
.LBB223_27:                             #   in Loop: Header=BB223_2 Depth=2
	cmp	r13, 3
	jbe	.LBB223_175
# %bb.28:                               #   in Loop: Header=BB223_2 Depth=2
	lea	rax, [r13 - 4]
	lea	rbx, [r8 + 4]
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rax
	cmp	rax, 3
	jbe	.LBB223_173
# %bb.29:                               #   in Loop: Header=BB223_2 Depth=2
	mov	ecx, dword ptr [r8]
	add	r13, -8
	lea	rax, [r8 + 8]
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], r13
	mov	ebx, dword ptr [r8 + 4]
.LBB223_30:                             #   in Loop: Header=BB223_2 Depth=2
	mov	r8, rax
	mov	rax, rbx
	or	rax, rcx
	je	.LBB223_171
# %bb.31:                               #   in Loop: Header=BB223_2 Depth=2
	mov	rdx, qword ptr [rsp - 64]       # 8-byte Reload
	cmp	rcx, rdx
	mov	rax, rcx
	cmove	rax, rbx
	mov	r15, rax
	shr	r15, 16
	cmp	rcx, rdx
	je	.LBB223_43
# %bb.32:                               #   in Loop: Header=BB223_2 Depth=2
	mov	rcx, qword ptr [rsp - 40]       # 8-byte Reload
	cmp	rcx, qword ptr [rsp - 32]       # 8-byte Folded Reload
	jae	.LBB223_2
	jmp	.LBB223_34
.LBB223_33:                             #   in Loop: Header=BB223_2 Depth=2
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r10
	mov	r15, rax
	shr	r15, 16
	mov	qword ptr [rsp - 8], rbx        # 8-byte Spill
	mov	r13, r10
	mov	r8, r9
	mov	rdi, r11
	xor	ebp, ebp
	mov	r11, qword ptr [rsp - 88]       # 8-byte Reload
	movzx	r14d, byte ptr [rsp - 121]      # 1-byte Folded Reload
	mov	rcx, qword ptr [rsp - 40]       # 8-byte Reload
	cmp	rcx, qword ptr [rsp - 32]       # 8-byte Folded Reload
	jae	.LBB223_2
.LBB223_34:                             #   in Loop: Header=BB223_1 Depth=1
	mov	rcx, qword ptr [rsp - 40]       # 8-byte Reload
	add	rax, rcx
	mov	rdx, qword ptr [rsp - 64]       # 8-byte Reload
	and	rax, rdx
	add	rcx, rbx
	and	rcx, rdx
	mov	r10, r13
	mov	r9, r8
	jmp	.LBB223_156
.LBB223_35:                             #   in Loop: Header=BB223_1 Depth=1
	cmp	ecx, 7
	ja	.LBB223_174
# %bb.36:                               #   in Loop: Header=BB223_1 Depth=1
	mov	r9d, ecx
	lea	rdx, [rip + .LJTI223_1]
	movsxd	r9, dword ptr [rdx + 4*r9]
	add	r9, rdx
	jmp	r9
.LBB223_37:                             #   in Loop: Header=BB223_1 Depth=1
	test	r12, r12
	je	.LBB223_167
# %bb.38:                               #   in Loop: Header=BB223_1 Depth=1
	lea	r10, [r13 - 2]
	lea	r9, [r8 + 2]
	xor	r15d, r15d
	xor	ecx, ecx
	.p2align	4
.LBB223_39:                             #   Parent Loop BB223_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	eax, byte ptr [r9 - 1]
	cmp	ecx, 63
	jne	.LBB223_41
# %bb.40:                               #   in Loop: Header=BB223_39 Depth=2
	cmp	al, 1
	ja	.LBB223_178
.LBB223_41:                             #   in Loop: Header=BB223_39 Depth=2
	movzx	eax, al
	mov	ebx, eax
	and	ebx, 127
	shl	rbx, cl
	or	r15, rbx
	test	al, al
	jns	.LBB223_69
# %bb.42:                               #   in Loop: Header=BB223_39 Depth=2
	add	ecx, 7
	inc	r9
	add	r10, -1
	jb	.LBB223_39
	jmp	.LBB223_177
.LBB223_43:                             #   in Loop: Header=BB223_1 Depth=1
	mov	r10, r13
	mov	r9, r8
	jmp	.LBB223_137
.LBB223_44:                             #   in Loop: Header=BB223_1 Depth=1
	mov	byte ptr [rsp - 121], r14b      # 1-byte Spill
	mov	r14d, 25
	mov	rcx, qword ptr [rsp - 104]      # 8-byte Reload
	dec	ecx
	cmp	ecx, 7
	ja	.LBB223_198
# %bb.45:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rdx, [rip + .LJTI223_3]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB223_46:                             #   in Loop: Header=BB223_1 Depth=1
	test	r12, r12
	je	.LBB223_167
# %bb.47:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rbx, [r8 + 2]
	mov	qword ptr [rsi + 32], rbx
	mov	rax, r13
	add	rax, -2
	mov	qword ptr [rsi + 40], rax
	je	.LBB223_191
# %bb.48:                               #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, byte ptr [r8 + 1]
	add	r13, -3
	lea	r9, [r8 + 3]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	movzx	ebx, byte ptr [r8 + 2]
	jmp	.LBB223_96
.LBB223_49:                             #   in Loop: Header=BB223_1 Depth=1
	test	r12, r12
	je	.LBB223_167
# %bb.50:                               #   in Loop: Header=BB223_1 Depth=1
	mov	byte ptr [rsp - 121], r14b      # 1-byte Spill
	lea	rax, [r13 - 1]
	mov	qword ptr [rsp - 88], rax       # 8-byte Spill
	lea	r10, [r13 - 3]
	lea	r9, [r8 + 3]
	xor	eax, eax
	xor	r15d, r15d
	xor	ecx, ecx
	.p2align	4
.LBB223_51:                             #   Parent Loop BB223_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	ebp, byte ptr [r8 + rax + 1]
	mov	r14d, 6
	cmp	ecx, 63
	jne	.LBB223_53
# %bb.52:                               #   in Loop: Header=BB223_51 Depth=2
	cmp	bpl, 1
	ja	.LBB223_176
.LBB223_53:                             #   in Loop: Header=BB223_51 Depth=2
	movzx	ebx, bpl
	mov	edx, ebx
	and	edx, 127
	shl	rdx, cl
	lea	rbp, [r12 - 1]
	or	r15, rdx
	test	bl, bl
	jns	.LBB223_75
# %bb.54:                               #   in Loop: Header=BB223_51 Depth=2
	add	ecx, 7
	inc	rax
	dec	r10
	inc	r9
	mov	r12, rbp
	cmp	qword ptr [rsp - 88], rax       # 8-byte Folded Reload
	jne	.LBB223_51
	jmp	.LBB223_180
.LBB223_55:                             #   in Loop: Header=BB223_1 Depth=1
	mov	r9d, r14d
	mov	r14d, 25
	mov	rcx, qword ptr [rsp - 104]      # 8-byte Reload
	dec	ecx
	cmp	ecx, 7
	ja	.LBB223_198
# %bb.56:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rdx, [rip + .LJTI223_2]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB223_57:                             #   in Loop: Header=BB223_1 Depth=1
	test	r12, r12
	je	.LBB223_167
# %bb.58:                               #   in Loop: Header=BB223_1 Depth=1
	add	r13, -2
	lea	r15, [r8 + 2]
	mov	qword ptr [rsi + 32], r15
	mov	qword ptr [rsi + 40], r13
	movzx	eax, byte ptr [r8 + 1]
	jmp	.LBB223_104
.LBB223_59:                             #   in Loop: Header=BB223_1 Depth=1
	test	r12, r12
	je	.LBB223_167
# %bb.60:                               #   in Loop: Header=BB223_1 Depth=1
	mov	byte ptr [rsp - 121], r14b      # 1-byte Spill
	lea	rax, [r13 - 1]
	mov	qword ptr [rsp - 88], rax       # 8-byte Spill
	lea	r10, [r13 - 3]
	lea	r9, [r8 + 3]
	xor	eax, eax
	xor	r15d, r15d
	xor	ecx, ecx
	.p2align	4
.LBB223_61:                             #   Parent Loop BB223_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	ebp, byte ptr [r8 + rax + 1]
	mov	r14d, 6
	cmp	ecx, 63
	jne	.LBB223_63
# %bb.62:                               #   in Loop: Header=BB223_61 Depth=2
	cmp	bpl, 1
	ja	.LBB223_176
.LBB223_63:                             #   in Loop: Header=BB223_61 Depth=2
	movzx	ebx, bpl
	mov	edx, ebx
	and	edx, 127
	shl	rdx, cl
	lea	rbp, [r12 - 1]
	or	r15, rdx
	test	bl, bl
	jns	.LBB223_81
# %bb.64:                               #   in Loop: Header=BB223_61 Depth=2
	add	ecx, 7
	inc	rax
	dec	r10
	inc	r9
	mov	r12, rbp
	cmp	qword ptr [rsp - 88], rax       # 8-byte Folded Reload
	jne	.LBB223_61
	jmp	.LBB223_177
.LBB223_65:                             #   in Loop: Header=BB223_1 Depth=1
	mov	rcx, qword ptr [rsp - 104]      # 8-byte Reload
	dec	ecx
	cmp	ecx, 7
	ja	.LBB223_197
# %bb.66:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rdx, [rip + .LJTI223_4]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB223_67:                             #   in Loop: Header=BB223_1 Depth=1
	test	r12, r12
	je	.LBB223_167
# %bb.68:                               #   in Loop: Header=BB223_1 Depth=1
	add	r13, -2
	lea	r9, [r8 + 2]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	movzx	eax, byte ptr [r8 + 1]
	jmp	.LBB223_117
.LBB223_69:                             #   in Loop: Header=BB223_1 Depth=1
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r10
	mov	rax, qword ptr [rsp - 56]       # 8-byte Reload
	cmp	rax, qword ptr [rsp - 48]       # 8-byte Folded Reload
	jb	.LBB223_195
# %bb.70:                               #   in Loop: Header=BB223_1 Depth=1
	mov	rcx, r15
	mov	rdx, qword ptr [rsp - 104]      # 8-byte Reload
	imul	rcx, rdx
	mov	rax, qword ptr [rsp - 112]      # 8-byte Reload
	sub	rax, rcx
	jb	.LBB223_194
# %bb.71:                               #   in Loop: Header=BB223_1 Depth=1
	lea	ebx, [rdx - 1]
	cmp	ebx, 7
	ja	.LBB223_200
# %bb.72:                               #   in Loop: Header=BB223_1 Depth=1
	shr	r15, 16
	mov	rdx, qword ptr [rsp - 120]      # 8-byte Reload
	lea	r8, [rdx + rcx]
	lea	r12, [rip + .LJTI223_8]
	movsxd	rdx, dword ptr [r12 + 4*rbx]
	add	rdx, r12
	jmp	rdx
.LBB223_73:                             #   in Loop: Header=BB223_1 Depth=1
	cmp	qword ptr [rsp - 112], rcx      # 8-byte Folded Reload
	je	.LBB223_193
# %bb.74:                               #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, byte ptr [r8]
	jmp	.LBB223_136
.LBB223_75:                             #   in Loop: Header=BB223_1 Depth=1
	lea	rbx, [r8 + rax]
	add	rbx, 2
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rbp
	test	rbp, rbp
	je	.LBB223_191
# %bb.76:                               #   in Loop: Header=BB223_1 Depth=1
	add	rax, r8
	inc	rax
	xor	ebx, ebx
	xor	ecx, ecx
	xor	ebp, ebp
	mov	r13, qword ptr [rsp - 24]       # 8-byte Reload
.LBB223_77:                             #   Parent Loop BB223_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r8d, byte ptr [r9 - 1]
	cmp	ecx, 63
	jne	.LBB223_79
# %bb.78:                               #   in Loop: Header=BB223_77 Depth=2
	cmp	r8b, 1
	ja	.LBB223_189
.LBB223_79:                             #   in Loop: Header=BB223_77 Depth=2
	movzx	edx, r8b
	mov	r8d, edx
	and	r8d, 127
	shl	r8, cl
	or	rbx, r8
	test	dl, dl
	jns	.LBB223_124
# %bb.80:                               #   in Loop: Header=BB223_77 Depth=2
	add	ecx, 7
	inc	r9
	add	r10, -1
	jb	.LBB223_77
	jmp	.LBB223_190
.LBB223_81:                             #   in Loop: Header=BB223_1 Depth=1
	lea	rbx, [r8 + rax]
	add	rbx, 2
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rbp
	test	rbp, rbp
	je	.LBB223_191
# %bb.82:                               #   in Loop: Header=BB223_1 Depth=1
	add	rax, r8
	inc	rax
	xor	ebx, ebx
	xor	ecx, ecx
	xor	ebp, ebp
	mov	r13, qword ptr [rsp - 72]       # 8-byte Reload
.LBB223_83:                             #   Parent Loop BB223_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r8d, byte ptr [r9 - 1]
	cmp	ecx, 63
	jne	.LBB223_85
# %bb.84:                               #   in Loop: Header=BB223_83 Depth=2
	cmp	r8b, 1
	ja	.LBB223_189
.LBB223_85:                             #   in Loop: Header=BB223_83 Depth=2
	movzx	edx, r8b
	mov	r8d, edx
	and	r8d, 127
	shl	r8, cl
	or	rbx, r8
	test	dl, dl
	jns	.LBB223_118
# %bb.86:                               #   in Loop: Header=BB223_83 Depth=2
	add	ecx, 7
	inc	r9
	add	r10, -1
	jb	.LBB223_83
	jmp	.LBB223_190
.LBB223_87:                             #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 1
	jbe	.LBB223_167
# %bb.88:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rax, [r13 - 3]
	lea	rbx, [r8 + 3]
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rax
	cmp	rax, 1
	jbe	.LBB223_191
# %bb.89:                               #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, word ptr [r8 + 1]
	add	r13, -5
	lea	r9, [r8 + 5]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	movzx	ebx, word ptr [r8 + 3]
	jmp	.LBB223_96
.LBB223_90:                             #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 7
	jbe	.LBB223_167
# %bb.91:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rax, [r13 - 9]
	lea	rbx, [r8 + 9]
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rax
	cmp	rax, 8
	jb	.LBB223_191
# %bb.92:                               #   in Loop: Header=BB223_1 Depth=1
	movzx	ecx, byte ptr [r8 + 8]
	movzx	eax, word ptr [r8 + 5]
	movzx	edx, byte ptr [r8 + 7]
	shl	edx, 16
	or	edx, eax
	shl	rdx, 32
	mov	eax, dword ptr [r8 + 1]
	or	rax, rdx
	shl	rax, 8
	shrd	rax, rcx, 8
	add	r13, -17
	lea	r9, [r8 + 17]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	movzx	ecx, byte ptr [r8 + 16]
	movzx	edx, word ptr [r8 + 13]
	movzx	r10d, byte ptr [r8 + 15]
	shl	r10d, 16
	or	r10d, edx
	mov	ebx, dword ptr [r8 + 9]
	shl	r10, 40
	shl	rbx, 8
	or	rbx, r10
	shrd	rbx, rcx, 8
	jmp	.LBB223_96
.LBB223_93:                             #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 3
	jbe	.LBB223_167
# %bb.94:                               #   in Loop: Header=BB223_1 Depth=1
	lea	rax, [r13 - 5]
	lea	rbx, [r8 + 5]
	mov	qword ptr [rsi + 32], rbx
	mov	qword ptr [rsi + 40], rax
	cmp	rax, 3
	jbe	.LBB223_191
# %bb.95:                               #   in Loop: Header=BB223_1 Depth=1
	mov	eax, dword ptr [r8 + 1]
	add	r13, -9
	lea	r9, [r8 + 9]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	mov	ebx, dword ptr [r8 + 5]
.LBB223_96:                             #   in Loop: Header=BB223_1 Depth=1
	mov	r15, rax
	shr	r15, 16
	mov	r10, r13
	mov	rcx, rbx
.LBB223_97:                             #   in Loop: Header=BB223_1 Depth=1
	movzx	r14d, byte ptr [rsp - 121]      # 1-byte Folded Reload
	jmp	.LBB223_156
.LBB223_98:                             #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 1
	jbe	.LBB223_167
# %bb.99:                               #   in Loop: Header=BB223_1 Depth=1
	add	r13, -3
	lea	r15, [r8 + 3]
	mov	qword ptr [rsi + 32], r15
	mov	qword ptr [rsi + 40], r13
	movzx	eax, word ptr [r8 + 1]
	jmp	.LBB223_104
.LBB223_100:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 7
	jbe	.LBB223_167
# %bb.101:                              #   in Loop: Header=BB223_1 Depth=1
	add	r13, -9
	lea	r15, [r8 + 9]
	mov	qword ptr [rsi + 32], r15
	mov	qword ptr [rsi + 40], r13
	movzx	ecx, byte ptr [r8 + 8]
	movzx	eax, word ptr [r8 + 5]
	movzx	edx, byte ptr [r8 + 7]
	shl	edx, 16
	or	edx, eax
	mov	eax, dword ptr [r8 + 1]
	shl	rdx, 40
	shl	rax, 8
	or	rax, rdx
	shrd	rax, rcx, 8
	jmp	.LBB223_104
.LBB223_102:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 3
	jbe	.LBB223_167
# %bb.103:                              #   in Loop: Header=BB223_1 Depth=1
	add	r13, -5
	lea	r15, [r8 + 5]
	mov	qword ptr [rsi + 32], r15
	mov	qword ptr [rsi + 40], r13
	mov	eax, dword ptr [r8 + 1]
.LBB223_104:                            #   in Loop: Header=BB223_1 Depth=1
	test	r13, r13
	je	.LBB223_188
# %bb.105:                              #   in Loop: Header=BB223_1 Depth=1
	mov	r14d, r9d
	lea	r10, [r13 - 1]
	lea	r9, [r15 + 1]
	xor	ebx, ebx
	xor	ecx, ecx
	.p2align	4
.LBB223_106:                            #   Parent Loop BB223_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r8d, byte ptr [r9 - 1]
	cmp	ecx, 63
	jne	.LBB223_108
# %bb.107:                              #   in Loop: Header=BB223_106 Depth=2
	cmp	r8b, 1
	ja	.LBB223_179
.LBB223_108:                            #   in Loop: Header=BB223_106 Depth=2
	movzx	edx, r8b
	mov	r8d, edx
	and	r8d, 127
	shl	r8, cl
	or	rbx, r8
	test	dl, dl
	jns	.LBB223_110
# %bb.109:                              #   in Loop: Header=BB223_106 Depth=2
	add	ecx, 7
	inc	r9
	add	r10, -1
	jb	.LBB223_106
	jmp	.LBB223_187
.LBB223_110:                            #   in Loop: Header=BB223_1 Depth=1
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r10
	mov	r15, rax
	shr	r15, 16
	lea	rcx, [rax + rbx]
	and	rcx, qword ptr [rsp - 64]       # 8-byte Folded Reload
	mov	qword ptr [rsp - 16], rbx       # 8-byte Spill
	jmp	.LBB223_156
.LBB223_111:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 1
	jbe	.LBB223_167
# %bb.112:                              #   in Loop: Header=BB223_1 Depth=1
	add	r13, -3
	lea	r9, [r8 + 3]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	movzx	eax, word ptr [r8 + 1]
	jmp	.LBB223_117
.LBB223_113:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 7
	jbe	.LBB223_167
# %bb.114:                              #   in Loop: Header=BB223_1 Depth=1
	add	r13, -9
	lea	r9, [r8 + 9]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	movzx	ecx, byte ptr [r8 + 8]
	movzx	eax, word ptr [r8 + 5]
	movzx	edx, byte ptr [r8 + 7]
	shl	edx, 16
	or	edx, eax
	mov	eax, dword ptr [r8 + 1]
	shl	rdx, 40
	shl	rax, 8
	or	rax, rdx
	shrd	rax, rcx, 8
	jmp	.LBB223_117
.LBB223_115:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r12, 3
	jbe	.LBB223_167
# %bb.116:                              #   in Loop: Header=BB223_1 Depth=1
	add	r13, -5
	lea	r9, [r8 + 5]
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r13
	mov	eax, dword ptr [r8 + 1]
.LBB223_117:                            #   in Loop: Header=BB223_1 Depth=1
	mov	r15, rax
	shr	r15, 16
                                        # implicit-def: $rbx
	mov	r10, r13
	jmp	.LBB223_137
.LBB223_118:                            #   in Loop: Header=BB223_1 Depth=1
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r10
	mov	rax, qword ptr [rsp - 56]       # 8-byte Reload
	cmp	rax, qword ptr [rsp - 48]       # 8-byte Folded Reload
	jb	.LBB223_195
# %bb.119:                              #   in Loop: Header=BB223_1 Depth=1
	mov	r14, r15
	mov	rcx, qword ptr [rsp - 104]      # 8-byte Reload
	imul	r14, rcx
	mov	rax, qword ptr [rsp - 112]      # 8-byte Reload
	sub	rax, r14
	jb	.LBB223_194
# %bb.120:                              #   in Loop: Header=BB223_1 Depth=1
	dec	ecx
	cmp	ecx, 7
	ja	.LBB223_201
# %bb.121:                              #   in Loop: Header=BB223_1 Depth=1
	mov	rdx, qword ptr [rsp - 120]      # 8-byte Reload
	lea	r8, [rdx + r14]
	lea	r12, [rip + .LJTI223_6]
	movsxd	rdx, dword ptr [r12 + 4*rcx]
	add	rdx, r12
	jmp	rdx
.LBB223_122:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	qword ptr [rsp - 112], r14      # 8-byte Folded Reload
	je	.LBB223_193
# %bb.123:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, byte ptr [r8]
	jmp	.LBB223_144
.LBB223_124:                            #   in Loop: Header=BB223_1 Depth=1
	mov	qword ptr [rsi + 32], r9
	mov	qword ptr [rsi + 40], r10
	mov	rax, qword ptr [rsp - 56]       # 8-byte Reload
	cmp	rax, qword ptr [rsp - 48]       # 8-byte Folded Reload
	jb	.LBB223_195
# %bb.125:                              #   in Loop: Header=BB223_1 Depth=1
	mov	rcx, r15
	mov	rdx, qword ptr [rsp - 104]      # 8-byte Reload
	imul	rcx, rdx
	mov	rax, qword ptr [rsp - 112]      # 8-byte Reload
	sub	rax, rcx
	jb	.LBB223_194
# %bb.126:                              #   in Loop: Header=BB223_1 Depth=1
	lea	r14d, [rdx - 1]
	cmp	r14d, 7
	ja	.LBB223_201
# %bb.127:                              #   in Loop: Header=BB223_1 Depth=1
	mov	rdx, qword ptr [rsp - 120]      # 8-byte Reload
	lea	r8, [rdx + rcx]
	lea	r12, [rip + .LJTI223_5]
	movsxd	rdx, dword ptr [r12 + 4*r14]
	add	rdx, r12
	jmp	rdx
.LBB223_128:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	qword ptr [rsp - 112], rcx      # 8-byte Folded Reload
	je	.LBB223_193
# %bb.129:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, byte ptr [r8]
	jmp	.LBB223_155
.LBB223_130:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 1
	jbe	.LBB223_193
# %bb.131:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, word ptr [r8]
	jmp	.LBB223_136
.LBB223_132:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 7
	jbe	.LBB223_193
# %bb.133:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	ecx, byte ptr [r8 + 7]
	movzx	eax, word ptr [r8 + 4]
	movzx	edx, byte ptr [r8 + 6]
	shl	edx, 16
	or	edx, eax
	mov	eax, dword ptr [r8]
	shl	rdx, 40
	shl	rax, 8
	or	rax, rdx
	shrd	rax, rcx, 8
	jmp	.LBB223_136
.LBB223_134:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 3
	jbe	.LBB223_193
# %bb.135:                              #   in Loop: Header=BB223_1 Depth=1
	mov	eax, dword ptr [r8]
.LBB223_136:                            #   in Loop: Header=BB223_1 Depth=1
                                        # implicit-def: $rbx
.LBB223_137:                            #   in Loop: Header=BB223_1 Depth=1
	mov	qword ptr [rsi + 16], rax
	mov	qword ptr [rsp - 40], rax       # 8-byte Spill
	jmp	.LBB223_1
.LBB223_138:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 1
	jbe	.LBB223_193
# %bb.139:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, word ptr [r8]
	jmp	.LBB223_144
.LBB223_140:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 7
	jbe	.LBB223_193
# %bb.141:                              #   in Loop: Header=BB223_1 Depth=1
	mov	r14, r11
	movzx	edx, byte ptr [r8 + 7]
	movzx	eax, word ptr [r8 + 4]
	movzx	r11d, byte ptr [r8 + 6]
	shl	r11d, 16
	or	r11d, eax
	mov	eax, dword ptr [r8]
	shl	r11, 40
	shl	rax, 8
	or	rax, r11
	shrd	rax, rdx, 8
	mov	r11, r14
	jmp	.LBB223_144
.LBB223_142:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 3
	jbe	.LBB223_193
# %bb.143:                              #   in Loop: Header=BB223_1 Depth=1
	mov	eax, dword ptr [r8]
.LBB223_144:                            #   in Loop: Header=BB223_1 Depth=1
	mov	r12, rbx
	imul	r12, qword ptr [rsp - 104]      # 8-byte Folded Reload
	mov	r14, qword ptr [rsp - 112]      # 8-byte Reload
	sub	r14, r12
	jb	.LBB223_199
# %bb.145:                              #   in Loop: Header=BB223_1 Depth=1
	cmp	ecx, 7
	ja	.LBB223_201
# %bb.146:                              #   in Loop: Header=BB223_1 Depth=1
	shr	r15, 16
	mov	rdx, qword ptr [rsp - 120]      # 8-byte Reload
	lea	r8, [rdx + r12]
	lea	rdx, [rip + .LJTI223_7]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB223_147:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	qword ptr [rsp - 112], r12      # 8-byte Folded Reload
	movzx	r14d, byte ptr [rsp - 121]      # 1-byte Folded Reload
	je	.LBB223_193
# %bb.148:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	ecx, byte ptr [r8]
	mov	qword ptr [rsp - 72], rbx       # 8-byte Spill
	mov	qword ptr [rsp - 80], rcx       # 8-byte Spill
	jmp	.LBB223_156
.LBB223_149:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 1
	jbe	.LBB223_193
# %bb.150:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	eax, word ptr [r8]
	jmp	.LBB223_155
.LBB223_151:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 7
	jbe	.LBB223_193
# %bb.152:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	ecx, byte ptr [r8 + 7]
	movzx	eax, word ptr [r8 + 4]
	movzx	edx, byte ptr [r8 + 6]
	shl	edx, 16
	or	edx, eax
	mov	eax, dword ptr [r8]
	shl	rdx, 40
	shl	rax, 8
	or	rax, rdx
	shrd	rax, rcx, 8
	jmp	.LBB223_155
.LBB223_153:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, 3
	jbe	.LBB223_193
# %bb.154:                              #   in Loop: Header=BB223_1 Depth=1
	mov	eax, dword ptr [r8]
.LBB223_155:                            #   in Loop: Header=BB223_1 Depth=1
	movzx	r14d, byte ptr [rsp - 121]      # 1-byte Folded Reload
	shr	r15, 16
	lea	rcx, [rax + rbx]
	and	rcx, qword ptr [rsp - 64]       # 8-byte Folded Reload
	mov	qword ptr [rsp - 24], rbx       # 8-byte Spill
.LBB223_156:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, qword ptr [rsp - 32]       # 8-byte Folded Reload
	jae	.LBB223_1
# %bb.157:                              #   in Loop: Header=BB223_1 Depth=1
	cmp	rax, rcx
	jae	.LBB223_1
	jmp	.LBB223_192
.LBB223_158:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r14, 1
	jbe	.LBB223_193
# %bb.159:                              #   in Loop: Header=BB223_1 Depth=1
	movzx	ecx, word ptr [r8]
	jmp	.LBB223_164
.LBB223_160:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r14, 7
	jbe	.LBB223_193
# %bb.161:                              #   in Loop: Header=BB223_1 Depth=1
	mov	r12, r11
	movzx	ecx, byte ptr [r8 + 7]
	movzx	edx, word ptr [r8 + 4]
	movzx	r11d, byte ptr [r8 + 6]
	shl	r11d, 16
	or	r11d, edx
	mov	edx, dword ptr [r8]
	shl	r11, 40
	shl	rdx, 8
	or	rdx, r11
	shrd	rdx, rcx, 8
	mov	qword ptr [rsp - 72], rbx       # 8-byte Spill
	mov	qword ptr [rsp - 80], rdx       # 8-byte Spill
	mov	rcx, rdx
	mov	r11, r12
	jmp	.LBB223_97
.LBB223_162:                            #   in Loop: Header=BB223_1 Depth=1
	cmp	r14, 3
	jbe	.LBB223_193
# %bb.163:                              #   in Loop: Header=BB223_1 Depth=1
	mov	ecx, dword ptr [r8]
.LBB223_164:                            #   in Loop: Header=BB223_1 Depth=1
	mov	qword ptr [rsp - 72], rbx       # 8-byte Spill
	mov	qword ptr [rsp - 80], rcx       # 8-byte Spill
	jmp	.LBB223_97
.LBB223_165:
	xor	ebp, ebp
	xor	ecx, ecx
                                        # implicit-def: $rbx
	mov	rdi, r11
	jmp	.LBB223_184
.LBB223_166:
	add	r8, r13
	mov	qword ptr [rsi + 32], r8
	mov	qword ptr [rsi + 40], 0
	mov	rax, r8
	mov	rdi, r11
.LBB223_167:
	mov	r14d, 19
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rbx, rax
	jmp	.LBB223_184
.LBB223_168:
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rbx, r15
	mov	rdi, r11
	jmp	.LBB223_184
.LBB223_169:
	add	r8, r12
	mov	qword ptr [rsi + 32], r8
	mov	qword ptr [rsi + 40], 0
	mov	rbx, r8
.LBB223_170:
	mov	r14d, 19
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r11
	jmp	.LBB223_184
.LBB223_171:
	mov	qword ptr [rsi + 32], 1
	mov	qword ptr [rsi + 40], 0
	xor	ebp, ebp
	jmp	.LBB223_185
.LBB223_173:
	mov	eax, 19
	jmp	.LBB223_183
.LBB223_174:
	shl	r15, 16
	mov	r14d, 24
	mov	rbp, r15
                                        # kill: def $cl killed $cl killed $ecx def $rcx
	jmp	.LBB223_184
.LBB223_175:
	xor	eax, eax
	or	rax, 19
	mov	rbx, r8
	jmp	.LBB223_183
.LBB223_176:
	xor	ebp, ebp
	xor	ecx, ecx
                                        # implicit-def: $rbx
	jmp	.LBB223_184
.LBB223_177:
	add	r8, r13
	mov	qword ptr [rsi + 32], r8
	jmp	.LBB223_181
.LBB223_178:
	xor	ebp, ebp
	mov	r14d, 6
	xor	ecx, ecx
                                        # implicit-def: $rbx
	jmp	.LBB223_184
.LBB223_179:
	xor	ebp, ebp
	mov	r14d, 6
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp - 16]       # 8-byte Reload
	jmp	.LBB223_184
.LBB223_180:
	add	r8, r13
	mov	qword ptr [rsi + 32], r8
	mov	qword ptr [rsi + 40], 0
.LBB223_181:
	mov	rax, r8
	jmp	.LBB223_167
.LBB223_182:
	mov	rax, qword ptr [rsp - 96]       # 8-byte Reload
	shl	eax, 8
	movzx	eax, ax
	or	rax, 25
                                        # implicit-def: $rbx
.LBB223_183:
	mov	ecx, eax
	shr	ecx, 8
	movzx	r14d, al
	xor	ebp, ebp
.LBB223_184:
	or	rbp, r14
	mov	qword ptr [rsi + 32], 1
	mov	qword ptr [rsi + 40], 0
	movzx	eax, cl
	shl	eax, 8
	or	rax, rbp
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rdi + 16], rbx
	mov	ebp, 2
.LBB223_185:
	mov	qword ptr [rdi], rbp
.LBB223_186:
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
.LBB223_187:
	.cfi_def_cfa_offset 56
	add	r15, r13
	mov	qword ptr [rsi + 32], r15
	mov	qword ptr [rsi + 40], 0
.LBB223_188:
	mov	r14d, 19
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rbx, r15
	jmp	.LBB223_184
.LBB223_189:
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rbx, r13
	jmp	.LBB223_184
.LBB223_190:
	add	rax, r12
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], 0
	mov	rbx, rax
.LBB223_191:
	mov	r14d, 19
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.LBB223_184
.LBB223_192:
	mov	qword ptr [rdi], 1
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rdi + 16], rcx
	jmp	.LBB223_186
.LBB223_193:
	mov	eax, 19
	xor	ecx, ecx
	mov	r11, r8
	jmp	.LBB223_196
.LBB223_194:
	mov	r11, qword ptr [rsp - 120]      # 8-byte Reload
.LBB223_195:
	mov	eax, 19
	xor	ecx, ecx
.LBB223_196:
	or	rcx, rax
	mov	qword ptr [rdi + 8], rcx
	mov	qword ptr [rdi + 16], r11
	mov	qword ptr [rdi], 2
	jmp	.LBB223_186
.LBB223_197:
	mov	r14d, 25
	xor	ebp, ebp
.LBB223_198:
                                        # implicit-def: $rbx
	mov	rcx, qword ptr [rsp - 96]       # 8-byte Reload
	jmp	.LBB223_184
.LBB223_199:
	mov	eax, 19
	xor	ecx, ecx
	mov	r11, qword ptr [rsp - 120]      # 8-byte Reload
	jmp	.LBB223_196
.LBB223_200:
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB223_201:
	mov	rax, qword ptr [rsp - 96]       # 8-byte Reload
	shl	eax, 8
	movzx	ecx, ax
	mov	eax, 25
	mov	r11, qword ptr [rsp - 80]       # 8-byte Reload
	jmp	.LBB223_196
.Lfunc_end223:
	.size	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std, .Lfunc_end223-_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI223_0:
	.long	.LBB223_13-.LJTI223_0
	.long	.LBB223_21-.LJTI223_0
	.long	.LBB223_182-.LJTI223_0
	.long	.LBB223_27-.LJTI223_0
	.long	.LBB223_182-.LJTI223_0
	.long	.LBB223_182-.LJTI223_0
	.long	.LBB223_182-.LJTI223_0
	.long	.LBB223_24-.LJTI223_0
.LJTI223_1:
	.long	.LBB223_171-.LJTI223_1
	.long	.LBB223_37-.LJTI223_1
	.long	.LBB223_59-.LJTI223_1
	.long	.LBB223_49-.LJTI223_1
	.long	.LBB223_174-.LJTI223_1
	.long	.LBB223_65-.LJTI223_1
	.long	.LBB223_44-.LJTI223_1
	.long	.LBB223_55-.LJTI223_1
.LJTI223_2:
	.long	.LBB223_57-.LJTI223_2
	.long	.LBB223_98-.LJTI223_2
	.long	.LBB223_198-.LJTI223_2
	.long	.LBB223_102-.LJTI223_2
	.long	.LBB223_198-.LJTI223_2
	.long	.LBB223_198-.LJTI223_2
	.long	.LBB223_198-.LJTI223_2
	.long	.LBB223_100-.LJTI223_2
.LJTI223_3:
	.long	.LBB223_46-.LJTI223_3
	.long	.LBB223_87-.LJTI223_3
	.long	.LBB223_198-.LJTI223_3
	.long	.LBB223_93-.LJTI223_3
	.long	.LBB223_198-.LJTI223_3
	.long	.LBB223_198-.LJTI223_3
	.long	.LBB223_198-.LJTI223_3
	.long	.LBB223_90-.LJTI223_3
.LJTI223_4:
	.long	.LBB223_67-.LJTI223_4
	.long	.LBB223_111-.LJTI223_4
	.long	.LBB223_197-.LJTI223_4
	.long	.LBB223_115-.LJTI223_4
	.long	.LBB223_197-.LJTI223_4
	.long	.LBB223_197-.LJTI223_4
	.long	.LBB223_197-.LJTI223_4
	.long	.LBB223_113-.LJTI223_4
.LJTI223_5:
	.long	.LBB223_128-.LJTI223_5
	.long	.LBB223_149-.LJTI223_5
	.long	.LBB223_201-.LJTI223_5
	.long	.LBB223_153-.LJTI223_5
	.long	.LBB223_201-.LJTI223_5
	.long	.LBB223_201-.LJTI223_5
	.long	.LBB223_201-.LJTI223_5
	.long	.LBB223_151-.LJTI223_5
.LJTI223_6:
	.long	.LBB223_122-.LJTI223_6
	.long	.LBB223_138-.LJTI223_6
	.long	.LBB223_201-.LJTI223_6
	.long	.LBB223_142-.LJTI223_6
	.long	.LBB223_201-.LJTI223_6
	.long	.LBB223_201-.LJTI223_6
	.long	.LBB223_201-.LJTI223_6
	.long	.LBB223_140-.LJTI223_6
.LJTI223_7:
	.long	.LBB223_147-.LJTI223_7
	.long	.LBB223_158-.LJTI223_7
	.long	.LBB223_201-.LJTI223_7
	.long	.LBB223_162-.LJTI223_7
	.long	.LBB223_201-.LJTI223_7
	.long	.LBB223_201-.LJTI223_7
	.long	.LBB223_201-.LJTI223_7
	.long	.LBB223_160-.LJTI223_7
.LJTI223_8:
	.long	.LBB223_73-.LJTI223_8
	.long	.LBB223_130-.LJTI223_8
	.long	.LBB223_200-.LJTI223_8
	.long	.LBB223_134-.LJTI223_8
	.long	.LBB223_200-.LJTI223_8
	.long	.LBB223_200-.LJTI223_8
	.long	.LBB223_200-.LJTI223_8
	.long	.LBB223_132-.LJTI223_8
                                        # -- End function
