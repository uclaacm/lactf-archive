	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 40
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rsi, qword ptr [rdi]
	test	rsi, rsi
	je	.LBB126_10
# %bb.1:
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 16]
	cmp	rcx, r8
	jae	.LBB126_10
# %bb.2:
	movzx	eax, byte ptr [rsi + rcx]
	cmp	eax, 73
	mov	r15, rdi
	je	.LBB126_13
# %bb.3:
	cmp	eax, 66
	jne	.LBB126_10
# %bb.4:
	lea	r9, [rcx + 1]
	mov	qword ptr [rdi + 16], r9
	cmp	r9, r8
	jae	.LBB126_25
# %bb.5:
	cmp	byte ptr [rsi + r9], 95
	jne	.LBB126_25
# %bb.6:
	lea	rax, [rcx + 2]
	mov	qword ptr [rdi + 16], rax
	xor	eax, eax
	cmp	rax, rcx
	jae	.LBB126_37
	jmp	.LBB126_7
.LBB126_10:
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
	mov	ebx, eax
	add	bl, bl
.LBB126_11:
	mov	eax, ebx
.LBB126_12:
	add	rsp, 40
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB126_13:
	.cfi_def_cfa_offset 80
	inc	rcx
	mov	qword ptr [rdi + 16], rcx
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
	test	al, al
	jne	.LBB126_45
# %bb.14:
	mov	rcx, r15
	mov	rdi, qword ptr [r15 + 32]
	test	rdi, rdi
	je	.LBB126_16
# %bb.15:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.57]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	rcx, r15
	test	al, al
	jne	.LBB126_45
.LBB126_16:
	mov	rax, qword ptr [rcx]
	mov	bl, 1
	test	rax, rax
	je	.LBB126_11
# %bb.17:
	xor	r12d, r12d
	lea	r14, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	.p2align	4
.LBB126_18:                             # =>This Inner Loop Header: Depth=1
	mov	rdx, qword ptr [rcx + 16]
	cmp	rdx, qword ptr [rcx + 8]
	jae	.LBB126_20
# %bb.19:                               #   in Loop: Header=BB126_18 Depth=1
	cmp	byte ptr [rax + rdx], 69
	je	.LBB126_46
.LBB126_20:                             #   in Loop: Header=BB126_18 Depth=1
	sub	r12, 1
	jb	.LBB126_23
# %bb.21:                               #   in Loop: Header=BB126_18 Depth=1
	mov	rdi, qword ptr [rcx + 32]
	test	rdi, rdi
	je	.LBB126_23
# %bb.22:                               #   in Loop: Header=BB126_18 Depth=1
	mov	edx, 2
	mov	rsi, r14
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	rcx, r15
	test	al, al
	jne	.LBB126_45
.LBB126_23:                             #   in Loop: Header=BB126_18 Depth=1
	mov	rdi, rcx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg
	test	al, al
	jne	.LBB126_45
# %bb.24:                               #   in Loop: Header=BB126_18 Depth=1
	mov	rcx, r15
	mov	rax, qword ptr [r15]
	test	rax, rax
	jne	.LBB126_18
	jmp	.LBB126_11
.LBB126_25:
	xor	eax, eax
	mov	r10d, 62
	.p2align	4
.LBB126_26:                             # =>This Inner Loop Header: Depth=1
	cmp	r9, r8
	jae	.LBB126_37
# %bb.27:                               #   in Loop: Header=BB126_26 Depth=1
	movzx	edx, byte ptr [rsi + r9]
	cmp	dl, 95
	je	.LBB126_38
# %bb.28:                               #   in Loop: Header=BB126_26 Depth=1
	lea	r11d, [rdx - 48]
	cmp	r11b, 10
	jb	.LBB126_34
# %bb.29:                               #   in Loop: Header=BB126_26 Depth=1
	lea	r11d, [rdx - 97]
	cmp	r11b, 26
	jae	.LBB126_31
# %bb.30:                               #   in Loop: Header=BB126_26 Depth=1
	add	dl, -87
	jmp	.LBB126_33
.LBB126_31:                             #   in Loop: Header=BB126_26 Depth=1
	lea	r11d, [rdx - 65]
	cmp	r11b, 26
	jae	.LBB126_42
# %bb.32:                               #   in Loop: Header=BB126_26 Depth=1
	add	dl, -29
.LBB126_33:                             #   in Loop: Header=BB126_26 Depth=1
	mov	r11d, edx
.LBB126_34:                             #   in Loop: Header=BB126_26 Depth=1
	inc	r9
	mov	qword ptr [rdi + 16], r9
	mul	r10
	jo	.LBB126_37
# %bb.35:                               #   in Loop: Header=BB126_26 Depth=1
	movzx	edx, r11b
	add	rax, rdx
	jae	.LBB126_26
	jmp	.LBB126_37
.LBB126_38:
	inc	r9
	mov	qword ptr [rdi + 16], r9
	cmp	rax, -1
	je	.LBB126_37
# %bb.39:
	inc	rax
	cmp	rax, rcx
	jae	.LBB126_37
.LBB126_7:
	mov	edx, dword ptr [rdi + 24]
	inc	edx
	mov	cl, 1
	cmp	edx, 501
	jae	.LBB126_43
# %bb.8:
	cmp	qword ptr [rdi + 32], 0
	je	.LBB126_49
# %bb.9:
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movaps	xmmword ptr [rsp + 16], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rdi + 16], rax
	mov	dword ptr [rdi + 24], edx
	mov	rbx, rdi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 16]
	movups	xmmword ptr [rbx], xmm0
	movups	xmmword ptr [rbx + 16], xmm1
	jmp	.LBB126_12
.LBB126_37:
	xor	ecx, ecx
	mov	rax, qword ptr [rdi + 32]
	movzx	ebx, cl
	test	rax, rax
	jne	.LBB126_44
	jmp	.LBB126_48
.LBB126_42:
	xor	ecx, ecx
.LBB126_43:
	mov	rax, qword ptr [rdi + 32]
	movzx	ebx, cl
	test	rax, rax
	je	.LBB126_48
.LBB126_44:
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	test	bl, bl
	cmovne	rsi, rcx
	lea	rdx, [rbx + 8*rbx]
	add	rdx, 16
	mov	rdi, rax
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	rdi, r15
	test	al, al
	je	.LBB126_48
.LBB126_45:
	mov	bl, 2
	jmp	.LBB126_11
.LBB126_48:
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], rbx
.LBB126_49:
	xor	ebx, ebx
	jmp	.LBB126_11
.LBB126_46:
	inc	rdx
	mov	qword ptr [rcx + 16], rdx
	jmp	.LBB126_11
.Lfunc_end126:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics, .Lfunc_end126-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer30print_path_maybe_open_generics
	.cfi_endproc
                                        # -- End function
