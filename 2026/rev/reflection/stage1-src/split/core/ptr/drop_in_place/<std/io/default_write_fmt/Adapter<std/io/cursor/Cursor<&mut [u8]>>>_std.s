	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_
.Lfunc_begin67:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception67
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
	mov	rax, qword ptr [rdi + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB322_1
# %bb.9:
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
.LBB322_1:
	.cfi_def_cfa_offset 48
	lea	rbx, [rax - 1]
	mov	r14, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB322_3
# %bb.2:
.Ltmp1073:
	mov	rdi, r14
	call	rax
.Ltmp1074:
.LBB322_3:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB322_5
# %bb.4:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB322_5:
	mov	rdi, rbx
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
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB322_6:
	.cfi_def_cfa_offset 48
.Ltmp1075:
	mov	r15, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB322_8
# %bb.7:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB322_8:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end322:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_, .Lfunc_end322-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtBL_6cursor6CursorQShEEEBN_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table322:
.Lexception67:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end67-.Lcst_begin67
.Lcst_begin67:
	.uleb128 .Ltmp1073-.Lfunc_begin67       # >> Call Site 1 <<
	.uleb128 .Ltmp1074-.Ltmp1073            #   Call between .Ltmp1073 and .Ltmp1074
	.uleb128 .Ltmp1075-.Lfunc_begin67       #     jumps to .Ltmp1075
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1074-.Lfunc_begin67       # >> Call Site 2 <<
	.uleb128 .Lfunc_end322-.Ltmp1074        #   Call between .Ltmp1074 and .Lfunc_end322
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end67:
	.p2align	2, 0x0
                                        # -- End function
