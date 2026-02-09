	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
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
	mov	rbx, rdi
	mov	r14, qword ptr [rdi + 8]
	mov	r15, qword ptr [rdi + 16]
	test	r15, r15
	je	.LBB141_5
# %bb.1:
	lea	r12, [r14 + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB141_2
	.p2align	4
.LBB141_4:                              #   in Loop: Header=BB141_2 Depth=1
	add	r12, 24
	dec	r15
	je	.LBB141_5
.LBB141_2:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB141_4
# %bb.3:                                #   in Loop: Header=BB141_2 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
	jmp	.LBB141_4
.LBB141_5:
	cmp	qword ptr [rbx], 0
	je	.LBB141_7
# %bb.6:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB141_7:
	mov	r14, qword ptr [rbx + 32]
	mov	r15, qword ptr [rbx + 40]
	test	r15, r15
	je	.LBB141_10
# %bb.8:
	lea	r12, [r14 + 8]
	mov	r13, qword ptr [rip + munmap@GOTPCREL]
	.p2align	4
.LBB141_9:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [r12 - 8]
	mov	rsi, qword ptr [r12]
	call	r13
	add	r12, 16
	dec	r15
	jne	.LBB141_9
.LBB141_10:
	cmp	qword ptr [rbx + 24], 0
	je	.LBB141_11
# %bb.12:
	mov	rdi, r14
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
.LBB141_11:
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
.Lfunc_end141:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_, .Lfunc_end141-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
	.cfi_endproc
                                        # -- End function
