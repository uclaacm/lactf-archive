	.section	.text.unlikely._RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line
	.type	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line,@function
_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line: # @_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	mov	r15d, 1
	test	rcx, rcx
	jns	.LBB197_2
# %bb.1:
	mov	eax, 8
	xor	r14d, r14d
	jmp	.LBB197_8
.LBB197_2:
	mov	r14, rcx
	test	rsi, rsi
	je	.LBB197_3
# %bb.4:
	mov	rdi, rdx
	mov	rsi, r14
	call	qword ptr [rip + realloc@GOTPCREL]
	test	rax, rax
	je	.LBB197_6
.LBB197_7:
	mov	qword ptr [rbx + 8], rax
	mov	eax, 16
	xor	r15d, r15d
	jmp	.LBB197_8
.LBB197_3:
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	jne	.LBB197_7
.LBB197_6:
	mov	qword ptr [rbx + 8], 1
	mov	eax, 16
.LBB197_8:
	mov	qword ptr [rbx + rax], r14
	mov	qword ptr [rbx], r15
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end197:
	.size	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line, .Lfunc_end197-_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line
	.cfi_endproc
                                        # -- End function
