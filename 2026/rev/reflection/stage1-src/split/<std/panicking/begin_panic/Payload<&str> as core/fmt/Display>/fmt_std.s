	.section	.text._RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_
	.type	_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_,@function
_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_: # @_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_
	.cfi_startproc
# %bb.0:
	mov	rax, rsi
	mov	rsi, qword ptr [rdi]
	test	rsi, rsi
	je	.LBB350_2
# %bb.1:
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 24]
	jmp	rax                             # TAILCALL
.LBB350_2:
	push	rax
	.cfi_def_cfa_offset 16
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.Lfunc_end350:
	.size	_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_, .Lfunc_end350-_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB4_7PayloadReENtNtCsfQL5qMWGko6_4core3fmt7Display3fmtB8_
	.cfi_endproc
                                        # -- End function
