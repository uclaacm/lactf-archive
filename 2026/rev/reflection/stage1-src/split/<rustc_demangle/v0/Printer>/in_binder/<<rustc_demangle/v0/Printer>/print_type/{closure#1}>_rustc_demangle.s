	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_
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
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rcx, qword ptr [rdi]
	test	rcx, rcx
	je	.LBB123_6
# %bb.1:
	mov	rsi, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, rsi
	jae	.LBB123_9
# %bb.2:
	cmp	byte ptr [rcx + rax], 71
	jne	.LBB123_9
# %bb.3:
	lea	rdi, [rax + 1]
	mov	qword ptr [rbx + 16], rdi
	cmp	rdi, rsi
	jae	.LBB123_19
# %bb.4:
	cmp	byte ptr [rcx + rdi], 95
	jne	.LBB123_19
# %bb.5:
	add	rax, 2
	mov	qword ptr [rbx + 16], rax
	xor	r14d, r14d
	inc	r14
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	jne	.LBB123_10
.LBB123_36:
	xor	r15d, r15d
	lea	r14, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.30]
	.p2align	4
.LBB123_37:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, qword ptr [rbx + 8]
	jae	.LBB123_39
# %bb.38:                               #   in Loop: Header=BB123_37 Depth=1
	cmp	byte ptr [rcx + rax], 69
	je	.LBB123_46
.LBB123_39:                             #   in Loop: Header=BB123_37 Depth=1
	sub	r15, 1
	jb	.LBB123_42
# %bb.40:                               #   in Loop: Header=BB123_37 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_42
# %bb.41:                               #   in Loop: Header=BB123_37 Depth=1
	mov	edx, 3
	mov	rsi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB123_47
.LBB123_42:                             #   in Loop: Header=BB123_37 Depth=1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait
	test	al, al
	jne	.LBB123_47
# %bb.43:                               #   in Loop: Header=BB123_37 Depth=1
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	jne	.LBB123_37
	jmp	.LBB123_18
.LBB123_9:
	xor	r14d, r14d
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_36
.LBB123_10:
	test	r14, r14
	je	.LBB123_50
# %bb.11:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.6]
	mov	edx, 4
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB123_65
# %bb.12:
	inc	dword ptr [rbx + 40]
	mov	esi, 1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	test	al, al
	jne	.LBB123_65
# %bb.13:
	lea	r15, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	mov	r12, r14
	jmp	.LBB123_15
	.p2align	4
.LBB123_14:                             #   in Loop: Header=BB123_15 Depth=1
	inc	dword ptr [rbx + 40]
	mov	esi, 1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	test	al, al
	jne	.LBB123_65
.LBB123_15:                             # =>This Inner Loop Header: Depth=1
	dec	r12
	je	.LBB123_48
# %bb.16:                               #   in Loop: Header=BB123_15 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_14
# %bb.17:                               #   in Loop: Header=BB123_15 Depth=1
	mov	edx, 2
	mov	rsi, r15
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB123_14
	jmp	.LBB123_65
.LBB123_6:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_18
# %bb.7:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
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
.LBB123_18:
	.cfi_def_cfa_offset 48
	xor	ebp, ebp
	jmp	.LBB123_65
.LBB123_19:
	xor	r14d, r14d
	mov	r8d, 62
	.p2align	4
.LBB123_20:                             # =>This Inner Loop Header: Depth=1
	cmp	rdi, rsi
	jae	.LBB123_30
# %bb.21:                               #   in Loop: Header=BB123_20 Depth=1
	movzx	eax, byte ptr [rcx + rdi]
	cmp	al, 95
	je	.LBB123_33
# %bb.22:                               #   in Loop: Header=BB123_20 Depth=1
	lea	r9d, [rax - 48]
	cmp	r9b, 10
	jb	.LBB123_28
# %bb.23:                               #   in Loop: Header=BB123_20 Depth=1
	lea	edx, [rax - 97]
	cmp	dl, 26
	jae	.LBB123_25
# %bb.24:                               #   in Loop: Header=BB123_20 Depth=1
	add	al, -87
	jmp	.LBB123_27
	.p2align	4
.LBB123_25:                             #   in Loop: Header=BB123_20 Depth=1
	lea	edx, [rax - 65]
	cmp	dl, 26
	jae	.LBB123_30
# %bb.26:                               #   in Loop: Header=BB123_20 Depth=1
	add	al, -29
.LBB123_27:                             #   in Loop: Header=BB123_20 Depth=1
	mov	r9d, eax
.LBB123_28:                             #   in Loop: Header=BB123_20 Depth=1
	inc	rdi
	mov	qword ptr [rbx + 16], rdi
	mov	rax, r14
	mul	r8
	jo	.LBB123_30
# %bb.29:                               #   in Loop: Header=BB123_20 Depth=1
	mov	r14, rax
	movzx	eax, r9b
	add	r14, rax
	jae	.LBB123_20
.LBB123_30:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_32
# %bb.31:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB123_65
.LBB123_32:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
	xor	ebp, ebp
	jmp	.LBB123_65
.LBB123_47:
	mov	bpl, 1
	jmp	.LBB123_65
.LBB123_46:
	inc	rax
	mov	qword ptr [rbx + 16], rax
	xor	ebp, ebp
	jmp	.LBB123_65
.LBB123_33:
	inc	rdi
	mov	qword ptr [rbx + 16], rdi
	cmp	r14, -3
	ja	.LBB123_30
# %bb.34:
	inc	r14
	inc	r14
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	jne	.LBB123_10
	jmp	.LBB123_36
.LBB123_48:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_50
# %bb.49:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.7]
	mov	edx, 2
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB123_65
.LBB123_50:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.LBB123_63
# %bb.51:
	xor	r12d, r12d
	lea	r15, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.30]
	.p2align	4
.LBB123_52:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbx + 16]
	cmp	rcx, qword ptr [rbx + 8]
	jae	.LBB123_54
# %bb.53:                               #   in Loop: Header=BB123_52 Depth=1
	cmp	byte ptr [rax + rcx], 69
	je	.LBB123_62
.LBB123_54:                             #   in Loop: Header=BB123_52 Depth=1
	sub	r12, 1
	jb	.LBB123_57
# %bb.55:                               #   in Loop: Header=BB123_52 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB123_57
# %bb.56:                               #   in Loop: Header=BB123_52 Depth=1
	mov	edx, 3
	mov	rsi, r15
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB123_61
.LBB123_57:                             #   in Loop: Header=BB123_52 Depth=1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer15print_dyn_trait
	test	al, al
	jne	.LBB123_61
# %bb.58:                               #   in Loop: Header=BB123_52 Depth=1
	mov	rax, qword ptr [rbx]
	test	rax, rax
	jne	.LBB123_52
	jmp	.LBB123_63
.LBB123_61:
	mov	bpl, 1
	jmp	.LBB123_64
.LBB123_62:
	inc	rcx
	mov	qword ptr [rbx + 16], rcx
.LBB123_63:
	xor	ebp, ebp
.LBB123_64:
	sub	dword ptr [rbx + 40], r14d
.LBB123_65:
	mov	eax, ebp
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
.Lfunc_end123:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_, .Lfunc_end123-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_
	.cfi_endproc
                                        # -- End function
