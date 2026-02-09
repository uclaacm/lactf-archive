	.section	.text._RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_
	.type	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_,@function
_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_: # @_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_
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
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	test	rdi, rdi
	je	.LBB101_1
# %bb.2:
	mov	r14, rdi
	mov	ebp, esi
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [r14 + 8]
	mov	esi, 39
	call	qword ptr [rax + 32]
	mov	bl, 1
	test	al, al
	jne	.LBB101_13
# %bb.3:
	lea	r15, [rsp + 8]
	mov	esi, ebp
	cmp	esi, 34
	jne	.LBB101_5
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	mov	esi, 34
	call	qword ptr [rax + 32]
	mov	esi, 1114112
	test	al, al
	jne	.LBB101_13
# %bb.4:                                #   in Loop: Header=BB101_10 Depth=1
	cmp	esi, 34
	je	.LBB101_10
.LBB101_5:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_11 Depth 2
                                        #     Child Loop BB101_8 Depth 2
	cmp	esi, 1114112
	je	.LBB101_15
# %bb.6:                                #   in Loop: Header=BB101_5 Depth=1
	mov	rdi, r15
	call	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62
	movzx	r12d, byte ptr [rsp + 21]
	movzx	r13d, byte ptr [rsp + 20]
	cmp	r12, 129
	jb	.LBB101_11
# %bb.7:                                #   in Loop: Header=BB101_5 Depth=1
	mov	ebp, dword ptr [rsp + 8]
	dec	r13b
	.p2align	4
.LBB101_8:                              #   Parent Loop BB101_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	inc	r13b
	cmp	r13b, r12b
	jae	.LBB101_14
# %bb.9:                                #   in Loop: Header=BB101_8 Depth=2
	mov	rdi, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	mov	esi, ebp
	call	qword ptr [rax + 32]
	test	al, al
	je	.LBB101_8
	jmp	.LBB101_13
	.p2align	4
.LBB101_11:                             #   Parent Loop BB101_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r13, r12
	jae	.LBB101_14
# %bb.12:                               #   in Loop: Header=BB101_11 Depth=2
	movzx	esi, byte ptr [rsp + r13 + 8]
	inc	r13
	mov	rdi, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	call	qword ptr [rax + 32]
	test	al, al
	je	.LBB101_11
	jmp	.LBB101_13
	.p2align	4
.LBB101_14:                             #   in Loop: Header=BB101_5 Depth=1
	mov	esi, 1114112
	cmp	esi, 34
	jne	.LBB101_5
	jmp	.LBB101_10
.LBB101_1:
	xor	ebx, ebx
.LBB101_13:
	mov	eax, ebx
	add	rsp, 24
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
.LBB101_15:
	.cfi_def_cfa_offset 80
	mov	rdi, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 32]
	mov	esi, 39
	add	rsp, 24
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
.Lfunc_end101:
	.size	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_, .Lfunc_end101-_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_
	.cfi_endproc
                                        # -- End function
