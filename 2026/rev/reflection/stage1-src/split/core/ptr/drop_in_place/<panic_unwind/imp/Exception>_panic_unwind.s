	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_
.Lfunc_begin72:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception72
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rsi]
	test	rax, rax
	je	.LBB330_2
# %bb.1:
.Ltmp1091:
	mov	rdi, rbx
	call	rax
.Ltmp1092:
.LBB330_2:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB330_7
# %bb.3:
	mov	rdi, rbx
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB330_7:
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB330_4:
	.cfi_def_cfa_offset 32
.Ltmp1093:
	mov	r15, rax
	cmp	qword ptr [r14 + 8], 0
	je	.LBB330_6
# %bb.5:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB330_6:
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end330:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_, .Lfunc_end330-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table330:
.Lexception72:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end72-.Lcst_begin72
.Lcst_begin72:
	.uleb128 .Ltmp1091-.Lfunc_begin72       # >> Call Site 1 <<
	.uleb128 .Ltmp1092-.Ltmp1091            #   Call between .Ltmp1091 and .Ltmp1092
	.uleb128 .Ltmp1093-.Lfunc_begin72       #     jumps to .Ltmp1093
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1092-.Lfunc_begin72       # >> Call Site 2 <<
	.uleb128 .Lfunc_end330-.Ltmp1092        #   Call between .Ltmp1092 and .Lfunc_end330
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end72:
	.p2align	2, 0x0
                                        # -- End function
