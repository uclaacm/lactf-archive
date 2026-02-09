	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	test	rax, rax
	je	.LBB124_1
# %bb.3:
	mov	rcx, qword ptr [rbx + 16]
	cmp	rcx, qword ptr [rbx + 8]
	jae	.LBB124_7
# %bb.4:
	movzx	eax, byte ptr [rax + rcx]
	inc	rcx
	mov	qword ptr [rbx + 16], rcx
	cmp	eax, 78
	je	.LBB124_13
# %bb.5:
	cmp	eax, 79
	je	.LBB124_16
# %bb.6:
	cmp	eax, 82
	jne	.LBB124_7
# %bb.9:
	mov	rdi, rbx
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	mov	bpl, 1
	test	al, al
	jne	.LBB124_34
# %bb.10:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_12
# %bb.11:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.80]
	mov	edx, 3
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB124_34
.LBB124_12:
	mov	rdi, rbx
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	jmp	.LBB124_15
.LBB124_7:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_32
# %bb.8:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB124_34
.LBB124_32:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
	jmp	.LBB124_33
.LBB124_1:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_33
# %bb.2:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB124_16:
	.cfi_def_cfa_offset 32
	mov	eax, dword ptr [rbx + 24]
	inc	eax
	mov	dword ptr [rbx + 24], eax
	cmp	eax, 500
	jbe	.LBB124_17
# %bb.23:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_25
# %bb.24:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB124_34
.LBB124_25:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 1
	jmp	.LBB124_33
.LBB124_13:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_33
# %bb.14:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.82]
	mov	edx, 5
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
.LBB124_15:
	test	al, al
	jne	.LBB124_34
.LBB124_33:
	xor	ebp, ebp
.LBB124_34:
	mov	eax, ebp
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB124_17:
	.cfi_def_cfa_offset 32
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat
	mov	bpl, 1
	test	al, al
	jne	.LBB124_34
# %bb.18:
	lea	r14, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.81]
	jmp	.LBB124_19
.LBB124_28:                             #   in Loop: Header=BB124_19 Depth=1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat
	test	al, al
	jne	.LBB124_34
.LBB124_19:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.LBB124_29
# %bb.20:                               #   in Loop: Header=BB124_19 Depth=1
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, qword ptr [rbx + 8]
	jae	.LBB124_26
# %bb.21:                               #   in Loop: Header=BB124_19 Depth=1
	cmp	byte ptr [rcx + rax], 69
	je	.LBB124_22
.LBB124_26:                             #   in Loop: Header=BB124_19 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_28
# %bb.27:                               #   in Loop: Header=BB124_19 Depth=1
	mov	edx, 3
	mov	rsi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB124_28
	jmp	.LBB124_34
.LBB124_29:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB124_32
# %bb.30:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB124_32
	jmp	.LBB124_34
.LBB124_22:
	inc	rax
	mov	qword ptr [rbx + 16], rax
	dec	dword ptr [rbx + 24]
	jmp	.LBB124_33
.Lfunc_end124:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat, .Lfunc_end124-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat
	.cfi_endproc
                                        # -- End function
