	.section	.text._RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt
	.type	_RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt,@function
_RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt: # @_RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	movzx	eax, byte ptr [rdi]
	mov	edi, 3
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.368]
	.p2align	4
.LBB291_1:                              # =>This Inner Loop Header: Depth=1
	mov	rdx, rdi
	movzx	r8d, al
	shr	al, 4
	mov	edi, r8d
	and	edi, 15
	movzx	edi, byte ptr [rdi + rcx]
	mov	byte ptr [rsp + rdx + 4], dil
	lea	rdi, [rdx - 1]
	cmp	r8b, 15
	ja	.LBB291_1
# %bb.2:
	add	rdx, -2
	lea	r8, [rsp + rdx]
	add	r8, 6
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
.Lfunc_end291:
	.size	_RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt, .Lfunc_end291-_RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt
	.cfi_endproc
                                        # -- End function
