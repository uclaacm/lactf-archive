	.section	.text.unlikely._RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check,"ax",@progbits
	.type	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check,@function # -- Begin function _RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check: # @_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
	.cfi_startproc
# %bb.0:
	sub	rsp, 56
	.cfi_def_cfa_offset 64
	lea	rax, [rsp + 8]
	mov	qword ptr [rax], rdi
	lea	rcx, [rsp + 16]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsp + 24]
	mov	qword ptr [rsi], rcx
	lea	rcx, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 16], rax
	mov	qword ptr [rsi + 24], rcx
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.145]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end118:
	.size	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check, .Lfunc_end118-_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
	.cfi_endproc
                                        # -- End function
