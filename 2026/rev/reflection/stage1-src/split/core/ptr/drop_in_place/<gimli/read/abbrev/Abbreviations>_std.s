	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
.Lfunc_begin44:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception44
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
	mov	r14, qword ptr [rdi + 8]
	mov	r15, qword ptr [rdi + 16]
	test	r15, r15
	je	.LBB235_6
# %bb.1:
	lea	r12, [r14 + 16]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB235_3
	.p2align	4
.LBB235_2:                              #   in Loop: Header=BB235_3 Depth=1
	add	r12, 112
	dec	r15
	je	.LBB235_6
.LBB235_3:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 16], 0
	je	.LBB235_2
# %bb.4:                                #   in Loop: Header=BB235_3 Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB235_2
# %bb.5:                                #   in Loop: Header=BB235_3 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
	jmp	.LBB235_2
.LBB235_6:
	cmp	qword ptr [rbx], 0
	je	.LBB235_8
# %bb.7:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB235_8:
	mov	r12, qword ptr [rbx + 24]
	mov	r15, r12
	test	r12, r12
	setne	bpl
	je	.LBB235_10
# %bb.9:
	mov	r15, qword ptr [rbx + 40]
.LBB235_10:
	mov	rbx, qword ptr [rbx + 32]
	xor	edi, edi
	mov	r14, qword ptr [rip + free@GOTPCREL]
	.p2align	4
.LBB235_11:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB235_18 Depth 2
                                        #     Child Loop BB235_22 Depth 2
                                        #     Child Loop BB235_24 Depth 2
                                        #     Child Loop BB235_28 Depth 2
                                        #     Child Loop BB235_33 Depth 2
	test	r15, r15
	je	.LBB235_38
# %bb.12:                               #   in Loop: Header=BB235_11 Depth=1
	test	bpl, 1
	je	.LBB235_54
# %bb.13:                               #   in Loop: Header=BB235_11 Depth=1
	test	rdi, rdi
	je	.LBB235_16
# %bb.14:                               #   in Loop: Header=BB235_11 Depth=1
	movzx	eax, word ptr [rdi + 1330]
	cmp	rbx, rax
	jae	.LBB235_24
.LBB235_15:                             #   in Loop: Header=BB235_11 Depth=1
	mov	rbp, rbx
	mov	r13, rdi
	jmp	.LBB235_26
	.p2align	4
.LBB235_16:                             #   in Loop: Header=BB235_11 Depth=1
	test	rbx, rbx
	je	.LBB235_20
# %bb.17:                               #   in Loop: Header=BB235_11 Depth=1
	mov	rax, rbx
	mov	rdi, r12
	and	rax, 7
	je	.LBB235_21
	.p2align	4
.LBB235_18:                             #   Parent Loop BB235_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdi, qword ptr [rdi + 1336]
	dec	rax
	jne	.LBB235_18
# %bb.19:                               #   in Loop: Header=BB235_11 Depth=1
	mov	rax, rbx
	and	rax, -8
	cmp	rbx, 8
	jae	.LBB235_22
	jmp	.LBB235_23
.LBB235_20:                             #   in Loop: Header=BB235_11 Depth=1
	mov	rdi, r12
	jmp	.LBB235_23
.LBB235_21:                             #   in Loop: Header=BB235_11 Depth=1
	mov	rax, rbx
	cmp	rbx, 8
	jb	.LBB235_23
	.p2align	4
.LBB235_22:                             #   Parent Loop BB235_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [rdi + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rdi, qword ptr [rcx + 1336]
	add	rax, -8
	jne	.LBB235_22
.LBB235_23:                             #   in Loop: Header=BB235_11 Depth=1
	xor	ebx, ebx
	xor	r12d, r12d
	movzx	eax, word ptr [rdi + 1330]
	cmp	rbx, rax
	jb	.LBB235_15
	.p2align	4
.LBB235_24:                             #   Parent Loop BB235_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r13, qword ptr [rdi + 1232]
	test	r13, r13
	je	.LBB235_52
# %bb.25:                               #   in Loop: Header=BB235_24 Depth=2
	inc	r12
	movzx	ebp, word ptr [rdi + 1328]
	call	r14
	mov	rdi, r13
	cmp	bp, word ptr [r13 + 1330]
	jae	.LBB235_24
.LBB235_26:                             #   in Loop: Header=BB235_11 Depth=1
	test	r12, r12
	je	.LBB235_30
# %bb.27:                               #   in Loop: Header=BB235_11 Depth=1
	lea	rax, [8*rbp + 1344]
	add	rax, r13
	mov	rcx, r12
	and	rcx, 7
	je	.LBB235_31
	.p2align	4
.LBB235_28:                             #   Parent Loop BB235_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdi, qword ptr [rax]
	lea	rax, [rdi + 1336]
	dec	rcx
	jne	.LBB235_28
# %bb.29:                               #   in Loop: Header=BB235_11 Depth=1
	mov	rcx, r12
	and	rcx, -8
	cmp	r12, 8
	jb	.LBB235_34
	.p2align	4
.LBB235_33:                             #   Parent Loop BB235_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 1336]
	mov	rax, qword ptr [rax + 1336]
	mov	rax, qword ptr [rax + 1336]
	mov	rax, qword ptr [rax + 1336]
	mov	rax, qword ptr [rax + 1336]
	mov	rax, qword ptr [rax + 1336]
	mov	rdi, qword ptr [rax + 1336]
	lea	rax, [rdi + 1336]
	add	rcx, -8
	jne	.LBB235_33
.LBB235_34:                             #   in Loop: Header=BB235_11 Depth=1
	xor	ebx, ebx
	jmp	.LBB235_35
	.p2align	4
.LBB235_30:                             #   in Loop: Header=BB235_11 Depth=1
	lea	rbx, [rbp + 1]
	mov	rdi, r13
.LBB235_35:                             #   in Loop: Header=BB235_11 Depth=1
	dec	r15
	imul	rax, rbp, 112
	mov	bpl, 1
	cmp	qword ptr [r13 + rax], 0
	mov	r12d, 0
	je	.LBB235_11
# %bb.36:                               #   in Loop: Header=BB235_11 Depth=1
	add	r13, rax
	cmp	qword ptr [r13 + 8], 0
	mov	r12d, 0
	je	.LBB235_11
# %bb.37:                               #   in Loop: Header=BB235_11 Depth=1
	mov	rax, qword ptr [r13 + 16]
	mov	r12, rdi
	mov	rdi, rax
	call	r14
	mov	rdi, r12
	xor	r12d, r12d
	jmp	.LBB235_11
	.p2align	4
.LBB235_31:                             #   in Loop: Header=BB235_11 Depth=1
                                        # implicit-def: $rdi
	mov	rcx, r12
	cmp	r12, 8
	jb	.LBB235_34
	jmp	.LBB235_33
.LBB235_38:
	test	bpl, 1
	je	.LBB235_42
# %bb.39:
	test	rdi, rdi
	je	.LBB235_43
.LBB235_40:
	mov	rax, qword ptr [rdi + 1232]
	test	rax, rax
	je	.LBB235_47
	.p2align	4
.LBB235_41:                             # =>This Inner Loop Header: Depth=1
	mov	rbx, rax
	call	r14
	mov	rax, qword ptr [rbx + 1232]
	mov	rdi, rbx
	test	rax, rax
	jne	.LBB235_41
	jmp	.LBB235_48
.LBB235_42:
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
.LBB235_43:
	.cfi_def_cfa_offset 64
	test	rbx, rbx
	je	.LBB235_49
# %bb.44:
	mov	rax, rbx
	mov	rdi, r12
	and	rax, 7
	je	.LBB235_50
	.p2align	4
.LBB235_45:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rdi + 1336]
	dec	rax
	jne	.LBB235_45
# %bb.46:
	mov	rax, rbx
	and	rax, -8
	cmp	rbx, 8
	jae	.LBB235_51
	jmp	.LBB235_40
.LBB235_47:
	mov	rbx, rdi
.LBB235_48:
	mov	rdi, rbx
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
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB235_49:
	.cfi_def_cfa_offset 64
	mov	rdi, r12
	jmp	.LBB235_40
.LBB235_50:
	mov	rax, rbx
	cmp	rbx, 8
	jb	.LBB235_40
	.p2align	4
.LBB235_51:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rdi + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rcx, qword ptr [rcx + 1336]
	mov	rdi, qword ptr [rcx + 1336]
	add	rax, -8
	jne	.LBB235_51
	jmp	.LBB235_40
.LBB235_52:
	call	qword ptr [rip + free@GOTPCREL]
.Ltmp938:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.88]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp939:
# %bb.53:
.LBB235_54:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.38]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB235_55:
.Ltmp940:
	ud2
.Lfunc_end235:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std, .Lfunc_end235-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table235:
.Lexception44:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end44-.Lcst_begin44
.Lcst_begin44:
	.uleb128 .Lfunc_begin44-.Lfunc_begin44  # >> Call Site 1 <<
	.uleb128 .Ltmp938-.Lfunc_begin44        #   Call between .Lfunc_begin44 and .Ltmp938
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp938-.Lfunc_begin44        # >> Call Site 2 <<
	.uleb128 .Ltmp939-.Ltmp938              #   Call between .Ltmp938 and .Ltmp939
	.uleb128 .Ltmp940-.Lfunc_begin44        #     jumps to .Ltmp940
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp939-.Lfunc_begin44        # >> Call Site 3 <<
	.uleb128 .Lfunc_end235-.Ltmp939         #   Call between .Ltmp939 and .Lfunc_end235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end44:
	.p2align	2, 0x0
                                        # -- End function
