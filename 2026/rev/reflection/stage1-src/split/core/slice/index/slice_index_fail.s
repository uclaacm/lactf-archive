	.section	.text.unlikely._RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
	.type	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail,@function
_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail: # @_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	cmp	rdi, rdx
	jbe	.LBB59_1
# %bb.4:
	mov	rsi, rdx
	mov	rdx, rcx
	call	_RNvNvNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail8do_panic7runtime
.LBB59_1:
	cmp	rsi, rdx
	ja	.LBB59_5
# %bb.2:
	cmp	rdi, rsi
	jbe	.LBB59_5
# %bb.3:
	mov	rdx, rcx
	call	_RNvNvNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fails0_8do_panic7runtime
.LBB59_5:
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, rcx
	call	_RNvNvNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fails1_8do_panic7runtime
.Lfunc_end59:
	.size	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail, .Lfunc_end59-_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
	.cfi_endproc
                                        # -- End function
