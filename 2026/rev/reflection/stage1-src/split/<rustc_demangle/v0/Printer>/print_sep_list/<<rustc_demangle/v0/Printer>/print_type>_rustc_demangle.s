	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_
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
	je	.LBB122_9
# %bb.1:
	mov	r15, rdi
	xor	r14d, r14d
	lea	r12, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.8]
	xor	ebx, ebx
	.p2align	4
.LBB122_2:                              # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [r15 + 16]
	cmp	rcx, qword ptr [r15 + 8]
	jae	.LBB122_4
# %bb.3:                                #   in Loop: Header=BB122_2 Depth=1
	cmp	byte ptr [rax + rcx], 69
	je	.LBB122_11
.LBB122_4:                              #   in Loop: Header=BB122_2 Depth=1
	test	rbx, rbx
	je	.LBB122_7
# %bb.5:                                #   in Loop: Header=BB122_2 Depth=1
	mov	rdi, qword ptr [r15 + 32]
	test	rdi, rdi
	je	.LBB122_7
# %bb.6:                                #   in Loop: Header=BB122_2 Depth=1
	mov	edx, 2
	mov	rsi, r12
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB122_12
.LBB122_7:                              #   in Loop: Header=BB122_2 Depth=1
	mov	rdi, r15
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	test	al, al
	jne	.LBB122_12
# %bb.8:                                #   in Loop: Header=BB122_2 Depth=1
	inc	rbx
	mov	rax, qword ptr [r15]
	test	rax, rax
	jne	.LBB122_2
	jmp	.LBB122_13
.LBB122_9:
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.LBB122_13
.LBB122_12:
	mov	r14d, 1
	jmp	.LBB122_13
.LBB122_11:
	inc	rcx
	mov	qword ptr [r15 + 16], rcx
	xor	r14d, r14d
.LBB122_13:
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
.Lfunc_end122:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_, .Lfunc_end122-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_
	.cfi_endproc
                                        # -- End function
