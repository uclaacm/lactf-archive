	.section	.text._RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_
	.type	_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_,@function
_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_: # @_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_
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
	sub	rsp, 168
	.cfi_def_cfa_offset 224
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rcx, qword ptr [rdi]
	test	rcx, rcx
	je	.LBB127_32
# %bb.1:
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, rdx
	jae	.LBB127_5
# %bb.2:
	cmp	byte ptr [rcx + rax], 85
	jne	.LBB127_5
# %bb.3:
	inc	rax
	mov	qword ptr [rbx + 16], rax
	mov	bpl, 1
	cmp	rax, rdx
	jb	.LBB127_6
	jmp	.LBB127_10
.LBB127_5:
	xor	ebp, ebp
	cmp	rax, rdx
	jae	.LBB127_10
.LBB127_6:
	cmp	byte ptr [rcx + rax], 75
	jne	.LBB127_10
# %bb.7:
	lea	rsi, [rax + 1]
	mov	qword ptr [rbx + 16], rsi
	cmp	rsi, rdx
	jae	.LBB127_15
# %bb.8:
	cmp	byte ptr [rcx + rsi], 67
	jne	.LBB127_15
# %bb.9:
	add	rax, 2
	mov	qword ptr [rbx + 16], rax
	mov	r14d, 1
	lea	r15, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.21]
	jmp	.LBB127_18
.LBB127_10:
	test	bpl, bpl
	je	.LBB127_32
# %bb.11:
	xor	r15d, r15d
                                        # implicit-def: $r14
.LBB127_12:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB127_14
# %bb.13:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.22]
	mov	edx, 7
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_14:
	test	r15, r15
	jne	.LBB127_19
	jmp	.LBB127_32
.LBB127_15:
	mov	rdi, rsp
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	mov	r15, qword ptr [rsp]
	test	r15, r15
	je	.LBB127_55
# %bb.16:
	mov	r14, qword ptr [rsp + 8]
	test	r14, r14
	je	.LBB127_58
# %bb.17:
	cmp	qword ptr [rsp + 24], 0
	jne	.LBB127_58
.LBB127_18:
	test	bpl, bpl
	jne	.LBB127_12
.LBB127_19:
	mov	r13, qword ptr [rbx + 32]
	test	r13, r13
	je	.LBB127_21
# %bb.20:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.23]
	mov	edx, 8
	mov	rdi, r13
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_21:
	mov	qword ptr [rsp + 72], 0
	mov	qword ptr [rsp + 80], r14
	lea	rsi, [rsp + 88]
	mov	qword ptr [rsp + 88], r15
	mov	qword ptr [rsp + 96], r14
	mov	qword ptr [rsp + 104], 0
	mov	qword ptr [rsp + 112], r14
	movabs	rax, 408021893215
	mov	qword ptr [rsp + 120], rax
	mov	byte ptr [rsp + 128], 1
	mov	word ptr [rsp + 136], 1
	mov	rdi, rsp
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
	cmp	dword ptr [rsp], 1
	jne	.LBB127_23
# %bb.22:
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 72]
	sub	rdx, rcx
	add	r15, rcx
	mov	qword ptr [rsp + 72], rax
	test	r13, r13
	jne	.LBB127_26
	jmp	.LBB127_27
.LBB127_23:
	cmp	byte ptr [rsp + 137], 0
	jne	.LBB127_80
# %bb.24:
	mov	byte ptr [rsp + 137], 1
	mov	r15, qword ptr [rsp + 72]
	mov	rdx, qword ptr [rsp + 80]
	sub	rdx, r15
	setne	al
	or	al, byte ptr [rsp + 136]
	cmp	al, 1
	jne	.LBB127_80
# %bb.25:
	add	r15, qword ptr [rsp + 88]
	test	r13, r13
	je	.LBB127_27
.LBB127_26:
	mov	rdi, r13
	mov	rsi, r15
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB127_31
.LBB127_27:
	mov	rax, qword ptr [rsp + 136]
	mov	qword ptr [rsp + 64], rax
	movups	xmm0, xmmword ptr [rsp + 72]
	movups	xmm1, xmmword ptr [rsp + 88]
	movups	xmm2, xmmword ptr [rsp + 104]
	movups	xmm3, xmmword ptr [rsp + 120]
	movaps	xmmword ptr [rsp + 48], xmm3
	movaps	xmmword ptr [rsp + 32], xmm2
	movaps	xmmword ptr [rsp + 16], xmm1
	movaps	xmmword ptr [rsp], xmm0
	cmp	byte ptr [rsp + 65], 0
	je	.LBB127_61
# %bb.28:
	mov	rbp, r13
.LBB127_29:
	test	rbp, rbp
	je	.LBB127_32
# %bb.30:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.25]
	mov	edx, 2
	mov	rdi, rbp
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB127_32
.LBB127_31:
	mov	al, 1
	jmp	.LBB127_79
.LBB127_32:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB127_34
# %bb.33:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.27]
	mov	edx, 3
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_34:
	mov	r15, qword ptr [rbx]
	test	r15, r15
	je	.LBB127_44
# %bb.35:
	lea	r14, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	xor	r12d, r12d
	.p2align	4
.LBB127_36:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, qword ptr [rbx + 8]
	jae	.LBB127_38
# %bb.37:                               #   in Loop: Header=BB127_36 Depth=1
	cmp	byte ptr [r15 + rax], 69
	je	.LBB127_46
.LBB127_38:                             #   in Loop: Header=BB127_36 Depth=1
	sub	r12, 1
	jb	.LBB127_41
# %bb.39:                               #   in Loop: Header=BB127_36 Depth=1
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB127_41
# %bb.40:                               #   in Loop: Header=BB127_36 Depth=1
	mov	edx, 2
	mov	rsi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB127_31
.LBB127_41:                             #   in Loop: Header=BB127_36 Depth=1
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	test	al, al
	jne	.LBB127_31
# %bb.42:                               #   in Loop: Header=BB127_36 Depth=1
	mov	r15, qword ptr [rbx]
	test	r15, r15
	jne	.LBB127_36
.LBB127_44:
	xor	r15d, r15d
	mov	r14, qword ptr [rbx + 32]
	test	r14, r14
	je	.LBB127_48
.LBB127_47:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.28]
	mov	edx, 1
	mov	rdi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_48:
	test	r15, r15
	je	.LBB127_52
# %bb.49:
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, qword ptr [rbx + 8]
	jae	.LBB127_52
# %bb.50:
	cmp	byte ptr [r15 + rax], 117
	jne	.LBB127_52
# %bb.51:
	inc	rax
	mov	qword ptr [rbx + 16], rax
	jmp	.LBB127_78
.LBB127_52:
	test	r14, r14
	je	.LBB127_54
# %bb.53:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.29]
	mov	edx, 4
	mov	rdi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_54:
	mov	rdi, rbx
	add	rsp, 168
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
	jmp	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type # TAILCALL
.LBB127_46:
	.cfi_def_cfa_offset 224
	inc	rax
	mov	qword ptr [rbx + 16], rax
	mov	r14, qword ptr [rbx + 32]
	test	r14, r14
	jne	.LBB127_47
	jmp	.LBB127_48
.LBB127_55:
	movzx	ebp, byte ptr [rsp + 8]
	mov	rdi, qword ptr [rbx + 32]
	test	bpl, bpl
	je	.LBB127_74
# %bb.56:
	test	rdi, rdi
	je	.LBB127_77
# %bb.57:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	jmp	.LBB127_76
.LBB127_58:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB127_60
# %bb.59:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_60:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
	jmp	.LBB127_78
.LBB127_61:
	mov	rbp, r13
	mov	r14, r13
	jmp	.LBB127_64
.LBB127_72:                             #   in Loop: Header=BB127_64 Depth=1
	xor	ebp, ebp
.LBB127_62:                             #   in Loop: Header=BB127_64 Depth=1
	xor	r14d, r14d
.LBB127_63:                             #   in Loop: Header=BB127_64 Depth=1
	cmp	byte ptr [rsp + 65], 0
	jne	.LBB127_29
.LBB127_64:                             # =>This Inner Loop Header: Depth=1
	mov	r15, qword ptr [rsp + 16]
	lea	rdi, [rsp + 144]
	lea	rsi, [rsp + 16]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
	cmp	dword ptr [rsp + 144], 1
	jne	.LBB127_66
# %bb.65:                               #   in Loop: Header=BB127_64 Depth=1
	mov	r12, qword ptr [rsp + 152]
	mov	rax, qword ptr [rsp + 160]
	mov	rcx, qword ptr [rsp]
	sub	r12, rcx
	add	r15, rcx
	mov	qword ptr [rsp], rax
	test	r14, r14
	jne	.LBB127_69
	jmp	.LBB127_62
	.p2align	4
.LBB127_66:                             #   in Loop: Header=BB127_64 Depth=1
	cmp	byte ptr [rsp + 65], 0
	jne	.LBB127_29
# %bb.67:                               #   in Loop: Header=BB127_64 Depth=1
	mov	byte ptr [rsp + 65], 1
	mov	r15, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 8]
	sub	r12, r15
	setne	al
	or	al, byte ptr [rsp + 64]
	test	al, 1
	je	.LBB127_29
# %bb.68:                               #   in Loop: Header=BB127_64 Depth=1
	add	r15, qword ptr [rsp + 16]
	test	r14, r14
	je	.LBB127_62
.LBB127_69:                             #   in Loop: Header=BB127_64 Depth=1
	mov	edx, 1
	mov	rdi, r14
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.26]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB127_31
# %bb.70:                               #   in Loop: Header=BB127_64 Depth=1
	test	r13, r13
	je	.LBB127_72
# %bb.71:                               #   in Loop: Header=BB127_64 Depth=1
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	rbp, r13
	mov	r14, r13
	test	al, al
	je	.LBB127_63
	jmp	.LBB127_31
.LBB127_74:
	test	rdi, rdi
	je	.LBB127_77
# %bb.75:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
.LBB127_76:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB127_79
.LBB127_77:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], bpl
.LBB127_78:
	xor	eax, eax
.LBB127_79:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 168
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
.LBB127_80:
	.cfi_def_cfa_offset 224
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.24]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Lfunc_end127:
	.size	_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_, .Lfunc_end127-_RNCNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB7_7Printer10print_type0B9_
	.cfi_endproc
                                        # -- End function
