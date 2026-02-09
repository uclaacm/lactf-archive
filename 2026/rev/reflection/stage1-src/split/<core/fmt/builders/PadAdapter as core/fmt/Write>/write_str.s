	.section	.text._RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	.type	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str,@function
_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str: # @_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
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
	movabs	rbp, -9187201950435737472
	mov	rax, qword ptr [rdi + 16]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	mov	qword ptr [rsp + 16], rsi       # 8-byte Spill
	lea	rax, [rsi + 8]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	xor	r12d, r12d
	xor	r15d, r15d
	xor	r14d, r14d
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	jmp	.LBB76_3
	.p2align	4
.LBB76_1:                               #   in Loop: Header=BB76_3 Depth=1
	cmp	byte ptr [r11 + rbp - 1], 10
	sete	al
.LBB76_2:                               #   in Loop: Header=BB76_3 Depth=1
	sub	rbp, r15
	add	r15, r11
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	byte ptr [rcx], al
	mov	rdi, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rsi, r15
	mov	rdx, rbp
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rax + 24]
	mov	r15, r13
	test	al, al
	mov	rbp, rbx
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	jne	.LBB76_41
.LBB76_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_8 Depth 2
                                        #       Child Loop BB76_19 Depth 3
                                        #       Child Loop BB76_16 Depth 3
                                        #       Child Loop BB76_24 Depth 3
                                        #       Child Loop BB76_11 Depth 3
	test	r14b, 1
	jne	.LBB76_39
# %bb.4:                                #   in Loop: Header=BB76_3 Depth=1
	cmp	rdx, r12
	jae	.LBB76_6
# %bb.5:                                #   in Loop: Header=BB76_3 Depth=1
	mov	r13, r12
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB76_32
	.p2align	4
.LBB76_6:                               #   in Loop: Header=BB76_3 Depth=1
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	movabs	r14, 72340172838076672
	jmp	.LBB76_8
	.p2align	4
.LBB76_7:                               #   in Loop: Header=BB76_8 Depth=2
	mov	r12, r13
	cmp	rdx, r13
	jb	.LBB76_32
.LBB76_8:                               #   Parent Loop BB76_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB76_19 Depth 3
                                        #       Child Loop BB76_16 Depth 3
                                        #       Child Loop BB76_24 Depth 3
                                        #       Child Loop BB76_11 Depth 3
	mov	rcx, rdx
	sub	rcx, r12
	lea	rax, [r11 + r12]
	cmp	rcx, 15
	ja	.LBB76_13
# %bb.9:                                #   in Loop: Header=BB76_8 Depth=2
	cmp	rdx, r12
	je	.LBB76_31
# %bb.10:                               #   in Loop: Header=BB76_8 Depth=2
	xor	esi, esi
	.p2align	4
.LBB76_11:                              #   Parent Loop BB76_3 Depth=1
                                        #     Parent Loop BB76_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	byte ptr [rax + rsi], 10
	je	.LBB76_27
# %bb.12:                               #   in Loop: Header=BB76_11 Depth=3
	inc	rsi
	cmp	rcx, rsi
	jne	.LBB76_11
	jmp	.LBB76_31
	.p2align	4
.LBB76_13:                              #   in Loop: Header=BB76_8 Depth=2
	lea	rbx, [rax + 7]
	and	rbx, -8
	sub	rbx, rax
	jne	.LBB76_18
# %bb.14:                               #   in Loop: Header=BB76_8 Depth=2
	lea	rsi, [rcx - 16]
	xor	ebx, ebx
	movabs	rdx, 723401728380766730
.LBB76_15:                              #   in Loop: Header=BB76_8 Depth=2
	mov	rdi, qword ptr [rsp + 48]       # 8-byte Reload
	add	rdi, r12
	.p2align	4
.LBB76_16:                              #   Parent Loop BB76_3 Depth=1
                                        #     Parent Loop BB76_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	r8, qword ptr [rdi + rbx - 8]
	mov	r9, r8
	xor	r9, rdx
	mov	r10, r14
	sub	r10, r9
	or	r10, r8
	mov	r8, qword ptr [rdi + rbx]
	xor	r8, rdx
	mov	r9, r14
	sub	r9, r8
	or	r9, r8
	and	r10, rbp
	and	r10, r9
	cmp	r10, rbp
	jne	.LBB76_22
# %bb.17:                               #   in Loop: Header=BB76_16 Depth=3
	add	rbx, 16
	cmp	rbx, rsi
	jbe	.LBB76_16
	jmp	.LBB76_22
	.p2align	4
.LBB76_18:                              #   in Loop: Header=BB76_8 Depth=2
	xor	esi, esi
	.p2align	4
.LBB76_19:                              #   Parent Loop BB76_3 Depth=1
                                        #     Parent Loop BB76_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	byte ptr [rax + rsi], 10
	je	.LBB76_27
# %bb.20:                               #   in Loop: Header=BB76_19 Depth=3
	inc	rsi
	cmp	rbx, rsi
	jne	.LBB76_19
# %bb.21:                               #   in Loop: Header=BB76_8 Depth=2
	lea	rsi, [rcx - 16]
	cmp	rbx, rsi
	movabs	rdx, 723401728380766730
	jbe	.LBB76_15
	.p2align	4
.LBB76_22:                              #   in Loop: Header=BB76_8 Depth=2
	cmp	rcx, rbx
	je	.LBB76_38
# %bb.23:                               #   in Loop: Header=BB76_8 Depth=2
	lea	rcx, [rax + rbx]
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdi, rdx
	sub	rdi, rbx
	sub	rdi, r12
	xor	esi, esi
	.p2align	4
.LBB76_24:                              #   Parent Loop BB76_3 Depth=1
                                        #     Parent Loop BB76_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	byte ptr [rcx + rsi], 10
	je	.LBB76_26
# %bb.25:                               #   in Loop: Header=BB76_24 Depth=3
	inc	rsi
	cmp	rdi, rsi
	jne	.LBB76_24
	jmp	.LBB76_31
.LBB76_26:                              #   in Loop: Header=BB76_8 Depth=2
	add	rsi, rbx
.LBB76_27:                              #   in Loop: Header=BB76_8 Depth=2
	lea	r13, [r12 + rsi]
	inc	r13
	add	r12, rsi
	cmp	r12, rdx
	jae	.LBB76_7
# %bb.28:                               #   in Loop: Header=BB76_8 Depth=2
	cmp	byte ptr [rax + rsi], 10
	jne	.LBB76_7
# %bb.29:                               #   in Loop: Header=BB76_3 Depth=1
	mov	rbx, rbp
	xor	r14d, r14d
	mov	r12, r13
	mov	rbp, r13
	jmp	.LBB76_33
.LBB76_38:                              #   in Loop: Header=BB76_3 Depth=1
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	.p2align	4
.LBB76_31:                              #   in Loop: Header=BB76_3 Depth=1
	mov	r13, rdx
.LBB76_32:                              #   in Loop: Header=BB76_3 Depth=1
	mov	rbx, rbp
	mov	r14b, 1
	mov	r12, r13
	mov	r13, r15
	mov	rbp, rdx
	cmp	rdx, r15
	je	.LBB76_39
.LBB76_33:                              #   in Loop: Header=BB76_3 Depth=1
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	cmp	byte ptr [rax], 0
	je	.LBB76_35
# %bb.34:                               #   in Loop: Header=BB76_3 Depth=1
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.312]
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rax + 24]
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	test	al, al
	jne	.LBB76_41
.LBB76_35:                              #   in Loop: Header=BB76_3 Depth=1
	cmp	rbp, r15
	jne	.LBB76_1
# %bb.36:                               #   in Loop: Header=BB76_3 Depth=1
	xor	eax, eax
	jmp	.LBB76_2
.LBB76_39:
	xor	eax, eax
	jmp	.LBB76_42
.LBB76_41:
	mov	al, 1
.LBB76_42:
                                        # kill: def $al killed $al killed $eax
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
.Lfunc_end76:
	.size	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str, .Lfunc_end76-_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	.cfi_endproc
                                        # -- End function
