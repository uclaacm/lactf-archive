	.section	.text._RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	.type	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral,@function
_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral: # @_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
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
	sub	rsp, 56
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 8], r8         # 8-byte Spill
	mov	r8, rcx
	mov	r10, rdx
	test	esi, esi
	je	.LBB53_1
# %bb.2:
	mov	ebp, dword ptr [rdi + 16]
	mov	r12d, ebp
	and	r12d, 2097152
	mov	eax, 1114112
	mov	edx, 43
	cmove	edx, eax
	shr	r12d, 21
	add	r12, r9
	test	ebp, 8388608
	je	.LBB53_4
.LBB53_5:
	xor	eax, eax
	test	r8, r8
	je	.LBB53_8
# %bb.6:
	cmp	byte ptr [r10], -64
	setge	al
	cmp	r8, 1
	je	.LBB53_8
# %bb.7:
	xor	ecx, ecx
	cmp	byte ptr [r10 + 1], -64
	setge	cl
	add	rax, rcx
.LBB53_8:
	add	r12, rax
	movzx	r13d, word ptr [rdi + 20]
	cmp	r12, r13
	jb	.LBB53_10
.LBB53_33:
	mov	r12, r9
	mov	rbx, qword ptr [rdi]
	mov	r14, qword ptr [rdi + 8]
	mov	rdi, rbx
	mov	rsi, r14
	mov	rcx, r10
	call	_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
	mov	r15b, 1
	test	al, al
	jne	.LBB53_34
# %bb.32:
	mov	rax, qword ptr [r14 + 24]
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, r12
	add	rsp, 56
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
	jmp	rax                             # TAILCALL
.LBB53_1:
	.cfi_def_cfa_offset 112
	lea	r12, [r9 + 1]
	mov	ebp, dword ptr [rdi + 16]
	mov	edx, 45
	test	ebp, 8388608
	jne	.LBB53_5
.LBB53_4:
	xor	r10d, r10d
	movzx	r13d, word ptr [rdi + 20]
	cmp	r12, r13
	jae	.LBB53_33
.LBB53_10:
	test	ebp, 16777216
	mov	qword ptr [rsp + 24], r9        # 8-byte Spill
	jne	.LBB53_19
# %bb.11:
	mov	esi, r13d
	sub	esi, r12d
	mov	eax, ebp
	shr	eax, 29
	and	eax, 3
	lea	rcx, [rip + .LJTI53_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	mov	qword ptr [rsp + 48], r8        # 8-byte Spill
	mov	qword ptr [rsp + 40], r10       # 8-byte Spill
	mov	dword ptr [rsp + 20], edx       # 4-byte Spill
	mov	dword ptr [rsp], esi            # 4-byte Spill
	jmp	rax
.LBB53_13:
	mov	eax, esi
	jmp	.LBB53_15
.LBB53_19:
	mov	rbp, qword ptr [rdi + 16]
	mov	eax, ebp
	and	eax, -1612709888
	or	eax, 536870960
	mov	dword ptr [rdi + 16], eax
	mov	r14, qword ptr [rdi]
	mov	qword ptr [rsp], rdi            # 8-byte Spill
	mov	rbx, qword ptr [rdi + 8]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rcx, r10
	call	_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
	mov	r15b, 1
	test	al, al
	jne	.LBB53_34
# %bb.20:
	sub	r13d, r12d
	inc	r13d
	.p2align	4
.LBB53_21:                              # =>This Inner Loop Header: Depth=1
	dec	r13w
	je	.LBB53_30
# %bb.22:                               #   in Loop: Header=BB53_21 Depth=1
	mov	rdi, r14
	mov	esi, 48
	call	qword ptr [rbx + 32]
	test	al, al
	je	.LBB53_21
	jmp	.LBB53_34
.LBB53_30:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rbx + 24]
	test	al, al
	jne	.LBB53_34
# %bb.31:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rax + 16], rbp
	xor	r15d, r15d
	jmp	.LBB53_34
.LBB53_12:
	xor	eax, eax
	jmp	.LBB53_15
.LBB53_14:
	movzx	eax, si
	shr	eax
.LBB53_15:
	and	ebp, 2097151
	mov	r14, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	lea	r15d, [rax + 1]
	.p2align	4
.LBB53_16:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, r14
	dec	r15w
	je	.LBB53_23
# %bb.17:                               #   in Loop: Header=BB53_16 Depth=1
	mov	esi, ebp
	call	qword ptr [rbx + 32]
	test	al, al
	je	.LBB53_16
# %bb.18:
	mov	r15b, 1
	jmp	.LBB53_34
.LBB53_23:
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 20]       # 4-byte Reload
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 48]        # 8-byte Reload
	call	_RNvNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB7_9Formatter12pad_integral12write_prefix
	mov	r15b, 1
	test	al, al
	jne	.LBB53_34
# %bb.24:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rbx + 24]
	test	al, al
	jne	.LBB53_34
# %bb.25:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	sub	dword ptr [rsp], eax            # 4-byte Folded Spill
	add	eax, r12d
	mov	r12, rax
	sub	r12d, r13d
	mov	r15w, -1
	.p2align	4
.LBB53_26:                              # =>This Inner Loop Header: Depth=1
	lea	eax, [r12 + r15]
	cmp	ax, -1
	je	.LBB53_27
# %bb.28:                               #   in Loop: Header=BB53_26 Depth=1
	mov	rdi, r14
	mov	esi, ebp
	call	qword ptr [rbx + 32]
	inc	r15d
	test	al, al
	je	.LBB53_26
	jmp	.LBB53_29
.LBB53_27:
	mov	eax, dword ptr [rsp]            # 4-byte Reload
	mov	r15d, eax
.LBB53_29:
	cmp	r15w, word ptr [rsp]            # 2-byte Folded Reload
	setb	r15b
.LBB53_34:
	mov	eax, r15d
	add	rsp, 56
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
.Lfunc_end53:
	.size	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral, .Lfunc_end53-_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral
	.cfi_endproc
	.section	.rodata._RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter12pad_integral,"a",@progbits
	.p2align	2, 0x0
.LJTI53_0:
	.long	.LBB53_12-.LJTI53_0
	.long	.LBB53_13-.LJTI53_0
	.long	.LBB53_14-.LJTI53_0
	.long	.LBB53_13-.LJTI53_0
                                        # -- End function
