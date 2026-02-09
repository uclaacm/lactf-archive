	.section	.text._RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
	.type	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match,@function
_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: # @_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
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
	mov	qword ptr [rsp + 32], rdi       # 8-byte Spill
	mov	rdi, qword ptr [rsi + 8]
	mov	r9, qword ptr [rsi + 24]
	cmp	r9, rdi
	seta	al
	mov	r12, qword ptr [rsi + 16]
	cmp	r9, r12
	setb	cl
	or	cl, al
	jne	.LBB72_40
# %bb.2:
	mov	r11, qword ptr [rsi]
	movzx	r10d, byte ptr [rsi + 40]
	movzx	r14d, byte ptr [rsi + r10 + 31]
	cmp	r10, 5
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	jae	.LBB72_30
# %bb.3:
	lea	rax, [rsi + 32]
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	movabs	r15, 72340172838076672
	lea	rbx, [r15 + 1]
	imul	rbx, r14
	lea	rax, [r11 + 8]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	movabs	r13, -9187201950435737472
	mov	qword ptr [rsp + 24], r10       # 8-byte Spill
	mov	qword ptr [rsp + 16], r11       # 8-byte Spill
	jmp	.LBB72_5
	.p2align	4
.LBB72_4:                               #   in Loop: Header=BB72_5 Depth=1
	cmp	r9, r12
	jb	.LBB72_40
.LBB72_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_16 Depth 2
                                        #     Child Loop BB72_13 Depth 2
                                        #     Child Loop BB72_21 Depth 2
                                        #     Child Loop BB72_8 Depth 2
	mov	rcx, r9
	sub	rcx, r12
	lea	rax, [r11 + r12]
	cmp	rcx, 16
	jae	.LBB72_10
# %bb.6:                                #   in Loop: Header=BB72_5 Depth=1
	cmp	r9, r12
	je	.LBB72_39
# %bb.7:                                #   in Loop: Header=BB72_5 Depth=1
	xor	r8d, r8d
	.p2align	4
.LBB72_8:                               #   Parent Loop BB72_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rax + r8], r14b
	je	.LBB72_24
# %bb.9:                                #   in Loop: Header=BB72_8 Depth=2
	inc	r8
	cmp	rcx, r8
	jne	.LBB72_8
	jmp	.LBB72_39
	.p2align	4
.LBB72_10:                              #   in Loop: Header=BB72_5 Depth=1
	lea	rdx, [rax + 7]
	and	rdx, -8
	sub	rdx, rax
	jne	.LBB72_15
# %bb.11:                               #   in Loop: Header=BB72_5 Depth=1
	mov	rdi, r9
	lea	r8, [rcx - 16]
	xor	edx, edx
.LBB72_12:                              #   in Loop: Header=BB72_5 Depth=1
	mov	r9, qword ptr [rsp + 64]        # 8-byte Reload
	add	r9, r12
	.p2align	4
.LBB72_13:                              #   Parent Loop BB72_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r10, qword ptr [r9 + rdx - 8]
	xor	r10, rbx
	mov	r11, r15
	sub	r11, r10
	or	r11, r10
	mov	r10, qword ptr [r9 + rdx]
	xor	r10, rbx
	mov	rbp, r15
	sub	rbp, r10
	or	rbp, r10
	and	r11, r13
	and	r11, rbp
	cmp	r11, r13
	jne	.LBB72_19
# %bb.14:                               #   in Loop: Header=BB72_13 Depth=2
	add	rdx, 16
	cmp	rdx, r8
	jbe	.LBB72_13
	jmp	.LBB72_19
	.p2align	4
.LBB72_15:                              #   in Loop: Header=BB72_5 Depth=1
	xor	r8d, r8d
	.p2align	4
.LBB72_16:                              #   Parent Loop BB72_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rax + r8], r14b
	je	.LBB72_24
# %bb.17:                               #   in Loop: Header=BB72_16 Depth=2
	inc	r8
	cmp	rdx, r8
	jne	.LBB72_16
# %bb.18:                               #   in Loop: Header=BB72_5 Depth=1
	mov	rdi, r9
	lea	r8, [rcx - 16]
	cmp	rdx, r8
	jbe	.LBB72_12
	.p2align	4
.LBB72_19:                              #   in Loop: Header=BB72_5 Depth=1
	cmp	rcx, rdx
	mov	r9, rdi
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r10, qword ptr [rsp + 24]       # 8-byte Reload
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	je	.LBB72_39
# %bb.20:                               #   in Loop: Header=BB72_5 Depth=1
	add	rax, rdx
	mov	rcx, r9
	sub	rcx, rdx
	sub	rcx, r12
	xor	r8d, r8d
	.p2align	4
.LBB72_21:                              #   Parent Loop BB72_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rax + r8], r14b
	je	.LBB72_23
# %bb.22:                               #   in Loop: Header=BB72_21 Depth=2
	inc	r8
	cmp	rcx, r8
	jne	.LBB72_21
	jmp	.LBB72_39
.LBB72_23:                              #   in Loop: Header=BB72_5 Depth=1
	add	r8, rdx
.LBB72_24:                              #   in Loop: Header=BB72_5 Depth=1
	add	r12, r8
	inc	r12
	mov	qword ptr [rsi + 16], r12
	mov	rbp, r12
	sub	rbp, r10
	setb	al
	cmp	r12, rdi
	seta	cl
	or	cl, al
	jne	.LBB72_4
# %bb.25:                               #   in Loop: Header=BB72_5 Depth=1
	lea	rdi, [r11 + rbp]
	mov	qword ptr [rsp + 48], rsi       # 8-byte Spill
	mov	rsi, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rdx, r10
	mov	qword ptr [rsp + 40], r9        # 8-byte Spill
	call	qword ptr [rip + bcmp@GOTPCREL]
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r10, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	mov	rsi, qword ptr [rsp + 48]       # 8-byte Reload
	test	eax, eax
	jne	.LBB72_4
# %bb.26:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rax + 8], rbp
	mov	qword ptr [rax + 16], r12
	mov	ecx, 1
	jmp	.LBB72_41
.LBB72_28:                              #   in Loop: Header=BB72_30 Depth=1
	add	r12, rdx
	inc	r12
	mov	qword ptr [rsi + 16], r12
	cmp	r12, r10
	setb	al
	cmp	r12, rdi
	seta	cl
	or	cl, al
	je	.LBB72_42
# %bb.29:                               #   in Loop: Header=BB72_30 Depth=1
	cmp	r9, r12
	mov	ecx, 0
	jb	.LBB72_41
.LBB72_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_32 Depth 2
	mov	rax, r9
	sub	rax, r12
	lea	rcx, [r11 + r12]
	cmp	rax, 15
	ja	.LBB72_35
# %bb.31:                               #   in Loop: Header=BB72_30 Depth=1
	xor	edx, edx
	test	rax, rax
	je	.LBB72_36
.LBB72_32:                              #   Parent Loop BB72_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [rcx + rdx], r14b
	je	.LBB72_37
# %bb.33:                               #   in Loop: Header=BB72_32 Depth=2
	inc	rdx
	cmp	rax, rdx
	jne	.LBB72_32
# %bb.34:                               #   in Loop: Header=BB72_30 Depth=1
	mov	rdx, rax
	xor	eax, eax
	jmp	.LBB72_38
.LBB72_35:                              #   in Loop: Header=BB72_30 Depth=1
	mov	edi, r14d
	mov	r15, rsi
	mov	rsi, rcx
	mov	rdx, rax
	mov	rbx, r9
	mov	rbp, r10
	mov	r13, r11
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice6memchr14memchr_aligned
	mov	r11, r13
	mov	r10, rbp
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	r9, rbx
	mov	rsi, r15
	jmp	.LBB72_38
.LBB72_36:                              #   in Loop: Header=BB72_30 Depth=1
	xor	eax, eax
	jmp	.LBB72_38
.LBB72_37:                              #   in Loop: Header=BB72_30 Depth=1
	mov	eax, 1
.LBB72_38:                              #   in Loop: Header=BB72_30 Depth=1
	test	al, 1
	jne	.LBB72_28
.LBB72_39:
	mov	qword ptr [rsi + 16], r9
.LBB72_40:
	xor	ecx, ecx
.LBB72_41:
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rax], rcx
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
.LBB72_42:
	.cfi_def_cfa_offset 128
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.788]
	mov	edx, 4
	xor	edi, edi
	mov	rsi, r10
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end72:
	.size	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match, .Lfunc_end72-_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
	.cfi_endproc
                                        # -- End function
