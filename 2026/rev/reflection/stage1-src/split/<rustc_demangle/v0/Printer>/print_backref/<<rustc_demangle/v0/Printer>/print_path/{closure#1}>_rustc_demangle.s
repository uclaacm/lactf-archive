	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_
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
	mov	r8, qword ptr [rdi]
	test	r8, r8
	je	.LBB84_19
# %bb.1:
	mov	r9, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 16]
	cmp	rcx, r9
	jae	.LBB84_7
# %bb.2:
	cmp	byte ptr [r8 + rcx], 95
	jne	.LBB84_7
# %bb.3:
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 16], rax
	xor	eax, eax
	dec	rcx
	cmp	rax, rcx
	jae	.LBB84_21
	jmp	.LBB84_4
.LBB84_7:
	xor	eax, eax
	mov	r11d, 62
	mov	r10, rcx
	.p2align	4
.LBB84_8:                               # =>This Inner Loop Header: Depth=1
	cmp	r10, r9
	jae	.LBB84_21
# %bb.9:                                #   in Loop: Header=BB84_8 Depth=1
	movzx	edx, byte ptr [r8 + r10]
	cmp	dl, 95
	je	.LBB84_22
# %bb.10:                               #   in Loop: Header=BB84_8 Depth=1
	lea	ebx, [rdx - 48]
	cmp	bl, 10
	jb	.LBB84_16
# %bb.11:                               #   in Loop: Header=BB84_8 Depth=1
	lea	ebx, [rdx - 97]
	cmp	bl, 26
	jae	.LBB84_13
# %bb.12:                               #   in Loop: Header=BB84_8 Depth=1
	add	dl, -87
	jmp	.LBB84_15
	.p2align	4
.LBB84_13:                              #   in Loop: Header=BB84_8 Depth=1
	lea	ebx, [rdx - 65]
	cmp	bl, 26
	jae	.LBB84_26
# %bb.14:                               #   in Loop: Header=BB84_8 Depth=1
	add	dl, -29
.LBB84_15:                              #   in Loop: Header=BB84_8 Depth=1
	mov	ebx, edx
.LBB84_16:                              #   in Loop: Header=BB84_8 Depth=1
	inc	r10
	mov	qword ptr [rdi + 16], r10
	mul	r11
	jo	.LBB84_21
# %bb.17:                               #   in Loop: Header=BB84_8 Depth=1
	movzx	edx, bl
	add	rax, rdx
	jae	.LBB84_8
	jmp	.LBB84_21
.LBB84_19:
	mov	rdi, qword ptr [rdi + 32]
	test	rdi, rdi
	je	.LBB84_30
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
.LBB84_22:
	.cfi_def_cfa_offset 64
	inc	r10
	mov	qword ptr [rdi + 16], r10
	cmp	rax, -1
	je	.LBB84_21
# %bb.23:
	inc	rax
	dec	rcx
	cmp	rax, rcx
	jae	.LBB84_21
.LBB84_4:
	mov	edx, dword ptr [rdi + 24]
	inc	edx
	mov	cl, 1
	cmp	edx, 501
	jae	.LBB84_27
# %bb.5:
	cmp	qword ptr [rdi + 32], 0
	je	.LBB84_30
# %bb.6:
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 16]
	movaps	xmmword ptr [rsp + 16], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rdi + 16], rax
	mov	dword ptr [rdi + 24], edx
	movzx	esi, sil
	mov	rbx, rdi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
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
.LBB84_21:
	.cfi_def_cfa_offset 64
	xor	ecx, ecx
	mov	rax, qword ptr [rdi + 32]
	movzx	ebx, cl
	test	rax, rax
	jne	.LBB84_28
	jmp	.LBB84_29
.LBB84_26:
	xor	ecx, ecx
.LBB84_27:
	mov	rax, qword ptr [rdi + 32]
	movzx	ebx, cl
	test	rax, rax
	je	.LBB84_29
.LBB84_28:
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
	jne	.LBB84_31
.LBB84_29:
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], rbx
.LBB84_30:
	xor	eax, eax
.LBB84_31:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end84:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_, .Lfunc_end84-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_10print_paths_0EB8_
	.cfi_endproc
                                        # -- End function
