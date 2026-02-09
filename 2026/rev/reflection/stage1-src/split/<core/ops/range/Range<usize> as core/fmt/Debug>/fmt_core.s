	.section	.text._RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_
	.type	_RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_,@function
_RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_: # @_RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rdi]
	mov	eax, dword ptr [rsi + 16]
	test	eax, 33554432
	jne	.LBB79_9
# %bb.1:
	test	eax, 67108864
	jne	.LBB79_21
# %bb.2:
	cmp	rcx, 999
	jbe	.LBB79_3
# %bb.11:
	movabs	rdx, 3777893186295716171
	mov	rax, rcx
	mul	rdx
	mov	rsi, rdx
	shr	rsi, 11
	imul	eax, esi, 10000
	mov	edx, ecx
	sub	edx, eax
	imul	eax, edx, 5243
	shr	eax, 19
	imul	edi, eax, 100
	sub	edx, edi
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	edx, dx
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	movd	dword ptr [rsp + 20], xmm0
	cmp	rcx, 9999999
	jbe	.LBB79_12
# %bb.14:
	movabs	rdx, -6067343680855748867
	mov	rax, rcx
	mul	rdx
	mov	rdi, rdx
	shr	rdi, 26
	movabs	rdx, 3689348814741911
	mov	rax, rsi
	mul	rdx
	shr	edx
	imul	eax, edx, 10000
	sub	esi, eax
	imul	eax, esi, 5243
	shr	eax, 19
	imul	edx, eax, 100
	sub	esi, edx
	movzx	edx, si
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	movd	dword ptr [rsp + 16], xmm0
	mov	rax, rcx
	shr	rax, 11
	cmp	rax, 48828125
	jb	.LBB79_15
# %bb.16:
	movabs	rdx, 2535301200456458803
	mov	rax, rcx
	mul	rdx
	mov	rsi, rdx
	movabs	rdx, 1844674407370956
	mov	rax, rdi
	mul	rdx
	imul	eax, edx, 10000
	sub	edi, eax
	imul	eax, edi, 5243
	shr	eax, 19
	imul	edx, eax, 100
	sub	edi, edx
	movzx	edx, di
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	shr	rsi, 37
	movd	dword ptr [rsp + 12], xmm0
	movabs	rax, 999999999999999
	cmp	rcx, rax
	jbe	.LBB79_17
# %bb.18:
	movabs	rdx, 4153837486827862103
	mov	rax, rcx
	mul	rdx
	imul	rax, rsi, 27487791
	shr	rax, 38
	imul	eax, eax, 10000
	sub	esi, eax
	imul	eax, esi, 5243
	shr	eax, 19
	imul	edi, eax, 100
	sub	esi, edi
	movzx	esi, si
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rsi], 1
	shr	rdx, 51
	movd	dword ptr [rsp + 8], xmm0
	movabs	rax, -8446744073709551617
	cmp	rcx, rax
	jbe	.LBB79_19
# %bb.20:
	imul	eax, edx, 1311
	shr	eax, 17
	imul	esi, eax, 100
	sub	edx, esi
	movzx	edx, dx
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	movd	dword ptr [rsp + 4], xmm0
	xor	esi, esi
	xor	eax, eax
	jmp	.LBB79_5
.LBB79_9:
	mov	edx, 17
	lea	rax, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	mov	rdi, rcx
	.p2align	4
.LBB79_10:                              # =>This Inner Loop Header: Depth=1
	mov	rsi, rdx
	mov	edx, ecx
	and	edx, 15
	shr	rdi, 4
	movzx	edx, byte ptr [rdx + rax]
	mov	byte ptr [rsp + rsi + 2], dl
	lea	rdx, [rsi - 1]
	cmp	rcx, 16
	mov	rcx, rdi
	jae	.LBB79_10
	jmp	.LBB79_23
.LBB79_21:
	mov	edx, 17
	lea	rax, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.368]
	mov	rdi, rcx
	.p2align	4
.LBB79_22:                              # =>This Inner Loop Header: Depth=1
	mov	rsi, rdx
	mov	edx, ecx
	and	edx, 15
	shr	rdi, 4
	movzx	edx, byte ptr [rdx + rax]
	mov	byte ptr [rsp + rsi + 2], dl
	lea	rdx, [rsi - 1]
	cmp	rcx, 15
	mov	rcx, rdi
	ja	.LBB79_22
.LBB79_23:
	add	rsi, -2
	lea	r8, [rsp + rsi]
	add	r8, 4
	mov	r9d, 17
	sub	r9, rdx
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.77]
	mov	ecx, 2
	mov	rdi, rbx
	mov	esi, 1
	jmp	.LBB79_24
.LBB79_3:
	lea	r8, [rsp + 24]
	mov	eax, 20
	mov	rsi, rcx
	jmp	.LBB79_4
.LBB79_12:
	lea	r8, [rsp + 20]
	mov	eax, 16
	jmp	.LBB79_4
.LBB79_15:
	lea	r8, [rsp + 16]
	mov	eax, 12
	mov	rsi, rdi
	jmp	.LBB79_4
.LBB79_17:
	lea	r8, [rsp + 12]
	mov	eax, 8
	jmp	.LBB79_4
.LBB79_19:
	lea	r8, [rsp + 8]
	mov	eax, 4
	mov	rsi, rdx
.LBB79_4:
	cmp	rsi, 9
	jbe	.LBB79_5
# %bb.13:
	mov	edx, esi
	shr	edx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	edx, 17
	imul	edi, edx, 100
	sub	esi, edi
	movzx	esi, si
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	r9d, byte ptr [rdi + 2*rsi]
	mov	byte ptr [rsp + rax + 2], r9b
	add	rax, -2
	movzx	esi, byte ptr [rdi + 2*rsi + 1]
	mov	byte ptr [r8 - 1], sil
	mov	rsi, rdx
.LBB79_5:
	test	rcx, rcx
	je	.LBB79_7
# %bb.6:
	test	rsi, rsi
	je	.LBB79_8
.LBB79_7:
	and	esi, 15
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	ecx, byte ptr [rcx + 2*rsi + 1]
	mov	byte ptr [rsp + rax + 3], cl
	dec	rax
.LBB79_8:
	mov	r9d, 20
	sub	r9, rax
	lea	r8, [rsp + rax]
	add	r8, 4
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, 1
	xor	ecx, ecx
.LBB79_24:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB79_51
# %bb.25:
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.307]
	mov	edx, 2
	call	qword ptr [rax + 24]
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB79_51
# %bb.26:
	mov	rcx, qword ptr [r14 + 8]
	mov	eax, dword ptr [rbx + 16]
	test	eax, 33554432
	jne	.LBB79_35
# %bb.27:
	test	eax, 67108864
	jne	.LBB79_47
# %bb.28:
	cmp	rcx, 999
	jbe	.LBB79_29
# %bb.37:
	movabs	rdx, 3777893186295716171
	mov	rax, rcx
	mul	rdx
	mov	rsi, rdx
	shr	rsi, 11
	imul	eax, esi, 10000
	mov	edx, ecx
	sub	edx, eax
	imul	eax, edx, 5243
	shr	eax, 19
	imul	edi, eax, 100
	sub	edx, edi
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	edx, dx
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	movd	dword ptr [rsp + 20], xmm0
	cmp	rcx, 9999999
	jbe	.LBB79_38
# %bb.40:
	movabs	rdx, -6067343680855748867
	mov	rax, rcx
	mul	rdx
	mov	rdi, rdx
	shr	rdi, 26
	movabs	rdx, 3689348814741911
	mov	rax, rsi
	mul	rdx
	shr	edx
	imul	eax, edx, 10000
	sub	esi, eax
	imul	eax, esi, 5243
	shr	eax, 19
	imul	edx, eax, 100
	sub	esi, edx
	movzx	edx, si
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	movd	dword ptr [rsp + 16], xmm0
	mov	rax, rcx
	shr	rax, 11
	cmp	rax, 48828125
	jb	.LBB79_41
# %bb.42:
	movabs	rdx, 2535301200456458803
	mov	rax, rcx
	mul	rdx
	mov	rsi, rdx
	movabs	rdx, 1844674407370956
	mov	rax, rdi
	mul	rdx
	imul	eax, edx, 10000
	sub	edi, eax
	imul	eax, edi, 5243
	shr	eax, 19
	imul	edx, eax, 100
	sub	edi, edx
	movzx	edx, di
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	shr	rsi, 37
	movd	dword ptr [rsp + 12], xmm0
	movabs	rax, 999999999999999
	cmp	rcx, rax
	jbe	.LBB79_43
# %bb.44:
	movabs	rdx, 4153837486827862103
	mov	rax, rcx
	mul	rdx
	imul	rax, rsi, 27487791
	shr	rax, 38
	imul	eax, eax, 10000
	sub	esi, eax
	imul	eax, esi, 5243
	shr	eax, 19
	imul	edi, eax, 100
	sub	esi, edi
	movzx	esi, si
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rsi], 1
	shr	rdx, 51
	movd	dword ptr [rsp + 8], xmm0
	movabs	rax, -8446744073709551617
	cmp	rcx, rax
	jbe	.LBB79_45
# %bb.46:
	imul	eax, edx, 1311
	shr	eax, 17
	imul	esi, eax, 100
	sub	edx, esi
	movzx	edx, dx
	movzx	eax, word ptr [r8 + 2*rax]
	movd	xmm0, eax
	pinsrw	xmm0, word ptr [r8 + 2*rdx], 1
	movd	dword ptr [rsp + 4], xmm0
	xor	esi, esi
	xor	eax, eax
	jmp	.LBB79_31
.LBB79_35:
	mov	edx, 17
	lea	rax, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	mov	rdi, rcx
	.p2align	4
.LBB79_36:                              # =>This Inner Loop Header: Depth=1
	mov	rsi, rdx
	mov	edx, ecx
	and	edx, 15
	shr	rdi, 4
	movzx	edx, byte ptr [rdx + rax]
	mov	byte ptr [rsp + rsi + 2], dl
	lea	rdx, [rsi - 1]
	cmp	rcx, 15
	mov	rcx, rdi
	ja	.LBB79_36
	jmp	.LBB79_49
.LBB79_47:
	mov	edx, 17
	lea	rax, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.368]
	mov	rdi, rcx
	.p2align	4
.LBB79_48:                              # =>This Inner Loop Header: Depth=1
	mov	rsi, rdx
	mov	edx, ecx
	and	edx, 15
	shr	rdi, 4
	movzx	edx, byte ptr [rdx + rax]
	mov	byte ptr [rsp + rsi + 2], dl
	lea	rdx, [rsi - 1]
	cmp	rcx, 15
	mov	rcx, rdi
	ja	.LBB79_48
.LBB79_49:
	add	rsi, -2
	lea	r8, [rsp + rsi]
	add	r8, 4
	mov	r9d, 17
	sub	r9, rdx
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.77]
	mov	ecx, 2
	mov	rdi, rbx
	mov	esi, 1
	jmp	.LBB79_50
.LBB79_29:
	lea	r8, [rsp + 24]
	mov	eax, 20
	mov	rsi, rcx
	jmp	.LBB79_30
.LBB79_38:
	lea	r8, [rsp + 20]
	mov	eax, 16
	jmp	.LBB79_30
.LBB79_41:
	lea	r8, [rsp + 16]
	mov	eax, 12
	mov	rsi, rdi
	jmp	.LBB79_30
.LBB79_43:
	lea	r8, [rsp + 12]
	mov	eax, 8
	jmp	.LBB79_30
.LBB79_45:
	lea	r8, [rsp + 8]
	mov	eax, 4
	mov	rsi, rdx
.LBB79_30:
	cmp	rsi, 9
	jbe	.LBB79_31
# %bb.39:
	mov	edx, esi
	shr	edx, 2
	movzx	edx, dx
	imul	edx, edx, 5243
	shr	edx, 17
	imul	edi, edx, 100
	sub	esi, edi
	movzx	esi, si
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	r9d, byte ptr [rdi + 2*rsi]
	mov	byte ptr [rsp + rax + 2], r9b
	add	rax, -2
	movzx	esi, byte ptr [rdi + 2*rsi + 1]
	mov	byte ptr [r8 - 1], sil
	mov	rsi, rdx
.LBB79_31:
	test	rcx, rcx
	je	.LBB79_33
# %bb.32:
	test	rsi, rsi
	je	.LBB79_34
.LBB79_33:
	and	esi, 15
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	ecx, byte ptr [rcx + 2*rsi + 1]
	mov	byte ptr [rsp + rax + 3], cl
	dec	rax
.LBB79_34:
	mov	r9d, 20
	sub	r9, rax
	lea	r8, [rsp + rax]
	add	r8, 4
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, 1
	xor	ecx, ecx
.LBB79_50:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
.LBB79_51:
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end79:
	.size	_RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_, .Lfunc_end79-_RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_
	.cfi_endproc
                                        # -- End function
