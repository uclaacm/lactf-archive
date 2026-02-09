	.section	.text._RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std
	.type	_RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std,@function
_RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std: # @_RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std
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
	mov	rax, qword ptr [rdi]
	mov	r14, qword ptr [rsi + 16]
	mov	ecx, r14d
	test	r14d, 8388608
	je	.LBB49_3
# %bb.1:
	test	r14d, 134217728
	jne	.LBB49_2
# %bb.6:
	or	ecx, 150994944
	mov	word ptr [rbx + 20], 18
	jmp	.LBB49_3
.LBB49_2:
	or	ecx, 16777216
.LBB49_3:
	or	ecx, 8388608
	mov	dword ptr [rbx + 16], ecx
	mov	edx, 17
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	mov	rdi, rax
	.p2align	4
.LBB49_4:                               # =>This Inner Loop Header: Depth=1
	mov	rsi, rdx
	mov	edx, eax
	and	edx, 15
	shr	rdi, 4
	movzx	edx, byte ptr [rdx + rcx]
	mov	byte ptr [rsp + rsi + 6], dl
	lea	rdx, [rsi - 1]
	cmp	rax, 16
	mov	rax, rdi
	jae	.LBB49_4
# %bb.5:
	add	rsi, -2
	lea	r8, [rsp + rsi]
	add	r8, 8
	mov	r9d, 17
	sub	r9, rdx
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.77]
	mov	ecx, 2
	mov	rdi, rbx
	mov	esi, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	mov	qword ptr [rbx + 16], r14
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end49:
	.size	_RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std, .Lfunc_end49-_RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
