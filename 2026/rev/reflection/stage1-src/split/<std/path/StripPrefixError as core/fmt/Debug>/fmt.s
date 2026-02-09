	.section	.text._RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt
	.type	_RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt,@function
_RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt: # @_RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 64
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rsi
	mov	rbx, qword ptr [rsi]
	mov	r12, qword ptr [rsi + 8]
	mov	r15, qword ptr [r12 + 24]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.666]
	mov	edx, 16
	mov	rdi, rbx
	call	r15
	mov	bpl, 1
	test	al, al
	je	.LBB292_1
.LBB292_9:
	mov	eax, ebp
	add	rsp, 64
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB292_1:
	.cfi_def_cfa_offset 112
	test	byte ptr [r14 + 18], -128
	jne	.LBB292_4
# %bb.2:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.66]
	mov	edx, 1
	mov	rdi, rbx
	call	r15
	test	al, al
	jne	.LBB292_9
# %bb.3:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.919]
	mov	edx, 2
	mov	rdi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB292_9
	jmp	.LBB292_8
.LBB292_4:
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.44]
	mov	edx, 2
	mov	rdi, rbx
	call	r15
	test	al, al
	jne	.LBB292_9
# %bb.5:
	mov	byte ptr [rsp + 15], 1
	mov	qword ptr [rsp + 16], rbx
	mov	qword ptr [rsp + 24], r12
	lea	rax, [rsp + 15]
	mov	qword ptr [rsp + 32], rax
	mov	rax, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 40], rax
	lea	rax, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.113]
	mov	qword ptr [rsp + 48], rax
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.919]
	lea	rdi, [rsp + 40]
	mov	edx, 2
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB292_9
# %bb.6:
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.42]
	lea	rdi, [rsp + 16]
	mov	edx, 2
	call	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	test	al, al
	jne	.LBB292_9
.LBB292_8:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.28]
	mov	edx, 1
	mov	rdi, rbx
	call	r15
	mov	ebp, eax
	jmp	.LBB292_9
.Lfunc_end292:
	.size	_RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt, .Lfunc_end292-_RNvXs2a_NtCs3bNtqN8jaZB_3std4pathNtB6_16StripPrefixErrorNtNtCsfQL5qMWGko6_4core3fmt5Debug3fmt
	.cfi_endproc
                                        # -- End function
