	.section	.text.unlikely._RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime
	.type	_RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime,@function
_RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime: # @_RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime
	.cfi_startproc
# %bb.0:
	sub	rsp, 56
	.cfi_def_cfa_offset 64
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 16], rsi
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 24], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 32], rax
	lea	rcx, [rsp + 16]
	mov	qword ptr [rsp + 40], rcx
	mov	qword ptr [rsp + 48], rax
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.292]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.13]
	lea	rsi, [rsp + 24]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end256:
	.size	_RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime, .Lfunc_end256-_RNvNvNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail8do_panic7runtime
	.cfi_endproc
                                        # -- End function
