	.section	.text._RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std
	.type	_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std,@function
_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std: # @_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	sub	rsp, 72
	.cfi_def_cfa_offset 80
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 8]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rsp + 56], xmm0
	lea	rcx, [rax + 16]
	add	rax, 20
	lea	rdx, [rsp + 56]
	mov	qword ptr [rsp + 8], rdx
	lea	rdx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 16], rdx
	mov	qword ptr [rsp + 24], rcx
	lea	rcx, [rip + _RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt]
	mov	qword ptr [rsp + 32], rcx
	mov	qword ptr [rsp + 40], rax
	mov	qword ptr [rsp + 48], rcx
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.692]
	lea	rcx, [rsp + 8]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	add	rsp, 72
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end326:
	.size	_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std, .Lfunc_end326-_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
