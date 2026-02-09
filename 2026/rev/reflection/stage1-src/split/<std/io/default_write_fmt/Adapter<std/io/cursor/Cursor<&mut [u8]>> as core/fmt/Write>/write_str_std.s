	.section	.text._RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_
	.type	_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_,@function
_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_: # @_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_
.Lfunc_begin76:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception76
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
	mov	rbx, rdi
	mov	r12, qword ptr [rdi]
	mov	r13, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 16]
	cmp	r13, rbp
	mov	rdi, rbp
	cmovb	rdi, r13
	sub	r13, rdi
	add	rdi, qword ptr [r12]
	cmp	r13, rdx
	mov	r15, rdx
	cmovb	r15, r13
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, rbp
	mov	qword ptr [r12 + 16], r15
	cmp	r13, r14
	jae	.LBB334_8
# %bb.1:
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB334_2
.LBB334_7:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	qword ptr [rbx + 8], rax
.LBB334_8:
	cmp	r13, r14
	setb	al
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
.LBB334_2:
	.cfi_def_cfa_offset 64
	lea	r15, [rax - 1]
	mov	r12, qword ptr [rax - 1]
	mov	rbp, qword ptr [rax + 7]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.LBB334_4
# %bb.3:
.Ltmp1106:
	mov	rdi, r12
	call	rax
.Ltmp1107:
.LBB334_4:
	cmp	qword ptr [rbp + 8], 0
	je	.LBB334_6
# %bb.5:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB334_6:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB334_7
.LBB334_9:
.Ltmp1108:
	mov	r14, rax
	cmp	qword ptr [rbp + 8], 0
	je	.LBB334_11
# %bb.10:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB334_11:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	qword ptr [rbx + 8], rax
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end334:
	.size	_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_, .Lfunc_end334-_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_
	.cfi_endproc
	.section	.gcc_except_table._RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterINtNtB4_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table334:
.Lexception76:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end76-.Lcst_begin76
.Lcst_begin76:
	.uleb128 .Lfunc_begin76-.Lfunc_begin76  # >> Call Site 1 <<
	.uleb128 .Ltmp1106-.Lfunc_begin76       #   Call between .Lfunc_begin76 and .Ltmp1106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1106-.Lfunc_begin76       # >> Call Site 2 <<
	.uleb128 .Ltmp1107-.Ltmp1106            #   Call between .Ltmp1106 and .Ltmp1107
	.uleb128 .Ltmp1108-.Lfunc_begin76       #     jumps to .Ltmp1108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1107-.Lfunc_begin76       # >> Call Site 3 <<
	.uleb128 .Lfunc_end334-.Ltmp1107        #   Call between .Ltmp1107 and .Lfunc_end334
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end76:
	.p2align	2, 0x0
                                        # -- End function
