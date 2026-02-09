	.section	.text._RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
	.type	_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix,@function
_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix: # @_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
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
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, r8
	mov	r14, rcx
	mov	r15, rsi
	cmp	edx, 1114112
	je	.LBB54_2
# %bb.1:
	mov	r12, rdi
	mov	esi, edx
	call	qword ptr [r15 + 32]
	mov	rdi, r12
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB54_4
.LBB54_2:
	test	r14, r14
	je	.LBB54_3
# %bb.5:
	mov	rax, qword ptr [r15 + 24]
	mov	rsi, r14
	mov	rdx, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	rax                             # TAILCALL
.LBB54_3:
	.cfi_def_cfa_offset 48
	xor	eax, eax
.LBB54_4:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 8
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
.Lfunc_end54:
	.size	_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix, .Lfunc_end54-_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
	.cfi_endproc
                                        # -- End function
