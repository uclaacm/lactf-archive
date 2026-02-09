	.section	.text._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_
	.type	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_,@function
_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_: # @_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_
.Lfunc_begin78:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception78
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
	mov	r14, rdx
	mov	rdx, rsi
	mov	rbx, rdi
	test	r14b, 1
	jne	.LBB336_1
# %bb.14:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.49]
	mov	rdi, rbx
	mov	rcx, r14
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
	jmp	_RNvNtCsfQL5qMWGko6_4core3fmt5write # TAILCALL
.LBB336_1:
	.cfi_def_cfa_offset 64
	shr	r14
	mov	r12, qword ptr [rbx]
	mov	r13, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 16]
	cmp	r13, rbp
	mov	rdi, rbp
	cmovb	rdi, r13
	sub	r13, rdi
	add	rdi, qword ptr [r12]
	cmp	r13, r14
	mov	r15, r14
	cmovb	r15, r13
	mov	rsi, rdx
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, rbp
	mov	qword ptr [r12 + 16], r15
	cmp	r13, r14
	jae	.LBB336_2
# %bb.3:
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB336_4
.LBB336_9:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	qword ptr [rbx + 8], rax
	mov	al, 1
	jmp	.LBB336_10
.LBB336_2:
	xor	eax, eax
.LBB336_10:
                                        # kill: def $al killed $al killed $eax
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
.LBB336_4:
	.cfi_def_cfa_offset 64
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r13, qword ptr [rax + 7]
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.LBB336_6
# %bb.5:
.Ltmp1112:
	mov	rdi, r15
	call	rax
.Ltmp1113:
.LBB336_6:
	cmp	qword ptr [r13 + 8], 0
	je	.LBB336_8
# %bb.7:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB336_8:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB336_9
.LBB336_11:
.Ltmp1114:
	mov	r12, rax
	cmp	qword ptr [r13 + 8], 0
	je	.LBB336_13
# %bb.12:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB336_13:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	qword ptr [rbx + 8], rax
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end336:
	.size	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_, .Lfunc_end336-_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_
	.cfi_endproc
	.section	.gcc_except_table._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table336:
.Lexception78:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end78-.Lcst_begin78
.Lcst_begin78:
	.uleb128 .Lfunc_begin78-.Lfunc_begin78  # >> Call Site 1 <<
	.uleb128 .Ltmp1112-.Lfunc_begin78       #   Call between .Lfunc_begin78 and .Ltmp1112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1112-.Lfunc_begin78       # >> Call Site 2 <<
	.uleb128 .Ltmp1113-.Ltmp1112            #   Call between .Ltmp1112 and .Ltmp1113
	.uleb128 .Ltmp1114-.Lfunc_begin78       #     jumps to .Ltmp1114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1113-.Lfunc_begin78       # >> Call Site 3 <<
	.uleb128 .Lfunc_end336-.Ltmp1113        #   Call between .Ltmp1113 and .Lfunc_end336
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end78:
	.p2align	2, 0x0
                                        # -- End function
