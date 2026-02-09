	.section	.text._RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std
	.type	_RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std,@function
_RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std: # @_RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std
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
	mov	rbx, rdx
	test	bl, 1
	jne	.LBB21_1
# %bb.4:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.103]
	mov	rdx, rsi
	mov	rsi, rax
	mov	rcx, rbx
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
	jmp	_RNvNtCsfQL5qMWGko6_4core3fmt5write # TAILCALL
.LBB21_1:
	.cfi_def_cfa_offset 48
	shr	rbx
	mov	rax, qword ptr [rdi]
	mov	r14, qword ptr [rdi + 16]
	sub	rax, r14
	cmp	rbx, rax
	ja	.LBB21_2
.LBB21_3:
	mov	rax, qword ptr [rdi + 8]
	add	rax, r14
	mov	r15, rdi
	mov	rdi, rax
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r14, rbx
	mov	qword ptr [r15 + 16], r14
	xor	eax, eax
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
.LBB21_2:
	.cfi_def_cfa_offset 48
	mov	ecx, 1
	mov	r8d, 1
	mov	r15, rdi
	mov	r12, rsi
	mov	rsi, r14
	mov	rdx, rbx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
	mov	rsi, r12
	mov	rdi, r15
	mov	r14, qword ptr [r15 + 16]
	jmp	.LBB21_3
.Lfunc_end21:
	.size	_RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std, .Lfunc_end21-_RNvYNtNtCs78A21jy8lRn_5alloc6string6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
