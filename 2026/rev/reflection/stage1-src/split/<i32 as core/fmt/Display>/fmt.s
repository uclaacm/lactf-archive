	.section	.text._RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt
	.type	_RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt,@function
_RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt: # @_RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	mov	ecx, esi
	neg	ecx
	cmovs	ecx, esi
	cmp	ecx, 999
	jbe	.LBB384_1
# %bb.7:
	mov	edi, ecx
	mov	r8d, 3518437209
	imul	r8, rdi
	shr	r8, 45
	imul	edx, r8d, 10000
	mov	r10d, ecx
	sub	r10d, edx
	imul	edx, r10d, 5243
	shr	edx, 19
	imul	r9d, edx, 100
	sub	r10d, r9d
	lea	r9, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	r10d, r10w
	movzx	edx, word ptr [r9 + 2*rdx]
	movd	xmm0, edx
	pinsrw	xmm0, word ptr [r9 + 2*r10], 1
	movd	dword ptr [rsp + 20], xmm0
	cmp	ecx, 9999999
	jbe	.LBB384_8
# %bb.10:
	lea	rdx, [rsp + 16]
	mov	ecx, r8d
	imul	rcx, rcx, 429497
	shr	rcx, 32
	imul	ecx, ecx, 10000
	sub	r8d, ecx
	imul	rcx, rdi, 1441151881
	shr	rcx, 57
	imul	edi, r8d, 5243
	shr	edi, 19
	imul	r10d, edi, 100
	sub	r8d, r10d
	movzx	r8d, r8w
	movzx	edi, word ptr [r9 + 2*rdi]
	movd	xmm0, edi
	pinsrw	xmm0, word ptr [r9 + 2*r8], 1
	movd	dword ptr [rsp + 16], xmm0
	mov	edi, 2
	cmp	ecx, 9
	ja	.LBB384_9
	jmp	.LBB384_3
.LBB384_1:
	lea	rdx, [rsp + 24]
	mov	edi, 10
	cmp	ecx, 9
	jbe	.LBB384_3
.LBB384_9:
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
.LBB384_3:
	test	esi, esi
	je	.LBB384_5
# %bb.4:
	test	ecx, ecx
	je	.LBB384_6
.LBB384_5:
	and	ecx, 15
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	ecx, byte ptr [rdx + 2*rcx + 1]
	mov	byte ptr [rsp + rdi + 13], cl
	dec	rdi
.LBB384_6:
	mov	r9d, 10
	sub	r9, rdi
	lea	r8, [rsp + rdi]
	add	r8, 14
	not	esi
	shr	esi, 31
	mov	edx, 1
	mov	rdi, rax
	xor	ecx, ecx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.LBB384_8:
	.cfi_def_cfa_offset 32
	lea	rdx, [rsp + 20]
	mov	edi, 6
	mov	ecx, r8d
	cmp	ecx, 9
	ja	.LBB384_9
	jmp	.LBB384_3
.Lfunc_end384:
	.size	_RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt, .Lfunc_end384-_RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt
	.cfi_endproc
                                        # -- End function
