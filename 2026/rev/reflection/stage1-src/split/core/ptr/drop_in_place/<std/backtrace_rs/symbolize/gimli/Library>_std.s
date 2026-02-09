	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	rbx, rdi
	cmp	qword ptr [rdi], 0
	je	.LBB304_2
# %bb.1:
	mov	rdi, qword ptr [rbx + 8]
	call	qword ptr [rip + free@GOTPCREL]
.LBB304_2:
	cmp	qword ptr [rbx + 24], 0
	je	.LBB304_3
# %bb.4:
	mov	rdi, qword ptr [rbx + 32]
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB304_3:
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end304:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_, .Lfunc_end304-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_
	.cfi_endproc
                                        # -- End function
