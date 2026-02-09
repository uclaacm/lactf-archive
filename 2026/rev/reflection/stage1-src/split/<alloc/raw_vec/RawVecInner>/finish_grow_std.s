	.section	.text.unlikely._RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	.type	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std,@function
_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std: # @_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
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
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r12, rdx
	mov	rbx, rdi
	lea	rdx, [r8 + r9]
	dec	rdx
	mov	rax, r8
	neg	rax
	and	rax, rdx
	mul	rcx
	mov	r14, rax
	seto	al
	movabs	rcx, -9223372036854775808
	sub	rcx, r8
	cmp	r14, rcx
	seta	cl
	or	cl, al
	mov	r13d, 1
	je	.LBB22_2
# %bb.1:
	mov	eax, 8
	xor	r14d, r14d
	jmp	.LBB22_16
.LBB22_2:
	mov	r15, r8
	test	rsi, rsi
	je	.LBB22_3
# %bb.8:
	cmp	r15, r14
	jbe	.LBB22_13
# %bb.9:
	mov	qword ptr [rsp + 16], rsi       # 8-byte Spill
	mov	rbp, r9
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 8]
	mov	esi, 8
	mov	rdx, r14
	call	qword ptr [rip + posix_memalign@GOTPCREL]
	test	eax, eax
	setne	al
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	sete	cl
	or	cl, al
	jne	.LBB22_15
# %bb.10:
	imul	rbp, qword ptr [rsp + 16]       # 8-byte Folded Reload
	mov	rsi, r12
	mov	rdx, rbp
	mov	r15, rdi
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB22_11
.LBB22_3:
	test	r14, r14
	je	.LBB22_11
# %bb.4:
	cmp	r15, r14
	jbe	.LBB22_7
# %bb.5:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 8]
	mov	esi, 8
	mov	rdx, r14
	call	qword ptr [rip + posix_memalign@GOTPCREL]
	test	eax, eax
	jne	.LBB22_15
# %bb.6:
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jne	.LBB22_12
	jmp	.LBB22_15
.LBB22_13:
	mov	rdi, r12
	mov	rsi, r14
	call	qword ptr [rip + realloc@GOTPCREL]
	test	rax, rax
	jne	.LBB22_12
	jmp	.LBB22_15
.LBB22_11:
	mov	rax, r15
.LBB22_12:
	mov	qword ptr [rbx + 8], rax
	mov	eax, 16
	xor	r13d, r13d
	jmp	.LBB22_16
.LBB22_7:
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	jne	.LBB22_12
.LBB22_15:
	mov	qword ptr [rbx + 8], r15
	mov	eax, 16
.LBB22_16:
	mov	qword ptr [rbx + rax], r14
	mov	qword ptr [rbx], r13
	add	rsp, 24
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
.Lfunc_end22:
	.size	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std, .Lfunc_end22-_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
