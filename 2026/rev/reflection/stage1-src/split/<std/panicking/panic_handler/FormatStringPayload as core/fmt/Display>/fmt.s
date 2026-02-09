	.section	.text._RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.type	_RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,@function
_RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt: # @_RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_startproc
# %bb.0:
	xor	eax, eax
	cmp	rax, qword ptr [rdi]
	jno	.LBB10_3
# %bb.1:
	mov	rax, qword ptr [rdi + 24]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rax]
	mov	rcx, qword ptr [rax + 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 8]
	test	cl, 1
	jne	.LBB10_4
# %bb.2:
	jmp	_RNvNtCsfQL5qMWGko6_4core3fmt5write # TAILCALL
.LBB10_3:
	mov	rax, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 16]
	mov	rdi, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rcx + 24]
	mov	rsi, rax
	jmp	rcx                             # TAILCALL
.LBB10_4:
	shr	rcx
	mov	rax, qword ptr [rsi + 24]
	mov	rsi, rdx
	mov	rdx, rcx
	jmp	rax                             # TAILCALL
.Lfunc_end10:
	.size	_RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt, .Lfunc_end10-_RNvXs0_NvNtCs3bNtqN8jaZB_3std9panicking13panic_handlerNtB5_19FormatStringPayloadNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_endproc
                                        # -- End function
