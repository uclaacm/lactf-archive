	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_
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
	je	.LBB119_6
# %bb.1:
	mov	rsi, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, rsi
	jae	.LBB119_9
# %bb.2:
	cmp	byte ptr [rcx + rax], 71
	jne	.LBB119_9
# %bb.3:
	lea	rdi, [rax + 1]
	mov	qword ptr [rbx + 16], rdi
	cmp	rdi, rsi
	jae	.LBB119_19
# %bb.4:
	cmp	byte ptr [rcx + rdi], 95
	jne	.LBB119_19
# %bb.5:
	add	rax, 2
	mov	qword ptr [rbx + 16], rax
	xor	eax, eax
	inc	rax
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	jne	.LBB119_10
.LBB119_38:
	mov	rdi, rbx
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
	jmp	_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_ # TAILCALL
.LBB119_9:
	.cfi_def_cfa_offset 48
	xor	eax, eax
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB119_38
.LBB119_10:
	mov	r15, rax
	test	rax, rax
	je	.LBB119_41
# %bb.11:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.6]
	mov	edx, 4
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB119_34
# %bb.12:
	inc	dword ptr [rbx + 40]
	mov	esi, 1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	test	al, al
	jne	.LBB119_34
# %bb.13:
	lea	r14, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	mov	r12, r15
	jmp	.LBB119_15
	.p2align	4
.LBB119_14:                             #   in Loop: Header=BB119_15 Depth=1
	inc	dword ptr [rbx + 40]
	mov	esi, 1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	test	al, al
	jne	.LBB119_34
.LBB119_15:                             # =>This Inner Loop Header: Depth=1
	dec	r12
	je	.LBB119_39
# %bb.16:                               #   in Loop: Header=BB119_15 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB119_14
# %bb.17:                               #   in Loop: Header=BB119_15 Depth=1
	mov	edx, 2
	mov	rsi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB119_14
	jmp	.LBB119_34
.LBB119_6:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB119_33
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
.LBB119_19:
	.cfi_def_cfa_offset 48
	xor	eax, eax
	mov	r8d, 62
	.p2align	4
.LBB119_20:                             # =>This Inner Loop Header: Depth=1
	cmp	rdi, rsi
	jae	.LBB119_30
# %bb.21:                               #   in Loop: Header=BB119_20 Depth=1
	movzx	edx, byte ptr [rcx + rdi]
	cmp	dl, 95
	je	.LBB119_35
# %bb.22:                               #   in Loop: Header=BB119_20 Depth=1
	lea	r9d, [rdx - 48]
	cmp	r9b, 10
	jb	.LBB119_28
# %bb.23:                               #   in Loop: Header=BB119_20 Depth=1
	lea	r9d, [rdx - 97]
	cmp	r9b, 26
	jae	.LBB119_25
# %bb.24:                               #   in Loop: Header=BB119_20 Depth=1
	add	dl, -87
	jmp	.LBB119_27
	.p2align	4
.LBB119_25:                             #   in Loop: Header=BB119_20 Depth=1
	lea	r9d, [rdx - 65]
	cmp	r9b, 26
	jae	.LBB119_30
# %bb.26:                               #   in Loop: Header=BB119_20 Depth=1
	add	dl, -29
.LBB119_27:                             #   in Loop: Header=BB119_20 Depth=1
	mov	r9d, edx
.LBB119_28:                             #   in Loop: Header=BB119_20 Depth=1
	inc	rdi
	mov	qword ptr [rbx + 16], rdi
	mul	r8
	jo	.LBB119_30
# %bb.29:                               #   in Loop: Header=BB119_20 Depth=1
	movzx	edx, r9b
	add	rax, rdx
	jae	.LBB119_20
.LBB119_30:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB119_32
# %bb.31:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB119_34
.LBB119_32:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
.LBB119_33:
	xor	ebp, ebp
.LBB119_34:
	mov	eax, ebp
	jmp	.LBB119_42
.LBB119_35:
	inc	rdi
	mov	qword ptr [rbx + 16], rdi
	cmp	rax, -3
	ja	.LBB119_30
# %bb.36:
	inc	rax
	inc	rax
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	jne	.LBB119_10
	jmp	.LBB119_38
.LBB119_39:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB119_41
# %bb.40:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.7]
	mov	edx, 2
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB119_34
.LBB119_41:
	mov	rdi, rbx
	call	_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_
	sub	dword ptr [rbx + 40], r15d
.LBB119_42:
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
.Lfunc_end119:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_, .Lfunc_end119-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_
	.cfi_endproc
                                        # -- End function
