	.section	.text.unlikely._RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli
	.type	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli,@function
_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli: # @_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli
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
	mov	r9, rdx
	mov	rbx, rdi
	lea	eax, [r8 + 7]
	and	eax, 248
	mul	rcx
	mov	r14, rax
	seto	al
	movabs	rcx, 9223372036854775800
	cmp	r14, rcx
	seta	cl
	or	cl, al
	mov	r15d, 1
	je	.LBB248_2
# %bb.1:
	mov	eax, 8
	xor	r14d, r14d
	jmp	.LBB248_10
.LBB248_2:
	test	rsi, rsi
	je	.LBB248_3
# %bb.7:
	mov	rdi, r9
	mov	rsi, r14
	call	qword ptr [rip + realloc@GOTPCREL]
	test	rax, rax
	jne	.LBB248_5
	jmp	.LBB248_9
.LBB248_3:
	test	r14, r14
	je	.LBB248_4
# %bb.6:
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	jne	.LBB248_5
.LBB248_9:
	mov	qword ptr [rbx + 8], 8
	mov	eax, 16
	jmp	.LBB248_10
.LBB248_4:
	mov	eax, 8
.LBB248_5:
	mov	qword ptr [rbx + 8], rax
	mov	eax, 16
	xor	r15d, r15d
.LBB248_10:
	mov	qword ptr [rbx + rax], r14
	mov	qword ptr [rbx], r15
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end248:
	.size	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli, .Lfunc_end248-_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsktQxXQGZjIy_5gimli
	.cfi_endproc
                                        # -- End function
