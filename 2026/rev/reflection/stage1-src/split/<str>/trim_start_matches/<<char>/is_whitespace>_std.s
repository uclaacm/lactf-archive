	.section	.text._RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	.type	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std,@function
_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std: # @_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rdx, rsi
	mov	rax, rdi
	test	rsi, rsi
	je	.LBB134_1
# %bb.3:
	push	rbp
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset rbx, -24
	.cfi_offset rbp, -16
	lea	rsi, [rax + rdx]
	xor	ecx, ecx
	lea	rdi, [rip + _RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data11white_space14WHITESPACE_MAP]
	mov	r9, rax
	jmp	.LBB134_4
.LBB134_22:                             #   in Loop: Header=BB134_4 Depth=1
	movzx	r10d, r10b
	movzx	r10d, byte ptr [r10 + rdi]
	shr	r10b
.LBB134_23:                             #   in Loop: Header=BB134_4 Depth=1
	test	r10b, 1
	je	.LBB134_26
	.p2align	4
.LBB134_24:                             #   in Loop: Header=BB134_4 Depth=1
	sub	rcx, r8
	add	rcx, r9
	cmp	r9, rsi
	je	.LBB134_25
.LBB134_4:                              # =>This Inner Loop Header: Depth=1
	mov	r8, r9
	movzx	r10d, byte ptr [r9]
	test	r10b, r10b
	js	.LBB134_6
# %bb.5:                                #   in Loop: Header=BB134_4 Depth=1
	lea	r9, [r8 + 1]
	lea	r11d, [r10 - 9]
	cmp	r11d, 5
	jb	.LBB134_24
	jmp	.LBB134_12
	.p2align	4
.LBB134_6:                              #   in Loop: Header=BB134_4 Depth=1
	mov	r11d, r10d
	and	r11d, 31
	movzx	ebp, byte ptr [r8 + 1]
	and	ebp, 63
	cmp	r10b, -33
	jbe	.LBB134_7
# %bb.8:                                #   in Loop: Header=BB134_4 Depth=1
	movzx	ebx, byte ptr [r8 + 2]
	shl	ebp, 6
	and	ebx, 63
	or	ebx, ebp
	cmp	r10b, -16
	jb	.LBB134_9
# %bb.10:                               #   in Loop: Header=BB134_4 Depth=1
	lea	r9, [r8 + 4]
	movzx	r10d, byte ptr [r8 + 3]
	and	r11d, 7
	shl	r11d, 18
	shl	ebx, 6
	and	r10d, 63
	or	r10d, ebx
	or	r10d, r11d
	lea	r11d, [r10 - 9]
	cmp	r11d, 5
	jb	.LBB134_24
	jmp	.LBB134_12
.LBB134_7:                              #   in Loop: Header=BB134_4 Depth=1
	lea	r9, [r8 + 2]
	shl	r11d, 6
	or	r11d, ebp
	mov	r10d, r11d
	lea	r11d, [r10 - 9]
	cmp	r11d, 5
	jb	.LBB134_24
	jmp	.LBB134_12
.LBB134_9:                              #   in Loop: Header=BB134_4 Depth=1
	lea	r9, [r8 + 3]
	shl	r11d, 12
	or	ebx, r11d
	mov	r10d, ebx
	lea	r11d, [r10 - 9]
	cmp	r11d, 5
	jb	.LBB134_24
	.p2align	4
.LBB134_12:                             #   in Loop: Header=BB134_4 Depth=1
	cmp	r10d, 32
	je	.LBB134_24
# %bb.13:                               #   in Loop: Header=BB134_4 Depth=1
	cmp	r10d, 128
	jb	.LBB134_26
# %bb.14:                               #   in Loop: Header=BB134_4 Depth=1
	mov	r11d, r10d
	shr	r11d, 8
	cmp	r11d, 31
	jg	.LBB134_18
# %bb.15:                               #   in Loop: Header=BB134_4 Depth=1
	test	r11d, r11d
	je	.LBB134_21
# %bb.16:                               #   in Loop: Header=BB134_4 Depth=1
	cmp	r11d, 22
	jne	.LBB134_26
# %bb.17:                               #   in Loop: Header=BB134_4 Depth=1
	cmp	r10d, 5760
	sete	r10b
	jmp	.LBB134_23
.LBB134_18:                             #   in Loop: Header=BB134_4 Depth=1
	cmp	r11d, 32
	je	.LBB134_22
# %bb.19:                               #   in Loop: Header=BB134_4 Depth=1
	cmp	r11d, 48
	jne	.LBB134_26
# %bb.20:                               #   in Loop: Header=BB134_4 Depth=1
	cmp	r10d, 12288
	sete	r10b
	jmp	.LBB134_23
.LBB134_21:                             #   in Loop: Header=BB134_4 Depth=1
	movzx	r10d, r10b
	movzx	r10d, byte ptr [r10 + rdi]
	jmp	.LBB134_23
.LBB134_25:
	mov	rcx, rdx
.LBB134_26:
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore rbp
	sub	rdx, rcx
	add	rax, rcx
	ret
.LBB134_1:
	xor	ecx, ecx
	sub	rdx, rcx
	add	rax, rcx
	ret
.Lfunc_end134:
	.size	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std, .Lfunc_end134-_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
