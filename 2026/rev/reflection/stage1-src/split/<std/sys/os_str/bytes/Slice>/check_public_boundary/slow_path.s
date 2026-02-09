	.section	.text._RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path
	.type	_RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path,@function
_RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path: # @_RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 32], rdx
	sub	rsi, rdx
	jb	.LBB290_11
# %bb.1:
	mov	rbx, rdx
	mov	r14, rdi
	lea	rax, [rdi + rdx]
	cmp	rsi, 4
	mov	edx, 4
	cmovb	rdx, rsi
	lea	rdi, [rsp + 8]
	mov	rsi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	dword ptr [rsp + 8], 1
	jne	.LBB290_10
# %bb.2:
	cmp	qword ptr [rsp + 16], 0
	jne	.LBB290_10
# %bb.3:
	cmp	rbx, 4
	mov	r13d, 4
	cmovb	r13, rbx
	cmp	rbx, 2
	jb	.LBB290_9
# %bb.4:
	mov	r12d, 2
	lea	r15, [rsp + 8]
	mov	ebp, 2
	.p2align	4
.LBB290_5:                              # =>This Inner Loop Header: Depth=1
	cmp	r12, r13
	adc	rbp, 0
	mov	rsi, rbx
	sub	rsi, r12
	jb	.LBB290_12
# %bb.6:                                #   in Loop: Header=BB290_5 Depth=1
	add	rsi, r14
	mov	rdi, r15
	mov	rdx, r12
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	qword ptr [rsp + 8], 0
	je	.LBB290_10
# %bb.7:                                #   in Loop: Header=BB290_5 Depth=1
	cmp	r12, r13
	jae	.LBB290_9
# %bb.8:                                #   in Loop: Header=BB290_5 Depth=1
	mov	r12, rbp
	cmp	rbp, r13
	jbe	.LBB290_5
.LBB290_9:
	lea	rax, [rsp + 32]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 16], rax
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.549]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.378]
	lea	rsi, [rsp + 8]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB290_10:
	add	rsp, 40
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB290_12:
	.cfi_def_cfa_offset 96
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.378]
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB290_11:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.378]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end290:
	.size	_RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path, .Lfunc_end290-_RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path
	.cfi_endproc
                                        # -- End function
