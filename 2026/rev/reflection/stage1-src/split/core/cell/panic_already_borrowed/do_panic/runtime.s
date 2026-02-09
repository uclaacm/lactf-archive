	.section	.text.unlikely._RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime
	.type	_RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime,@function
_RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime: # @_RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	lea	rax, [rsp + 7]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rip + _RNvXso_NtCsfQL5qMWGko6_4core4cellNtB5_14BorrowMutErrorNtNtB7_3fmt7Display3fmt]
	mov	qword ptr [rsp + 16], rax
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.412]
	lea	rsi, [rsp + 8]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end376:
	.size	_RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime, .Lfunc_end376-_RNvNvNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed8do_panic7runtime
	.cfi_endproc
                                        # -- End function
