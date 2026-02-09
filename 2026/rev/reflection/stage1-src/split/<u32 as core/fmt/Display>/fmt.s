	.section	.text._RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt
	.type	_RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt,@function
_RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt: # @_RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	eax, dword ptr [rdi]
	cmp	eax, 999
	jbe	.LBB52_1
# %bb.7:
	mov	edi, eax
	mov	ecx, 3518437209
	imul	rcx, rdi
	shr	rcx, 45
	imul	edx, ecx, 10000
	mov	r9d, eax
	sub	r9d, edx
	imul	edx, r9d, 5243
	shr	edx, 19
	imul	r8d, edx, 100
	sub	r9d, r8d
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	r9d, r9w
	movzx	edx, word ptr [r8 + 2*rdx]
	movd	xmm0, edx
	pinsrw	xmm0, word ptr [r8 + 2*r9], 1
	movd	dword ptr [rsp + 20], xmm0
	cmp	eax, 9999999
	jbe	.LBB52_8
# %bb.10:
	lea	rdx, [rsp + 16]
	mov	r9d, ecx
	imul	r9, r9, 429497
	shr	r9, 32
	imul	r9d, r9d, 10000
	sub	ecx, r9d
	imul	r9, rdi, 1441151881
	imul	edi, ecx, 5243
	shr	edi, 19
	imul	r10d, edi, 100
	sub	ecx, r10d
	movzx	ecx, cx
	movzx	edi, word ptr [r8 + 2*rdi]
	movd	xmm0, edi
	pinsrw	xmm0, word ptr [r8 + 2*rcx], 1
	shr	r9, 57
	movd	dword ptr [rsp + 16], xmm0
	mov	edi, 2
	mov	ecx, r9d
	cmp	ecx, 9
	ja	.LBB52_9
	jmp	.LBB52_3
.LBB52_1:
	lea	rdx, [rsp + 24]
	mov	edi, 10
	mov	ecx, eax
	cmp	ecx, 9
	jbe	.LBB52_3
.LBB52_9:
	movzx	r8d, cx
	shr	r8d, 2
	imul	r8d, r8d, 5243
	shr	r8d, 17
	imul	r9d, r8d, 100
	sub	ecx, r9d
	movzx	ecx, cx
	lea	r9, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	r10d, byte ptr [r9 + 2*rcx]
	mov	byte ptr [rsp + rdi + 12], r10b
	add	rdi, -2
	movzx	ecx, byte ptr [r9 + 2*rcx + 1]
	mov	byte ptr [rdx - 1], cl
	mov	ecx, r8d
.LBB52_3:
	test	eax, eax
	je	.LBB52_5
# %bb.4:
	test	ecx, ecx
	je	.LBB52_6
.LBB52_5:
	and	ecx, 15
	lea	rax, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	eax, byte ptr [rax + 2*rcx + 1]
	mov	byte ptr [rsp + rdi + 13], al
	dec	rdi
.LBB52_6:
	mov	r9d, 10
	sub	r9, rdi
	lea	r8, [rsp + rdi]
	add	r8, 14
	mov	edx, 1
	mov	rdi, rsi
	mov	esi, 1
	xor	ecx, ecx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.LBB52_8:
	.cfi_def_cfa_offset 32
	lea	rdx, [rsp + 20]
	mov	edi, 6
	cmp	ecx, 9
	ja	.LBB52_9
	jmp	.LBB52_3
.Lfunc_end52:
	.size	_RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt, .Lfunc_end52-_RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt
	.cfi_endproc
                                        # -- End function
