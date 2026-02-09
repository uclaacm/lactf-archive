	.section	.text._RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_
	.type	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_,@function
_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_: # @_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_
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
	sub	rsp, 168
	.cfi_def_cfa_offset 224
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, qword ptr [rdi]
	mov	r15, qword ptr [rdi + 8]
	mov	r14, qword ptr [rsi]
	mov	r13, qword ptr [rsi + 8]
	mov	rax, qword ptr [r13 + 32]
	mov	rdi, r14
	mov	esi, 34
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	call	rax
	mov	cl, 1
	test	al, al
	jne	.LBB289_51
# %bb.1:
	mov	qword ptr [rsp + 104], rbx
	mov	qword ptr [rsp + 112], r15
	lea	rdi, [rsp + 136]
	lea	rsi, [rsp + 104]
	lea	r15, [rsp + 7]
.LBB289_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB289_6 Depth 2
                                        #       Child Loop BB289_43 Depth 3
                                        #       Child Loop BB289_41 Depth 3
                                        #     Child Loop BB289_31 Depth 2
	call	_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	mov	rax, qword ptr [rsp + 136]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	test	rax, rax
	je	.LBB289_50
# %bb.3:                                #   in Loop: Header=BB289_2 Depth=1
	mov	rcx, qword ptr [rsp + 144]
	mov	rax, qword ptr [rsp + 152]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 160]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	test	rcx, rcx
	je	.LBB289_4
# %bb.5:                                #   in Loop: Header=BB289_2 Depth=1
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	add	rcx, rsi
	mov	qword ptr [rsp + 80], rcx       # 8-byte Spill
	xor	ebx, ebx
	xor	r12d, r12d
	mov	qword ptr [rsp + 72], r13       # 8-byte Spill
	jmp	.LBB289_6
	.p2align	4
.LBB289_48:                             #   in Loop: Header=BB289_6 Depth=2
	add	rbx, r12
	mov	r13, qword ptr [rsp + 72]       # 8-byte Reload
	lea	r15, [rsp + 7]
.LBB289_49:                             #   in Loop: Header=BB289_6 Depth=2
	sub	r12, qword ptr [rsp + 88]       # 8-byte Folded Reload
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	add	r12, rax
	mov	rsi, rax
	cmp	rax, qword ptr [rsp + 80]       # 8-byte Folded Reload
	je	.LBB289_21
.LBB289_6:                              #   Parent Loop BB289_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB289_43 Depth 3
                                        #       Child Loop BB289_41 Depth 3
	movzx	ebp, byte ptr [rsi]
	test	bpl, bpl
	mov	qword ptr [rsp + 88], rsi       # 8-byte Spill
	js	.LBB289_8
# %bb.7:                                #   in Loop: Header=BB289_6 Depth=2
	lea	rax, [rsi + 1]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB289_13
	.p2align	4
.LBB289_8:                              #   in Loop: Header=BB289_6 Depth=2
	mov	eax, ebp
	and	eax, 31
	movzx	edx, byte ptr [rsi + 1]
	and	edx, 63
	cmp	bpl, -33
	jbe	.LBB289_9
# %bb.10:                               #   in Loop: Header=BB289_6 Depth=2
	movzx	ecx, byte ptr [rsi + 2]
	shl	edx, 6
	and	ecx, 63
	or	ecx, edx
	cmp	bpl, -16
	jb	.LBB289_11
# %bb.12:                               #   in Loop: Header=BB289_6 Depth=2
	lea	rdx, [rsi + 4]
	mov	qword ptr [rsp + 24], rdx       # 8-byte Spill
	movzx	ebp, byte ptr [rsi + 3]
	and	eax, 7
	shl	eax, 18
	shl	ecx, 6
	and	ebp, 63
	or	ebp, ecx
	or	ebp, eax
	jmp	.LBB289_13
.LBB289_9:                              #   in Loop: Header=BB289_6 Depth=2
	lea	rcx, [rsi + 2]
	mov	qword ptr [rsp + 24], rcx       # 8-byte Spill
	shl	eax, 6
	or	eax, edx
	mov	ebp, eax
	jmp	.LBB289_13
.LBB289_11:                             #   in Loop: Header=BB289_6 Depth=2
	lea	rdx, [rsi + 3]
	mov	qword ptr [rsp + 24], rdx       # 8-byte Spill
	shl	eax, 12
	or	ecx, eax
	mov	ebp, ecx
	.p2align	4
.LBB289_13:                             #   in Loop: Header=BB289_6 Depth=2
	lea	rdi, [rsp + 120]
	mov	esi, ebp
	mov	edx, 65537
	call	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext
	movzx	eax, byte ptr [rsp + 133]
	sub	al, byte ptr [rsp + 132]
	cmp	al, 1
	je	.LBB289_49
# %bb.14:                               #   in Loop: Header=BB289_6 Depth=2
	mov	rdx, r12
	sub	rdx, rbx
	jb	.LBB289_38
# %bb.15:                               #   in Loop: Header=BB289_6 Depth=2
	test	rbx, rbx
	je	.LBB289_18
# %bb.16:                               #   in Loop: Header=BB289_6 Depth=2
	cmp	rbx, qword ptr [rsp + 16]       # 8-byte Folded Reload
	jae	.LBB289_17
# %bb.37:                               #   in Loop: Header=BB289_6 Depth=2
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	byte ptr [rax + rbx], -65
	jg	.LBB289_18
	jmp	.LBB289_38
.LBB289_17:                             #   in Loop: Header=BB289_6 Depth=2
	jne	.LBB289_38
.LBB289_18:                             #   in Loop: Header=BB289_6 Depth=2
	test	r12, r12
	je	.LBB289_35
# %bb.19:                               #   in Loop: Header=BB289_6 Depth=2
	cmp	r12, qword ptr [rsp + 16]       # 8-byte Folded Reload
	jae	.LBB289_20
# %bb.34:                               #   in Loop: Header=BB289_6 Depth=2
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	byte ptr [rax + r12], -65
	jg	.LBB289_35
	jmp	.LBB289_38
.LBB289_20:                             #   in Loop: Header=BB289_6 Depth=2
	jne	.LBB289_38
.LBB289_35:                             #   in Loop: Header=BB289_6 Depth=2
	add	rbx, qword ptr [rsp + 8]        # 8-byte Folded Reload
	mov	rdi, r14
	mov	rsi, rbx
	call	qword ptr [r13 + 24]
	test	al, al
	jne	.LBB289_36
# %bb.39:                               #   in Loop: Header=BB289_6 Depth=2
	movups	xmm0, xmmword ptr [rsp + 120]
	movaps	xmmword ptr [rsp + 32], xmm0
	movzx	r13d, byte ptr [rsp + 45]
	movzx	r15d, byte ptr [rsp + 44]
	cmp	r13, 129
	jb	.LBB289_43
# %bb.40:                               #   in Loop: Header=BB289_6 Depth=2
	mov	ebx, dword ptr [rsp + 32]
	dec	r15b
	.p2align	4
.LBB289_41:                             #   Parent Loop BB289_2 Depth=1
                                        #     Parent Loop BB289_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	inc	r15b
	cmp	r15b, r13b
	jae	.LBB289_45
# %bb.42:                               #   in Loop: Header=BB289_41 Depth=3
	mov	rdi, r14
	mov	esi, ebx
	call	qword ptr [rsp + 56]            # 8-byte Folded Reload
	test	al, al
	je	.LBB289_41
	jmp	.LBB289_36
	.p2align	4
.LBB289_43:                             #   Parent Loop BB289_2 Depth=1
                                        #     Parent Loop BB289_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	r15, r13
	jae	.LBB289_45
# %bb.44:                               #   in Loop: Header=BB289_43 Depth=3
	movzx	esi, byte ptr [rsp + r15 + 32]
	inc	r15
	mov	rdi, r14
	call	qword ptr [rsp + 56]            # 8-byte Folded Reload
	test	al, al
	je	.LBB289_43
	jmp	.LBB289_36
	.p2align	4
.LBB289_45:                             #   in Loop: Header=BB289_6 Depth=2
	mov	ebx, 1
	cmp	ebp, 128
	jb	.LBB289_48
# %bb.46:                               #   in Loop: Header=BB289_6 Depth=2
	mov	ebx, 2
	cmp	ebp, 2048
	jb	.LBB289_48
# %bb.47:                               #   in Loop: Header=BB289_6 Depth=2
	cmp	ebp, 65536
	mov	ebx, 4
	sbb	rbx, 0
	jmp	.LBB289_48
	.p2align	4
.LBB289_4:                              #   in Loop: Header=BB289_2 Depth=1
	xor	eax, eax
.LBB289_28:                             #   in Loop: Header=BB289_2 Depth=1
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	add	rsi, rax
	sub	rcx, rax
	mov	rdi, r14
	mov	rdx, rcx
	call	qword ptr [r13 + 24]
	test	al, al
	jne	.LBB289_36
# %bb.29:                               #   in Loop: Header=BB289_2 Depth=1
	cmp	qword ptr [rsp + 64], 0         # 8-byte Folded Reload
	je	.LBB289_33
# %bb.30:                               #   in Loop: Header=BB289_2 Depth=1
	xor	ebx, ebx
	.p2align	4
.LBB289_31:                             #   Parent Loop BB289_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	movzx	eax, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 7], al
	mov	qword ptr [rsp + 32], r15
	lea	rax, [rip + _RNvXsg_NtNtCsfQL5qMWGko6_4core3fmt3numhNtB7_8UpperHex3fmt]
	mov	qword ptr [rsp + 40], rax
	mov	rdi, r14
	mov	rsi, r13
	lea	rdx, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.315]
	lea	rcx, [rsp + 32]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	test	al, al
	jne	.LBB289_36
# %bb.32:                               #   in Loop: Header=BB289_31 Depth=2
	inc	rbx
	cmp	qword ptr [rsp + 64], rbx       # 8-byte Folded Reload
	jne	.LBB289_31
.LBB289_33:                             #   in Loop: Header=BB289_2 Depth=1
	lea	rdi, [rsp + 136]
	lea	rsi, [rsp + 104]
	jmp	.LBB289_2
.LBB289_21:                             #   in Loop: Header=BB289_2 Depth=1
	test	rbx, rbx
	je	.LBB289_22
# %bb.23:                               #   in Loop: Header=BB289_2 Depth=1
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	cmp	rbx, rcx
	jae	.LBB289_24
# %bb.26:                               #   in Loop: Header=BB289_2 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	byte ptr [rax + rbx], -64
	jl	.LBB289_25
# %bb.27:                               #   in Loop: Header=BB289_2 Depth=1
	mov	rax, rbx
	jmp	.LBB289_28
.LBB289_22:                             #   in Loop: Header=BB289_2 Depth=1
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB289_28
.LBB289_24:                             #   in Loop: Header=BB289_2 Depth=1
	mov	rax, rcx
	je	.LBB289_28
.LBB289_25:
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.314]
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, rcx
	mov	rdx, rbx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB289_36:
	mov	cl, 1
.LBB289_51:
	mov	eax, ecx
	add	rsp, 168
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
.LBB289_50:
	.cfi_def_cfa_offset 224
	mov	rdi, r14
	mov	esi, 34
	call	qword ptr [rsp + 56]            # 8-byte Folded Reload
	mov	ecx, eax
	jmp	.LBB289_51
.LBB289_38:
	lea	r8, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.316]
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rdx, rbx
	mov	rcx, r12
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end289:
	.size	_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_, .Lfunc_end289-_RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_
	.cfi_endproc
                                        # -- End function
