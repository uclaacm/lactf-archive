	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_
.Lfunc_begin74:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception74
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
	mov	rbx, rdi
	mov	r14, qword ptr [rdi + 40]
	mov	r12, qword ptr [rdi + 48]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB332_2
# %bb.1:
.Ltmp1097:
	mov	rdi, r14
	call	rax
.Ltmp1098:
.LBB332_2:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB332_4
# %bb.3:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB332_4:
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
.LBB332_5:
	.cfi_def_cfa_offset 48
.Ltmp1099:
	mov	r15, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB332_7
# %bb.6:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB332_7:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end332:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_, .Lfunc_end332-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table332:
.Lexception74:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end74-.Lcst_begin74
.Lcst_begin74:
	.uleb128 .Ltmp1097-.Lfunc_begin74       # >> Call Site 1 <<
	.uleb128 .Ltmp1098-.Ltmp1097            #   Call between .Ltmp1097 and .Ltmp1098
	.uleb128 .Ltmp1099-.Lfunc_begin74       #     jumps to .Ltmp1099
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1098-.Lfunc_begin74       # >> Call Site 2 <<
	.uleb128 .Lfunc_end332-.Ltmp1098        #   Call between .Ltmp1098 and .Lfunc_end332
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end74:
	.p2align	2, 0x0
                                        # -- End function
