	.section	.text._RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column
	.type	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column,@function
_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column: # @_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column
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
	sub	rsp, 120
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 112], rsi
	test	rsi, rsi
	jne	.LBB48_3
# %bb.1:
	cmp	byte ptr [r15 + 32], 0
	jne	.LBB48_3
.LBB48_2:
	inc	rbx
	mov	qword ptr [rdi + 8], rbx
	xor	eax, eax
	jmp	.LBB48_18
.LBB48_3:
	mov	r14, rdx
	mov	r13d, r8d
	mov	ebp, r9d
	mov	r12, rcx
	mov	qword ptr [rsp + 104], rdi      # 8-byte Spill
	mov	rax, qword ptr [r15]
	test	rbx, rbx
	je	.LBB48_7
# %bb.4:
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.362]
	mov	edx, 6
	call	qword ptr [rax + 24]
	test	al, al
	jne	.LBB48_17
# %bb.5:
	cmp	byte ptr [r15 + 32], 1
	jne	.LBB48_10
# %bb.6:
	mov	rax, qword ptr [r15]
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.355]
	mov	qword ptr [rsp], rcx
	lea	rcx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 0
	mov	word ptr [rsp + 24], 21
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.356]
	mov	rcx, rsp
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	je	.LBB48_10
	jmp	.LBB48_17
.LBB48_7:
	lea	rcx, [r15 + 24]
	mov	qword ptr [rsp], rcx
	lea	rcx, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.360]
	mov	rcx, rsp
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
# %bb.8:
	cmp	byte ptr [r15 + 32], 1
	jne	.LBB48_10
# %bb.9:
	mov	rax, qword ptr [r15]
	lea	rcx, [rsp + 112]
	mov	qword ptr [rsp], rcx
	lea	rcx, [rip + _RNvXsq_NtCsfQL5qMWGko6_4core3fmtONtNtB7_3ffi6c_voidNtB5_5Debug3fmtCs3bNtqN8jaZB_3std]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 0
	mov	word ptr [rsp + 24], 18
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.361]
	mov	rcx, rsp
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
.LBB48_10:
	cmp	dword ptr [r14], 3
	jne	.LBB48_12
# %bb.11:
	mov	rax, qword ptr [r15]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.134]
	mov	edx, 9
	call	qword ptr [rax + 24]
	test	al, al
	je	.LBB48_16
	jmp	.LBB48_17
.LBB48_12:
	cmp	byte ptr [r15 + 32], 0
	je	.LBB48_14
# %bb.13:
	movups	xmm0, xmmword ptr [r14 + 64]
	movaps	xmmword ptr [rsp + 64], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movaps	xmmword ptr [rsp + 48], xmm3
	movaps	xmmword ptr [rsp + 32], xmm2
	movaps	xmmword ptr [rsp + 16], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	rax, qword ptr [r15]
	mov	rcx, rsp
	mov	qword ptr [rsp + 80], rcx
	lea	rcx, [rip + _RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rsp + 88], rcx
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rcx, [rsp + 80]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
	jmp	.LBB48_16
.LBB48_14:
	movups	xmm0, xmmword ptr [r14 + 64]
	movaps	xmmword ptr [rsp + 64], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 16]
	movups	xmm2, xmmword ptr [r14 + 32]
	movups	xmm3, xmmword ptr [r14 + 48]
	movaps	xmmword ptr [rsp + 48], xmm3
	movaps	xmmword ptr [rsp + 32], xmm2
	movaps	xmmword ptr [rsp + 16], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	rax, qword ptr [r15]
	mov	rcx, rsp
	mov	qword ptr [rsp + 80], rcx
	lea	rcx, [rip + _RNvXs2_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB5_10SymbolNameNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rsp + 88], rcx
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.363]
	lea	rcx, [rsp + 80]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
.LBB48_16:
	mov	rax, qword ptr [r15]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.359]
	mov	edx, 1
	call	qword ptr [rax + 24]
	test	al, al
	je	.LBB48_19
.LBB48_17:
	mov	al, 1
.LBB48_18:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 120
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
.LBB48_19:
	.cfi_def_cfa_offset 176
	cmp	dword ptr [r12], 2
	setne	al
	and	r13b, al
	cmp	r13b, 1
	mov	rdi, qword ptr [rsp + 104]      # 8-byte Reload
	jne	.LBB48_2
# %bb.20:
	mov	dword ptr [rsp + 100], ebp
	cmp	byte ptr [r15 + 32], 1
	jne	.LBB48_22
# %bb.21:
	mov	rax, qword ptr [r15]
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.355]
	mov	qword ptr [rsp], rcx
	lea	rcx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 16], 0
	mov	word ptr [rsp + 24], 18
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.356]
	mov	rcx, rsp
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
.LBB48_22:
	mov	rax, qword ptr [r15]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.357]
	mov	edx, 16
	call	qword ptr [rax + 24]
	test	al, al
	jne	.LBB48_17
# %bb.23:
	mov	rdi, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 16]
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp], rsi
	lea	rdx, [rsp + 8]
	movups	xmm0, xmmword ptr [r12]
	movups	xmmword ptr [rsp + 8], xmm0
	mov	rcx, qword ptr [r12 + 16]
	mov	qword ptr [rsp + 24], rcx
	call	qword ptr [rax + 32]
	test	al, al
	jne	.LBB48_17
# %bb.24:
	mov	rax, qword ptr [r15]
	lea	rcx, [rsp + 100]
	mov	qword ptr [rsp], rcx
	lea	r14, [rip + _RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt]
	mov	qword ptr [rsp + 8], r14
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.358]
	mov	rcx, rsp
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
# %bb.26:
	mov	eax, dword ptr [rsp + 176]
	test	al, 1
	je	.LBB48_28
# %bb.27:
	mov	eax, dword ptr [rsp + 184]
	mov	dword ptr [rsp + 80], eax
	mov	rax, qword ptr [r15]
	lea	rcx, [rsp + 80]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], r14
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.358]
	mov	rcx, rsp
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB48_17
.LBB48_28:
	mov	rax, qword ptr [r15]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.359]
	mov	edx, 1
	call	qword ptr [rax + 24]
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	mov	rdi, qword ptr [rsp + 104]      # 8-byte Reload
	je	.LBB48_2
	jmp	.LBB48_18
.Lfunc_end48:
	.size	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column, .Lfunc_end48-_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column
	.cfi_endproc
                                        # -- End function
