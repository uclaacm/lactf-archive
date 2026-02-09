	.section	.text._RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert
	.type	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert,@function
_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert: # @_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert
.Lfunc_begin45:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception45
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
	sub	rsp, 552
	.cfi_def_cfa_offset 608
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rsi
	mov	rbx, qword ptr [rsi + 96]
	lea	r12, [rbx - 1]
	cmp	r12, qword ptr [rdi + 16]
	jae	.LBB237_4
.LBB237_1:
	cmp	qword ptr [r14], 0
	mov	bl, 1
	je	.LBB237_31
# %bb.2:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB237_31
# %bb.3:
	mov	rdi, qword ptr [r14 + 16]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB237_31
.LBB237_4:
	jne	.LBB237_15
# %bb.5:
	cmp	qword ptr [rdi + 40], 0
	je	.LBB237_24
# %bb.6:
	mov	rax, qword ptr [rdi + 24]
	test	rax, rax
	je	.LBB237_24
# %bb.7:
	mov	rcx, qword ptr [rdi + 32]
.LBB237_8:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB237_9 Depth 2
	movzx	esi, word ptr [rax + 1330]
	mov	r8d, esi
	shl	r8d, 3
	mov	rdx, -1
	.p2align	4
.LBB237_9:                              #   Parent Loop BB237_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r8, r8
	je	.LBB237_12
# %bb.10:                               #   in Loop: Header=BB237_9 Depth=2
	cmp	rbx, qword ptr [rax + 8*rdx + 1248]
	seta	r9b
	sbb	r9b, 0
	inc	rdx
	add	r8, -8
	cmp	r9b, 1
	je	.LBB237_9
# %bb.11:                               #   in Loop: Header=BB237_8 Depth=1
	movzx	esi, r9b
	test	esi, esi
	je	.LBB237_1
	jmp	.LBB237_13
.LBB237_12:                             #   in Loop: Header=BB237_8 Depth=1
	mov	rdx, rsi
.LBB237_13:                             #   in Loop: Header=BB237_8 Depth=1
	sub	rcx, 1
	jb	.LBB237_24
# %bb.14:                               #   in Loop: Header=BB237_8 Depth=1
	mov	rax, qword ptr [rax + 8*rdx + 1336]
	jmp	.LBB237_8
.LBB237_15:
	mov	r8, qword ptr [rdi + 24]
	test	r8, r8
	je	.LBB237_27
# %bb.16:
	mov	r9, qword ptr [rdi + 32]
	mov	rax, r9
	mov	rbp, r8
.LBB237_17:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB237_18 Depth 2
	lea	r12, [rbp + 1240]
	movzx	r13d, word ptr [rbp + 1330]
	mov	ecx, r13d
	shl	ecx, 3
	mov	r15, -1
	.p2align	4
.LBB237_18:                             #   Parent Loop BB237_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	rcx, rcx
	je	.LBB237_21
# %bb.19:                               #   in Loop: Header=BB237_18 Depth=2
	cmp	rbx, qword ptr [r12 + 8*r15 + 8]
	seta	dl
	sbb	dl, 0
	inc	r15
	add	rcx, -8
	cmp	dl, 1
	je	.LBB237_18
# %bb.20:                               #   in Loop: Header=BB237_17 Depth=1
	movzx	ecx, dl
	test	ecx, ecx
	je	.LBB237_1
	jmp	.LBB237_22
.LBB237_21:                             #   in Loop: Header=BB237_17 Depth=1
	mov	r15, r13
.LBB237_22:                             #   in Loop: Header=BB237_17 Depth=1
	sub	rax, 1
	jb	.LBB237_32
# %bb.23:                               #   in Loop: Header=BB237_17 Depth=1
	mov	rbp, qword ptr [rbp + 8*r15 + 1336]
	jmp	.LBB237_17
.LBB237_24:
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0    # 16-byte Spill
	mov	r13, qword ptr [r14 + 16]
	cmp	r12, qword ptr [rdi]
	jne	.LBB237_26
# %bb.25:
.Ltmp972:
	mov	r15, rdi
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev12AbbreviationE8grow_oneBS_
	mov	rdi, r15
.Ltmp973:
.LBB237_26:
	add	r14, 24
	mov	rax, qword ptr [rdi + 8]
	imul	rcx, r12, 112
	movaps	xmm0, xmmword ptr [rsp + 32]    # 16-byte Reload
	movups	xmmword ptr [rax + rcx], xmm0
	mov	qword ptr [rax + rcx + 16], r13
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movups	xmmword ptr [rax + rcx + 24], xmm0
	movups	xmmword ptr [rax + rcx + 40], xmm1
	movups	xmmword ptr [rax + rcx + 56], xmm2
	movups	xmmword ptr [rax + rcx + 72], xmm3
	movdqu	xmm0, xmmword ptr [r14 + 64]
	movdqu	xmmword ptr [rax + rcx + 88], xmm0
	mov	rdx, qword ptr [r14 + 80]
	mov	qword ptr [rax + rcx + 104], rdx
	mov	qword ptr [rdi + 16], rbx
	jmp	.LBB237_30
.LBB237_27:
	mov	r15, rdi
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0    # 16-byte Spill
	mov	r12, qword ptr [r14 + 16]
	mov	edi, 1336
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB237_102
# %bb.28:
	mov	qword ptr [rax + 1232], 0
	mov	rdi, r15
	mov	qword ptr [r15 + 24], rax
	mov	qword ptr [r15 + 32], 0
	mov	word ptr [rax + 1330], 1
	mov	qword ptr [rax + 1240], rbx
	movaps	xmm0, xmmword ptr [rsp + 32]    # 16-byte Reload
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 16], r12
	movups	xmm0, xmmword ptr [r14 + 24]
	movups	xmm1, xmmword ptr [r14 + 40]
	movups	xmm2, xmmword ptr [r14 + 56]
	movups	xmm3, xmmword ptr [r14 + 72]
	movups	xmmword ptr [rax + 24], xmm0
	movups	xmmword ptr [rax + 40], xmm1
	movups	xmmword ptr [rax + 56], xmm2
	movups	xmmword ptr [rax + 72], xmm3
	movdqu	xmm0, xmmword ptr [r14 + 88]
	movdqu	xmmword ptr [rax + 88], xmm0
	mov	rcx, qword ptr [r14 + 104]
	mov	qword ptr [rax + 104], rcx
.LBB237_29:
	inc	qword ptr [rdi + 40]
.LBB237_30:
	xor	ebx, ebx
.LBB237_31:
	mov	eax, ebx
	add	rsp, 552
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
.LBB237_32:
	.cfi_def_cfa_offset 608
	mov	r10, qword ptr [r14]
	mov	rdx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	add	r14, 24
	cmp	r13w, 10
	mov	qword ptr [rsp + 112], rdi      # 8-byte Spill
	mov	qword ptr [rsp + 536], r8       # 8-byte Spill
	mov	qword ptr [rsp + 528], r9       # 8-byte Spill
	jbe	.LBB237_35
# %bb.33:
	cmp	r15, 5
	mov	qword ptr [rsp + 72], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 24], r10       # 8-byte Spill
	jae	.LBB237_37
# %bb.34:
	mov	r13d, 4
	mov	dword ptr [rsp + 32], 0         # 4-byte Folded Spill
	jmp	.LBB237_44
.LBB237_35:
	mov	rcx, r13
	lea	rsi, [r12 + 8*r15]
	sub	rcx, r15
	jbe	.LBB237_40
# %bb.36:
	lea	rdi, [r12 + 8*r15]
	add	rdi, 8
	mov	qword ptr [rsp + 72], rdx       # 8-byte Spill
	lea	edx, [8*rcx]
	mov	r12, qword ptr [rip + memmove@GOTPCREL]
	mov	qword ptr [rsp + 24], r10       # 8-byte Spill
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	call	r12
	mov	qword ptr [rbp + 8*r15 + 1240], rbx
	mov	rax, qword ptr [r14 + 80]
	mov	qword ptr [rsp + 208], rax
	movups	xmm0, xmmword ptr [r14 + 64]
	movaps	xmmword ptr [rsp + 192], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movaps	xmmword ptr [rsp + 128], xmm0
	imul	rax, r15, 112
	lea	rsi, [rax + rbp]
	lea	rdi, [rax + rbp]
	add	rdi, 112
	imul	rdx, qword ptr [rsp + 32], 112  # 8-byte Folded Reload
	call	r12
	mov	r10, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
	jmp	.LBB237_41
.LBB237_37:
	je	.LBB237_42
# %bb.38:
	cmp	r15, 6
	jne	.LBB237_43
# %bb.39:
	mov	r13d, 5
	mov	al, 1
	mov	dword ptr [rsp + 32], eax       # 4-byte Spill
	xor	r15d, r15d
	jmp	.LBB237_44
.LBB237_40:
	mov	qword ptr [rsi], rbx
	mov	rax, qword ptr [r14 + 80]
	mov	qword ptr [rsp + 208], rax
	movups	xmm0, xmmword ptr [r14 + 64]
	movaps	xmmword ptr [rsp + 192], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movaps	xmmword ptr [rsp + 128], xmm0
.LBB237_41:
	lea	eax, [r13 + 1]
	imul	rcx, r15, 112
	mov	qword ptr [rbp + rcx], r10
	mov	qword ptr [rbp + rcx + 8], rdx
	mov	rdx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [rbp + rcx + 16], rdx
	movaps	xmm0, xmmword ptr [rsp + 128]
	movaps	xmm1, xmmword ptr [rsp + 144]
	movaps	xmm2, xmmword ptr [rsp + 160]
	movaps	xmm3, xmmword ptr [rsp + 176]
	movups	xmmword ptr [rbp + rcx + 24], xmm0
	movups	xmmword ptr [rbp + rcx + 40], xmm1
	movups	xmmword ptr [rbp + rcx + 56], xmm2
	movups	xmmword ptr [rbp + rcx + 72], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 192]
	movdqu	xmmword ptr [rbp + rcx + 88], xmm0
	mov	rdx, qword ptr [rsp + 208]
	mov	qword ptr [rbp + rcx + 104], rdx
	mov	word ptr [rbp + 1330], ax
	mov	ecx, 2
	lea	rax, [rsp + 96]
                                        # implicit-def: $rsi
                                        # implicit-def: $r12
                                        # implicit-def: $rdx
                                        # kill: killed $rdx
                                        # implicit-def: $rdx
	jmp	.LBB237_50
.LBB237_42:
	mov	dword ptr [rsp + 32], 0         # 4-byte Folded Spill
	mov	r13, r15
	jmp	.LBB237_44
.LBB237_43:
	add	r15, -7
	mov	r13d, 6
	mov	al, 1
	mov	dword ptr [rsp + 32], eax       # 4-byte Spill
.LBB237_44:
	mov	edi, 1336
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB237_116
# %bb.45:
	mov	rcx, rax
	mov	qword ptr [rax + 1232], 0
	movzx	eax, word ptr [rbp + 1330]
	mov	r8, r13
	not	r8
	add	r8, rax
	mov	word ptr [rcx + 1330], r8w
	mov	rdx, r13
	imul	r13, r13, 112
	mov	rax, qword ptr [rbp + r13]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rax, qword ptr [rbp + r13 + 8]
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	mov	rax, qword ptr [rbp + r13 + 16]
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	cmp	r8, 12
	jae	.LBB237_114
# %bb.46:
	mov	rax, qword ptr [rbp + 8*rdx + 1240]
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	add	r13, rbp
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 216], rax      # 8-byte Spill
	lea	rsi, [r12 + 8*rdx]
	add	rsi, 8
	mov	r12, rcx
	lea	rdi, [rcx + 1240]
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	lea	rdx, [8*r8]
	mov	qword ptr [rsp + 80], r8        # 8-byte Spill
	call	qword ptr [rip + memcpy@GOTPCREL]
	imul	rsi, qword ptr [rsp + 216], 112 # 8-byte Folded Reload
	add	rsi, rbp
	imul	rdx, qword ptr [rsp + 80], 112  # 8-byte Folded Reload
	mov	rdi, r12
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	word ptr [rbp + 1330], ax
	mov	rax, qword ptr [r13 + 104]
	mov	qword ptr [rsp + 512], rax
	movups	xmm0, xmmword ptr [r13 + 88]
	movaps	xmmword ptr [rsp + 496], xmm0
	movups	xmm0, xmmword ptr [r13 + 24]
	movups	xmm1, xmmword ptr [r13 + 40]
	movups	xmm2, xmmword ptr [r13 + 56]
	movups	xmm3, xmmword ptr [r13 + 72]
	movaps	xmmword ptr [rsp + 480], xmm3
	movaps	xmmword ptr [rsp + 464], xmm2
	movaps	xmmword ptr [rsp + 448], xmm1
	movaps	xmmword ptr [rsp + 432], xmm0
	cmp	byte ptr [rsp + 32], 0          # 1-byte Folded Reload
	mov	qword ptr [rsp + 32], r12       # 8-byte Spill
	cmove	r12, rbp
	movzx	r8d, word ptr [r12 + 1330]
	mov	r13, r8
	lea	rsi, [r12 + 8*r15]
	add	rsi, 1240
	sub	r13, r15
	jbe	.LBB237_48
# %bb.47:
	lea	rax, [r12 + 1240]
	lea	rdi, [rax + 8*r15]
	add	rdi, 8
	lea	edx, [8*r13]
	mov	qword ptr [rsp + 16], r8        # 8-byte Spill
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	qword ptr [r12 + 8*r15 + 1240], rbx
	mov	rax, qword ptr [r14 + 80]
	mov	qword ptr [rsp + 208], rax
	movups	xmm0, xmmword ptr [r14 + 64]
	movaps	xmmword ptr [rsp + 192], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movaps	xmmword ptr [rsp + 128], xmm0
	imul	rax, r15, 112
	lea	rsi, [r12 + rax]
	lea	rdi, [r12 + rax]
	add	rdi, 112
	imul	rdx, r13, 112
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r8, qword ptr [rsp + 16]        # 8-byte Reload
	jmp	.LBB237_49
.LBB237_48:
	mov	qword ptr [rsi], rbx
	mov	rax, qword ptr [r14 + 80]
	mov	qword ptr [rsp + 208], rax
	movups	xmm0, xmmword ptr [r14 + 64]
	movaps	xmmword ptr [rsp + 192], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movaps	xmmword ptr [rsp + 128], xmm0
.LBB237_49:
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
	mov	rcx, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	inc	r8d
	imul	rax, r15, 112
	mov	qword ptr [r12 + rax], rdx
	mov	qword ptr [r12 + rax + 8], rcx
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [r12 + rax + 16], rcx
	movaps	xmm0, xmmword ptr [rsp + 128]
	movaps	xmm1, xmmword ptr [rsp + 144]
	movaps	xmm2, xmmword ptr [rsp + 160]
	movaps	xmm3, xmmword ptr [rsp + 176]
	movups	xmmword ptr [r12 + rax + 24], xmm0
	movups	xmmword ptr [r12 + rax + 40], xmm1
	movups	xmmword ptr [r12 + rax + 56], xmm2
	movups	xmmword ptr [r12 + rax + 72], xmm3
	movaps	xmm0, xmmword ptr [rsp + 192]
	movups	xmmword ptr [r12 + rax + 88], xmm0
	mov	rcx, qword ptr [rsp + 208]
	mov	qword ptr [r12 + rax + 104], rcx
	mov	word ptr [r12 + 1330], r8w
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 96], rax
	movaps	xmm0, xmmword ptr [rsp + 432]
	movaps	xmm1, xmmword ptr [rsp + 448]
	movaps	xmm2, xmmword ptr [rsp + 464]
	movaps	xmm3, xmmword ptr [rsp + 480]
	movaps	xmmword ptr [rsp + 336], xmm0
	movaps	xmmword ptr [rsp + 352], xmm1
	movaps	xmmword ptr [rsp + 368], xmm2
	movaps	xmmword ptr [rsp + 384], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 496]
	movdqa	xmmword ptr [rsp + 400], xmm0
	mov	rax, qword ptr [rsp + 512]
	mov	qword ptr [rsp + 416], rax
	lea	rax, [rsp + 232]
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 120]      # 8-byte Reload
.LBB237_50:
	mov	qword ptr [rax], rcx
	mov	r13, qword ptr [rsp + 96]
	cmp	r13, 2
	je	.LBB237_29
# %bb.51:
	mov	rax, qword ptr [rsp + 416]
	mov	qword ptr [rsp + 320], rax
	movaps	xmm0, xmmword ptr [rsp + 400]
	movaps	xmmword ptr [rsp + 304], xmm0
	movdqa	xmm0, xmmword ptr [rsp + 336]
	movaps	xmm1, xmmword ptr [rsp + 352]
	movaps	xmm2, xmmword ptr [rsp + 368]
	movaps	xmm3, xmmword ptr [rsp + 384]
	movaps	xmmword ptr [rsp + 288], xmm3
	movaps	xmmword ptr [rsp + 272], xmm2
	movaps	xmmword ptr [rsp + 256], xmm1
	movdqa	xmmword ptr [rsp + 240], xmm0
	mov	rbx, qword ptr [rsp + 232]
	mov	r15, qword ptr [rbp + 1232]
	test	r15, r15
	je	.LBB237_97
# %bb.52:
	mov	qword ptr [rsp + 72], 0         # 8-byte Folded Spill
                                        # implicit-def: $r14
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB237_53:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB237_82 Depth 2
                                        #     Child Loop BB237_90 Depth 2
                                        #     Child Loop BB237_93 Depth 2
                                        #     Child Loop BB237_65 Depth 2
                                        #     Child Loop BB237_69 Depth 2
	cmp	rbx, qword ptr [rsp + 72]       # 8-byte Folded Reload
	mov	qword ptr [rsp + 24], r13       # 8-byte Spill
	jne	.LBB237_104
# %bb.54:                               #   in Loop: Header=BB237_53 Depth=1
	movzx	ebx, word ptr [rbp + 1328]
	movzx	r11d, word ptr [r15 + 1330]
	cmp	r11, 11
	mov	qword ptr [rsp + 32], rsi       # 8-byte Spill
	jae	.LBB237_57
# %bb.55:                               #   in Loop: Header=BB237_53 Depth=1
	lea	r13, [rbx + 1]
	lea	rsi, [r15 + 8*rbx]
	add	rsi, 1240
	cmp	bx, r11w
	jae	.LBB237_59
# %bb.56:                               #   in Loop: Header=BB237_53 Depth=1
	lea	rax, [r15 + 1240]
	lea	rdi, [rax + 8*r13]
	mov	qword ptr [rsp + 56], r12       # 8-byte Spill
	mov	r12, r11
	sub	r12, rbx
	mov	qword ptr [rsp + 120], rdx      # 8-byte Spill
	lea	rdx, [8*r12]
	mov	qword ptr [rsp + 80], r11       # 8-byte Spill
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [r15 + 8*rbx + 1240], rax
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [rsp + 208], rax
	movaps	xmm0, xmmword ptr [rsp + 304]
	movaps	xmmword ptr [rsp + 192], xmm0
	movaps	xmm0, xmmword ptr [rsp + 240]
	movaps	xmm1, xmmword ptr [rsp + 256]
	movaps	xmm2, xmmword ptr [rsp + 272]
	movaps	xmm3, xmmword ptr [rsp + 288]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movaps	xmmword ptr [rsp + 128], xmm0
	imul	rsi, rbx, 112
	add	rsi, r15
	imul	rdi, r13, 112
	add	rdi, r15
	imul	rdx, r12, 112
	mov	r12, qword ptr [rsp + 56]       # 8-byte Reload
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r11, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
	jmp	.LBB237_60
.LBB237_57:                             #   in Loop: Header=BB237_53 Depth=1
	cmp	bx, 5
	mov	qword ptr [rsp + 120], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 80], r11       # 8-byte Spill
	jae	.LBB237_71
# %bb.58:                               #   in Loop: Header=BB237_53 Depth=1
	mov	qword ptr [rsp + 8], rbx        # 8-byte Spill
	mov	ebx, 4
	mov	dword ptr [rsp + 104], 0        # 4-byte Folded Spill
	jmp	.LBB237_77
.LBB237_59:                             #   in Loop: Header=BB237_53 Depth=1
	mov	qword ptr [rsi], rdx
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [rsp + 208], rax
	movaps	xmm0, xmmword ptr [rsp + 304]
	movaps	xmmword ptr [rsp + 192], xmm0
	movaps	xmm0, xmmword ptr [rsp + 240]
	movaps	xmm1, xmmword ptr [rsp + 256]
	movaps	xmm2, xmmword ptr [rsp + 272]
	movaps	xmm3, xmmword ptr [rsp + 288]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movaps	xmmword ptr [rsp + 128], xmm0
.LBB237_60:                             #   in Loop: Header=BB237_53 Depth=1
	mov	rcx, qword ptr [rsp + 88]       # 8-byte Reload
	imul	rax, rbx, 112
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [r15 + rax], rdx
	mov	qword ptr [r15 + rax + 8], rcx
	mov	qword ptr [r15 + rax + 16], r12
	movaps	xmm0, xmmword ptr [rsp + 128]
	movaps	xmm1, xmmword ptr [rsp + 144]
	movaps	xmm2, xmmword ptr [rsp + 160]
	movaps	xmm3, xmmword ptr [rsp + 176]
	movups	xmmword ptr [r15 + rax + 24], xmm0
	movups	xmmword ptr [r15 + rax + 40], xmm1
	movups	xmmword ptr [r15 + rax + 56], xmm2
	movups	xmmword ptr [r15 + rax + 72], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 192]
	movdqu	xmmword ptr [r15 + rax + 88], xmm0
	mov	rcx, qword ptr [rsp + 208]
	mov	qword ptr [r15 + rax + 104], rcx
	cmp	bx, r11w
	jae	.LBB237_62
# %bb.61:                               #   in Loop: Header=BB237_53 Depth=1
	lea	rax, [r15 + 1336]
	lea	rsi, [rax + 8*r13]
	lea	rax, [rax + 8*rbx]
	add	rax, 16
	mov	rdx, r11
	sub	rdx, rbx
	shl	rdx, 3
	mov	qword ptr [rsp + 8], rbx        # 8-byte Spill
	mov	rbx, rdi
	mov	rdi, rax
	mov	r12, r11
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r11, r12
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
.LBB237_62:                             #   in Loop: Header=BB237_53 Depth=1
	lea	eax, [r11 + 1]
	lea	rcx, [r11 + 2]
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [r15 + 8*rbx + 1344], rdx
	mov	word ptr [r15 + 1330], ax
	mov	eax, 2
	cmp	r13d, ecx
	jae	.LBB237_74
# %bb.63:                               #   in Loop: Header=BB237_53 Depth=1
	mov	edx, r11d
	sub	edx, ebx
	inc	edx
	and	edx, 3
	je	.LBB237_67
# %bb.64:                               #   in Loop: Header=BB237_53 Depth=1
	lea	r8, [r15 + 8*rbx]
	add	r8, 1344
	xor	esi, esi
	.p2align	4
.LBB237_65:                             #   Parent Loop BB237_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r9, qword ptr [r8 + 8*rsi]
	mov	qword ptr [r9 + 1232], r15
	lea	r10d, [rsi + r13]
	mov	word ptr [r9 + 1328], r10w
	inc	rsi
	cmp	rdx, rsi
	jne	.LBB237_65
# %bb.66:                               #   in Loop: Header=BB237_53 Depth=1
	add	r13, rsi
.LBB237_67:                             #   in Loop: Header=BB237_53 Depth=1
	sub	r11, rbx
	cmp	r11, 3
	jb	.LBB237_74
.LBB237_69:                             #   Parent Loop BB237_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdx, qword ptr [r15 + 8*r13 + 1336]
	mov	qword ptr [rdx + 1232], r15
	mov	word ptr [rdx + 1328], r13w
	mov	rdx, qword ptr [r15 + 8*r13 + 1344]
	mov	qword ptr [rdx + 1232], r15
	lea	esi, [r13 + 1]
	mov	word ptr [rdx + 1328], si
	mov	rdx, qword ptr [r15 + 8*r13 + 1352]
	mov	qword ptr [rdx + 1232], r15
	lea	esi, [r13 + 2]
	mov	word ptr [rdx + 1328], si
	mov	rdx, qword ptr [r15 + 8*r13 + 1360]
	mov	qword ptr [rdx + 1232], r15
	lea	esi, [r13 + 3]
	mov	word ptr [rdx + 1328], si
	add	r13, 4
	cmp	r13, rcx
	jne	.LBB237_69
.LBB237_74:                             #   in Loop: Header=BB237_53 Depth=1
	lea	rcx, [rsp + 96]
	jmp	.LBB237_95
.LBB237_71:                             #   in Loop: Header=BB237_53 Depth=1
	cmp	rbx, 5
	je	.LBB237_75
# %bb.72:                               #   in Loop: Header=BB237_53 Depth=1
	cmp	ebx, 6
	jne	.LBB237_76
# %bb.73:                               #   in Loop: Header=BB237_53 Depth=1
	mov	al, 1
	mov	dword ptr [rsp + 104], eax      # 4-byte Spill
	mov	ebx, 5
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	jmp	.LBB237_77
.LBB237_75:                             #   in Loop: Header=BB237_53 Depth=1
	mov	dword ptr [rsp + 104], 0        # 4-byte Folded Spill
	mov	qword ptr [rsp + 8], rbx        # 8-byte Spill
	jmp	.LBB237_77
.LBB237_76:                             #   in Loop: Header=BB237_53 Depth=1
	add	rbx, -7
	mov	qword ptr [rsp + 8], rbx        # 8-byte Spill
	mov	al, 1
	mov	dword ptr [rsp + 104], eax      # 4-byte Spill
	mov	ebx, 6
.LBB237_77:                             #   in Loop: Header=BB237_53 Depth=1
	mov	qword ptr [rsp + 56], r12       # 8-byte Spill
	mov	edi, 1432
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB237_110
# %bb.78:                               #   in Loop: Header=BB237_53 Depth=1
	mov	r13, rax
	mov	r14, rax
	mov	qword ptr [r13 + 1232], 0
	movzx	eax, word ptr [r15 + 1330]
	mov	rbp, rbx
	not	rbp
	add	rbp, rax
	mov	word ptr [r13 + 1330], bp
	imul	r12, rbx, 112
	mov	rax, qword ptr [r15 + r12]
	mov	qword ptr [rsp + 224], rax      # 8-byte Spill
	mov	rax, qword ptr [r15 + r12 + 8]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	rax, qword ptr [r15 + r12 + 16]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	cmp	rbp, 12
	jae	.LBB237_106
# %bb.79:                               #   in Loop: Header=BB237_53 Depth=1
	lea	rax, [r15 + 1240]
	mov	rcx, qword ptr [r15 + 8*rbx + 1240]
	mov	qword ptr [rsp + 216], rcx      # 8-byte Spill
	add	r12, r15
	lea	rcx, [rbx + 1]
	mov	qword ptr [rsp + 544], rcx      # 8-byte Spill
	lea	rsi, [rax + 8*rbx]
	add	rsi, 8
	lea	rdi, [r13 + 1240]
	lea	rdx, [8*rbp]
	call	qword ptr [rip + memcpy@GOTPCREL]
	imul	rsi, qword ptr [rsp + 544], 112 # 8-byte Folded Reload
	add	rsi, r15
	imul	rdx, rbp, 112
	mov	rdi, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	word ptr [r15 + 1330], bx
	mov	rax, qword ptr [r12 + 104]
	mov	qword ptr [rsp + 208], rax
	movups	xmm0, xmmword ptr [r12 + 88]
	movaps	xmmword ptr [rsp + 192], xmm0
	movdqu	xmm0, xmmword ptr [r12 + 24]
	movups	xmm1, xmmword ptr [r12 + 40]
	movups	xmm2, xmmword ptr [r12 + 56]
	movups	xmm3, xmmword ptr [r12 + 72]
	movaps	xmmword ptr [rsp + 176], xmm3
	movaps	xmmword ptr [rsp + 160], xmm2
	movaps	xmmword ptr [rsp + 144], xmm1
	movdqa	xmmword ptr [rsp + 128], xmm0
	movzx	ebp, word ptr [r14 + 1330]
	lea	rdx, [rbp + 1]
	cmp	rbp, 12
	jae	.LBB237_108
# %bb.80:                               #   in Loop: Header=BB237_53 Depth=1
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	sub	eax, ebx
	cmp	eax, edx
	jne	.LBB237_112
# %bb.81:                               #   in Loop: Header=BB237_53 Depth=1
	inc	qword ptr [rsp + 72]            # 8-byte Folded Spill
	lea	rdi, [r13 + 1336]
	lea	rsi, [r15 + 8*rbx]
	add	rsi, 1344
	shl	edx, 3
	call	qword ptr [rip + memcpy@GOTPCREL]
	xor	eax, eax
	.p2align	4
.LBB237_82:                             #   Parent Loop BB237_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, rax
	cmp	rax, rbp
	adc	rax, 0
	mov	rdx, qword ptr [r14 + 8*rcx + 1336]
	mov	qword ptr [rdx + 1232], r14
	mov	word ptr [rdx + 1328], cx
	cmp	rcx, rbp
	jae	.LBB237_84
# %bb.83:                               #   in Loop: Header=BB237_82 Depth=2
	cmp	rax, rbp
	jbe	.LBB237_82
.LBB237_84:                             #   in Loop: Header=BB237_53 Depth=1
	mov	rax, qword ptr [rsp + 208]
	mov	qword ptr [rsp + 512], rax
	movaps	xmm0, xmmword ptr [rsp + 192]
	movaps	xmmword ptr [rsp + 496], xmm0
	movaps	xmm0, xmmword ptr [rsp + 128]
	movaps	xmm1, xmmword ptr [rsp + 144]
	movaps	xmm2, xmmword ptr [rsp + 160]
	movaps	xmm3, xmmword ptr [rsp + 176]
	movaps	xmmword ptr [rsp + 480], xmm3
	movaps	xmmword ptr [rsp + 464], xmm2
	movaps	xmmword ptr [rsp + 448], xmm1
	movaps	xmmword ptr [rsp + 432], xmm0
	cmp	byte ptr [rsp + 104], 0         # 1-byte Folded Reload
	cmove	r13, r15
	movzx	ebp, word ptr [r13 + 1330]
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
	lea	r12, [rbx + 1]
	mov	r9, rbp
	sub	r9, rbx
	jbe	.LBB237_86
# %bb.85:                               #   in Loop: Header=BB237_53 Depth=1
	lea	rax, [r13 + 1240]
	lea	rsi, [8*rbx + 1240]
	add	rsi, r13
	lea	rdi, [rax + 8*r12]
	lea	edx, [8*r9]
	mov	qword ptr [rsp + 104], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 80], r9        # 8-byte Spill
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [r13 + 8*rbx + 1240], rax
	imul	rbx, qword ptr [rsp + 8], 112   # 8-byte Folded Reload
	lea	rsi, [rbx + r13]
	imul	rdi, r12, 112
	add	rdi, r13
	imul	rdx, qword ptr [rsp + 80], 112  # 8-byte Folded Reload
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [r13 + rbx], rax
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	mov	qword ptr [r13 + rbx + 8], rax
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [r13 + rbx + 16], rax
	movaps	xmm0, xmmword ptr [rsp + 240]
	movaps	xmm1, xmmword ptr [rsp + 256]
	movaps	xmm2, xmmword ptr [rsp + 272]
	movaps	xmm3, xmmword ptr [rsp + 288]
	movups	xmmword ptr [r13 + rbx + 24], xmm0
	movups	xmmword ptr [r13 + rbx + 40], xmm1
	movups	xmmword ptr [r13 + rbx + 56], xmm2
	movups	xmmword ptr [r13 + rbx + 72], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 304]
	movdqu	xmmword ptr [r13 + rbx + 88], xmm0
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [r13 + rbx + 104], rax
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rsi, [8*r12 + 1336]
	add	rsi, r13
	lea	rdi, [8*rbx + 1352]
	add	rdi, r13
	mov	rdx, qword ptr [rsp + 104]      # 8-byte Reload
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r9, qword ptr [rsp + 80]        # 8-byte Reload
	jmp	.LBB237_87
.LBB237_86:                             #   in Loop: Header=BB237_53 Depth=1
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [r13 + 8*rbx + 1240], rax
	imul	rax, rbx, 112
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [r13 + rax], rcx
	mov	rcx, qword ptr [rsp + 88]       # 8-byte Reload
	mov	qword ptr [r13 + rax + 8], rcx
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [r13 + rax + 16], rcx
	movaps	xmm0, xmmword ptr [rsp + 240]
	movaps	xmm1, xmmword ptr [rsp + 256]
	movaps	xmm2, xmmword ptr [rsp + 272]
	movaps	xmm3, xmmword ptr [rsp + 288]
	movups	xmmword ptr [r13 + rax + 24], xmm0
	movups	xmmword ptr [r13 + rax + 40], xmm1
	movups	xmmword ptr [r13 + rax + 56], xmm2
	movups	xmmword ptr [r13 + rax + 72], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 304]
	movdqu	xmmword ptr [r13 + rax + 88], xmm0
	mov	rcx, qword ptr [rsp + 320]
	mov	qword ptr [r13 + rax + 104], rcx
.LBB237_87:                             #   in Loop: Header=BB237_53 Depth=1
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	lea	ecx, [rbp + 1]
	lea	rax, [rbp + 2]
	mov	qword ptr [r13 + 8*rbx + 1344], rdx
	mov	word ptr [r13 + 1330], cx
	cmp	r12, rax
	jae	.LBB237_94
# %bb.88:                               #   in Loop: Header=BB237_53 Depth=1
	sub	ebp, ebx
	inc	ebp
	and	ebp, 3
	je	.LBB237_92
# %bb.89:                               #   in Loop: Header=BB237_53 Depth=1
	lea	rdx, [8*rbx + 1344]
	add	rdx, r13
	xor	ecx, ecx
	.p2align	4
.LBB237_90:                             #   Parent Loop BB237_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rsi, qword ptr [rdx + 8*rcx]
	mov	qword ptr [rsi + 1232], r13
	lea	r8d, [r12 + rcx]
	mov	word ptr [rsi + 1328], r8w
	inc	rcx
	cmp	rbp, rcx
	jne	.LBB237_90
# %bb.91:                               #   in Loop: Header=BB237_53 Depth=1
	add	r12, rcx
.LBB237_92:                             #   in Loop: Header=BB237_53 Depth=1
	cmp	r9, 3
	jb	.LBB237_94
.LBB237_93:                             #   Parent Loop BB237_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [r13 + 8*r12 + 1336]
	mov	qword ptr [rcx + 1232], r13
	mov	word ptr [rcx + 1328], r12w
	mov	rcx, qword ptr [r13 + 8*r12 + 1344]
	mov	qword ptr [rcx + 1232], r13
	lea	edx, [r12 + 1]
	mov	word ptr [rcx + 1328], dx
	mov	rcx, qword ptr [r13 + 8*r12 + 1352]
	mov	qword ptr [rcx + 1232], r13
	lea	edx, [r12 + 2]
	mov	word ptr [rcx + 1328], dx
	mov	rcx, qword ptr [r13 + 8*r12 + 1360]
	mov	qword ptr [rcx + 1232], r13
	lea	edx, [r12 + 3]
	mov	word ptr [rcx + 1328], dx
	add	r12, 4
	cmp	r12, rax
	jne	.LBB237_93
.LBB237_94:                             #   in Loop: Header=BB237_53 Depth=1
	mov	rax, qword ptr [rsp + 224]      # 8-byte Reload
	mov	qword ptr [rsp + 96], rax
	movaps	xmm0, xmmword ptr [rsp + 432]
	movaps	xmm1, xmmword ptr [rsp + 448]
	movaps	xmm2, xmmword ptr [rsp + 464]
	movaps	xmm3, xmmword ptr [rsp + 480]
	movaps	xmmword ptr [rsp + 336], xmm0
	movaps	xmmword ptr [rsp + 352], xmm1
	movaps	xmmword ptr [rsp + 368], xmm2
	movaps	xmmword ptr [rsp + 384], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 496]
	movdqa	xmmword ptr [rsp + 400], xmm0
	mov	rax, qword ptr [rsp + 512]
	mov	qword ptr [rsp + 416], rax
	mov	rbp, r15
	lea	rcx, [rsp + 232]
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
.LBB237_95:                             #   in Loop: Header=BB237_53 Depth=1
	mov	qword ptr [rcx], rax
	mov	r13, qword ptr [rsp + 96]
	cmp	r13, 2
	je	.LBB237_29
# %bb.96:                               #   in Loop: Header=BB237_53 Depth=1
	mov	rax, qword ptr [rsp + 416]
	mov	qword ptr [rsp + 320], rax
	movaps	xmm0, xmmword ptr [rsp + 400]
	movaps	xmmword ptr [rsp + 304], xmm0
	movdqa	xmm0, xmmword ptr [rsp + 336]
	movaps	xmm1, xmmword ptr [rsp + 352]
	movaps	xmm2, xmmword ptr [rsp + 368]
	movaps	xmm3, xmmword ptr [rsp + 384]
	movaps	xmmword ptr [rsp + 288], xmm3
	movaps	xmmword ptr [rsp + 272], xmm2
	movaps	xmmword ptr [rsp + 256], xmm1
	movdqa	xmmword ptr [rsp + 240], xmm0
	mov	rbx, qword ptr [rsp + 232]
	mov	r15, qword ptr [rbp + 1232]
	mov	rdx, qword ptr [rsp + 216]      # 8-byte Reload
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	mov	r12, qword ptr [rsp + 64]       # 8-byte Reload
	mov	rsi, r14
	test	r15, r15
	jne	.LBB237_53
	jmp	.LBB237_98
.LBB237_97:
	mov	r14, rsi
	mov	qword ptr [rsp + 64], r12       # 8-byte Spill
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	qword ptr [rsp + 216], rdx      # 8-byte Spill
.LBB237_98:
	mov	r12, rdi
	mov	edi, 1432
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB237_118
# %bb.99:
	mov	r15, rax
	mov	qword ptr [rax + 1232], 0
	mov	word ptr [rax + 1330], 0
	mov	rdx, qword ptr [rsp + 536]      # 8-byte Reload
	mov	qword ptr [rax + 1336], rdx
	mov	rsi, qword ptr [rsp + 528]      # 8-byte Reload
	mov	rax, rsi
	inc	rax
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	je	.LBB237_120
# %bb.100:
	mov	rdi, r12
	mov	qword ptr [rdx + 1232], r15
	mov	word ptr [rdx + 1328], 0
	mov	qword ptr [r12 + 24], r15
	mov	qword ptr [r12 + 32], rax
	cmp	rbx, rsi
	jne	.LBB237_122
# %bb.101:
	mov	word ptr [r15 + 1330], 1
	mov	rax, qword ptr [rsp + 216]      # 8-byte Reload
	mov	qword ptr [r15 + 1240], rax
	mov	qword ptr [r15], r13
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 16], rcx
	movaps	xmm0, xmmword ptr [rsp + 240]
	movaps	xmm1, xmmword ptr [rsp + 256]
	movaps	xmm2, xmmword ptr [rsp + 272]
	movaps	xmm3, xmmword ptr [rsp + 288]
	movups	xmmword ptr [r15 + 24], xmm0
	movups	xmmword ptr [r15 + 40], xmm1
	movups	xmmword ptr [r15 + 56], xmm2
	movups	xmmword ptr [r15 + 72], xmm3
	movdqa	xmm0, xmmword ptr [rsp + 304]
	movdqu	xmmword ptr [r15 + 88], xmm0
	mov	rax, qword ptr [rsp + 320]
	mov	qword ptr [r15 + 104], rax
	mov	qword ptr [r15 + 1344], r14
	mov	qword ptr [r14 + 1232], r15
	mov	word ptr [r14 + 1328], 1
	jmp	.LBB237_29
.LBB237_102:
.Ltmp969:
	mov	rbx, r12
	mov	edi, 1336
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp970:
# %bb.103:
.LBB237_104:
.Ltmp944:
	mov	qword ptr [rsp + 56], r12       # 8-byte Spill
	lea	rdi, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.4]
	lea	rdx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.5]
	mov	esi, 53
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp945:
# %bb.105:
.LBB237_106:
.Ltmp946:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.347]
	mov	edx, 11
	xor	edi, edi
	mov	rsi, rbp
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp947:
# %bb.107:
.LBB237_108:
.Ltmp949:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.34]
	mov	rsi, rdx
	mov	edx, 12
	xor	edi, edi
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp950:
# %bb.109:
.LBB237_110:
.Ltmp954:
	mov	edi, 1432
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp955:
# %bb.111:
.LBB237_112:
.Ltmp951:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.74]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.75]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp952:
# %bb.113:
.LBB237_114:
.Ltmp941:
	mov	rbx, rcx
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.347]
	mov	edx, 11
	xor	edi, edi
	mov	rsi, r8
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp942:
# %bb.115:
.LBB237_116:
.Ltmp966:
	mov	edi, 1336
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp967:
# %bb.117:
.LBB237_118:
.Ltmp963:
	mov	edi, 1432
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp964:
# %bb.119:
.LBB237_120:
.Ltmp960:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.33]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp961:
# %bb.121:
.LBB237_122:
.Ltmp957:
	mov	rbx, r13
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.379]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.380]
	mov	esi, 48
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp958:
# %bb.123:
.LBB237_124:
.Ltmp974:
	mov	rdi, r13
	mov	r13, rax
	movdqa	xmm0, xmmword ptr [rsp + 32]    # 16-byte Reload
	movq	rax, xmm0
	test	rax, rax
	je	.LBB237_146
# %bb.125:
	pshufd	xmm0, xmmword ptr [rsp + 32], 238 # 16-byte Folded Reload
                                        # xmm0 = mem[2,3,2,3]
	movq	rax, xmm0
	test	rax, rax
	jne	.LBB237_145
	jmp	.LBB237_146
.LBB237_126:
.Ltmp959:
	mov	r13, rax
	test	rbx, rbx
	je	.LBB237_146
# %bb.127:
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	mov	rdi, qword ptr [rsp + 64]       # 8-byte Reload
	jne	.LBB237_145
	jmp	.LBB237_146
.LBB237_128:
.Ltmp962:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	ud2
.LBB237_129:
.Ltmp965:
	ud2
.LBB237_130:
.Ltmp968:
	mov	r13, rax
	jmp	.LBB237_134
.LBB237_131:
.Ltmp943:
	mov	r13, rax
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	sete	al
	cmp	qword ptr [rsp + 88], 0         # 8-byte Folded Reload
	sete	cl
	or	cl, al
	jne	.LBB237_133
# %bb.132:
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB237_133:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB237_134:
	cmp	qword ptr [rsp + 24], 0         # 8-byte Folded Reload
	sete	al
	cmp	qword ptr [rsp + 72], 0         # 8-byte Folded Reload
	sete	cl
	or	cl, al
	mov	rdi, qword ptr [rsp + 64]       # 8-byte Reload
	je	.LBB237_145
	jmp	.LBB237_146
.LBB237_135:
.Ltmp948:
	jmp	.LBB237_137
.LBB237_136:
.Ltmp953:
.LBB237_137:
	mov	r13, rax
	cmp	qword ptr [rsp + 224], 0        # 8-byte Folded Reload
	sete	al
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	sete	cl
	or	cl, al
	jne	.LBB237_139
# %bb.138:
	mov	rdi, qword ptr [rsp + 64]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB237_139:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB237_141
.LBB237_140:
.Ltmp956:
	mov	r13, rax
.LBB237_141:
	cmp	qword ptr [rsp + 24], 0         # 8-byte Folded Reload
	je	.LBB237_146
# %bb.142:
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	cmp	qword ptr [rsp + 88], 0         # 8-byte Folded Reload
	jne	.LBB237_145
	jmp	.LBB237_146
.LBB237_143:
.Ltmp971:
	mov	r13, rax
	movdqa	xmm0, xmmword ptr [rsp + 32]    # 16-byte Reload
	movq	rax, xmm0
	test	rax, rax
	je	.LBB237_146
# %bb.144:
	pshufd	xmm0, xmmword ptr [rsp + 32], 238 # 16-byte Folded Reload
                                        # xmm0 = mem[2,3,2,3]
	movq	rax, xmm0
	test	rax, rax
	mov	rdi, rbx
	je	.LBB237_146
.LBB237_145:
	call	qword ptr [rip + free@GOTPCREL]
.LBB237_146:
	mov	rdi, r13
	call	_Unwind_Resume@PLT
.Lfunc_end237:
	.size	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert, .Lfunc_end237-_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert
	.cfi_endproc
	.section	.gcc_except_table._RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_13Abbreviations6insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table237:
.Lexception45:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end45-.Lcst_begin45
.Lcst_begin45:
	.uleb128 .Ltmp972-.Lfunc_begin45        # >> Call Site 1 <<
	.uleb128 .Ltmp973-.Ltmp972              #   Call between .Ltmp972 and .Ltmp973
	.uleb128 .Ltmp974-.Lfunc_begin45        #     jumps to .Ltmp974
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp973-.Lfunc_begin45        # >> Call Site 2 <<
	.uleb128 .Ltmp969-.Ltmp973              #   Call between .Ltmp973 and .Ltmp969
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin45        # >> Call Site 3 <<
	.uleb128 .Ltmp970-.Ltmp969              #   Call between .Ltmp969 and .Ltmp970
	.uleb128 .Ltmp971-.Lfunc_begin45        #     jumps to .Ltmp971
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp944-.Lfunc_begin45        # >> Call Site 4 <<
	.uleb128 .Ltmp945-.Ltmp944              #   Call between .Ltmp944 and .Ltmp945
	.uleb128 .Ltmp956-.Lfunc_begin45        #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp946-.Lfunc_begin45        # >> Call Site 5 <<
	.uleb128 .Ltmp947-.Ltmp946              #   Call between .Ltmp946 and .Ltmp947
	.uleb128 .Ltmp948-.Lfunc_begin45        #     jumps to .Ltmp948
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp949-.Lfunc_begin45        # >> Call Site 6 <<
	.uleb128 .Ltmp950-.Ltmp949              #   Call between .Ltmp949 and .Ltmp950
	.uleb128 .Ltmp953-.Lfunc_begin45        #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp954-.Lfunc_begin45        # >> Call Site 7 <<
	.uleb128 .Ltmp955-.Ltmp954              #   Call between .Ltmp954 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin45        #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp951-.Lfunc_begin45        # >> Call Site 8 <<
	.uleb128 .Ltmp952-.Ltmp951              #   Call between .Ltmp951 and .Ltmp952
	.uleb128 .Ltmp953-.Lfunc_begin45        #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp941-.Lfunc_begin45        # >> Call Site 9 <<
	.uleb128 .Ltmp942-.Ltmp941              #   Call between .Ltmp941 and .Ltmp942
	.uleb128 .Ltmp943-.Lfunc_begin45        #     jumps to .Ltmp943
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp966-.Lfunc_begin45        # >> Call Site 10 <<
	.uleb128 .Ltmp967-.Ltmp966              #   Call between .Ltmp966 and .Ltmp967
	.uleb128 .Ltmp968-.Lfunc_begin45        #     jumps to .Ltmp968
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp963-.Lfunc_begin45        # >> Call Site 11 <<
	.uleb128 .Ltmp964-.Ltmp963              #   Call between .Ltmp963 and .Ltmp964
	.uleb128 .Ltmp965-.Lfunc_begin45        #     jumps to .Ltmp965
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin45        # >> Call Site 12 <<
	.uleb128 .Ltmp961-.Ltmp960              #   Call between .Ltmp960 and .Ltmp961
	.uleb128 .Ltmp962-.Lfunc_begin45        #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin45        # >> Call Site 13 <<
	.uleb128 .Ltmp958-.Ltmp957              #   Call between .Ltmp957 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin45        #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp958-.Lfunc_begin45        # >> Call Site 14 <<
	.uleb128 .Lfunc_end237-.Ltmp958         #   Call between .Ltmp958 and .Lfunc_end237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end45:
	.p2align	2, 0x0
                                        # -- End function
