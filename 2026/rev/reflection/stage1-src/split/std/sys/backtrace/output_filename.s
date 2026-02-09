	.section	.text._RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename
	.type	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename,@function
_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename: # @_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 56
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	cmp	byte ptr [rsi], 0
	je	.LBB316_2
# %bb.1:
	mov	r14d, 9
	lea	r15, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.134]
	test	dl, dl
	je	.LBB316_5
	jmp	.LBB316_9
.LBB316_2:
	mov	r15, qword ptr [rsi + 8]
	mov	r14, qword ptr [rsi + 16]
	test	dl, dl
	je	.LBB316_4
# %bb.3:
	test	r14, r14
	jne	.LBB316_9
	jmp	.LBB316_16
.LBB316_4:
	test	r14, r14
	je	.LBB316_16
.LBB316_5:
	test	rcx, rcx
	je	.LBB316_9
# %bb.6:
	cmp	byte ptr [r15], 47
	jne	.LBB316_9
# %bb.7:
	mov	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 16]
	mov	rdi, r15
	mov	rsi, r14
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix
	test	rax, rax
	je	.LBB316_9
# %bb.8:
	lea	rdi, [rsp + 8]
	mov	rsi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB316_17
.LBB316_9:
	mov	qword ptr [rsp + 40], r15
	mov	qword ptr [rsp + 48], r14
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [rbx + 8]
	lea	r15, [rsp + 8]
	lea	r12, [rsp + 40]
	.p2align	4
.LBB316_10:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	je	.LBB316_14
# %bb.11:                               #   in Loop: Header=BB316_10 Depth=1
	mov	rdx, qword ptr [rsp + 16]
	cmp	qword ptr [rsp + 32], 0
	je	.LBB316_15
# %bb.12:                               #   in Loop: Header=BB316_10 Depth=1
	mov	rdi, r14
	call	qword ptr [r13 + 24]
	mov	bpl, 1
	test	al, al
	jne	.LBB316_19
# %bb.13:                               #   in Loop: Header=BB316_10 Depth=1
	mov	rdi, r14
	mov	esi, 65533
	call	qword ptr [r13 + 32]
	test	al, al
	je	.LBB316_10
	jmp	.LBB316_19
.LBB316_14:
	xor	ebp, ebp
	jmp	.LBB316_19
.LBB316_15:
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	jmp	.LBB316_18
.LBB316_16:
	mov	esi, 1
	mov	rdi, rbx
	xor	edx, edx
	add	rsp, 56
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB316_17:
	.cfi_def_cfa_offset 112
	movups	xmm0, xmmword ptr [rsp + 16]
	movups	xmmword ptr [rsp + 40], xmm0
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.424]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rip + _RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt]
	mov	qword ptr [rsp + 16], rax
	lea	rax, [rsp + 40]
	mov	qword ptr [rsp + 24], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 32], rax
	mov	rdi, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.425]
	lea	rcx, [rsp + 8]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
.LBB316_18:
	mov	ebp, eax
.LBB316_19:
	mov	eax, ebp
	add	rsp, 56
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end316:
	.size	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename, .Lfunc_end316-_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename
	.cfi_endproc
                                        # -- End function
