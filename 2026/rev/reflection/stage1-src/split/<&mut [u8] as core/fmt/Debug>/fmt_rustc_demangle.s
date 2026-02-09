	.section	.text._RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	.type	_RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle,@function
_RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle: # @_RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
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
	sub	rsp, 56
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	r14, qword ptr [rdi]
	mov	rbp, qword ptr [rdi + 8]
	mov	r15, qword ptr [rsi]
	mov	r13, qword ptr [rsi + 8]
	mov	r12, qword ptr [r13 + 24]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.49]
	mov	edx, 1
	mov	rdi, r15
	call	r12
	mov	ecx, eax
	mov	al, 1
	test	rbp, rbp
	je	.LBB110_22
# %bb.1:
	test	cl, cl
	jne	.LBB110_8
# %bb.2:
	test	byte ptr [rbx + 18], -128
	jne	.LBB110_3
# %bb.7:
	mov	rdi, r14
	mov	rsi, rbx
	call	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	cmp	rbp, 1
	je	.LBB110_9
	jmp	.LBB110_10
.LBB110_22:
	test	cl, cl
	je	.LBB110_23
	jmp	.LBB110_24
.LBB110_3:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.359]
	mov	edx, 1
	mov	rdi, r15
	call	r12
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB110_8
# %bb.4:
	mov	byte ptr [rsp + 7], 1
	mov	qword ptr [rsp + 32], r15
	mov	qword ptr [rsp + 40], r13
	lea	rax, [rsp + 7]
	mov	qword ptr [rsp + 48], rax
	mov	rax, qword ptr [rbx + 16]
	mov	qword ptr [rsp + 24], rax
	lea	rax, [rsp + 32]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.113]
	mov	qword ptr [rsp + 16], rax
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	test	al, al
	je	.LBB110_5
# %bb.6:
	mov	al, 1
.LBB110_8:
	cmp	rbp, 1
	jne	.LBB110_10
.LBB110_9:
	mov	ecx, eax
.LBB110_20:
	mov	al, 1
	test	cl, cl
	jne	.LBB110_24
# %bb.21:
	mov	r15, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	r12, qword ptr [rax + 24]
.LBB110_23:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.50]
	mov	edx, 1
	mov	rdi, r15
	call	r12
.LBB110_24:
	add	rsp, 56
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
.LBB110_5:
	.cfi_def_cfa_offset 112
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 16]
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.42]
	mov	edx, 2
	call	qword ptr [rax + 24]
	cmp	rbp, 1
	je	.LBB110_9
.LBB110_10:
	inc	r14
	dec	rbp
	lea	r15, [rsp + 32]
	lea	r13, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.113]
	lea	r12, [rsp + 8]
	jmp	.LBB110_11
.LBB110_14:                             #   in Loop: Header=BB110_11 Depth=1
	mov	cl, 1
	.p2align	4
.LBB110_19:                             #   in Loop: Header=BB110_11 Depth=1
	inc	r14
	mov	eax, ecx
	dec	rbp
	je	.LBB110_20
.LBB110_11:                             # =>This Inner Loop Header: Depth=1
	mov	cl, 1
	test	al, 1
	jne	.LBB110_19
# %bb.12:                               #   in Loop: Header=BB110_11 Depth=1
	test	byte ptr [rbx + 18], -128
	jne	.LBB110_13
# %bb.15:                               #   in Loop: Header=BB110_11 Depth=1
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	edx, 2
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	call	qword ptr [rax + 24]
	mov	cl, 1
	test	al, al
	jne	.LBB110_19
# %bb.16:                               #   in Loop: Header=BB110_11 Depth=1
	mov	rdi, r14
	mov	rsi, rbx
	call	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	jmp	.LBB110_18
	.p2align	4
.LBB110_13:                             #   in Loop: Header=BB110_11 Depth=1
	mov	byte ptr [rsp + 7], 1
	movups	xmm0, xmmword ptr [rbx]
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	rax, [rsp + 7]
	mov	qword ptr [rsp + 48], rax
	mov	rax, qword ptr [rbx + 16]
	mov	qword ptr [rsp + 24], rax
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 16], r13
	mov	rdi, r14
	mov	rsi, r12
	call	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRhNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	test	al, al
	jne	.LBB110_14
# %bb.17:                               #   in Loop: Header=BB110_11 Depth=1
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 16]
	mov	edx, 2
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.42]
	call	qword ptr [rax + 24]
.LBB110_18:                             #   in Loop: Header=BB110_11 Depth=1
	mov	ecx, eax
	jmp	.LBB110_19
.Lfunc_end110:
	.size	_RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle, .Lfunc_end110-_RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle
	.cfi_endproc
                                        # -- End function
