	.section	.text._RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt
	.type	_RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt,@function
_RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt: # @_RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	ecx, 17
	lea	rax, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	mov	r8, rdi
	.p2align	4
.LBB88_1:                               # =>This Inner Loop Header: Depth=1
	mov	rdx, rcx
	mov	ecx, edi
	and	ecx, 15
	shr	r8, 4
	movzx	ecx, byte ptr [rcx + rax]
	mov	byte ptr [rsp + rdx + 6], cl
	lea	rcx, [rdx - 1]
	cmp	rdi, 15
	mov	rdi, r8
	ja	.LBB88_1
# %bb.2:
	add	rdx, -2
	lea	r8, [rsp + rdx]
	add	r8, 8
	mov	r9d, 17
	sub	r9, rcx
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.77]
	mov	ecx, 2
	mov	rdi, rsi
	mov	esi, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end88:
	.size	_RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt, .Lfunc_end88-_RNvXsC_NtNtCsfQL5qMWGko6_4core3fmt3numyNtB7_8LowerHex3fmt
	.cfi_endproc
                                        # -- End function
