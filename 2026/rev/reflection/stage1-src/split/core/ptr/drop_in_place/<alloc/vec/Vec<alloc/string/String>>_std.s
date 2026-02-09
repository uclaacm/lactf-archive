	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r13
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rdi
	mov	rbx, qword ptr [rdi + 8]
	mov	r15, qword ptr [rdi + 16]
	test	r15, r15
	je	.LBB188_5
# %bb.1:
	lea	r12, [rbx + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB188_2
	.p2align	4
.LBB188_4:                              #   in Loop: Header=BB188_2 Depth=1
	add	r12, 24
	dec	r15
	je	.LBB188_5
.LBB188_2:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB188_4
# %bb.3:                                #   in Loop: Header=BB188_2 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
	jmp	.LBB188_4
.LBB188_5:
	cmp	qword ptr [r14], 0
	je	.LBB188_6
# %bb.7:
	mov	rdi, rbx
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB188_6:
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end188:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std, .Lfunc_end188-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
