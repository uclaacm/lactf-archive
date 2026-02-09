	.section	.text._RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad,"ax",@progbits
	.p2align	4
	.type	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad,@function
_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad: # @_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
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
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, rdx
	mov	ebp, dword ptr [rdi + 16]
	test	ebp, 402653184
	je	.LBB58_50
# %bb.1:
	test	ebp, 268435456
	jne	.LBB58_18
# %bb.2:
	cmp	r15, 32
	jae	.LBB58_3
# %bb.4:
	test	r15, r15
	je	.LBB58_5
# %bb.6:
	cmp	r15, 4
	jae	.LBB58_8
# %bb.7:
	xor	eax, eax
	xor	r12d, r12d
	jmp	.LBB58_17
.LBB58_18:
	movzx	r12d, word ptr [rdi + 22]
	test	r12, r12
	je	.LBB58_19
# %bb.20:
	add	r15, rsi
	xor	edx, edx
	mov	r9, rsi
	mov	rcx, rsi
	mov	rax, r12
	jmp	.LBB58_21
	.p2align	4
.LBB58_24:                              #   in Loop: Header=BB58_21 Depth=1
	lea	r8, [rcx + 1]
.LBB58_30:                              #   in Loop: Header=BB58_21 Depth=1
	mov	rdx, r8
	sub	rdx, rcx
	add	rdx, rsi
	mov	rcx, r8
	dec	rax
	je	.LBB58_31
.LBB58_21:                              # =>This Inner Loop Header: Depth=1
	mov	rsi, rdx
	cmp	rcx, r15
	je	.LBB58_22
# %bb.23:                               #   in Loop: Header=BB58_21 Depth=1
	movzx	edx, byte ptr [rcx]
	test	dl, dl
	jns	.LBB58_24
# %bb.25:                               #   in Loop: Header=BB58_21 Depth=1
	cmp	dl, -32
	jb	.LBB58_26
# %bb.27:                               #   in Loop: Header=BB58_21 Depth=1
	cmp	dl, -16
	jb	.LBB58_28
# %bb.29:                               #   in Loop: Header=BB58_21 Depth=1
	lea	r8, [rcx + 4]
	jmp	.LBB58_30
.LBB58_26:                              #   in Loop: Header=BB58_21 Depth=1
	lea	r8, [rcx + 2]
	jmp	.LBB58_30
.LBB58_28:                              #   in Loop: Header=BB58_21 Depth=1
	lea	r8, [rcx + 3]
	jmp	.LBB58_30
.LBB58_3:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	mov	rsi, r15
	call	_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars
	mov	rsi, r14
	mov	rdi, rbx
	mov	r12, rax
	jmp	.LBB58_34
.LBB58_19:
	xor	edx, edx
	xor	eax, eax
	jmp	.LBB58_33
.LBB58_22:
	mov	rdx, rsi
	jmp	.LBB58_32
.LBB58_31:
	xor	eax, eax
.LBB58_32:
	mov	rsi, r9
.LBB58_33:
	sub	r12, rax
	mov	r15, rdx
	jmp	.LBB58_34
.LBB58_5:
	xor	r12d, r12d
	jmp	.LBB58_34
.LBB58_8:
	mov	eax, r15d
	and	eax, 28
	movzx	ecx, word ptr [rsi]
	movd	xmm0, ecx
	movzx	ecx, word ptr [rsi + 2]
	movd	xmm1, ecx
	movdqa	xmm2, xmmword ptr [rip + .LCPI58_0] # xmm2 = [191,191,u,u,u,u,u,u,u,u,u,u,u,u,u,u]
	pcmpgtb	xmm0, xmm2
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm0, xmm0, 212                 # xmm0 = xmm0[0,1,1,3,4,5,6,7]
	pshufd	xmm0, xmm0, 212                 # xmm0 = xmm0[0,1,1,3]
	movdqa	xmm3, xmmword ptr [rip + .LCPI58_1] # xmm3 = [1,1]
	pand	xmm0, xmm3
	pcmpgtb	xmm1, xmm2
	punpcklbw	xmm1, xmm1              # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm1, xmm1, 212                 # xmm1 = xmm1[0,1,1,3,4,5,6,7]
	pshufd	xmm1, xmm1, 212                 # xmm1 = xmm1[0,1,1,3]
	pand	xmm1, xmm3
	cmp	rax, 4
	je	.LBB58_15
# %bb.9:
	movzx	ecx, word ptr [rsi + 4]
	movd	xmm4, ecx
	movzx	ecx, word ptr [rsi + 6]
	movd	xmm5, ecx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3]
	pand	xmm5, xmm3
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	cmp	eax, 8
	je	.LBB58_15
# %bb.10:
	movzx	ecx, word ptr [rsi + 8]
	movd	xmm4, ecx
	movzx	ecx, word ptr [rsi + 10]
	movd	xmm5, ecx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3]
	pand	xmm5, xmm3
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	cmp	eax, 12
	je	.LBB58_15
# %bb.11:
	movzx	ecx, word ptr [rsi + 12]
	movd	xmm4, ecx
	movzx	ecx, word ptr [rsi + 14]
	movd	xmm5, ecx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3]
	pand	xmm5, xmm3
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	cmp	eax, 16
	je	.LBB58_15
# %bb.12:
	movzx	ecx, word ptr [rsi + 16]
	movd	xmm4, ecx
	movzx	ecx, word ptr [rsi + 18]
	movd	xmm5, ecx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3]
	pand	xmm5, xmm3
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	cmp	eax, 20
	je	.LBB58_15
# %bb.13:
	movzx	ecx, word ptr [rsi + 20]
	movd	xmm4, ecx
	movzx	ecx, word ptr [rsi + 22]
	movd	xmm5, ecx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm5, xmm5, 212                 # xmm5 = xmm5[0,1,1,3]
	pand	xmm5, xmm3
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	cmp	eax, 24
	je	.LBB58_15
# %bb.14:
	movzx	ecx, word ptr [rsi + 24]
	movd	xmm4, ecx
	movzx	ecx, word ptr [rsi + 26]
	movd	xmm5, ecx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm2, xmm5, 212                 # xmm2 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm2, xmm2, 212                 # xmm2 = xmm2[0,1,1,3]
	pand	xmm2, xmm3
	paddq	xmm0, xmm4
	paddq	xmm1, xmm2
.LBB58_15:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	paddq	xmm1, xmm0
	movq	r12, xmm1
.LBB58_16:
	cmp	r15, rax
	je	.LBB58_34
.LBB58_17:
	xor	ecx, ecx
	cmp	byte ptr [rsi + rax], -64
	setge	cl
	add	r12, rcx
	inc	rax
	jmp	.LBB58_16
.LBB58_34:
	movzx	eax, word ptr [rdi + 20]
	cmp	r12, rax
	jae	.LBB58_50
# %bb.35:
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	edx, eax
	sub	edx, r12d
	mov	eax, ebp
	shr	eax, 29
	and	eax, 3
	lea	rcx, [rip + .LJTI58_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	mov	qword ptr [rsp + 32], rsi       # 8-byte Spill
	mov	dword ptr [rsp + 12], edx       # 4-byte Spill
	jmp	rax
.LBB58_36:
	xor	eax, eax
	jmp	.LBB58_39
.LBB58_50:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rcx + 24]
	mov	rdi, rax
	mov	rdx, r15
	add	rsp, 40
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
	jmp	rcx                             # TAILCALL
.LBB58_37:
	.cfi_def_cfa_offset 96
	mov	eax, edx
	jmp	.LBB58_39
.LBB58_38:
	movzx	eax, dx
	shr	eax
.LBB58_39:
	and	ebp, 2097151
	mov	r13, qword ptr [rdi]
	mov	r14, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	lea	ebx, [rax + 1]
	.p2align	4
.LBB58_40:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, r13
	dec	bx
	je	.LBB58_43
# %bb.41:                               #   in Loop: Header=BB58_40 Depth=1
	mov	esi, ebp
	call	qword ptr [r14 + 32]
	test	al, al
	je	.LBB58_40
# %bb.42:
	mov	al, 1
	jmp	.LBB58_49
.LBB58_43:
	mov	rsi, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rdx, r15
	call	qword ptr [r14 + 24]
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB58_49
# %bb.44:
	mov	ebx, dword ptr [rsp + 12]       # 4-byte Reload
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	sub	ebx, eax
	add	eax, r12d
	mov	r12, rax
	sub	r12d, dword ptr [rsp + 16]      # 4-byte Folded Reload
	mov	r15w, -1
	.p2align	4
.LBB58_45:                              # =>This Inner Loop Header: Depth=1
	lea	eax, [r12 + r15]
	cmp	ax, -1
	je	.LBB58_46
# %bb.47:                               #   in Loop: Header=BB58_45 Depth=1
	mov	rdi, r13
	mov	esi, ebp
	call	qword ptr [r14 + 32]
	inc	r15d
	test	al, al
	je	.LBB58_45
	jmp	.LBB58_48
.LBB58_46:
	mov	r15d, ebx
.LBB58_48:
	cmp	r15w, bx
	setb	al
.LBB58_49:
	add	rsp, 40
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
.Lfunc_end58:
	.size	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad, .Lfunc_end58-_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	.cfi_endproc
	.section	.rodata._RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad,"a",@progbits
	.p2align	2, 0x0
.LJTI58_0:
	.long	.LBB58_36-.LJTI58_0
	.long	.LBB58_37-.LJTI58_0
	.long	.LBB58_38-.LJTI58_0
	.long	.LBB58_36-.LJTI58_0
                                        # -- End function
