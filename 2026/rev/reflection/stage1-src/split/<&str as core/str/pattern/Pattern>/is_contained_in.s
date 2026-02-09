	.section	.text._RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in
	.type	_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in,@function
_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in: # @_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in
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
	sub	rsp, 280
	.cfi_def_cfa_offset 336
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	cmp	rsi, rcx
	jae	.LBB174_24
# %bb.1:
	mov	rbx, rcx
	movzx	eax, byte ptr [r12]
	lea	rdx, [r15 - 1]
	movzx	ecx, byte ptr [r12 + r15 - 1]
	mov	rsi, rdx
	cmp	cl, al
	jne	.LBB174_28
# %bb.2:
	movzx	ecx, byte ptr [r12 + r15 - 2]
	cmp	cl, al
	jne	.LBB174_27
# %bb.3:
	movzx	ecx, byte ptr [r12 + r15 - 3]
	cmp	cl, al
	jne	.LBB174_34
# %bb.4:
	lea	rsi, [r15 - 4]
	movzx	ecx, byte ptr [r12 + rsi]
	cmp	cl, al
	jne	.LBB174_28
# %bb.5:
	lea	rdi, [rsp + 88]
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, r15
	call	_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new
	cmp	dword ptr [rsp + 88], 1
	jne	.LBB174_58
# %bb.6:
	mov	r11, qword ptr [rsp + 144]
	mov	rdx, qword ptr [rsp + 160]
	mov	rax, qword ptr [rsp + 184]
	lea	r9, [rax - 1]
	mov	rsi, qword ptr [rsp + 168]
	mov	r10, qword ptr [rsp + 176]
	cmp	r11, -1
	je	.LBB174_64
# %bb.7:
	mov	rdi, qword ptr [rsp + 128]
	lea	rcx, [rdi + r9]
	cmp	rcx, rsi
	jae	.LBB174_26
# %bb.8:
	mov	rbx, qword ptr [rsp + 120]
	mov	r14, qword ptr [rsp + 96]
	mov	r8, qword ptr [rsp + 112]
	mov	r13, rax
	mov	qword ptr [rsp + 16], r8        # 8-byte Spill
	sub	r13, r8
.LBB174_9:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB174_11 Depth 2
                                        #     Child Loop BB174_19 Depth 2
	movzx	ecx, byte ptr [rdx + rcx]
	bt	rbx, rcx
	jae	.LBB174_15
# %bb.10:                               #   in Loop: Header=BB174_9 Depth=1
	cmp	r11, r14
	mov	rcx, r14
	cmova	rcx, r11
	lea	r8, [rdx + rdi]
	mov	rbp, rcx
	.p2align	4
.LBB174_11:                             #   Parent Loop BB174_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rbp, rax
	jae	.LBB174_18
# %bb.12:                               #   in Loop: Header=BB174_11 Depth=2
	mov	r12, rbp
	add	rbp, rdi
	cmp	rbp, rsi
	jae	.LBB174_105
# %bb.13:                               #   in Loop: Header=BB174_11 Depth=2
	lea	rbp, [r12 + 1]
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15b, byte ptr [r8 + r12]
	je	.LBB174_11
# %bb.14:                               #   in Loop: Header=BB174_9 Depth=1
	sub	rdi, r14
	add	rdi, r12
	inc	rdi
	jmp	.LBB174_16
.LBB174_15:                             #   in Loop: Header=BB174_9 Depth=1
	add	rdi, rax
.LBB174_16:                             #   in Loop: Header=BB174_9 Depth=1
	xor	r11d, r11d
.LBB174_17:                             #   in Loop: Header=BB174_9 Depth=1
	lea	rcx, [rdi + r9]
	xor	r12d, r12d
	cmp	rcx, rsi
	jb	.LBB174_9
	jmp	.LBB174_57
.LBB174_18:                             #   in Loop: Header=BB174_9 Depth=1
	mov	rcx, r14
.LBB174_19:                             #   Parent Loop BB174_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r11, rcx
	jae	.LBB174_33
# %bb.20:                               #   in Loop: Header=BB174_19 Depth=2
	dec	rcx
	cmp	rcx, rax
	jae	.LBB174_106
# %bb.21:                               #   in Loop: Header=BB174_19 Depth=2
	lea	r8, [rcx + rdi]
	cmp	r8, rsi
	jae	.LBB174_107
# %bb.22:                               #   in Loop: Header=BB174_19 Depth=2
	movzx	ebp, byte ptr [r10 + rcx]
	cmp	bpl, byte ptr [rdx + r8]
	je	.LBB174_19
# %bb.23:                               #   in Loop: Header=BB174_9 Depth=1
	add	rdi, qword ptr [rsp + 16]       # 8-byte Folded Reload
	mov	r11, r13
	jmp	.LBB174_17
.LBB174_24:
	jne	.LBB174_26
# %bb.25:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
	sete	r12b
	jmp	.LBB174_57
.LBB174_27:
	lea	rsi, [r15 - 2]
.LBB174_28:
	lea	rdi, [r15 + 15]
	cmp	rbx, rdi
	jae	.LBB174_35
.LBB174_29:
	mov	r13, qword ptr [rip + bcmp@GOTPCREL]
	.p2align	4
.LBB174_30:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	call	r13
	test	eax, eax
	je	.LBB174_33
# %bb.31:                               #   in Loop: Header=BB174_30 Depth=1
	inc	r14
	dec	rbx
	cmp	r15, rbx
	jbe	.LBB174_30
.LBB174_26:
	xor	r12d, r12d
	jmp	.LBB174_57
.LBB174_34:
	lea	rsi, [r15 - 3]
	lea	rdi, [r15 + 15]
	cmp	rbx, rdi
	jb	.LBB174_29
.LBB174_35:
	mov	qword ptr [rsp + 224], rdi      # 8-byte Spill
	movzx	eax, al
	movd	xmm0, eax
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	xmm2, xmm0, 68                  # xmm2 = xmm0[0,1,0,1]
	movzx	eax, cl
	movd	xmm0, eax
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	xmm3, xmm0, 68                  # xmm3 = xmm0[0,1,0,1]
	inc	r12
	mov	qword ptr [rsp + 88], r14
	mov	qword ptr [rsp + 96], rbx
	mov	qword ptr [rsp + 104], r12
	mov	qword ptr [rsp + 232], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 112], rdx
	lea	rax, [r15 + 63]
	cmp	rax, rbx
	movdqa	xmmword ptr [rsp + 16], xmm2    # 16-byte Spill
	movdqa	xmmword ptr [rsp + 64], xmm3    # 16-byte Spill
	mov	qword ptr [rsp + 80], rsi       # 8-byte Spill
	jae	.LBB174_48
# %bb.36:
	lea	rcx, [r15 + 127]
	lea	rbp, [rsi + r14]
	add	rbp, 48
	xor	r13d, r13d
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	.p2align	4
.LBB174_37:                             # =>This Inner Loop Header: Depth=1
	movdqu	xmm0, xmmword ptr [r14 + r13]
	movdqu	xmm8, xmmword ptr [r14 + r13 + 16]
	movdqu	xmm6, xmmword ptr [r14 + r13 + 32]
	movdqu	xmm4, xmmword ptr [r14 + r13 + 48]
	pcmpeqb	xmm0, xmm2
	movdqu	xmm1, xmmword ptr [rbp + r13 - 48]
	movdqu	xmm9, xmmword ptr [rbp + r13 - 32]
	movdqu	xmm7, xmmword ptr [rbp + r13 - 16]
	movdqu	xmm5, xmmword ptr [rbp + r13]
	pcmpeqb	xmm1, xmm3
	pand	xmm1, xmm0
	pmovmskb	edx, xmm1
	test	edx, edx
	jne	.LBB174_44
# %bb.38:                               #   in Loop: Header=BB174_37 Depth=1
	xor	r12d, r12d
.LBB174_39:                             #   in Loop: Header=BB174_37 Depth=1
	pcmpeqb	xmm8, xmm2
	pcmpeqb	xmm9, xmm3
	pand	xmm9, xmm8
	pmovmskb	edx, xmm9
	test	dx, dx
	jne	.LBB174_45
.LBB174_40:                             #   in Loop: Header=BB174_37 Depth=1
	pcmpeqb	xmm6, xmm2
	pcmpeqb	xmm7, xmm3
	pand	xmm7, xmm6
	pmovmskb	edx, xmm7
	test	dx, dx
	jne	.LBB174_46
.LBB174_41:                             #   in Loop: Header=BB174_37 Depth=1
	pcmpeqb	xmm4, xmm2
	pcmpeqb	xmm5, xmm3
	pand	xmm5, xmm4
	pmovmskb	edx, xmm5
	test	dx, dx
	jne	.LBB174_47
# %bb.42:                               #   in Loop: Header=BB174_37 Depth=1
	lea	rax, [rcx + r13]
	add	r13, 64
	cmp	rax, rbx
	jae	.LBB174_49
.LBB174_43:                             #   in Loop: Header=BB174_37 Depth=1
	test	r12b, r12b
	je	.LBB174_37
	jmp	.LBB174_49
.LBB174_44:                             #   in Loop: Header=BB174_37 Depth=1
	lea	rdi, [rsp + 88]
	mov	rsi, r13
	xor	ecx, ecx
	movdqa	xmmword ptr [rsp + 48], xmm4    # 16-byte Spill
	movdqa	xmmword ptr [rsp + 32], xmm5    # 16-byte Spill
	movdqa	xmmword ptr [rsp + 208], xmm6   # 16-byte Spill
	movdqa	xmmword ptr [rsp + 192], xmm7   # 16-byte Spill
	movdqa	xmmword ptr [rsp + 256], xmm8   # 16-byte Spill
	movdqa	xmmword ptr [rsp + 240], xmm9   # 16-byte Spill
	call	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	movdqa	xmm9, xmmword ptr [rsp + 240]   # 16-byte Reload
	movdqa	xmm8, xmmword ptr [rsp + 256]   # 16-byte Reload
	movdqa	xmm7, xmmword ptr [rsp + 192]   # 16-byte Reload
	movdqa	xmm6, xmmword ptr [rsp + 208]   # 16-byte Reload
	movdqa	xmm5, xmmword ptr [rsp + 32]    # 16-byte Reload
	movdqa	xmm4, xmmword ptr [rsp + 48]    # 16-byte Reload
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movdqa	xmm3, xmmword ptr [rsp + 64]    # 16-byte Reload
	movdqa	xmm2, xmmword ptr [rsp + 16]    # 16-byte Reload
	mov	r12d, eax
	jmp	.LBB174_39
.LBB174_45:                             #   in Loop: Header=BB174_37 Depth=1
	lea	rsi, [r13 + 16]
	movzx	r12d, r12b
	lea	rdi, [rsp + 88]
	mov	ecx, r12d
	movdqa	xmmword ptr [rsp + 48], xmm4    # 16-byte Spill
	movdqa	xmmword ptr [rsp + 32], xmm5    # 16-byte Spill
	movdqa	xmmword ptr [rsp + 208], xmm6   # 16-byte Spill
	movdqa	xmmword ptr [rsp + 192], xmm7   # 16-byte Spill
	call	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	movdqa	xmm7, xmmword ptr [rsp + 192]   # 16-byte Reload
	movdqa	xmm6, xmmword ptr [rsp + 208]   # 16-byte Reload
	movdqa	xmm5, xmmword ptr [rsp + 32]    # 16-byte Reload
	movdqa	xmm4, xmmword ptr [rsp + 48]    # 16-byte Reload
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movdqa	xmm3, xmmword ptr [rsp + 64]    # 16-byte Reload
	movdqa	xmm2, xmmword ptr [rsp + 16]    # 16-byte Reload
	or	r12b, al
	jmp	.LBB174_40
.LBB174_46:                             #   in Loop: Header=BB174_37 Depth=1
	lea	rsi, [r13 + 32]
	movzx	r12d, r12b
	lea	rdi, [rsp + 88]
	mov	ecx, r12d
	movdqa	xmmword ptr [rsp + 48], xmm4    # 16-byte Spill
	movdqa	xmmword ptr [rsp + 32], xmm5    # 16-byte Spill
	call	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	movdqa	xmm5, xmmword ptr [rsp + 32]    # 16-byte Reload
	movdqa	xmm4, xmmword ptr [rsp + 48]    # 16-byte Reload
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movdqa	xmm3, xmmword ptr [rsp + 64]    # 16-byte Reload
	movdqa	xmm2, xmmword ptr [rsp + 16]    # 16-byte Reload
	or	r12b, al
	jmp	.LBB174_41
.LBB174_47:                             #   in Loop: Header=BB174_37 Depth=1
	lea	rsi, [r13 + 48]
	movzx	r12d, r12b
	lea	rdi, [rsp + 88]
	mov	ecx, r12d
	call	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movdqa	xmm3, xmmword ptr [rsp + 64]    # 16-byte Reload
	movdqa	xmm2, xmmword ptr [rsp + 16]    # 16-byte Reload
	or	r12b, al
	lea	rax, [rcx + r13]
	add	r13, 64
	cmp	rax, rbx
	jb	.LBB174_43
	jmp	.LBB174_49
.LBB174_48:
	xor	r12d, r12d
	xor	r13d, r13d
.LBB174_49:
	mov	rax, qword ptr [rsp + 224]      # 8-byte Reload
	add	rax, r13
	cmp	rax, rbx
	jae	.LBB174_56
# %bb.50:
	test	r12b, r12b
	jne	.LBB174_56
# %bb.51:
	add	r15, 31
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	lea	rbp, [r14 + rax]
	.p2align	4
.LBB174_52:                             # =>This Inner Loop Header: Depth=1
	movdqu	xmm0, xmmword ptr [r14 + r13]
	movdqu	xmm1, xmmword ptr [rbp + r13]
	pcmpeqb	xmm0, xmm2
	pcmpeqb	xmm1, xmm3
	pand	xmm1, xmm0
	pmovmskb	edx, xmm1
	test	edx, edx
	jne	.LBB174_55
# %bb.53:                               #   in Loop: Header=BB174_52 Depth=1
	xor	r12d, r12d
	lea	rax, [r15 + r13]
	cmp	rax, rbx
	jae	.LBB174_56
.LBB174_54:                             #   in Loop: Header=BB174_52 Depth=1
	add	r13, 16
	test	r12b, r12b
	je	.LBB174_52
	jmp	.LBB174_56
.LBB174_55:                             #   in Loop: Header=BB174_52 Depth=1
	lea	rdi, [rsp + 88]
	mov	rsi, r13
	xor	ecx, ecx
	call	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	movdqa	xmm3, xmmword ptr [rsp + 64]    # 16-byte Reload
	movdqa	xmm2, xmmword ptr [rsp + 16]    # 16-byte Reload
	mov	r12d, eax
	lea	rax, [r15 + r13]
	cmp	rax, rbx
	jb	.LBB174_54
.LBB174_56:
	sub	rbx, qword ptr [rsp + 232]      # 8-byte Folded Reload
	lea	rax, [r14 + rbx]
	add	rax, -16
	movdqu	xmm0, xmmword ptr [r14 + rbx - 16]
	mov	rcx, qword ptr [rsp + 80]       # 8-byte Reload
	movdqu	xmm1, xmmword ptr [rcx + rax]
	pcmpeqb	xmm0, xmm2
	pcmpeqb	xmm1, xmm3
	pand	xmm1, xmm0
	pmovmskb	edx, xmm1
	test	edx, edx
	je	.LBB174_57
# %bb.60:
	add	rbx, -16
	movzx	r12d, r12b
	lea	rdi, [rsp + 88]
	mov	rsi, rbx
	mov	ecx, r12d
	call	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	or	r12b, al
	jmp	.LBB174_57
.LBB174_58:
	cmp	byte ptr [rsp + 114], 0
	jne	.LBB174_26
# %bb.61:
	mov	rdx, qword ptr [rsp + 96]
	mov	rdi, qword ptr [rsp + 160]
	mov	rcx, qword ptr [rsp + 168]
	movzx	eax, byte ptr [rsp + 112]
	test	rdx, rdx
	je	.LBB174_85
# %bb.62:
	cmp	rdx, rcx
	jae	.LBB174_84
# %bb.63:
	cmp	byte ptr [rdi + rdx], -64
	jge	.LBB174_85
	jmp	.LBB174_100
.LBB174_64:
	mov	rdi, qword ptr [rsp + 128]
	lea	rcx, [rdi + r9]
	cmp	rcx, rsi
	jae	.LBB174_26
# %bb.65:
	mov	rbx, qword ptr [rsp + 120]
	mov	r11, qword ptr [rsp + 96]
	mov	r14, qword ptr [rsp + 112]
	lea	r15, [r11 - 1]
	jmp	.LBB174_68
.LBB174_66:                             #   in Loop: Header=BB174_68 Depth=1
	add	rdi, rax
.LBB174_67:                             #   in Loop: Header=BB174_68 Depth=1
	lea	rcx, [rdi + r9]
	xor	r12d, r12d
	cmp	rcx, rsi
	jae	.LBB174_57
.LBB174_68:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB174_70 Depth 2
                                        #     Child Loop BB174_75 Depth 2
	movzx	ecx, byte ptr [rdx + rcx]
	bt	rbx, rcx
	jae	.LBB174_66
# %bb.69:                               #   in Loop: Header=BB174_68 Depth=1
	lea	rcx, [rdx + rdi]
	mov	r12, r11
.LBB174_70:                             #   Parent Loop BB174_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r12, rax
	jae	.LBB174_74
# %bb.71:                               #   in Loop: Header=BB174_70 Depth=2
	mov	r8, r12
	add	r12, rdi
	cmp	r12, rsi
	jae	.LBB174_108
# %bb.72:                               #   in Loop: Header=BB174_70 Depth=2
	lea	r12, [r8 + 1]
	movzx	ebp, byte ptr [r10 + r8]
	cmp	bpl, byte ptr [rcx + r8]
	je	.LBB174_70
# %bb.73:                               #   in Loop: Header=BB174_68 Depth=1
	sub	rdi, r11
	add	rdi, r8
	inc	rdi
	jmp	.LBB174_67
.LBB174_74:                             #   in Loop: Header=BB174_68 Depth=1
	mov	rcx, r11
.LBB174_75:                             #   Parent Loop BB174_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub	rcx, 1
	jb	.LBB174_33
# %bb.76:                               #   in Loop: Header=BB174_75 Depth=2
	cmp	r15, rax
	jae	.LBB174_106
# %bb.77:                               #   in Loop: Header=BB174_75 Depth=2
	lea	r8, [rcx + rdi]
	cmp	r8, rsi
	jae	.LBB174_107
# %bb.78:                               #   in Loop: Header=BB174_75 Depth=2
	movzx	ebp, byte ptr [r10 + rcx]
	cmp	bpl, byte ptr [rdx + r8]
	je	.LBB174_75
# %bb.79:                               #   in Loop: Header=BB174_68 Depth=1
	add	rdi, r14
	jmp	.LBB174_67
.LBB174_33:
	mov	r12b, 1
.LBB174_57:
	and	r12b, 1
	mov	eax, r12d
	add	rsp, 280
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
.LBB174_84:
	.cfi_def_cfa_offset 336
	jne	.LBB174_100
.LBB174_85:
	cmp	rdx, rcx
	jne	.LBB174_87
# %bb.86:
	mov	r12d, eax
	jmp	.LBB174_57
.LBB174_87:
	movzx	esi, byte ptr [rdi + rdx]
	test	sil, sil
	jns	.LBB174_93
# %bb.88:
	mov	r8d, esi
	and	r8d, 31
	movzx	r10d, byte ptr [rdi + rdx + 1]
	and	r10d, 63
	cmp	sil, -32
	jb	.LBB174_91
# %bb.89:
	movzx	r9d, byte ptr [rdi + rdx + 2]
	shl	r10d, 6
	and	r9d, 63
	or	r9d, r10d
	cmp	sil, -16
	jb	.LBB174_92
# %bb.90:
	movzx	esi, byte ptr [rdi + rdx + 3]
	and	r8d, 7
	shl	r8d, 18
	shl	r9d, 6
	and	esi, 63
	or	esi, r9d
	or	esi, r8d
	jmp	.LBB174_93
.LBB174_91:
	shl	r8d, 6
	or	r8d, r10d
	mov	esi, r8d
	jmp	.LBB174_93
.LBB174_92:
	shl	r8d, 12
	or	r9d, r8d
	mov	esi, r9d
.LBB174_93:
	mov	r12b, 1
	test	al, 1
	jne	.LBB174_57
# %bb.94:
	mov	eax, 1
	cmp	esi, 128
	jb	.LBB174_97
# %bb.95:
	mov	eax, 2
	cmp	esi, 2048
	jb	.LBB174_97
# %bb.96:
	cmp	esi, 65536
	mov	eax, 4
	sbb	rax, 0
.LBB174_97:
	add	rdx, rax
	je	.LBB174_102
# %bb.98:
	cmp	rdx, rcx
	jae	.LBB174_101
# %bb.99:
	cmp	byte ptr [rdi + rdx], -64
	jge	.LBB174_102
.LBB174_100:
	lea	r8, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.941]
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB174_101:
	jne	.LBB174_100
.LBB174_102:
	cmp	rdx, rcx
	je	.LBB174_57
# %bb.103:
	movzx	eax, byte ptr [rdi + rdx]
	test	al, al
	jns	.LBB174_57
# %bb.104:
	cmp	al, -32
	jmp	.LBB174_57
.LBB174_105:
	add	rdi, rcx
	cmp	rsi, rdi
	cmova	rdi, rsi
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.44]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB174_106:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.42]
	mov	rdi, rcx
	mov	rsi, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB174_107:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.43]
	mov	rdi, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB174_108:
	add	rdi, r11
	cmp	rsi, rdi
	cmova	rdi, rsi
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.44]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end174:
	.size	_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in, .Lfunc_end174-_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in
	.cfi_endproc
                                        # -- End function
