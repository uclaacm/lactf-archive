	.section	.text._RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_
	.type	_RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_,@function
_RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_: # @_RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, qword ptr [rdi]
	mov	r14, qword ptr [rdi + 8]
	mov	qword ptr [rdi], 0
	test	rbx, rbx
	je	.LBB351_3
# %bb.1:
	mov	edi, 16
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB351_4
# %bb.2:
	mov	qword ptr [rax], rbx
	mov	qword ptr [rax + 8], r14
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.581]
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB351_4:
	.cfi_def_cfa_offset 32
	mov	edi, 16
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB351_3:
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.Lfunc_end351:
	.size	_RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_, .Lfunc_end351-_RNvXNvNtCs3bNtqN8jaZB_3std9panicking11begin_panicINtB2_7PayloadReENtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_boxB6_
	.cfi_endproc
                                        # -- End function
