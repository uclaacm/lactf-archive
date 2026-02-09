	.section	.text._RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars,"ax",@progbits
	.p2align	4
	.type	_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars,@function
_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars: # @_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars
	.cfi_startproc
# %bb.0:
	lea	rcx, [rdi + 7]
	and	rcx, -8
	mov	rax, rcx
	sub	rax, rdi
	sub	rsi, rax
	mov	eax, esi
	and	eax, 7
	mov	r8, rcx
	sub	r8, rdi
	jne	.LBB63_2
# %bb.1:
	xor	edx, edx
	jmp	.LBB63_6
.LBB63_2:
	cmp	r8, 4
	jae	.LBB63_4
# %bb.3:
	xor	r9d, r9d
	xor	edx, edx
	jmp	.LBB63_5
.LBB63_4:
	movzx	edx, word ptr [rdi + 2]
	movd	xmm0, edx
	movdqa	xmm1, xmmword ptr [rip + .LCPI63_0] # xmm1 = [191,191,u,u,u,u,u,u,u,u,u,u,u,u,u,u]
	pcmpgtb	xmm0, xmm1
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm0, xmm0, 212                 # xmm0 = xmm0[0,1,1,3,4,5,6,7]
	pshufd	xmm0, xmm0, 212                 # xmm0 = xmm0[0,1,1,3]
	movdqa	xmm2, xmmword ptr [rip + .LCPI63_1] # xmm2 = [1,1]
	pand	xmm0, xmm2
	movzx	edx, word ptr [rdi]
	movd	xmm3, edx
	pcmpgtb	xmm3, xmm1
	punpcklbw	xmm3, xmm3              # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm1, xmm3, 212                 # xmm1 = xmm3[0,1,1,3,4,5,6,7]
	pshufd	xmm1, xmm1, 212                 # xmm1 = xmm1[0,1,1,3]
	pand	xmm1, xmm2
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 238                 # xmm0 = xmm1[2,3,2,3]
	paddq	xmm0, xmm1
	movq	rdx, xmm0
	mov	r9d, 4
	je	.LBB63_6
	.p2align	4
.LBB63_5:                               # =>This Inner Loop Header: Depth=1
	xor	r10d, r10d
	cmp	byte ptr [rdi + r9], -64
	setge	r10b
	add	rdx, r10
	inc	r9
	cmp	r8, r9
	jne	.LBB63_5
.LBB63_6:
	test	rax, rax
	je	.LBB63_7
# %bb.8:
	movabs	rdi, 9223372036854775800
	and	rdi, rsi
	xor	r10d, r10d
	cmp	byte ptr [rcx + rdi], -64
	setge	r10b
	cmp	eax, 1
	je	.LBB63_15
# %bb.9:
	xor	r8d, r8d
	cmp	byte ptr [rcx + rdi + 1], -64
	setge	r8b
	add	r10, r8
	cmp	eax, 2
	je	.LBB63_15
# %bb.10:
	xor	r8d, r8d
	cmp	byte ptr [rcx + rdi + 2], -64
	setge	r8b
	add	r10, r8
	cmp	eax, 3
	je	.LBB63_15
# %bb.11:
	xor	r8d, r8d
	cmp	byte ptr [rcx + rdi + 3], -64
	setge	r8b
	add	r10, r8
	cmp	eax, 4
	je	.LBB63_15
# %bb.12:
	xor	r8d, r8d
	cmp	byte ptr [rcx + rdi + 4], -64
	setge	r8b
	add	r10, r8
	cmp	eax, 5
	je	.LBB63_15
# %bb.13:
	xor	r8d, r8d
	cmp	byte ptr [rcx + rdi + 5], -64
	setge	r8b
	add	r10, r8
	cmp	eax, 6
	je	.LBB63_15
# %bb.14:
	xor	eax, eax
	cmp	byte ptr [rcx + rdi + 6], -64
	setge	al
	add	r10, rax
	jmp	.LBB63_15
.LBB63_7:
	xor	r10d, r10d
.LBB63_15:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	add	r10, rdx
	shr	rsi, 3
	movabs	rdi, 71777214294589695
	movabs	rdx, 281479271743489
	pcmpeqd	xmm0, xmm0
	movdqa	xmm1, xmmword ptr [rip + .LCPI63_2] # xmm1 = [72340172838076673,72340172838076673]
	jmp	.LBB63_16
	.p2align	4
.LBB63_18:                              #   in Loop: Header=BB63_16 Depth=1
	xor	r10d, r10d
.LBB63_27:                              #   in Loop: Header=BB63_16 Depth=1
	add	rcx, r8
	sub	rsi, r9
	mov	r11d, r9d
	and	r11d, 3
	mov	rbx, r10
	and	rbx, rdi
	shr	r10, 8
	and	r10, rdi
	add	r10, rbx
	imul	r10, rdx
	shr	r10, 48
	add	r10, rax
	test	r11, r11
	jne	.LBB63_28
.LBB63_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_22 Depth 2
                                        #     Child Loop BB63_26 Depth 2
	mov	rax, r10
	test	rsi, rsi
	je	.LBB63_32
# %bb.17:                               #   in Loop: Header=BB63_16 Depth=1
	mov	r8, rcx
	cmp	rsi, 192
	mov	r9d, 192
	cmovb	r9, rsi
	lea	ecx, [8*r9]
	mov	r11d, ecx
	and	r11d, 2016
	je	.LBB63_18
# %bb.19:                               #   in Loop: Header=BB63_16 Depth=1
	lea	rbx, [r8 + 32]
	lea	r15, [rcx - 32]
	cmp	r15, 96
	jae	.LBB63_21
# %bb.20:                               #   in Loop: Header=BB63_16 Depth=1
	xor	r10d, r10d
	mov	r14, r8
	jmp	.LBB63_25
	.p2align	4
.LBB63_21:                              #   in Loop: Header=BB63_16 Depth=1
	shr	r15, 5
	inc	r15
	mov	r14, r15
	and	r14, -4
	lea	r10, [r8 + 64]
	pxor	xmm4, xmm4
	mov	r12, r14
	pxor	xmm6, xmm6
	.p2align	4
.LBB63_22:                              #   Parent Loop BB63_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	xmm2, xmmword ptr [r10 - 64]
	movdqu	xmm5, xmmword ptr [r10 - 32]
	movdqa	xmm3, xmm2
	punpcklqdq	xmm3, xmm5              # xmm3 = xmm3[0],xmm5[0]
	movdqa	xmm7, xmm3
	pxor	xmm7, xmm0
	psrlq	xmm7, 7
	psrlq	xmm3, 6
	por	xmm3, xmm7
	pand	xmm3, xmm1
	paddq	xmm3, xmm4
	movdqu	xmm4, xmmword ptr [r10 - 48]
	movdqu	xmm7, xmmword ptr [r10 - 16]
	punpckhqdq	xmm2, xmm5              # xmm2 = xmm2[1],xmm5[1]
	movdqa	xmm5, xmm4
	punpcklqdq	xmm5, xmm7              # xmm5 = xmm5[0],xmm7[0]
	punpckhqdq	xmm4, xmm7              # xmm4 = xmm4[1],xmm7[1]
	movdqu	xmm10, xmmword ptr [r10 + 48]
	movdqu	xmm7, xmmword ptr [r10 + 32]
	movdqu	xmm9, xmmword ptr [r10]
	movdqa	xmm8, xmm9
	punpcklqdq	xmm8, xmm7              # xmm8 = xmm8[0],xmm7[0]
	movdqa	xmm11, xmm8
	pxor	xmm11, xmm0
	psrlq	xmm11, 7
	psrlq	xmm8, 6
	por	xmm8, xmm11
	pand	xmm8, xmm1
	paddq	xmm8, xmm6
	movdqu	xmm6, xmmword ptr [r10 + 16]
	punpckhqdq	xmm9, xmm7              # xmm9 = xmm9[1],xmm7[1]
	movdqa	xmm7, xmm6
	punpcklqdq	xmm7, xmm10             # xmm7 = xmm7[0],xmm10[0]
	punpckhqdq	xmm6, xmm10             # xmm6 = xmm6[1],xmm10[1]
	movdqa	xmm10, xmm2
	pxor	xmm10, xmm0
	movdqa	xmm11, xmm9
	pxor	xmm11, xmm0
	psrlq	xmm10, 7
	psrlq	xmm11, 7
	psrlq	xmm2, 6
	por	xmm2, xmm10
	psrlq	xmm9, 6
	por	xmm9, xmm11
	pand	xmm2, xmm1
	pand	xmm9, xmm1
	movdqa	xmm10, xmm5
	pxor	xmm10, xmm0
	movdqa	xmm11, xmm7
	pxor	xmm11, xmm0
	psrlq	xmm10, 7
	psrlq	xmm11, 7
	psrlq	xmm5, 6
	por	xmm5, xmm10
	psrlq	xmm7, 6
	por	xmm7, xmm11
	pand	xmm5, xmm1
	paddq	xmm5, xmm2
	paddq	xmm5, xmm3
	pand	xmm7, xmm1
	paddq	xmm7, xmm9
	paddq	xmm7, xmm8
	movdqa	xmm2, xmm4
	pxor	xmm2, xmm0
	movdqa	xmm3, xmm6
	pxor	xmm3, xmm0
	psrlq	xmm2, 7
	psrlq	xmm3, 7
	psrlq	xmm4, 6
	por	xmm4, xmm2
	psrlq	xmm6, 6
	por	xmm6, xmm3
	pand	xmm4, xmm1
	paddq	xmm4, xmm5
	pand	xmm6, xmm1
	paddq	xmm6, xmm7
	sub	r10, -128
	add	r12, -4
	jne	.LBB63_22
# %bb.23:                               #   in Loop: Header=BB63_16 Depth=1
	paddq	xmm6, xmm4
	pshufd	xmm2, xmm6, 238                 # xmm2 = xmm6[2,3,2,3]
	paddq	xmm2, xmm6
	movq	r10, xmm2
	cmp	r15, r14
	je	.LBB63_27
# %bb.24:                               #   in Loop: Header=BB63_16 Depth=1
	shl	r14, 5
	add	rbx, r14
	add	r14, r8
.LBB63_25:                              #   in Loop: Header=BB63_16 Depth=1
	add	r11, r8
	.p2align	4
.LBB63_26:                              #   Parent Loop BB63_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	xmm2, xmmword ptr [r14]
	movdqu	xmm3, xmmword ptr [r14 + 16]
	movdqa	xmm4, xmm2
	pxor	xmm4, xmm0
	movdqa	xmm5, xmm3
	pxor	xmm5, xmm0
	psrlq	xmm5, 7
	psrlq	xmm4, 7
	psrlq	xmm3, 6
	por	xmm3, xmm5
	psrlq	xmm2, 6
	por	xmm2, xmm4
	pand	xmm3, xmm1
	pand	xmm2, xmm1
	paddq	xmm2, xmm3
	pshufd	xmm3, xmm2, 238                 # xmm3 = xmm2[2,3,2,3]
	paddq	xmm3, xmm2
	movq	r14, xmm3
	add	r10, r14
	cmp	rbx, r11
	mov	r14, rbx
	lea	rbx, [rbx + 32]
	jne	.LBB63_26
	jmp	.LBB63_27
.LBB63_28:
	movabs	rcx, 72340172838076673
	and	r9d, 252
	mov	eax, r9d
	mov	rax, qword ptr [r8 + 8*rax]
	mov	rsi, rax
	not	rsi
	shr	rsi, 7
	shr	rax, 6
	or	rax, rsi
	and	rax, rcx
	cmp	r11d, 1
	je	.LBB63_31
# %bb.29:
	mov	rsi, qword ptr [r8 + 8*r9 + 8]
	mov	rbx, rsi
	not	rbx
	shr	rbx, 7
	shr	rsi, 6
	or	rsi, rbx
	and	rsi, rcx
	add	rax, rsi
	cmp	r11d, 2
	je	.LBB63_31
# %bb.30:
	mov	rsi, qword ptr [r8 + 8*r9 + 16]
	mov	r8, rsi
	not	r8
	shr	r8, 7
	shr	rsi, 6
	or	rsi, r8
	and	rsi, rcx
	add	rax, rsi
.LBB63_31:
	mov	rcx, rax
	and	rcx, rdi
	shr	rax, 8
	and	rax, rdi
	add	rax, rcx
	imul	rax, rdx
	shr	rax, 48
	add	rax, r10
.LBB63_32:
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end63:
	.size	_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars, .Lfunc_end63-_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars
	.cfi_endproc
                                        # -- End function
