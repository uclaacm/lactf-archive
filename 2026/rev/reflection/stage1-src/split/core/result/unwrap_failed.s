	.section	.text.unlikely._RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
	.type	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed,@function
_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed: # @_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
	.cfi_startproc
# %bb.0:
	sub	rsp, 72
	.cfi_def_cfa_offset 80
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 16], rsi
	mov	qword ptr [rsp + 24], rdx
	mov	qword ptr [rsp + 32], rcx
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 40], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rsp + 24]
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rip + _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_]
	mov	qword ptr [rsp + 64], rax
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.140]
	lea	rsi, [rsp + 40]
	mov	rdx, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end56:
	.size	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed, .Lfunc_end56-_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
	.cfi_endproc
                                        # -- End function
