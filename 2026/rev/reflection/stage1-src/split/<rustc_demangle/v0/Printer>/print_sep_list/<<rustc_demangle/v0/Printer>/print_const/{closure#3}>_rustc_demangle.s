	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_
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
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rax, qword ptr [rdi]
	test	rax, rax
	je	.LBB104_9
# %bb.1:
	mov	r15, rdi
	xor	r14d, r14d
	lea	r12, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	xor	ebx, ebx
	.p2align	4
.LBB104_2:                              # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [r15 + 16]
	cmp	rcx, qword ptr [r15 + 8]
	jae	.LBB104_4
# %bb.3:                                #   in Loop: Header=BB104_2 Depth=1
	cmp	byte ptr [rax + rcx], 69
	je	.LBB104_11
.LBB104_4:                              #   in Loop: Header=BB104_2 Depth=1
	test	rbx, rbx
	je	.LBB104_7
# %bb.5:                                #   in Loop: Header=BB104_2 Depth=1
	mov	rdi, qword ptr [r15 + 32]
	test	rdi, rdi
	je	.LBB104_7
# %bb.6:                                #   in Loop: Header=BB104_2 Depth=1
	mov	edx, 2
	mov	rsi, r12
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB104_12
.LBB104_7:                              #   in Loop: Header=BB104_2 Depth=1
	mov	rdi, r15
	mov	esi, 1
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	test	al, al
	jne	.LBB104_12
# %bb.8:                                #   in Loop: Header=BB104_2 Depth=1
	inc	rbx
	mov	rax, qword ptr [r15]
	test	rax, rax
	jne	.LBB104_2
	jmp	.LBB104_13
.LBB104_9:
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.LBB104_13
.LBB104_12:
	mov	r14d, 1
	jmp	.LBB104_13
.LBB104_11:
	inc	rcx
	mov	qword ptr [r15 + 16], rcx
	xor	r14d, r14d
.LBB104_13:
	mov	rax, r14
	mov	rdx, rbx
	add	rsp, 8
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
.Lfunc_end104:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_, .Lfunc_end104-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_
	.cfi_endproc
                                        # -- End function
