	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	cmp	qword ptr [rdi], 0
	je	.LBB306_2
# %bb.1:
	mov	rax, qword ptr [rdi + 8]
	mov	rbx, rdi
	mov	rdi, rax
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, rbx
.LBB306_2:
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.Lfunc_end306:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_, .Lfunc_end306-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error6CustomEBM_
	.cfi_endproc
                                        # -- End function
