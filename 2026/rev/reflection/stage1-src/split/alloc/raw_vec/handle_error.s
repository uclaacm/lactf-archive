	.section	.text.unlikely._RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error,"ax",@progbits
	.type	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error,@function # -- Begin function _RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error: # @_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	test	rdi, rdi
	jne	.LBB23_1
# %bb.2:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB23_1:
	mov	rdi, rsi
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Lfunc_end23:
	.size	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error, .Lfunc_end23-_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
	.cfi_endproc
                                        # -- End function
