	.section	.text._RNvNtCsfwdNdOnv07X_9addr2line4line9path_push,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCsfwdNdOnv07X_9addr2line4line9path_push
	.type	_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push,@function
_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push: # @_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdx
	mov	r14, rdi
	test	rdx, rdx
	je	.LBB195_19
# %bb.1:
	movzx	eax, byte ptr [rsi]
	cmp	al, 47
	je	.LBB195_13
# %bb.2:
	cmp	rbx, 1
	je	.LBB195_18
# %bb.3:
	cmp	byte ptr [rsi + 1], -64
	jl	.LBB195_18
# %bb.4:
	cmp	rbx, 3
	ja	.LBB195_7
# %bb.5:
	je	.LBB195_8
.LBB195_6:
	cmp	al, 92
	je	.LBB195_13
	jmp	.LBB195_9
.LBB195_18:
	cmp	al, 92
	jne	.LBB195_19
.LBB195_13:
	mov	r12, rsi
	mov	rdi, rbx
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB195_36
# %bb.14:
	mov	r15, rax
	mov	rdi, rax
	mov	rsi, r12
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	cmp	qword ptr [r14], 0
	je	.LBB195_16
# %bb.15:
	mov	rdi, qword ptr [r14 + 8]
	call	qword ptr [rip + free@GOTPCREL]
.LBB195_16:
	mov	qword ptr [r14], rbx
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 16], rbx
	jmp	.LBB195_17
.LBB195_7:
	cmp	byte ptr [rsi + 3], -64
	jl	.LBB195_6
.LBB195_8:
	cmp	word ptr [rsi + 1], 12090
	sete	cl
	cmp	al, 92
	sete	al
	or	al, cl
	jne	.LBB195_13
.LBB195_9:
	cmp	rbx, 3
	ja	.LBB195_11
# %bb.10:
	je	.LBB195_12
	jmp	.LBB195_19
.LBB195_11:
	cmp	byte ptr [rsi + 3], -64
	jl	.LBB195_19
.LBB195_12:
	cmp	word ptr [rsi + 1], 23610
	je	.LBB195_13
.LBB195_19:
	mov	rdi, qword ptr [r14 + 8]
	mov	r15, qword ptr [r14 + 16]
	test	r15, r15
	je	.LBB195_20
# %bb.21:
	cmp	byte ptr [rdi], 92
	jne	.LBB195_22
.LBB195_28:
	mov	bpl, 92
	jmp	.LBB195_29
.LBB195_20:
	xor	r15d, r15d
	jmp	.LBB195_30
.LBB195_22:
	mov	bpl, 47
	cmp	r15, 1
	je	.LBB195_29
# %bb.23:
	cmp	byte ptr [rdi + 1], -64
	jl	.LBB195_29
# %bb.24:
	cmp	r15, 3
	ja	.LBB195_26
# %bb.25:
	je	.LBB195_27
	jmp	.LBB195_29
.LBB195_26:
	cmp	byte ptr [rdi + 3], -64
	jl	.LBB195_29
.LBB195_27:
	cmp	word ptr [rdi + 1], 23610
	je	.LBB195_28
.LBB195_29:
	cmp	bpl, byte ptr [rdi + r15 - 1]
	je	.LBB195_30
# %bb.33:
	mov	rax, r15
	cmp	qword ptr [r14], r15
	je	.LBB195_34
.LBB195_35:
	mov	byte ptr [rdi + rax], bpl
	inc	r15
	mov	qword ptr [r14 + 16], r15
.LBB195_30:
	mov	rax, qword ptr [r14]
	sub	rax, r15
	cmp	rbx, rax
	ja	.LBB195_31
.LBB195_32:
	add	rdi, r15
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, rbx
	mov	qword ptr [r14 + 16], r15
.LBB195_17:
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB195_31:
	.cfi_def_cfa_offset 48
	mov	rdi, r14
	mov	r12, rsi
	mov	rsi, r15
	mov	rdx, rbx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line
	mov	rsi, r12
	mov	rdi, qword ptr [r14 + 8]
	mov	r15, qword ptr [r14 + 16]
	jmp	.LBB195_32
.LBB195_34:
	mov	edx, 1
	mov	rdi, r14
	mov	r12, rsi
	mov	rsi, r15
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line
	mov	rsi, r12
	mov	rdi, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 16]
	jmp	.LBB195_35
.LBB195_36:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Lfunc_end195:
	.size	_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push, .Lfunc_end195-_RNvNtCsfwdNdOnv07X_9addr2line4line9path_push
	.cfi_endproc
                                        # -- End function
