	.section	.text.unlikely._RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli
	.type	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli,@function
_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli: # @_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	r8, rdx
	mov	rbx, rdi
	inc	rsi
	mov	rax, qword ptr [rdi]
	lea	rcx, [rax + rax]
	cmp	rsi, rcx
	cmovbe	rsi, rcx
	cmp	rsi, 5
	mov	r14d, 4
	cmovae	r14, rsi
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, rsp
	mov	rsi, rax
	mov	rcx, r14
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli
	cmp	byte ptr [rsp], 0
	je	.LBB247_2
# %bb.1:
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 16]
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB247_2:
	.cfi_def_cfa_offset 48
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], r14
	movabs	rax, -9223372036854775807
                                        # implicit-def: $rdx
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end247:
	.size	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli, .Lfunc_end247-_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli
	.cfi_endproc
                                        # -- End function
