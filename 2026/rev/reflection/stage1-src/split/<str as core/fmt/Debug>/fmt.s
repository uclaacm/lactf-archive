	.section	.text._RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt
	.type	_RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt,@function
_RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt: # @_RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt
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
	sub	rsp, 72
	.cfi_def_cfa_offset 128
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 48], rcx       # 8-byte Spill
	mov	r15, qword ptr [rcx + 32]
	mov	rdi, rdx
	mov	esi, 34
	call	r15
	mov	bpl, 1
	test	al, al
	jne	.LBB112_56
# %bb.1:
	test	r13, r13
	je	.LBB112_2
# %bb.3:
	mov	qword ptr [rsp + 16], r15       # 8-byte Spill
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	xor	edx, edx
	xor	ecx, ecx
	mov	rax, r13
	mov	qword ptr [rsp + 8], r14        # 8-byte Spill
	mov	qword ptr [rsp + 32], r13       # 8-byte Spill
	jmp	.LBB112_4
	.p2align	4
.LBB112_54:                             #   in Loop: Header=BB112_4 Depth=1
	add	rcx, rbp
	sub	rax, r14
	je	.LBB112_10
.LBB112_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB112_5 Depth 2
	lea	r8, [r14 + rax]
	xor	ebp, ebp
	.p2align	4
.LBB112_5:                              #   Parent Loop BB112_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	edi, byte ptr [r14 + rbp]
	lea	esi, [rdi - 127]
	cmp	sil, -95
	jb	.LBB112_23
# %bb.6:                                #   in Loop: Header=BB112_5 Depth=2
	cmp	edi, 34
	je	.LBB112_23
# %bb.7:                                #   in Loop: Header=BB112_5 Depth=2
	cmp	edi, 92
	je	.LBB112_23
# %bb.8:                                #   in Loop: Header=BB112_5 Depth=2
	inc	rbp
	cmp	rax, rbp
	jne	.LBB112_5
	jmp	.LBB112_9
	.p2align	4
.LBB112_23:                             #   in Loop: Header=BB112_4 Depth=1
	movzx	r12d, byte ptr [r14 + rbp]
	test	r12b, r12b
	mov	qword ptr [rsp + 40], r8        # 8-byte Spill
	js	.LBB112_25
# %bb.24:                               #   in Loop: Header=BB112_4 Depth=1
	mov	r13, rdx
	add	r14, rbp
	inc	r14
	jmp	.LBB112_30
	.p2align	4
.LBB112_25:                             #   in Loop: Header=BB112_4 Depth=1
	add	r14, rbp
	mov	eax, r12d
	and	eax, 31
	movzx	esi, byte ptr [r14 + 1]
	and	esi, 63
	cmp	r12b, -33
	jbe	.LBB112_26
# %bb.27:                               #   in Loop: Header=BB112_4 Depth=1
	movzx	edi, byte ptr [r14 + 2]
	shl	esi, 6
	and	edi, 63
	or	edi, esi
	mov	r13, rdx
	cmp	r12b, -16
	jb	.LBB112_28
# %bb.29:                               #   in Loop: Header=BB112_4 Depth=1
	movzx	r12d, byte ptr [r14 + 3]
	add	r14, 4
	and	eax, 7
	shl	eax, 18
	shl	edi, 6
	and	r12d, 63
	or	r12d, edi
	or	r12d, eax
	jmp	.LBB112_30
.LBB112_26:                             #   in Loop: Header=BB112_4 Depth=1
	mov	r13, rdx
	add	r14, 2
	shl	eax, 6
	or	eax, esi
	mov	r12d, eax
	jmp	.LBB112_30
.LBB112_28:                             #   in Loop: Header=BB112_4 Depth=1
	add	r14, 3
	shl	eax, 12
	or	edi, eax
	mov	r12d, edi
	.p2align	4
.LBB112_30:                             #   in Loop: Header=BB112_4 Depth=1
	add	rbp, rcx
	lea	rdi, [rsp + 56]
	mov	esi, r12d
	mov	edx, 65537
	call	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext
	movzx	r15d, byte ptr [rsp + 69]
	movzx	ebx, byte ptr [rsp + 68]
	mov	eax, r15d
	sub	al, bl
	cmp	al, 1
	jne	.LBB112_32
# %bb.31:                               #   in Loop: Header=BB112_4 Depth=1
	mov	rdx, r13
	jmp	.LBB112_51
	.p2align	4
.LBB112_32:                             #   in Loop: Header=BB112_4 Depth=1
	mov	rdx, rbp
	mov	rsi, r13
	sub	rdx, r13
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	jb	.LBB112_44
# %bb.33:                               #   in Loop: Header=BB112_4 Depth=1
	test	rsi, rsi
	je	.LBB112_36
# %bb.34:                               #   in Loop: Header=BB112_4 Depth=1
	cmp	rsi, rcx
	jae	.LBB112_35
# %bb.43:                               #   in Loop: Header=BB112_4 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	byte ptr [rax + rsi], -65
	jg	.LBB112_36
	jmp	.LBB112_44
.LBB112_35:                             #   in Loop: Header=BB112_4 Depth=1
	jne	.LBB112_44
.LBB112_36:                             #   in Loop: Header=BB112_4 Depth=1
	test	rbp, rbp
	je	.LBB112_40
# %bb.37:                               #   in Loop: Header=BB112_4 Depth=1
	cmp	rbp, rcx
	jae	.LBB112_38
# %bb.39:                               #   in Loop: Header=BB112_4 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	byte ptr [rax + rbp], -65
	jg	.LBB112_40
	jmp	.LBB112_44
.LBB112_38:                             #   in Loop: Header=BB112_4 Depth=1
	jne	.LBB112_44
.LBB112_40:                             #   in Loop: Header=BB112_4 Depth=1
	add	rsi, qword ptr [rsp + 8]        # 8-byte Folded Reload
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r13, qword ptr [rax + 24]
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	call	r13
	test	al, al
	jne	.LBB112_55
# %bb.41:                               #   in Loop: Header=BB112_4 Depth=1
	cmp	r15b, -127
	jb	.LBB112_45
# %bb.42:                               #   in Loop: Header=BB112_4 Depth=1
	mov	esi, dword ptr [rsp + 56]
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rsp + 16]            # 8-byte Folded Reload
	jmp	.LBB112_46
.LBB112_45:                             #   in Loop: Header=BB112_4 Depth=1
	sub	r15, rbx
	lea	rsi, [rsp + rbx]
	add	rsi, 56
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rdx, r15
	call	r13
.LBB112_46:                             #   in Loop: Header=BB112_4 Depth=1
	test	al, al
	jne	.LBB112_55
# %bb.47:                               #   in Loop: Header=BB112_4 Depth=1
	mov	edx, 1
	cmp	r12d, 128
	jb	.LBB112_50
# %bb.48:                               #   in Loop: Header=BB112_4 Depth=1
	mov	edx, 2
	cmp	r12d, 2048
	jb	.LBB112_50
# %bb.49:                               #   in Loop: Header=BB112_4 Depth=1
	cmp	r12d, 65536
	mov	edx, 4
	sbb	rdx, 0
.LBB112_50:                             #   in Loop: Header=BB112_4 Depth=1
	add	rdx, rbp
.LBB112_51:                             #   in Loop: Header=BB112_4 Depth=1
	mov	r13, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	mov	ecx, 1
	cmp	r12d, 128
	jb	.LBB112_54
# %bb.52:                               #   in Loop: Header=BB112_4 Depth=1
	mov	ecx, 2
	cmp	r12d, 2048
	jb	.LBB112_54
# %bb.53:                               #   in Loop: Header=BB112_4 Depth=1
	cmp	r12d, 65536
	mov	ecx, 4
	sbb	rcx, 0
	jmp	.LBB112_54
.LBB112_9:
	add	rcx, rax
.LBB112_10:
	cmp	rdx, rcx
	ja	.LBB112_11
# %bb.12:
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 24]       # 8-byte Reload
	je	.LBB112_13
# %bb.16:
	cmp	rdx, r13
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
	jae	.LBB112_17
# %bb.60:
	cmp	byte ptr [r14 + rdx], -65
	mov	rax, rdx
	mov	r15, qword ptr [rsp + 16]       # 8-byte Reload
	mov	bpl, 1
	jle	.LBB112_61
.LBB112_14:
	test	rcx, rcx
	je	.LBB112_15
.LBB112_18:
	cmp	rcx, r13
	jae	.LBB112_19
# %bb.21:
	cmp	byte ptr [r14 + rcx], -65
	jle	.LBB112_22
# %bb.57:
	mov	r13, rcx
	jmp	.LBB112_58
.LBB112_2:
	xor	r13d, r13d
	xor	eax, eax
	jmp	.LBB112_58
.LBB112_13:
	xor	eax, eax
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r15, qword ptr [rsp + 16]       # 8-byte Reload
	mov	bpl, 1
	test	rcx, rcx
	jne	.LBB112_18
.LBB112_15:
	xor	r13d, r13d
	jmp	.LBB112_58
.LBB112_17:
	mov	rax, r13
	mov	r15, qword ptr [rsp + 16]       # 8-byte Reload
	mov	bpl, 1
	je	.LBB112_14
	jmp	.LBB112_61
.LBB112_19:
	jne	.LBB112_20
.LBB112_58:
	sub	r13, rax
	add	r14, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r13
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	call	qword ptr [rax + 24]
	test	al, al
	jne	.LBB112_56
# %bb.59:
	mov	rdi, rbx
	mov	esi, 34
	call	r15
	mov	ebp, eax
.LBB112_56:
	mov	eax, ebp
	add	rsp, 72
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
.LBB112_55:
	.cfi_def_cfa_offset 128
	mov	bpl, 1
	jmp	.LBB112_56
.LBB112_44:
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.426]
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rcx, rbp
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB112_11:
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.427]
	mov	rdi, r14
	mov	rsi, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB112_22:
	mov	rdx, rax
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.427]
	mov	rdi, r14
	mov	rsi, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB112_20:
	mov	rdx, rax
.LBB112_61:
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.427]
	mov	rdi, r14
	mov	rsi, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end112:
	.size	_RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt, .Lfunc_end112-_RNvXsh_NtCsfQL5qMWGko6_4core3fmteNtB5_5Debug3fmt
	.cfi_endproc
                                        # -- End function
