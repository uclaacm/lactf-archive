	.section	.text._RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	.type	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle,@function
_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle: # @_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	eax, dword ptr [rsi + 16]
	test	eax, 33554432
	jne	.LBB113_7
# %bb.1:
	test	eax, 67108864
	jne	.LBB113_10
# %bb.2:
	movzx	ecx, byte ptr [rdi]
	mov	eax, 3
	mov	edx, ecx
	cmp	cl, 10
	jb	.LBB113_4
# %bb.3:
	movzx	eax, cl
	lea	edx, [rax + 4*rax]
	lea	edx, [rax + 8*rdx]
	shr	edx, 12
	imul	eax, edx, 100
	mov	edi, ecx
	sub	dil, al
	movzx	eax, dil
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	eax, word ptr [rdi + 2*rax]
	mov	word ptr [rsp + 4], ax
	mov	eax, 1
.LBB113_4:
	test	dl, dl
	sete	dil
	test	cl, cl
	setne	cl
	test	cl, dil
	jne	.LBB113_6
# %bb.5:
	movzx	ecx, dl
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.156]
	movzx	ecx, byte ptr [rdx + 2*rcx + 1]
	mov	byte ptr [rsp + rax + 2], cl
	dec	rax
.LBB113_6:
	mov	r9d, 3
	sub	r9, rax
	lea	r8, [rsp + rax]
	add	r8, 3
	mov	edx, 1
	mov	rdi, rsi
	mov	esi, 1
	xor	ecx, ecx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.LBB113_7:
	.cfi_def_cfa_offset 16
	movzx	eax, byte ptr [rdi]
	mov	edi, 3
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	.p2align	4
.LBB113_8:                              # =>This Inner Loop Header: Depth=1
	mov	rdx, rdi
	movzx	r8d, al
	shr	al, 4
	mov	edi, r8d
	and	edi, 15
	movzx	edi, byte ptr [rdi + rcx]
	mov	byte ptr [rsp + rdx - 1], dil
	lea	rdi, [rdx - 1]
	cmp	r8b, 15
	ja	.LBB113_8
# %bb.9:
	add	rdx, -2
	lea	r8, [rsp + rdx]
	inc	r8
	jmp	.LBB113_13
.LBB113_10:
	movzx	eax, byte ptr [rdi]
	mov	edi, 3
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.368]
	.p2align	4
.LBB113_11:                             # =>This Inner Loop Header: Depth=1
	mov	rdx, rdi
	movzx	r8d, al
	shr	al, 4
	mov	edi, r8d
	and	edi, 15
	movzx	edi, byte ptr [rdi + rcx]
	mov	byte ptr [rsp + rdx + 4], dil
	lea	rdi, [rdx - 1]
	cmp	r8b, 15
	ja	.LBB113_11
# %bb.12:
	add	rdx, -2
	lea	r8, [rsp + rdx]
	add	r8, 6
.LBB113_13:
	mov	r9d, 3
	sub	r9, rdi
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.77]
	mov	ecx, 2
	mov	rdi, rsi
	mov	esi, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end113:
	.size	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle, .Lfunc_end113-_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	.cfi_endproc
                                        # -- End function
