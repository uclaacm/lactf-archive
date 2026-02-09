	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait
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
	sub	rsp, 72
	.cfi_def_cfa_offset 128
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics
	mov	bpl, 1
	cmp	al, 2
	je	.LBB125_23
# %bb.1:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.LBB125_21
# %bb.2:
	mov	rcx, qword ptr [rbx + 16]
	cmp	rcx, qword ptr [rbx + 8]
	jae	.LBB125_21
# %bb.3:
	cmp	byte ptr [rdx + rcx], 112
	jne	.LBB125_21
# %bb.4:
	inc	rcx
	mov	qword ptr [rbx + 16], rcx
	mov	rdi, qword ptr [rbx + 32]
	test	al, 1
	je	.LBB125_5
# %bb.7:
	test	rdi, rdi
	je	.LBB125_10
# %bb.8:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	mov	edx, 2
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB125_10
	jmp	.LBB125_23
.LBB125_21:
	test	al, 1
	je	.LBB125_22
.LBB125_19:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB125_22
# %bb.20:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.59]
	mov	edx, 1
	add	rsp, 72
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
.LBB125_5:
	.cfi_def_cfa_offset 128
	test	rdi, rdi
	je	.LBB125_10
# %bb.6:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.57]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB125_23
.LBB125_10:
	mov	rdi, rsp
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	cmp	qword ptr [rsp], 0
	je	.LBB125_27
# %bb.11:
	movups	xmm0, xmmword ptr [rsp]
	movups	xmm1, xmmword ptr [rsp + 16]
	movaps	xmmword ptr [rsp + 48], xmm1
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	r14, qword ptr [rbx + 32]
	test	r14, r14
	je	.LBB125_14
# %bb.12:
	lea	rdi, [rsp + 32]
	mov	rsi, r14
	call	_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	test	al, al
	jne	.LBB125_23
# %bb.13:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.76]
	mov	edx, 3
	mov	rdi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB125_23
.LBB125_14:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	test	al, al
	jne	.LBB125_23
# %bb.15:
	mov	r14, rsp
	lea	r15, [rsp + 32]
	lea	r13, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	jmp	.LBB125_16
.LBB125_33:                             #   in Loop: Header=BB125_16 Depth=1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	test	al, al
	jne	.LBB125_23
.LBB125_16:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.LBB125_19
# %bb.17:                               #   in Loop: Header=BB125_16 Depth=1
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, qword ptr [rbx + 8]
	jae	.LBB125_19
# %bb.18:                               #   in Loop: Header=BB125_16 Depth=1
	cmp	byte ptr [rcx + rax], 112
	jne	.LBB125_19
# %bb.24:                               #   in Loop: Header=BB125_16 Depth=1
	inc	rax
	mov	qword ptr [rbx + 16], rax
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB125_26
# %bb.25:                               #   in Loop: Header=BB125_16 Depth=1
	mov	edx, 2
	mov	rsi, r13
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB125_23
.LBB125_26:                             #   in Loop: Header=BB125_16 Depth=1
	mov	rdi, r14
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	cmp	qword ptr [rsp], 0
	je	.LBB125_27
# %bb.30:                               #   in Loop: Header=BB125_16 Depth=1
	movups	xmm0, xmmword ptr [rsp]
	movups	xmm1, xmmword ptr [rsp + 16]
	movaps	xmmword ptr [rsp + 48], xmm1
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	r12, qword ptr [rbx + 32]
	test	r12, r12
	je	.LBB125_33
# %bb.31:                               #   in Loop: Header=BB125_16 Depth=1
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	test	al, al
	jne	.LBB125_23
# %bb.32:                               #   in Loop: Header=BB125_16 Depth=1
	mov	edx, 3
	mov	rdi, r12
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.76]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB125_33
	jmp	.LBB125_23
.LBB125_27:
	movzx	r14d, byte ptr [rsp + 8]
	mov	rdi, qword ptr [rbx + 32]
	test	r14b, r14b
	je	.LBB125_34
# %bb.28:
	test	rdi, rdi
	je	.LBB125_37
# %bb.29:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	jmp	.LBB125_36
.LBB125_34:
	test	rdi, rdi
	je	.LBB125_37
# %bb.35:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
.LBB125_36:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB125_23
.LBB125_37:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], r14b
.LBB125_22:
	xor	ebp, ebp
.LBB125_23:
	mov	eax, ebp
	add	rsp, 72
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
.Lfunc_end125:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait, .Lfunc_end125-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait
	.cfi_endproc
                                        # -- End function
