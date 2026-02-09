	.section	.text._RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std
	.type	_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std,@function
_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std: # @_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std
.Lfunc_begin49:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception49
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
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rsi + 64]
	test	rax, rax
	je	.LBB259_1
# %bb.18:
	dec	rax
	mov	qword ptr [rsi + 64], rax
	cmp	dword ptr [rsi], 1
	jne	.LBB259_47
# %bb.19:
	mov	rdi, qword ptr [rsi + 8]
	test	rdi, rdi
	je	.LBB259_21
# %bb.20:
	mov	r14, qword ptr [rsi + 16]
	mov	r15, qword ptr [rsi + 24]
	movzx	eax, word ptr [rdi + 274]
	cmp	r15, rax
	jae	.LBB259_30
.LBB259_29:
	mov	r12, rdi
	test	r14, r14
	je	.LBB259_35
.LBB259_38:
	lea	rax, [r12 + 8*r15]
	add	rax, 288
	mov	rdx, r14
	and	rdx, 7
	je	.LBB259_39
	.p2align	4
.LBB259_40:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rax]
	lea	rax, [rcx + 280]
	dec	rdx
	jne	.LBB259_40
# %bb.41:
	mov	rdi, r14
	and	rdi, -8
	xor	edx, edx
	cmp	r14, 8
	jae	.LBB259_43
	jmp	.LBB259_36
.LBB259_1:
	mov	rdi, qword ptr [rsi + 8]
	mov	rax, qword ptr [rsi + 16]
	mov	rcx, qword ptr [rsi + 24]
	test	byte ptr [rsi], 1
	mov	qword ptr [rsi], 0
	je	.LBB259_17
# %bb.2:
	test	rdi, rdi
	je	.LBB259_3
.LBB259_12:
	mov	rax, qword ptr [rdi + 176]
	test	rax, rax
	je	.LBB259_13
# %bb.14:
	mov	r15, qword ptr [rip + free@GOTPCREL]
	.p2align	4
.LBB259_15:                             # =>This Inner Loop Header: Depth=1
	mov	r14, rax
	call	r15
	mov	rax, qword ptr [r14 + 176]
	mov	rdi, r14
	test	rax, rax
	jne	.LBB259_15
	jmp	.LBB259_16
.LBB259_21:
	mov	rdi, qword ptr [rsi + 16]
	mov	rcx, qword ptr [rsi + 24]
	test	rcx, rcx
	je	.LBB259_27
# %bb.22:
	mov	rax, rcx
	and	rax, 7
	je	.LBB259_23
	.p2align	4
.LBB259_24:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rdi + 280]
	dec	rax
	jne	.LBB259_24
# %bb.25:
	mov	rax, rcx
	and	rax, -8
	cmp	rcx, 8
	jb	.LBB259_27
	.p2align	4
.LBB259_48:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rdi + 280]
	mov	rcx, qword ptr [rcx + 280]
	mov	rcx, qword ptr [rcx + 280]
	mov	rcx, qword ptr [rcx + 280]
	mov	rcx, qword ptr [rcx + 280]
	mov	rcx, qword ptr [rcx + 280]
	mov	rcx, qword ptr [rcx + 280]
	mov	rdi, qword ptr [rcx + 280]
	add	rax, -8
	jne	.LBB259_48
.LBB259_27:
	mov	qword ptr [rsi], 1
	xor	r15d, r15d
	xor	r14d, r14d
	movzx	eax, word ptr [rdi + 274]
	cmp	r15, rax
	jb	.LBB259_29
.LBB259_30:
	mov	r13, rsi
	mov	rbp, qword ptr [rip + free@GOTPCREL]
	.p2align	4
.LBB259_31:                             # =>This Inner Loop Header: Depth=1
	mov	r12, qword ptr [rdi + 176]
	test	r12, r12
	je	.LBB259_44
# %bb.32:                               #   in Loop: Header=BB259_31 Depth=1
	inc	r14
	movzx	r15d, word ptr [rdi + 272]
	call	rbp
	mov	rdi, r12
	cmp	r15w, word ptr [r12 + 274]
	jae	.LBB259_31
# %bb.33:
	mov	rsi, r13
	test	r14, r14
	jne	.LBB259_38
.LBB259_35:
	lea	rdx, [r15 + 1]
	mov	rcx, r12
	jmp	.LBB259_36
.LBB259_39:
                                        # implicit-def: $rcx
	mov	rdi, r14
	xor	edx, edx
	cmp	r14, 8
	jb	.LBB259_36
	.p2align	4
.LBB259_43:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rcx, qword ptr [rax + 280]
	lea	rax, [rcx + 280]
	add	rdi, -8
	jne	.LBB259_43
.LBB259_36:
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 16], 0
	mov	qword ptr [rsi + 24], rdx
	mov	qword ptr [rbx], r12
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 16], r15
	jmp	.LBB259_37
.LBB259_3:
	test	rcx, rcx
	je	.LBB259_4
# %bb.5:
	mov	rdx, rcx
	and	rdx, 7
	je	.LBB259_6
	.p2align	4
.LBB259_7:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rax + 280]
	dec	rdx
	jne	.LBB259_7
# %bb.8:
	mov	rdx, rcx
	and	rdx, -8
	jmp	.LBB259_9
.LBB259_13:
	mov	r14, rdi
.LBB259_16:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB259_17:
	mov	qword ptr [rbx], 0
.LBB259_37:
	add	rsp, 8
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
.LBB259_23:
	.cfi_def_cfa_offset 64
	mov	rax, rcx
	cmp	rcx, 8
	jae	.LBB259_48
	jmp	.LBB259_27
.LBB259_4:
	mov	rdi, rax
	jmp	.LBB259_12
.LBB259_6:
	mov	rdx, rcx
.LBB259_9:
	mov	rdi, rax
	cmp	rcx, 8
	jb	.LBB259_12
# %bb.10:
	mov	rdi, rax
	.p2align	4
.LBB259_11:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rdi + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rax, qword ptr [rax + 280]
	mov	rdi, qword ptr [rax + 280]
	add	rdx, -8
	jne	.LBB259_11
	jmp	.LBB259_12
.LBB259_44:
	call	qword ptr [rip + free@GOTPCREL]
.Ltmp987:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.88]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp988:
# %bb.45:
.LBB259_47:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.38]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB259_46:
.Ltmp989:
	ud2
.Lfunc_end259:
	.size	_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std, .Lfunc_end259-_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table259:
.Lexception49:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end49-.Lcst_begin49
.Lcst_begin49:
	.uleb128 .Lfunc_begin49-.Lfunc_begin49  # >> Call Site 1 <<
	.uleb128 .Ltmp987-.Lfunc_begin49        #   Call between .Lfunc_begin49 and .Ltmp987
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp987-.Lfunc_begin49        # >> Call Site 2 <<
	.uleb128 .Ltmp988-.Ltmp987              #   Call between .Ltmp987 and .Ltmp988
	.uleb128 .Ltmp989-.Lfunc_begin49        #     jumps to .Ltmp989
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp988-.Lfunc_begin49        # >> Call Site 3 <<
	.uleb128 .Lfunc_end259-.Ltmp988         #   Call between .Ltmp988 and .Lfunc_end259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end49:
	.p2align	2, 0x0
                                        # -- End function
