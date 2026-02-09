	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
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
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, qword ptr [rdi + 32]
	test	rbx, rbx
	je	.LBB96_6
# %bb.1:
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.79]
	mov	edx, 1
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB96_7
# %bb.2:
	test	r12, r12
	je	.LBB96_8
# %bb.3:
	mov	r15d, dword ptr [r14 + 40]
	sub	r15, r12
	jae	.LBB96_9
# %bb.4:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB96_7
# %bb.5:
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], 0
.LBB96_6:
	xor	ebp, ebp
.LBB96_7:
	mov	eax, ebp
	add	rsp, 16
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
.LBB96_8:
	.cfi_def_cfa_offset 64
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.70]
	mov	edx, 1
	mov	rdi, rbx
	add	rsp, 16
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
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB96_9:
	.cfi_def_cfa_offset 64
	cmp	r15, 26
	jae	.LBB96_12
# %bb.10:
	add	r15d, 97
	test	byte ptr [rbx + 19], 24
	je	.LBB96_14
# %bb.11:
	mov	dword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 4], r15b
	lea	rsi, [rsp + 4]
	mov	edx, 1
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ebp, eax
	jmp	.LBB96_7
.LBB96_12:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.70]
	mov	edx, 1
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB96_7
# %bb.13:
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	_RNvXsd_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impyNtB9_7Display3fmt
	mov	ebp, eax
	jmp	.LBB96_7
.LBB96_14:
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 32]
	mov	esi, r15d
	add	rsp, 16
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
	jmp	rax                             # TAILCALL
.Lfunc_end96:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index, .Lfunc_end96-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	.cfi_endproc
                                        # -- End function
