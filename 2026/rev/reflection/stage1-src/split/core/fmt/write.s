	.section	.text._RNvNtCsfQL5qMWGko6_4core3fmt5write,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCsfQL5qMWGko6_4core3fmt5write
	.type	_RNvNtCsfQL5qMWGko6_4core3fmt5write,@function
_RNvNtCsfQL5qMWGko6_4core3fmt5write:    # @_RNvNtCsfQL5qMWGko6_4core3fmt5write
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
	mov	rbx, rcx
	mov	rbp, rdx
	mov	r14, rdi
	test	bl, 1
	jne	.LBB18_29
# %bb.1:
	movzx	eax, byte ptr [rbp]
	test	al, al
	je	.LBB18_30
# %bb.2:
	mov	qword ptr [rsp + 24], rsi       # 8-byte Spill
	mov	rcx, qword ptr [rsi + 24]
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	xor	r15d, r15d
	jmp	.LBB18_7
	.p2align	4
.LBB18_6:                               #   in Loop: Header=BB18_7 Depth=1
	movzx	eax, byte ptr [r13]
	mov	rbp, r13
	test	al, al
	je	.LBB18_30
.LBB18_7:                               # =>This Inner Loop Header: Depth=1
	lea	r13, [rbp + 1]
	movzx	r12d, al
	test	al, al
	js	.LBB18_10
# %bb.8:                                #   in Loop: Header=BB18_7 Depth=1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	qword ptr [rsp + 32]            # 8-byte Folded Reload
	test	al, al
	jne	.LBB18_31
# %bb.9:                                #   in Loop: Header=BB18_7 Depth=1
	add	r13, r12
	jmp	.LBB18_6
	.p2align	4
.LBB18_10:                              #   in Loop: Header=BB18_7 Depth=1
	cmp	al, -128
	je	.LBB18_13
# %bb.11:                               #   in Loop: Header=BB18_7 Depth=1
	cmp	r12d, 192
	jne	.LBB18_15
# %bb.12:                               #   in Loop: Header=BB18_7 Depth=1
	mov	rax, r15
	shl	rax, 4
	mov	qword ptr [rsp + 16], 1610612768
	jmp	.LBB18_4
.LBB18_13:                              #   in Loop: Header=BB18_7 Depth=1
	movzx	r12d, word ptr [rbp + 1]
	lea	rsi, [rbp + 3]
	mov	rdi, r14
	mov	rdx, r12
	call	qword ptr [rsp + 32]            # 8-byte Folded Reload
	test	al, al
	jne	.LBB18_31
# %bb.14:                               #   in Loop: Header=BB18_7 Depth=1
	lea	r13, [r12 + rbp]
	add	r13, 3
	jmp	.LBB18_6
.LBB18_15:                              #   in Loop: Header=BB18_7 Depth=1
	mov	ecx, 1610612768
	test	al, 1
	je	.LBB18_17
# %bb.16:                               #   in Loop: Header=BB18_7 Depth=1
	mov	ecx, dword ptr [rbp + 1]
	add	rbp, 5
	mov	r13, rbp
.LBB18_17:                              #   in Loop: Header=BB18_7 Depth=1
	test	al, 2
	jne	.LBB18_20
# %bb.18:                               #   in Loop: Header=BB18_7 Depth=1
	xor	edx, edx
	test	al, 4
	je	.LBB18_21
.LBB18_19:                              #   in Loop: Header=BB18_7 Depth=1
	movzx	esi, word ptr [r13]
	add	r13, 2
	test	al, 8
	jne	.LBB18_22
	jmp	.LBB18_23
.LBB18_20:                              #   in Loop: Header=BB18_7 Depth=1
	movzx	edx, word ptr [r13]
	add	r13, 2
	test	al, 4
	jne	.LBB18_19
.LBB18_21:                              #   in Loop: Header=BB18_7 Depth=1
	xor	esi, esi
	test	al, 8
	je	.LBB18_23
.LBB18_22:                              #   in Loop: Header=BB18_7 Depth=1
	movzx	r15d, word ptr [r13]
	add	r13, 2
.LBB18_23:                              #   in Loop: Header=BB18_7 Depth=1
	test	al, 16
	je	.LBB18_26
# %bb.24:                               #   in Loop: Header=BB18_7 Depth=1
	movzx	edi, dx
	shl	edi, 4
	cmp	qword ptr [rbx + rdi], 0
                                        # implicit-def: $dx
	jne	.LBB18_26
# %bb.25:                               #   in Loop: Header=BB18_7 Depth=1
	add	rdi, rbx
	movzx	edx, word ptr [rdi + 8]
.LBB18_26:                              #   in Loop: Header=BB18_7 Depth=1
	test	al, 32
	je	.LBB18_3
# %bb.27:                               #   in Loop: Header=BB18_7 Depth=1
	movzx	eax, si
	shl	eax, 4
	cmp	qword ptr [rbx + rax], 0
                                        # implicit-def: $si
	jne	.LBB18_3
# %bb.28:                               #   in Loop: Header=BB18_7 Depth=1
	add	rax, rbx
	movzx	esi, word ptr [rax + 8]
.LBB18_3:                               #   in Loop: Header=BB18_7 Depth=1
	mov	rax, r15
	shl	rax, 4
	mov	dword ptr [rsp + 16], ecx
	mov	word ptr [rsp + 20], dx
	mov	word ptr [rsp + 22], si
.LBB18_4:                               #   in Loop: Header=BB18_7 Depth=1
	mov	qword ptr [rsp], r14
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, qword ptr [rbx + rax]
	mov	rsi, rsp
	call	qword ptr [rbx + rax + 8]
	test	al, al
	jne	.LBB18_31
# %bb.5:                                #   in Loop: Header=BB18_7 Depth=1
	inc	r15
	jmp	.LBB18_6
.LBB18_29:
	shr	rbx
	mov	rax, qword ptr [rsi + 24]
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rbx
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
	jmp	rax                             # TAILCALL
.LBB18_30:
	.cfi_def_cfa_offset 96
	xor	eax, eax
	jmp	.LBB18_32
.LBB18_31:
	mov	al, 1
.LBB18_32:
                                        # kill: def $al killed $al killed $eax
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
.Lfunc_end18:
	.size	_RNvNtCsfQL5qMWGko6_4core3fmt5write, .Lfunc_end18-_RNvNtCsfQL5qMWGko6_4core3fmt5write
	.cfi_endproc
                                        # -- End function
