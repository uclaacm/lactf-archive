	.section	.text._RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_
	.type	_RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_,@function
_RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_: # @_RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_
.Lfunc_begin64:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception64
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
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, rsi
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB305_11
# %bb.1:
	mov	rbx, rax
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	edi, 24
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB305_2
# %bb.6:
	mov	r14, rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], rbx
	mov	qword ptr [rax + 16], r15
	mov	edi, 24
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB305_7
# %bb.10:
	mov	qword ptr [rax], r14
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.872]
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rax + 16], 20
	inc	rax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB305_2:
	.cfi_def_cfa_offset 32
.Ltmp1064:
	mov	edi, 24
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1065:
# %bb.3:
.LBB305_7:
.Ltmp1061:
	mov	edi, 24
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1062:
# %bb.8:
.LBB305_11:
	mov	rdi, r15
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB305_9:
.Ltmp1063:
	mov	r15, rax
	mov	rdi, r14
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.LBB305_4:
.Ltmp1066:
	mov	r15, rax
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end305:
	.size	_RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_, .Lfunc_end305-_RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_
	.cfi_endproc
	.section	.gcc_except_table._RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table305:
.Lexception64:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end64-.Lcst_begin64
.Lcst_begin64:
	.uleb128 .Lfunc_begin64-.Lfunc_begin64  # >> Call Site 1 <<
	.uleb128 .Ltmp1064-.Lfunc_begin64       #   Call between .Lfunc_begin64 and .Ltmp1064
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1064-.Lfunc_begin64       # >> Call Site 2 <<
	.uleb128 .Ltmp1065-.Ltmp1064            #   Call between .Ltmp1064 and .Ltmp1065
	.uleb128 .Ltmp1066-.Lfunc_begin64       #     jumps to .Ltmp1066
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1061-.Lfunc_begin64       # >> Call Site 3 <<
	.uleb128 .Ltmp1062-.Ltmp1061            #   Call between .Ltmp1061 and .Ltmp1062
	.uleb128 .Ltmp1063-.Lfunc_begin64       #     jumps to .Ltmp1063
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1062-.Lfunc_begin64       # >> Call Site 4 <<
	.uleb128 .Lfunc_end305-.Ltmp1062        #   Call between .Ltmp1062 and .Lfunc_end305
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end64:
	.p2align	2, 0x0
                                        # -- End function
