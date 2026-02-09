	.section	.text._RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box
	.type	_RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box,@function
_RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box: # @_RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box
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
	mov	edi, 16
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB338_2
# %bb.1:
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
.LBB338_2:
	.cfi_def_cfa_offset 32
	mov	edi, 16
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Lfunc_end338:
	.size	_RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box, .Lfunc_end338-_RNvXs1_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_16StaticStrPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box
	.cfi_endproc
                                        # -- End function
