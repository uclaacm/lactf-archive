	.section	.text._RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box
	.type	_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box,@function
_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box: # @_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rdi
	call	_RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	mov	r12, qword ptr [r14 + 16]
	mov	qword ptr [r14], 0
	mov	qword ptr [r14 + 8], 1
	mov	qword ptr [r14 + 16], 0
	mov	edi, 24
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB11_1
# %bb.6:
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], rbx
	mov	qword ptr [rax + 16], r12
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.809]
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB11_1:
	.cfi_def_cfa_offset 48
.Ltmp60:
	mov	edi, 24
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp61:
# %bb.2:
.LBB11_3:
.Ltmp62:
	mov	r14, rax
	test	r15, r15
	je	.LBB11_5
# %bb.4:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB11_5:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end11:
	.size	_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box, .Lfunc_end11-_RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box
	.cfi_endproc
	.section	.gcc_except_table._RNvXs_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB4_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core5panic12PanicPayload8take_box,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin4          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp61           #   Call between .Ltmp61 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
