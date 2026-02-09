	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	test	rsi, rsi
	je	.LBB378_4
# %bb.1:
	mov	rdx, qword ptr [rdi + 16]
	mov	rbx, rdx
	sub	rbx, rsi
	jb	.LBB378_5
# %bb.2:
	mov	qword ptr [rdi + 16], 0
	je	.LBB378_4
# %bb.3:
	mov	rax, qword ptr [rdi + 8]
	add	rsi, rax
	mov	r14, rdi
	mov	rdi, rax
	mov	rdx, rbx
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	qword ptr [r14 + 16], rbx
.LBB378_4:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB378_5:
	.cfi_def_cfa_offset 32
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.36]
	xor	edi, edi
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end378:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_, .Lfunc_end378-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_
	.cfi_endproc
                                        # -- End function
