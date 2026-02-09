	.section	.text._RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill
	.type	_RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill,@function
_RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill: # @_RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 56
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	xor	eax, eax
	cmp	rax, qword ptr [rdi]
	jno	.LBB14_12
# %bb.1:
	mov	rax, qword ptr [rbx + 24]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 16], 1
	mov	qword ptr [rsp + 24], 0
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax]
	mov	rcx, qword ptr [rax + 8]
	test	cl, 1
	jne	.LBB14_2
# %bb.10:
.Ltmp65:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.103]
	lea	rdi, [rsp + 8]
	mov	rdx, r14
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
.Ltmp66:
	jmp	.LBB14_11
.LBB14_2:
	mov	r15, rcx
	shr	r15
	cmp	rcx, 2
	jae	.LBB14_4
# %bb.3:
	mov	edi, 1
	xor	r12d, r12d
.LBB14_6:
	add	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r12, r15
	mov	qword ptr [rsp + 24], r12
.LBB14_11:
	mov	rax, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 48], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	qword ptr [rbx + 16], rax
	movups	xmmword ptr [rbx], xmm0
.LBB14_12:
	mov	rax, rbx
	add	rsp, 56
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
.LBB14_4:
	.cfi_def_cfa_offset 96
.Ltmp63:
	lea	rdi, [rsp + 8]
	mov	ecx, 1
	mov	r8d, 1
	xor	esi, esi
	mov	rdx, r15
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp64:
# %bb.5:
	mov	rdi, qword ptr [rsp + 16]
	mov	r12, qword ptr [rsp + 24]
	jmp	.LBB14_6
.LBB14_7:
.Ltmp67:
	mov	rbx, rax
	cmp	qword ptr [rsp + 8], 0
	je	.LBB14_9
# %bb.8:
	mov	rdi, qword ptr [rsp + 16]
	call	qword ptr [rip + free@GOTPCREL]
.LBB14_9:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end14:
	.size	_RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill, .Lfunc_end14-_RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill
	.cfi_endproc
	.section	.gcc_except_table._RNvMNvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB2_19FormatStringPayload4fill,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp65-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin5          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp63-.Ltmp66                #   Call between .Ltmp66 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp67-.Lfunc_begin5          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Lfunc_end14-.Ltmp64           #   Call between .Ltmp64 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
