	.section	.text._RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66
	.type	_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66,@function
_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66: # @_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66
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
	mov	r14, rdi
	mov	rax, qword ptr [rdi]
	mov	r15, qword ptr [rdi + 16]
	sub	rax, r15
	cmp	rdx, rax
	ja	.LBB19_1
.LBB19_2:
	mov	rdi, qword ptr [r14 + 8]
	add	rdi, r15
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, rbx
	mov	qword ptr [r14 + 16], r15
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
.LBB19_1:
	.cfi_def_cfa_offset 48
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r14
	mov	r12, rsi
	mov	rsi, r15
	mov	rdx, rbx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
	mov	rsi, r12
	mov	r15, qword ptr [r14 + 16]
	jmp	.LBB19_2
.Lfunc_end19:
	.size	_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66, .Lfunc_end19-_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write9write_str.66
	.cfi_endproc
                                        # -- End function
