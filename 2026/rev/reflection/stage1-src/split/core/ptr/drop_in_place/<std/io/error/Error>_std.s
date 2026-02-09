	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
.Lfunc_begin66:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception66
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
	mov	eax, edi
	and	eax, 3
	cmp	eax, 1
	je	.LBB321_1
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
.LBB321_1:
	.cfi_def_cfa_offset 48
	lea	rbx, [rdi - 1]
	mov	r14, qword ptr [rdi - 1]
	mov	r12, qword ptr [rdi + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB321_3
# %bb.2:
.Ltmp1070:
	mov	rdi, r14
	call	rax
.Ltmp1071:
.LBB321_3:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB321_5
# %bb.4:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB321_5:
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
.LBB321_6:
	.cfi_def_cfa_offset 48
.Ltmp1072:
	mov	r15, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB321_8
# %bb.7:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB321_8:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end321:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_, .Lfunc_end321-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table321:
.Lexception66:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end66-.Lcst_begin66
.Lcst_begin66:
	.uleb128 .Ltmp1070-.Lfunc_begin66       # >> Call Site 1 <<
	.uleb128 .Ltmp1071-.Ltmp1070            #   Call between .Ltmp1070 and .Ltmp1071
	.uleb128 .Ltmp1072-.Lfunc_begin66       #     jumps to .Ltmp1072
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1071-.Lfunc_begin66       # >> Call Site 2 <<
	.uleb128 .Lfunc_end321-.Ltmp1071        #   Call between .Ltmp1071 and .Lfunc_end321
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end66:
	.p2align	2, 0x0
                                        # -- End function
