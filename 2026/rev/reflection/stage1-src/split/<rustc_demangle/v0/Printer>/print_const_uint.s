	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint
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
	mov	rbx, rdi
	mov	r14, qword ptr [rdi]
	test	r14, r14
	je	.LBB97_1
# %bb.4:
	mov	eax, esi
	mov	rsi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 16]
	mov	r8, rdx
	.p2align	4
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	cmp	r8, rsi
	jae	.LBB97_23
# %bb.6:                                #   in Loop: Header=BB97_5 Depth=1
	mov	rcx, r8
	movzx	edi, byte ptr [r14 + r8]
	inc	r8
	mov	qword ptr [rbx + 16], r8
	lea	r9d, [rdi - 48]
	cmp	r9b, 10
	setb	r9b
	lea	r10d, [rdi - 97]
	cmp	r10b, 6
	setb	r10b
	or	r10b, r9b
	jne	.LBB97_5
# %bb.7:
	cmp	dil, 95
	jne	.LBB97_23
# %bb.8:
	mov	r15, rcx
	sub	r15, rdx
	jb	.LBB97_28
# %bb.9:
	mov	r12d, eax
	test	rdx, rdx
	je	.LBB97_11
# %bb.10:
	cmp	byte ptr [r14 + rdx], -65
	jle	.LBB97_28
.LBB97_11:
	add	r14, rdx
	mov	rdi, r14
	mov	rsi, r15
	call	_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint
	test	al, 1
	je	.LBB97_14
# %bb.12:
	mov	rbx, qword ptr [rbx + 32]
	mov	qword ptr [rsp + 8], rdx
	test	rbx, rbx
	je	.LBB97_26
# %bb.13:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	_RNvXsd_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impyNtB9_7Display3fmt
	mov	bpl, 1
	test	al, al
	je	.LBB97_18
	jmp	.LBB97_27
.LBB97_23:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB97_25
# %bb.24:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB97_27
.LBB97_25:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
	jmp	.LBB97_26
.LBB97_1:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB97_26
# %bb.2:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
.LBB97_3:
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
.LBB97_14:
	.cfi_def_cfa_offset 64
	mov	rbx, qword ptr [rbx + 32]
	test	rbx, rbx
	je	.LBB97_26
# %bb.15:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.77]
	mov	edx, 2
	mov	rdi, rbx
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB97_27
# %bb.16:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB97_27
.LBB97_18:
	test	byte ptr [rbx + 18], -128
	jne	.LBB97_26
# %bb.19:
	add	r12b, -97
	cmp	r12b, 25
	ja	.LBB97_22
# %bb.20:
	movzx	eax, r12b
	mov	ecx, 62716863
	bt	ecx, eax
	jae	.LBB97_22
# %bb.21:
	shl	eax, 3
	lea	rcx, [rip + .Lswitch.table._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint]
	mov	rdx, qword ptr [rax + rcx]
	lea	rcx, [rip + .Lswitch.table._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint.131]
	mov	rsi, qword ptr [rax + rcx]
	mov	rdi, rbx
	jmp	.LBB97_3
.LBB97_26:
	xor	ebp, ebp
.LBB97_27:
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
.LBB97_28:
	.cfi_def_cfa_offset 64
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.45]
	mov	rdi, r14
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB97_22:
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.78]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Lfunc_end97:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint, .Lfunc_end97-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint
	.cfi_endproc
                                        # -- End function
