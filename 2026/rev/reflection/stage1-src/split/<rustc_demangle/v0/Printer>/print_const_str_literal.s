	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal
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
	sub	rsp, 56
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdi
	mov	r15, qword ptr [rdi]
	test	r15, r15
	je	.LBB102_1
# %bb.3:
	mov	rsi, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r14 + 16]
	mov	rdi, rdx
	.p2align	4
.LBB102_4:                              # =>This Inner Loop Header: Depth=1
	cmp	rdi, rsi
	jae	.LBB102_27
# %bb.5:                                #   in Loop: Header=BB102_4 Depth=1
	mov	rcx, rdi
	movzx	eax, byte ptr [r15 + rdi]
	inc	rdi
	mov	qword ptr [r14 + 16], rdi
	lea	r8d, [rax - 48]
	cmp	r8b, 10
	setb	r8b
	lea	r9d, [rax - 97]
	cmp	r9b, 6
	setb	r9b
	or	r9b, r8b
	jne	.LBB102_4
# %bb.6:
	cmp	al, 95
	jne	.LBB102_27
# %bb.7:
	mov	r13, rcx
	sub	r13, rdx
	jb	.LBB102_32
# %bb.8:
	test	rdx, rdx
	je	.LBB102_10
# %bb.9:
	cmp	byte ptr [r15 + rdx], -65
	jle	.LBB102_32
.LBB102_10:
	test	r13b, 1
	jne	.LBB102_27
# %bb.11:
	add	r15, rdx
	movabs	rax, 9223372036854775806
	and	r13, rax
	lea	rbp, [r15 + r13]
	mov	qword ptr [rsp + 16], r15
	mov	qword ptr [rsp + 24], r13
	mov	qword ptr [rsp + 32], rbp
	mov	qword ptr [rsp + 40], 0
	mov	qword ptr [rsp + 48], 2
	lea	rbx, [rsp + 16]
	.p2align	4
.LBB102_12:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, rbx
	call	_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	cmp	eax, 1114112
	jb	.LBB102_12
# %bb.13:
	cmp	eax, 1114113
	jne	.LBB102_27
# %bb.14:
	mov	r12, qword ptr [r14 + 32]
	test	r12, r12
	je	.LBB102_30
# %bb.15:
	mov	rdi, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	mov	esi, 34
	call	qword ptr [rax + 32]
	mov	bl, 1
	test	al, al
	jne	.LBB102_31
# %bb.16:
	mov	qword ptr [rsp + 16], r15
	mov	qword ptr [rsp + 24], r13
	mov	qword ptr [rsp + 32], rbp
	mov	qword ptr [rsp + 40], 0
	mov	qword ptr [rsp + 48], 2
	lea	r14, [rsp + 16]
	mov	r15, rsp
	mov	rdi, r14
	call	_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	cmp	eax, 1114113
	jne	.LBB102_18
	jmp	.LBB102_34
.LBB102_27:
	mov	rdi, qword ptr [r14 + 32]
	test	rdi, rdi
	je	.LBB102_29
# %bb.28:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bl, 1
	test	al, al
	jne	.LBB102_31
.LBB102_29:
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], 0
	jmp	.LBB102_30
.LBB102_1:
	mov	rdi, qword ptr [r14 + 32]
	test	rdi, rdi
	je	.LBB102_30
# %bb.2:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
	add	rsp, 56
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
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB102_30:
	.cfi_def_cfa_offset 112
	xor	ebx, ebx
.LBB102_31:
	mov	eax, ebx
	add	rsp, 56
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
.LBB102_24:                             #   in Loop: Header=BB102_18 Depth=1
	.cfi_def_cfa_offset 112
	mov	rdi, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	mov	esi, 39
	call	qword ptr [rax + 32]
	test	al, al
	jne	.LBB102_31
# %bb.17:                               #   in Loop: Header=BB102_18 Depth=1
	mov	rdi, r14
	call	_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	cmp	eax, 1114113
	je	.LBB102_34
.LBB102_18:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB102_25 Depth 2
                                        #     Child Loop BB102_22 Depth 2
	cmp	eax, 1114112
	je	.LBB102_33
# %bb.19:                               #   in Loop: Header=BB102_18 Depth=1
	cmp	eax, 39
	je	.LBB102_24
# %bb.20:                               #   in Loop: Header=BB102_18 Depth=1
	mov	r14, r15
	mov	rdi, r15
	mov	esi, eax
	call	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62
	movzx	r13d, byte ptr [rsp + 13]
	movzx	r15d, byte ptr [rsp + 12]
	cmp	r13, 129
	jb	.LBB102_25
# %bb.21:                               #   in Loop: Header=BB102_18 Depth=1
	mov	ebp, dword ptr [rsp]
	dec	r15b
.LBB102_22:                             #   Parent Loop BB102_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	inc	r15b
	cmp	r15b, r13b
	jae	.LBB102_35
# %bb.23:                               #   in Loop: Header=BB102_22 Depth=2
	mov	rdi, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	mov	esi, ebp
	call	qword ptr [rax + 32]
	test	al, al
	je	.LBB102_22
	jmp	.LBB102_31
.LBB102_25:                             #   Parent Loop BB102_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r15, r13
	jae	.LBB102_35
# %bb.26:                               #   in Loop: Header=BB102_25 Depth=2
	movzx	esi, byte ptr [rsp + r15]
	inc	r15
	mov	rdi, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	call	qword ptr [rax + 32]
	test	al, al
	je	.LBB102_25
	jmp	.LBB102_31
.LBB102_35:                             #   in Loop: Header=BB102_18 Depth=1
	mov	r15, r14
	lea	r14, [rsp + 16]
	mov	rdi, r14
	call	_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	cmp	eax, 1114113
	jne	.LBB102_18
.LBB102_34:
	mov	rdi, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	mov	rax, qword ptr [rax + 32]
	mov	esi, 34
	add	rsp, 56
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
	jmp	rax                             # TAILCALL
.LBB102_33:
	.cfi_def_cfa_offset 112
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.156]
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.38]
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.163]
	mov	rdx, rsp
	mov	esi, 43
	call	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
.LBB102_32:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.45]
	mov	rdi, r15
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end102:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal, .Lfunc_end102-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal
	.cfi_endproc
                                        # -- End function
