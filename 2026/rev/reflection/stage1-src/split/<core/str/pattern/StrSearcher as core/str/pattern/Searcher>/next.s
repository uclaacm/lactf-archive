	.section	.text._RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next
	.type	_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next,@function
_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: # @_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next
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
	cmp	dword ptr [rsi], 1
	jne	.LBB117_16
# %bb.1:
	mov	rdx, qword ptr [rsi + 40]
	mov	rax, qword ptr [rsi + 80]
	mov	r9d, 2
	cmp	rdx, rax
	je	.LBB117_37
# %bb.2:
	mov	r10, qword ptr [rsi + 72]
	mov	rcx, qword ptr [rsi + 96]
	lea	r8, [rdx + rcx]
	dec	r8
	mov	r9, rax
	cmp	r8, rax
	jae	.LBB117_57
# %bb.3:
	mov	r15, qword ptr [rsi + 56]
	mov	r14, qword ptr [rsi + 88]
	lea	r9, [rcx - 1]
	mov	qword ptr [rsp + 48], r9        # 8-byte Spill
	mov	r11, qword ptr [rsi + 32]
	mov	r13, qword ptr [rsi + 8]
	mov	r9, qword ptr [rsi + 24]
	mov	rbx, rcx
	sub	rbx, r9
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	add	r9, rdx
	mov	qword ptr [rsp + 32], r9        # 8-byte Spill
	lea	r9, [rdx + rcx]
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	mov	r9, rdx
	sub	r9, r13
	inc	r9
	mov	qword ptr [rsp + 40], r9        # 8-byte Spill
	lea	rbp, [r10 + rdx]
	mov	r12, r15
	mov	r9, rdx
	mov	qword ptr [rsp + 16], r11       # 8-byte Spill
	jmp	.LBB117_4
.LBB117_16:
	mov	r9d, 2
	cmp	byte ptr [rsi + 26], 0
	jne	.LBB117_37
# %bb.17:
	movzx	r8d, byte ptr [rsi + 24]
	mov	eax, r8d
	xor	al, 1
	mov	byte ptr [rsi + 24], al
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, qword ptr [rsi + 72]
	mov	rcx, qword ptr [rsi + 80]
	test	rdx, rdx
	je	.LBB117_22
# %bb.18:
	cmp	rdx, rcx
	jae	.LBB117_19
# %bb.21:
	cmp	byte ptr [rax + rdx], -64
	jge	.LBB117_22
.LBB117_20:
	lea	r8, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.941]
	mov	rdi, rax
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB117_56:                             #   in Loop: Header=BB117_4 Depth=1
	xor	r8d, r8d
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
.LBB117_8:                              #   in Loop: Header=BB117_4 Depth=1
	mov	qword ptr [rsi + 56], r8
	mov	r12, r8
.LBB117_9:                              #   in Loop: Header=BB117_4 Depth=1
	mov	r8, qword ptr [rsp + 48]        # 8-byte Reload
	add	r8, r9
	cmp	r8, rax
	jae	.LBB117_10
.LBB117_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB117_39 Depth 2
                                        #     Child Loop BB117_41 Depth 2
	cmp	rdx, r9
	jne	.LBB117_57
# %bb.5:                                #   in Loop: Header=BB117_4 Depth=1
	movzx	r8d, byte ptr [r10 + r8]
	bt	r11, r8
	jae	.LBB117_6
# %bb.38:                               #   in Loop: Header=BB117_4 Depth=1
	cmp	r12, r13
	mov	r8, r13
	cmova	r8, r12
	cmp	r15, -1
	cmove	r8, r13
	mov	r11, r8
	.p2align	4
.LBB117_39:                             #   Parent Loop BB117_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r11, rcx
	jae	.LBB117_40
# %bb.51:                               #   in Loop: Header=BB117_39 Depth=2
	mov	r9, r11
	add	r11, rdx
	cmp	r11, rax
	jae	.LBB117_52
# %bb.53:                               #   in Loop: Header=BB117_39 Depth=2
	lea	r11, [r9 + 1]
	movzx	ebx, byte ptr [r14 + r9]
	cmp	bl, byte ptr [rbp + r9]
	je	.LBB117_39
# %bb.54:                               #   in Loop: Header=BB117_4 Depth=1
	add	r9, qword ptr [rsp + 40]        # 8-byte Folded Reload
	mov	qword ptr [rsi + 40], r9
	cmp	r15, -1
	jne	.LBB117_56
# %bb.55:                               #   in Loop: Header=BB117_4 Depth=1
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB117_9
	.p2align	4
.LBB117_6:                              #   in Loop: Header=BB117_4 Depth=1
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	mov	qword ptr [rsi + 40], r9
	cmp	r15, -1
	je	.LBB117_9
# %bb.7:                                #   in Loop: Header=BB117_4 Depth=1
	xor	r8d, r8d
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
	jmp	.LBB117_8
.LBB117_40:                             #   in Loop: Header=BB117_4 Depth=1
	cmp	r15, -1
	mov	r11, r12
	mov	r8d, 0
	cmove	r11, r8
	mov	r9, r13
	.p2align	4
.LBB117_41:                             #   Parent Loop BB117_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r11, r9
	jae	.LBB117_42
# %bb.45:                               #   in Loop: Header=BB117_41 Depth=2
	dec	r9
	cmp	r9, rcx
	jae	.LBB117_63
# %bb.46:                               #   in Loop: Header=BB117_41 Depth=2
	lea	r8, [r9 + rdx]
	cmp	r8, rax
	jae	.LBB117_49
# %bb.47:                               #   in Loop: Header=BB117_41 Depth=2
	movzx	ebx, byte ptr [r14 + r9]
	cmp	bl, byte ptr [r10 + r8]
	je	.LBB117_41
# %bb.48:                               #   in Loop: Header=BB117_4 Depth=1
	mov	r9, qword ptr [rsp + 32]        # 8-byte Reload
	mov	qword ptr [rsi + 40], r9
	mov	r8, qword ptr [rsp + 24]        # 8-byte Reload
	cmp	r15, -1
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	jne	.LBB117_8
	jmp	.LBB117_9
.LBB117_57:
	lea	rcx, [rdi + 8]
	lea	r8, [rdi + 16]
	test	r9, r9
	je	.LBB117_58
.LBB117_11:
	mov	r11, r9
	jmp	.LBB117_12
	.p2align	4
.LBB117_13:                             #   in Loop: Header=BB117_12 Depth=1
	je	.LBB117_62
.LBB117_14:                             #   in Loop: Header=BB117_12 Depth=1
	inc	r11
	je	.LBB117_15
.LBB117_12:                             # =>This Inner Loop Header: Depth=1
	cmp	r11, rax
	jae	.LBB117_13
# %bb.60:                               #   in Loop: Header=BB117_12 Depth=1
	cmp	byte ptr [r10 + r11], -64
	jl	.LBB117_14
# %bb.61:
	mov	rax, r11
.LBB117_62:
	cmp	r9, rax
	cmovbe	r9, rax
	jmp	.LBB117_59
.LBB117_42:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsi + 40], rax
	cmp	r15, -1
	je	.LBB117_44
# %bb.43:
	mov	qword ptr [rsi + 56], 0
.LBB117_44:
	mov	qword ptr [rdi + 8], rdx
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rdi + 16], rax
	xor	r9d, r9d
	jmp	.LBB117_37
.LBB117_19:
	jne	.LBB117_20
.LBB117_22:
	cmp	rdx, rcx
	jne	.LBB117_23
# %bb.31:
	test	r8b, r8b
	jne	.LBB117_30
# %bb.32:
	mov	byte ptr [rsi + 26], 1
	jmp	.LBB117_37
.LBB117_23:
	movzx	ecx, byte ptr [rax + rdx]
	test	cl, cl
	jns	.LBB117_29
# %bb.24:
	mov	r9d, ecx
	and	r9d, 31
	movzx	r11d, byte ptr [rax + rdx + 1]
	and	r11d, 63
	cmp	cl, -33
	jbe	.LBB117_25
# %bb.26:
	movzx	r10d, byte ptr [rax + rdx + 2]
	shl	r11d, 6
	and	r10d, 63
	or	r10d, r11d
	cmp	cl, -16
	jb	.LBB117_27
# %bb.28:
	movzx	ecx, byte ptr [rax + rdx + 3]
	and	r9d, 7
	shl	r9d, 18
	shl	r10d, 6
	and	ecx, 63
	or	ecx, r10d
	or	ecx, r9d
	test	r8b, r8b
	jne	.LBB117_30
	jmp	.LBB117_33
.LBB117_58:
	xor	eax, eax
	xor	r9d, r9d
	jmp	.LBB117_59
.LBB117_15:
	xor	eax, eax
.LBB117_59:
	mov	qword ptr [rsi + 40], r9
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r8], rax
	mov	r9d, 1
	jmp	.LBB117_37
.LBB117_25:
	shl	r9d, 6
	or	r9d, r11d
	mov	ecx, r9d
.LBB117_29:
	test	r8b, r8b
	je	.LBB117_33
.LBB117_30:
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 16], rdx
	xor	r9d, r9d
	jmp	.LBB117_37
.LBB117_10:
	lea	rcx, [rdi + 8]
	lea	r8, [rdi + 16]
	mov	r9, rax
	jmp	.LBB117_11
.LBB117_27:
	shl	r9d, 12
	or	r10d, r9d
	mov	ecx, r10d
	test	r8b, r8b
	jne	.LBB117_30
.LBB117_33:
	mov	r9d, 1
	mov	eax, 1
	cmp	ecx, 128
	jb	.LBB117_36
# %bb.34:
	mov	eax, 2
	cmp	ecx, 2048
	jb	.LBB117_36
# %bb.35:
	cmp	ecx, 65536
	mov	eax, 4
	sbb	rax, 0
.LBB117_36:
	add	rax, rdx
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 16], rax
.LBB117_37:
	mov	qword ptr [rdi], r9
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
.LBB117_52:
	.cfi_def_cfa_offset 112
	add	r8, rdx
	cmp	rax, r8
	cmova	r8, rax
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.44]
	mov	rdi, r8
	mov	rsi, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB117_49:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.43]
	mov	rdi, r8
	mov	rsi, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB117_63:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.42]
	mov	rdi, r9
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end117:
	.size	_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next, .Lfunc_end117-_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next
	.cfi_endproc
                                        # -- End function
