	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 40
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rsi, qword ptr [rdi]
	test	rsi, rsi
	je	.LBB120_19
# %bb.1:
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 16]
	cmp	rcx, r8
	jae	.LBB120_7
# %bb.2:
	cmp	byte ptr [rsi + rcx], 95
	jne	.LBB120_7
# %bb.3:
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 16], rax
	xor	eax, eax
	dec	rcx
	cmp	rax, rcx
	jae	.LBB120_21
	jmp	.LBB120_4
.LBB120_7:
	xor	eax, eax
	mov	r10d, 62
	mov	r9, rcx
	.p2align	4
.LBB120_8:                              # =>This Inner Loop Header: Depth=1
	cmp	r9, r8
	jae	.LBB120_21
# %bb.9:                                #   in Loop: Header=BB120_8 Depth=1
	movzx	edx, byte ptr [rsi + r9]
	cmp	dl, 95
	je	.LBB120_22
# %bb.10:                               #   in Loop: Header=BB120_8 Depth=1
	lea	r11d, [rdx - 48]
	cmp	r11b, 10
	jb	.LBB120_16
# %bb.11:                               #   in Loop: Header=BB120_8 Depth=1
	lea	r11d, [rdx - 97]
	cmp	r11b, 26
	jae	.LBB120_13
# %bb.12:                               #   in Loop: Header=BB120_8 Depth=1
	add	dl, -87
	jmp	.LBB120_15
	.p2align	4
.LBB120_13:                             #   in Loop: Header=BB120_8 Depth=1
	lea	r11d, [rdx - 65]
	cmp	r11b, 26
	jae	.LBB120_26
# %bb.14:                               #   in Loop: Header=BB120_8 Depth=1
	add	dl, -29
.LBB120_15:                             #   in Loop: Header=BB120_8 Depth=1
	mov	r11d, edx
.LBB120_16:                             #   in Loop: Header=BB120_8 Depth=1
	inc	r9
	mov	qword ptr [rdi + 16], r9
	mul	r10
	jo	.LBB120_21
# %bb.17:                               #   in Loop: Header=BB120_8 Depth=1
	movzx	edx, r11b
	add	rax, rdx
	jae	.LBB120_8
	jmp	.LBB120_21
.LBB120_19:
	mov	rdi, qword ptr [rdi + 32]
	test	rdi, rdi
	je	.LBB120_30
# %bb.20:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB120_22:
	.cfi_def_cfa_offset 64
	inc	r9
	mov	qword ptr [rdi + 16], r9
	cmp	rax, -1
	je	.LBB120_21
# %bb.23:
	inc	rax
	dec	rcx
	cmp	rax, rcx
	jae	.LBB120_21
.LBB120_4:
	mov	edx, dword ptr [rdi + 24]
	inc	edx
	mov	cl, 1
	cmp	edx, 501
	jae	.LBB120_27
# %bb.5:
	cmp	qword ptr [rdi + 32], 0
	je	.LBB120_30
# %bb.6:
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movaps	xmmword ptr [rsp + 16], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rdi + 16], rax
	mov	dword ptr [rdi + 24], edx
	mov	rbx, rdi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 16]
	movups	xmmword ptr [rbx], xmm0
	movups	xmmword ptr [rbx + 16], xmm1
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB120_21:
	.cfi_def_cfa_offset 64
	xor	ecx, ecx
	mov	rax, qword ptr [rdi + 32]
	movzx	ebx, cl
	test	rax, rax
	jne	.LBB120_28
	jmp	.LBB120_29
.LBB120_26:
	xor	ecx, ecx
.LBB120_27:
	mov	rax, qword ptr [rdi + 32]
	movzx	ebx, cl
	test	rax, rax
	je	.LBB120_29
.LBB120_28:
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	test	bl, bl
	cmovne	rsi, rcx
	lea	rdx, [rbx + 8*rbx]
	add	rdx, 16
	mov	r14, rdi
	mov	rdi, rax
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	rdi, r14
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB120_31
.LBB120_29:
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], rbx
.LBB120_30:
	xor	eax, eax
.LBB120_31:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end120:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_, .Lfunc_end120-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_
	.cfi_endproc
                                        # -- End function
