	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_
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
	mov	rcx, qword ptr [rdi]
	test	rcx, rcx
	je	.LBB105_48
# %bb.1:
	mov	rbx, rdi
	mov	ebp, 62
	mov	r15, rsp
	lea	r12, [rsp + 32]
	xor	r13d, r13d
	jmp	.LBB105_4
	.p2align	4
.LBB105_2:                              #   in Loop: Header=BB105_4 Depth=1
	mov	rdi, rbx
	mov	esi, 1
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	test	al, al
	jne	.LBB105_43
.LBB105_3:                              #   in Loop: Header=BB105_4 Depth=1
	mov	rcx, qword ptr [rbx]
	inc	r13
	test	rcx, rcx
	je	.LBB105_48
.LBB105_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB105_17 Depth 2
	mov	rsi, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, rsi
	jae	.LBB105_6
# %bb.5:                                #   in Loop: Header=BB105_4 Depth=1
	cmp	byte ptr [rcx + rax], 69
	je	.LBB105_42
.LBB105_6:                              #   in Loop: Header=BB105_4 Depth=1
	test	r13, r13
	je	.LBB105_11
# %bb.7:                                #   in Loop: Header=BB105_4 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB105_11
# %bb.8:                                #   in Loop: Header=BB105_4 Depth=1
	mov	edx, 2
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB105_43
# %bb.9:                                #   in Loop: Header=BB105_4 Depth=1
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.LBB105_30
# %bb.10:                               #   in Loop: Header=BB105_4 Depth=1
	mov	rsi, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 16]
.LBB105_11:                             #   in Loop: Header=BB105_4 Depth=1
	cmp	rax, rsi
	jae	.LBB105_33
# %bb.12:                               #   in Loop: Header=BB105_4 Depth=1
	cmp	byte ptr [rcx + rax], 115
	jne	.LBB105_33
# %bb.13:                               #   in Loop: Header=BB105_4 Depth=1
	lea	rdi, [rax + 1]
	mov	qword ptr [rbx + 16], rdi
	cmp	rdi, rsi
	jae	.LBB105_16
# %bb.14:                               #   in Loop: Header=BB105_4 Depth=1
	cmp	byte ptr [rcx + rdi], 95
	jne	.LBB105_16
# %bb.15:                               #   in Loop: Header=BB105_4 Depth=1
	add	rax, 2
	mov	qword ptr [rbx + 16], rax
	jmp	.LBB105_33
.LBB105_16:                             #   in Loop: Header=BB105_4 Depth=1
	xor	eax, eax
	.p2align	4
.LBB105_17:                             #   Parent Loop BB105_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rdi, rsi
	jae	.LBB105_27
# %bb.18:                               #   in Loop: Header=BB105_17 Depth=2
	movzx	edx, byte ptr [rcx + rdi]
	cmp	dl, 95
	je	.LBB105_32
# %bb.19:                               #   in Loop: Header=BB105_17 Depth=2
	lea	r8d, [rdx - 48]
	cmp	r8b, 10
	jb	.LBB105_25
# %bb.20:                               #   in Loop: Header=BB105_17 Depth=2
	lea	r8d, [rdx - 97]
	cmp	r8b, 26
	jae	.LBB105_22
# %bb.21:                               #   in Loop: Header=BB105_17 Depth=2
	add	dl, -87
	jmp	.LBB105_24
	.p2align	4
.LBB105_22:                             #   in Loop: Header=BB105_17 Depth=2
	lea	r8d, [rdx - 65]
	cmp	r8b, 26
	jae	.LBB105_27
# %bb.23:                               #   in Loop: Header=BB105_17 Depth=2
	add	dl, -29
.LBB105_24:                             #   in Loop: Header=BB105_17 Depth=2
	mov	r8d, edx
.LBB105_25:                             #   in Loop: Header=BB105_17 Depth=2
	inc	rdi
	mov	qword ptr [rbx + 16], rdi
	mul	rbp
	jo	.LBB105_27
# %bb.26:                               #   in Loop: Header=BB105_17 Depth=2
	movzx	edx, r8b
	add	rax, rdx
	jae	.LBB105_17
.LBB105_27:                             #   in Loop: Header=BB105_4 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB105_29
# %bb.28:                               #   in Loop: Header=BB105_4 Depth=1
	mov	edx, 16
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB105_43
.LBB105_29:                             #   in Loop: Header=BB105_4 Depth=1
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
	jmp	.LBB105_3
.LBB105_30:                             #   in Loop: Header=BB105_4 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB105_3
# %bb.31:                               #   in Loop: Header=BB105_4 Depth=1
	mov	r14d, 1
	mov	edx, 1
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB105_3
	jmp	.LBB105_49
.LBB105_32:                             #   in Loop: Header=BB105_4 Depth=1
	inc	rdi
	mov	qword ptr [rbx + 16], rdi
	cmp	rax, -3
	ja	.LBB105_27
	.p2align	4
.LBB105_33:                             #   in Loop: Header=BB105_4 Depth=1
	mov	rdi, r15
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	cmp	qword ptr [rsp], 0
	je	.LBB105_38
# %bb.34:                               #   in Loop: Header=BB105_4 Depth=1
	movups	xmm0, xmmword ptr [rsp]
	movups	xmm1, xmmword ptr [rsp + 16]
	movaps	xmmword ptr [rsp + 48], xmm1
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	r14, qword ptr [rbx + 32]
	test	r14, r14
	je	.LBB105_2
# %bb.35:                               #   in Loop: Header=BB105_4 Depth=1
	mov	rdi, r12
	mov	rsi, r14
	call	_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	test	al, al
	jne	.LBB105_43
# %bb.36:                               #   in Loop: Header=BB105_4 Depth=1
	mov	edx, 2
	mov	rdi, r14
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.31]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB105_2
	jmp	.LBB105_43
.LBB105_38:
	movzx	ebp, byte ptr [rsp + 8]
	mov	rdi, qword ptr [rbx + 32]
	test	bpl, bpl
	je	.LBB105_44
# %bb.39:
	test	rdi, rdi
	je	.LBB105_47
# %bb.40:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB105_43
	jmp	.LBB105_47
.LBB105_42:
	inc	rax
	mov	qword ptr [rbx + 16], rax
	jmp	.LBB105_48
.LBB105_44:
	test	rdi, rdi
	je	.LBB105_47
# %bb.45:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB105_47
.LBB105_43:
	mov	r14d, 1
	jmp	.LBB105_49
.LBB105_47:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], bpl
.LBB105_48:
	xor	r14d, r14d
.LBB105_49:
	mov	rax, r14
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
.Lfunc_end105:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_, .Lfunc_end105-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_
	.cfi_endproc
                                        # -- End function
