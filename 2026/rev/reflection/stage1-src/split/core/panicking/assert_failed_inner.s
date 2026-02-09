	.section	.text.unlikely._RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner,"ax",@progbits
	.type	_RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner,@function # -- Begin function _RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner
_RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner: # @_RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner
	.cfi_startproc
# %bb.0:
	sub	rsp, 104
	.cfi_def_cfa_offset 112
	lea	rax, [rsp + 8]
	mov	qword ptr [rax], rdi
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.63]
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rsp + 24]
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rcx
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.146]
	lea	r8, [rsp + 40]
	mov	qword ptr [r8], rcx
	mov	qword ptr [r8 + 8], 2
	lea	rsi, [rsp + 56]
	mov	qword ptr [rsi], r8
	lea	rcx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 16], rax
	lea	rax, [rip + _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_]
	mov	qword ptr [rsi + 24], rax
	mov	qword ptr [rsi + 32], rdi
	mov	qword ptr [rsi + 40], rax
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.149]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end385:
	.size	_RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner, .Lfunc_end385-_RNvNtCsfQL5qMWGko6_4core9panicking19assert_failed_inner
	.cfi_endproc
                                        # -- End function
