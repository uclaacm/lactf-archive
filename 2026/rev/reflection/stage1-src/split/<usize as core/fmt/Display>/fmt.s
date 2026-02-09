	.section	.text._RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt
	.type	_RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt,@function
_RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt: # @_RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	rcx, qword ptr [rdi]
	cmp	rcx, 999
	jbe	.LBB34_1
# %bb.7:
	movabs	rdx, 3777893186295716171
	mov	rax, rcx
	mul	rdx
	mov	rdi, rdx
	shr	rdi, 11
	imul	eax, edi, 10000
	mov	edx, ecx
	sub	edx, eax
	imul	eax, edx, 5243
	shr	eax, 19
	imul	r8d, eax, 100
	sub	edx, r8d
	lea	r9, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	edx, dx
	movzx	eax, word ptr [r9 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r9 + 2*rdx], 1
	movd	dword ptr [rsp + 20], xmm0
	cmp	rcx, 9999999
	jbe	.LBB34_8
# %bb.10:
	movabs	rdx, -6067343680855748867
	mov	rax, rcx
	mul	rdx
	mov	r8, rdx
	shr	r8, 26
	movabs	rdx, 3689348814741911
	mov	rax, rdi
	mul	rdx
	shr	edx
	imul	eax, edx, 10000
	sub	edi, eax
	imul	eax, edi, 5243
	shr	eax, 19
	imul	edx, eax, 100
	sub	edi, edx
	movzx	edx, di
	movzx	eax, word ptr [r9 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r9 + 2*rdx], 1
	movd	dword ptr [rsp + 16], xmm0
	mov	rax, rcx
	shr	rax, 11
	cmp	rax, 48828125
	jb	.LBB34_11
# %bb.12:
	movabs	rdx, 2535301200456458803
	mov	rax, rcx
	mul	rdx
	mov	rdi, rdx
	movabs	rdx, 1844674407370956
	mov	rax, r8
	mul	rdx
	imul	eax, edx, 10000
	sub	r8d, eax
	imul	eax, r8d, 5243
	shr	eax, 19
	imul	edx, eax, 100
	sub	r8d, edx
	movzx	edx, r8w
	movzx	eax, word ptr [r9 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r9 + 2*rdx], 1
	shr	rdi, 37
	movd	dword ptr [rsp + 12], xmm0
	movabs	rax, 1000000000000000
	cmp	rcx, rax
	jb	.LBB34_13
# %bb.14:
	movabs	rdx, 4153837486827862103
	mov	rax, rcx
	mul	rdx
	imul	rax, rdi, 27487791
	shr	rax, 38
	imul	eax, eax, 10000
	sub	edi, eax
	imul	eax, edi, 5243
	shr	eax, 19
	imul	r8d, eax, 100
	sub	edi, r8d
	movzx	edi, di
	movzx	eax, word ptr [r9 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r9 + 2*rdi], 1
	shr	rdx, 51
	movd	dword ptr [rsp + 8], xmm0
	movabs	rax, -8446744073709551616
	cmp	rcx, rax
	jb	.LBB34_15
# %bb.16:
	imul	eax, edx, 1311
	shr	eax, 17
	imul	edi, eax, 100
	sub	edx, edi
	movzx	edx, dx
	movzx	eax, word ptr [r9 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r9 + 2*rdx], 1
	movd	dword ptr [rsp + 4], xmm0
	xor	edi, edi
	xor	eax, eax
	jmp	.LBB34_3
.LBB34_1:
	lea	r9, [rsp + 24]
	mov	eax, 20
	mov	rdi, rcx
	cmp	rdi, 9
	ja	.LBB34_9
	jmp	.LBB34_3
.LBB34_8:
	lea	r9, [rsp + 20]
	mov	eax, 16
	cmp	rdi, 9
	ja	.LBB34_9
	jmp	.LBB34_3
.LBB34_11:
	lea	r9, [rsp + 16]
	mov	eax, 12
	mov	rdi, r8
	cmp	rdi, 9
	ja	.LBB34_9
	jmp	.LBB34_3
.LBB34_13:
	lea	r9, [rsp + 12]
	mov	eax, 8
	cmp	rdi, 9
	jbe	.LBB34_3
.LBB34_9:
	mov	edx, edi
	shr	edx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	edx, 17
	imul	r8d, edx, 100
	sub	edi, r8d
	movzx	edi, di
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	r10d, byte ptr [r8 + 2*rdi]
	mov	byte ptr [rsp + rax + 2], r10b
	add	rax, -2
	movzx	edi, byte ptr [r8 + 2*rdi + 1]
	mov	byte ptr [r9 - 1], dil
	mov	rdi, rdx
.LBB34_3:
	test	rcx, rcx
	je	.LBB34_5
# %bb.4:
	test	rdi, rdi
	je	.LBB34_6
.LBB34_5:
	and	edi, 15
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	ecx, byte ptr [rcx + 2*rdi + 1]
	mov	byte ptr [rsp + rax + 3], cl
	dec	rax
.LBB34_6:
	mov	r9d, 20
	sub	r9, rax
	lea	r8, [rsp + rax]
	add	r8, 4
	mov	edx, 1
	mov	rdi, rsi
	mov	esi, 1
	xor	ecx, ecx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.LBB34_15:
	.cfi_def_cfa_offset 32
	lea	r9, [rsp + 8]
	mov	eax, 4
	mov	rdi, rdx
	cmp	rdi, 9
	ja	.LBB34_9
	jmp	.LBB34_3
.Lfunc_end34:
	.size	_RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt, .Lfunc_end34-_RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt
	.cfi_endproc
                                        # -- End function
