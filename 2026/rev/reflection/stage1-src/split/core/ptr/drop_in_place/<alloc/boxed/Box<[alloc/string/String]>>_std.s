	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	.cfi_startproc
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
	test	rsi, rsi
	je	.LBB191_6
# %bb.1:
	mov	rbx, rdi
	shl	rsi, 3
	lea	r14, [rsi + 2*rsi]
	xor	r15d, r15d
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB191_2
	.p2align	4
.LBB191_4:                              #   in Loop: Header=BB191_2 Depth=1
	add	r15, 24
	cmp	r14, r15
	je	.LBB191_5
.LBB191_2:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbx + r15], 0
	je	.LBB191_4
# %bb.3:                                #   in Loop: Header=BB191_2 Depth=1
	mov	rdi, qword ptr [rbx + r15 + 8]
	call	r12
	jmp	.LBB191_4
.LBB191_5:
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
.LBB191_6:
	.cfi_def_cfa_offset 48
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
.Lfunc_end191:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std, .Lfunc_end191-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
