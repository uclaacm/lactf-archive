	.section	.text._RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new
	.type	_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new,@function
_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new: # @_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new
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
	mov	rbx, r8
	mov	r12, rcx
	mov	r10, rdx
	mov	r11, rsi
	mov	r14, rdi
	cmp	r8, 1
	jne	.LBB116_8
# %bb.1:
	mov	r13d, 1
	xor	eax, eax
	xor	ebp, ebp
	mov	ecx, 1
.LBB116_2:
	cmp	rax, rbp
	cmova	rbp, rax
	cmovbe	r13, rcx
	mov	r15, rbx
	sub	r15, rbp
	jb	.LBB116_64
# %bb.3:
	mov	rsi, r13
	add	rsi, rbp
	jb	.LBB116_65
# %bb.4:
	cmp	rsi, rbx
	ja	.LBB116_65
# %bb.5:
	mov	qword ptr [rsp + 8], r11        # 8-byte Spill
	mov	qword ptr [rsp + 16], r10       # 8-byte Spill
	lea	rsi, [r12 + r13]
	mov	rdi, r12
	mov	rdx, rbp
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
	je	.LBB116_26
# %bb.6:
	mov	ecx, ebx
	and	ecx, 3
	cmp	rbx, 4
	mov	r10, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r11, qword ptr [rsp + 8]        # 8-byte Reload
	jae	.LBB116_49
# %bb.7:
	xor	edx, edx
	xor	eax, eax
	jmp	.LBB116_51
.LBB116_8:
	mov	r8d, 1
	xor	ecx, ecx
	mov	edx, 1
	xor	esi, esi
	mov	r13d, 1
	xor	eax, eax
	jmp	.LBB116_12
	.p2align	4
.LBB116_15:                             #   in Loop: Header=BB116_12 Depth=1
	inc	rsi
	cmp	rsi, r13
	mov	rdi, rsi
	cmove	rdi, rcx
	cmovne	rsi, rcx
	add	rdx, rsi
	mov	rsi, rdi
	lea	r8, [rdx + rsi]
	cmp	r8, rbx
	jb	.LBB116_12
	jmp	.LBB116_17
	.p2align	4
.LBB116_9:                              #   in Loop: Header=BB116_12 Depth=1
	add	rdx, rsi
	inc	rdx
	mov	r13, rdx
	sub	r13, rax
.LBB116_10:                             #   in Loop: Header=BB116_12 Depth=1
	xor	esi, esi
	lea	r8, [rdx + rsi]
	cmp	r8, rbx
	jae	.LBB116_17
.LBB116_12:                             # =>This Inner Loop Header: Depth=1
	lea	rdi, [rax + rsi]
	cmp	rdi, rbx
	jae	.LBB116_66
# %bb.13:                               #   in Loop: Header=BB116_12 Depth=1
	movzx	edi, byte ptr [r12 + rdi]
	cmp	byte ptr [r12 + r8], dil
	jb	.LBB116_9
# %bb.14:                               #   in Loop: Header=BB116_12 Depth=1
	je	.LBB116_15
# %bb.16:                               #   in Loop: Header=BB116_12 Depth=1
	mov	rax, rdx
	inc	rdx
	mov	r13d, 1
	jmp	.LBB116_10
.LBB116_17:
	mov	r9d, 1
	xor	edx, edx
	mov	esi, 1
	xor	r8d, r8d
	mov	ecx, 1
	xor	ebp, ebp
	jmp	.LBB116_21
	.p2align	4
.LBB116_18:                             #   in Loop: Header=BB116_21 Depth=1
	add	rsi, r8
	inc	rsi
	mov	rcx, rsi
	sub	rcx, rbp
.LBB116_19:                             #   in Loop: Header=BB116_21 Depth=1
	xor	r8d, r8d
	lea	r9, [rsi + r8]
	cmp	r9, rbx
	jae	.LBB116_2
.LBB116_21:                             # =>This Inner Loop Header: Depth=1
	lea	rdi, [r8 + rbp]
	cmp	rdi, rbx
	jae	.LBB116_66
# %bb.22:                               #   in Loop: Header=BB116_21 Depth=1
	movzx	edi, byte ptr [r12 + rdi]
	cmp	byte ptr [r12 + r9], dil
	ja	.LBB116_18
# %bb.23:                               #   in Loop: Header=BB116_21 Depth=1
	jne	.LBB116_25
# %bb.24:                               #   in Loop: Header=BB116_21 Depth=1
	inc	r8
	cmp	r8, rcx
	mov	rdi, r8
	cmove	rdi, rdx
	cmovne	r8, rdx
	add	rsi, r8
	mov	r8, rdi
	lea	r9, [rsi + r8]
	cmp	r9, rbx
	jb	.LBB116_21
	jmp	.LBB116_2
	.p2align	4
.LBB116_25:                             #   in Loop: Header=BB116_21 Depth=1
	mov	rbp, rsi
	inc	rsi
	mov	ecx, 1
	jmp	.LBB116_19
.LBB116_26:
	lea	rcx, [rbx - 1]
	mov	r8d, 1
	xor	esi, esi
	xor	r9d, r9d
	mov	r10d, 1
	xor	edx, edx
	jmp	.LBB116_29
	.p2align	4
.LBB116_35:                             #   in Loop: Header=BB116_29 Depth=1
	mov	r8d, 1
	xor	r9d, r9d
	mov	rdx, r10
	mov	r10, r11
	cmp	r8, r13
	je	.LBB116_36
.LBB116_29:                             # =>This Inner Loop Header: Depth=1
	lea	rax, [r10 + r9]
	cmp	rax, rbx
	jae	.LBB116_36
# %bb.30:                               #   in Loop: Header=BB116_29 Depth=1
	mov	rax, r10
	not	rax
	mov	rdi, rbx
	sub	rdi, r9
	add	rdi, rax
	cmp	rdi, rbx
	jae	.LBB116_67
# %bb.31:                               #   in Loop: Header=BB116_29 Depth=1
	mov	rax, rcx
	sub	rax, r9
	sub	rax, rdx
	cmp	rax, rbx
	jae	.LBB116_68
# %bb.32:                               #   in Loop: Header=BB116_29 Depth=1
	lea	r11, [r10 + 1]
	movzx	eax, byte ptr [r12 + rax]
	cmp	byte ptr [r12 + rdi], al
	jae	.LBB116_33
# %bb.27:                               #   in Loop: Header=BB116_29 Depth=1
	lea	r11, [r9 + r10]
	inc	r11
	mov	r8, r11
	sub	r8, rdx
	xor	r9d, r9d
	jmp	.LBB116_28
	.p2align	4
.LBB116_33:                             #   in Loop: Header=BB116_29 Depth=1
	jne	.LBB116_35
# %bb.34:                               #   in Loop: Header=BB116_29 Depth=1
	inc	r9
	cmp	r9, r8
	mov	rax, r9
	cmove	rax, rsi
	cmovne	r9, rsi
	mov	r11, r9
	add	r11, r10
	mov	r9, rax
.LBB116_28:                             #   in Loop: Header=BB116_29 Depth=1
	mov	r10, rdx
	mov	rdx, r10
	mov	r10, r11
	cmp	r8, r13
	jne	.LBB116_29
.LBB116_36:
	mov	r8d, 1
	xor	esi, esi
	xor	r10d, r10d
	mov	r11d, 1
	xor	r9d, r9d
	jmp	.LBB116_39
	.p2align	4
.LBB116_45:                             #   in Loop: Header=BB116_39 Depth=1
	mov	r8d, 1
	xor	r10d, r10d
	mov	r9, r11
	mov	r11, r15
	cmp	r8, r13
	je	.LBB116_46
.LBB116_39:                             # =>This Inner Loop Header: Depth=1
	lea	rax, [r11 + r10]
	cmp	rax, rbx
	jae	.LBB116_46
# %bb.40:                               #   in Loop: Header=BB116_39 Depth=1
	mov	rax, r11
	not	rax
	mov	rdi, rbx
	sub	rdi, r10
	add	rdi, rax
	cmp	rdi, rbx
	jae	.LBB116_67
# %bb.41:                               #   in Loop: Header=BB116_39 Depth=1
	mov	rax, rcx
	sub	rax, r10
	sub	rax, r9
	cmp	rax, rbx
	jae	.LBB116_68
# %bb.42:                               #   in Loop: Header=BB116_39 Depth=1
	lea	r15, [r11 + 1]
	movzx	eax, byte ptr [r12 + rax]
	cmp	byte ptr [r12 + rdi], al
	jbe	.LBB116_43
# %bb.37:                               #   in Loop: Header=BB116_39 Depth=1
	lea	r15, [r10 + r11]
	inc	r15
	mov	r8, r15
	sub	r8, r9
	xor	r10d, r10d
	jmp	.LBB116_38
	.p2align	4
.LBB116_43:                             #   in Loop: Header=BB116_39 Depth=1
	jne	.LBB116_45
# %bb.44:                               #   in Loop: Header=BB116_39 Depth=1
	inc	r10
	cmp	r10, r8
	mov	rax, r10
	cmove	rax, rsi
	cmovne	r10, rsi
	mov	r15, r10
	add	r15, r11
	mov	r10, rax
.LBB116_38:                             #   in Loop: Header=BB116_39 Depth=1
	mov	r11, r9
	mov	r9, r11
	mov	r11, r15
	cmp	r8, r13
	jne	.LBB116_39
.LBB116_46:
	cmp	r9, rdx
	cmova	rdx, r9
	mov	rcx, rbx
	sub	rcx, rdx
	test	r13, r13
	je	.LBB116_55
# %bb.47:
	mov	edx, r13d
	and	edx, 3
	cmp	r13, 4
	mov	r10, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r11, qword ptr [rsp + 8]        # 8-byte Reload
	jae	.LBB116_56
# %bb.48:
	xor	esi, esi
	xor	eax, eax
	jmp	.LBB116_58
.LBB116_49:
	mov	esi, ebx
	and	esi, 28
	xor	edx, edx
	xor	eax, eax
	.p2align	4
.LBB116_50:                             # =>This Inner Loop Header: Depth=1
	movzx	edi, byte ptr [r12 + rdx]
	movzx	r8d, byte ptr [r12 + rdx + 1]
	bts	rax, rdi
	bts	rax, r8
	movzx	edi, byte ptr [r12 + rdx + 2]
	bts	rax, rdi
	movzx	edi, byte ptr [r12 + rdx + 3]
	bts	rax, rdi
	add	rdx, 4
	cmp	rsi, rdx
	jne	.LBB116_50
.LBB116_51:
	test	rcx, rcx
	je	.LBB116_54
# %bb.52:
	add	rdx, r12
	xor	esi, esi
	.p2align	4
.LBB116_53:                             # =>This Inner Loop Header: Depth=1
	movzx	edi, byte ptr [rdx + rsi]
	bts	rax, rdi
	inc	rsi
	cmp	rcx, rsi
	jne	.LBB116_53
.LBB116_54:
	cmp	r15, rbp
	cmovbe	r15, rbp
	inc	r15
	mov	rdi, -1
	mov	rdx, -1
	mov	r13, r15
	mov	rcx, rbp
	jmp	.LBB116_63
.LBB116_55:
	xor	edi, edi
	mov	rdx, rbx
	xor	eax, eax
	xor	r13d, r13d
	mov	r10, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r11, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB116_63
.LBB116_56:
	mov	rdi, r13
	and	rdi, -4
	xor	esi, esi
	xor	eax, eax
	.p2align	4
.LBB116_57:                             # =>This Inner Loop Header: Depth=1
	movzx	r8d, byte ptr [r12 + rsi]
	movzx	r9d, byte ptr [r12 + rsi + 1]
	bts	rax, r8
	bts	rax, r9
	movzx	r8d, byte ptr [r12 + rsi + 2]
	bts	rax, r8
	movzx	r8d, byte ptr [r12 + rsi + 3]
	bts	rax, r8
	add	rsi, 4
	cmp	rdi, rsi
	jne	.LBB116_57
.LBB116_58:
	test	rdx, rdx
	je	.LBB116_61
# %bb.59:
	add	rsi, r12
	xor	edi, edi
	xor	r8d, r8d
	.p2align	4
.LBB116_60:                             # =>This Inner Loop Header: Depth=1
	movzx	r9d, byte ptr [rsi + r8]
	bts	rax, r9
	inc	r8
	cmp	rdx, r8
	jne	.LBB116_60
	jmp	.LBB116_62
.LBB116_61:
	xor	edi, edi
.LBB116_62:
	mov	rdx, rbx
.LBB116_63:
	mov	qword ptr [r14 + 72], r11
	mov	qword ptr [r14 + 80], r10
	mov	qword ptr [r14 + 88], r12
	mov	qword ptr [r14 + 96], rbx
	mov	qword ptr [r14], 1
	mov	qword ptr [r14 + 8], rbp
	mov	qword ptr [r14 + 16], rcx
	mov	qword ptr [r14 + 24], r13
	mov	qword ptr [r14 + 32], rax
	mov	qword ptr [r14 + 40], 0
	mov	qword ptr [r14 + 48], r10
	mov	qword ptr [r14 + 56], rdi
	mov	qword ptr [r14 + 64], rdx
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
.LBB116_64:
	.cfi_def_cfa_offset 80
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.129]
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB116_65:
	lea	rcx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.128]
	mov	rdi, r13
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB116_66:
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.125]
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB116_67:
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.126]
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB116_68:
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.127]
	mov	rdi, rax
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end116:
	.size	_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new, .Lfunc_end116-_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new
	.cfi_endproc
                                        # -- End function
