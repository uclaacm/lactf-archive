	.section	.text._RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.type	_RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,@function
_RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt: # @_RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
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
	mov	rbx, rsi
	mov	rax, qword ptr [rdi]
	cmp	rax, 2
	jne	.LBB51_9
# %bb.1:
	mov	r14, qword ptr [rdi + 72]
	test	r14, r14
	je	.LBB51_24
# %bb.2:
	mov	r15, qword ptr [rdi + 64]
	.p2align	4
.LBB51_3:                               # =>This Inner Loop Header: Depth=1
	lea	rdi, [rsp + 8]
	mov	rsi, r15
	mov	rdx, r14
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB51_21
# %bb.4:                                #   in Loop: Header=BB51_3 Depth=1
	mov	rbp, qword ptr [rsp + 16]
	movzx	r12d, byte ptr [rsp + 24]
	movzx	r13d, byte ptr [rsp + 25]
	mov	edx, 3
	mov	rdi, rbx
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.405]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB51_22
# %bb.5:                                #   in Loop: Header=BB51_3 Depth=1
	test	r12b, r12b
	je	.LBB51_24
# %bb.6:                                #   in Loop: Header=BB51_3 Depth=1
	add	rbp, r13
	cmp	r14, rbp
	jb	.LBB51_26
# %bb.7:                                #   in Loop: Header=BB51_3 Depth=1
	add	r15, rbp
	sub	r14, rbp
	jne	.LBB51_3
	jmp	.LBB51_24
.LBB51_9:
	test	al, 1
	je	.LBB51_12
# %bb.10:
	mov	r15, rdi
	lea	rax, [rdi + 8]
	test	dword ptr [rbx + 16], 8388608
	mov	qword ptr [rsp + 48], rax
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 16], 1000000
	mov	qword ptr [rsp + 24], rbx
	lea	rax, [rsp + 48]
	jne	.LBB51_14
# %bb.11:
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_]
	mov	qword ptr [rsp + 40], rax
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.152]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	jmp	.LBB51_15
.LBB51_12:
	mov	rsi, qword ptr [rdi + 32]
	mov	r15, rdi
	mov	rdx, qword ptr [rdi + 40]
	mov	r14, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rax + 24]
	mov	rdi, r14
	call	rbx
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	je	.LBB51_20
	jmp	.LBB51_25
.LBB51_14:
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_]
	mov	qword ptr [rsp + 40], rax
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.152]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.363]
.LBB51_15:
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 32]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB51_18
# %bb.16:
	test	al, al
	je	.LBB51_27
# %bb.17:
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.146]
	mov	edx, 20
	call	qword ptr [rax + 24]
.LBB51_18:
	test	al, al
	jne	.LBB51_22
# %bb.19:
	mov	r14, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rax + 24]
.LBB51_20:
	mov	rsi, qword ptr [r15 + 48]
	mov	rdx, qword ptr [r15 + 56]
	mov	rdi, r14
	call	rbx
                                        # kill: def $al killed $al def $eax
	jmp	.LBB51_25
.LBB51_21:
	mov	rsi, qword ptr [rsp + 16]
	mov	rdx, qword ptr [rsp + 24]
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB51_24
.LBB51_22:
	mov	al, 1
	jmp	.LBB51_25
.LBB51_24:
	xor	eax, eax
.LBB51_25:
                                        # kill: def $al killed $al killed $eax
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
.LBB51_26:
	.cfi_def_cfa_offset 112
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.407]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r14
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB51_27:
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.147]
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.41]
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.148]
	lea	rdx, [rsp + 32]
	mov	esi, 55
	call	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
.Lfunc_end51:
	.size	_RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt, .Lfunc_end51-_RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_endproc
                                        # -- End function
