	.section	.text._RNvCsL6e0J8m5bd_7___rustc14___rust_realloc,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	.type	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc,@function
_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc: # @_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
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
	mov	r14, rdx
	cmp	rdx, 7
	ja	.LBB186_3
# %bb.1:
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rsp], 0
	mov	rdi, rsp
	mov	esi, 8
	mov	rdx, r14
	call	qword ptr [rip + posix_memalign@GOTPCREL]
	test	eax, eax
	setne	al
	mov	r15, qword ptr [rsp]
	test	r15, r15
	sete	cl
	or	cl, al
	je	.LBB186_4
# %bb.2:
	xor	r15d, r15d
	jmp	.LBB186_5
.LBB186_3:
	mov	rsi, r14
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
	jmp	qword ptr [rip + realloc@GOTPCREL] # TAILCALL
.LBB186_4:
	.cfi_def_cfa_offset 48
	cmp	r14, rbx
	cmovb	rbx, r14
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB186_5:
	mov	rax, r15
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
.Lfunc_end186:
	.size	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc, .Lfunc_end186-_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	.cfi_endproc
                                        # -- End function
