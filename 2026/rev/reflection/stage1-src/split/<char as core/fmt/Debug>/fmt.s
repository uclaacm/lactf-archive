	.section	.text._RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt
	.type	_RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt,@function
_RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt: # @_RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 24
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	r12, qword ptr [rsi + 8]
	mov	r15, qword ptr [r12 + 32]
	mov	rdi, rbx
	mov	esi, 39
	call	r15
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB78_6
# %bb.1:
	mov	esi, dword ptr [r14]
	lea	rdi, [rsp + 8]
	mov	edx, 257
	call	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext
	movzx	edx, byte ptr [rsp + 21]
	cmp	rdx, 129
	jb	.LBB78_3
# %bb.2:
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbx
	call	r15
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	je	.LBB78_5
	jmp	.LBB78_6
.LBB78_3:
	movzx	eax, byte ptr [rsp + 20]
	sub	rdx, rax
	lea	rsi, [rsp + rax]
	add	rsi, 8
	mov	rdi, rbx
	call	qword ptr [r12 + 24]
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB78_6
.LBB78_5:
	mov	rdi, rbx
	mov	esi, 39
	call	r15
.LBB78_6:
	add	rsp, 24
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end78:
	.size	_RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt, .Lfunc_end78-_RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt
	.cfi_endproc
                                        # -- End function
