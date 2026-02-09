	.section	.text._RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char
	.type	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char,@function
_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char: # @_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, qword ptr [rdi + 16]
	mov	rbx, qword ptr [rdi]
	mov	r15, qword ptr [rdi + 8]
	cmp	byte ptr [r14], 0
	je	.LBB114_3
# %bb.1:
	lea	rax, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.312]
	mov	edx, 4
	mov	rdi, rbx
	mov	ebp, esi
	mov	rsi, rax
	call	qword ptr [r15 + 24]
	mov	esi, ebp
	test	al, al
	je	.LBB114_3
# %bb.2:
	mov	al, 1
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB114_3:
	.cfi_def_cfa_offset 48
	cmp	esi, 10
	sete	byte ptr [r14]
	mov	rax, qword ptr [r15 + 32]
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	rax                             # TAILCALL
.Lfunc_end114:
	.size	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char, .Lfunc_end114-_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write10write_char
	.cfi_endproc
                                        # -- End function
