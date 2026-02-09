	.section	.text.unlikely._RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
	.type	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt,@function
_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt: # @_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rax, rsp
	mov	qword ptr [rsp + 16], rax
	mov	qword ptr [rsp + 24], rdx
	mov	word ptr [rsp + 32], 1
	lea	rdi, [rsp + 16]
	call	_RNvCsL6e0J8m5bd_7___rustc17rust_begin_unwind
.Lfunc_end26:
	.size	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt, .Lfunc_end26-_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
	.cfi_endproc
                                        # -- End function
