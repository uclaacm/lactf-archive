	.section	.text.unlikely._RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	.type	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path,@function
_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path: # @_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	.cfi_startproc
# %bb.0:
	cmp	qword ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF], 0
	sete	al
	ret
.Lfunc_end317:
	.size	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path, .Lfunc_end317-_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	.cfi_endproc
                                        # -- End function
