	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std
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
	mov	r14, qword ptr [rdi]
	test	r14, r14
	je	.LBB269_13
# %bb.1:
	mov	rbx, rdi
	mov	r15, qword ptr [rdi + 8]
	test	r15, r15
	je	.LBB269_7
# %bb.2:
	lea	r12, [r14 + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB269_3
	.p2align	4
.LBB269_5:                              #   in Loop: Header=BB269_3 Depth=1
	add	r12, 24
	dec	r15
	je	.LBB269_6
.LBB269_3:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB269_5
# %bb.4:                                #   in Loop: Header=BB269_3 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
	jmp	.LBB269_5
.LBB269_6:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB269_7:
	mov	r14, qword ptr [rbx + 24]
	test	r14, r14
	je	.LBB269_13
# %bb.8:
	mov	rbx, qword ptr [rbx + 16]
	lea	r15, [rbx + 8]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB269_9
	.p2align	4
.LBB269_11:                             #   in Loop: Header=BB269_9 Depth=1
	add	r15, 32
	dec	r14
	je	.LBB269_12
.LBB269_9:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r15], 0
	je	.LBB269_11
# %bb.10:                               #   in Loop: Header=BB269_9 Depth=1
	mov	rdi, qword ptr [r15 - 8]
	call	r12
	jmp	.LBB269_11
.LBB269_13:
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
.LBB269_12:
	.cfi_def_cfa_offset 48
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
.Lfunc_end269:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std, .Lfunc_end269-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
