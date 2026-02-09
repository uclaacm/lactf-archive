	.section	.text._RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next
	.type	_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next,@function
_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next: # @_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	movzx	ebp, byte ptr [rsi + 56]
	mov	cl, 10
	cmp	bpl, 3
	je	.LBB293_60
# %bb.1:
	movzx	r10d, byte ptr [rsi + 57]
	cmp	r10b, 3
	je	.LBB293_60
# %bb.2:
	mov	rax, qword ptr [rsi]
	movzx	r11d, byte ptr [rdi]
	mov	rbx, qword ptr [rsi + 8]
	mov	r14, qword ptr [rdi + 8]
	mov	r8, qword ptr [rdi + 16]
	test	byte ptr [rsi + 58], 1
	je	.LBB293_57
.LBB293_3:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB293_8 Depth 2
	cmp	bpl, r10b
	ja	.LBB293_61
# %bb.4:                                #   in Loop: Header=BB293_3 Depth=1
	mov	r9, rax
	cmp	bpl, 1
	je	.LBB293_39
# %bb.5:                                #   in Loop: Header=BB293_3 Depth=1
	movzx	eax, bpl
	cmp	eax, 2
	jne	.LBB293_23
# %bb.6:                                #   in Loop: Header=BB293_3 Depth=1
	test	rbx, rbx
	je	.LBB293_34
# %bb.7:                                #   in Loop: Header=BB293_3 Depth=1
	xor	r8d, r8d
	.p2align	4
.LBB293_8:                              #   Parent Loop BB293_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [r9 + r8], 47
	je	.LBB293_9
# %bb.10:                               #   in Loop: Header=BB293_8 Depth=2
	inc	r8
	cmp	rbx, r8
	jne	.LBB293_8
# %bb.11:                               #   in Loop: Header=BB293_3 Depth=1
	mov	r8, rbx
	xor	eax, eax
	jmp	.LBB293_12
.LBB293_9:                              #   in Loop: Header=BB293_3 Depth=1
	mov	eax, 1
.LBB293_12:                             #   in Loop: Header=BB293_3 Depth=1
	mov	r11b, 10
	mov	dl, 1
	test	r8, r8
	je	.LBB293_20
# %bb.13:                               #   in Loop: Header=BB293_3 Depth=1
	cmp	r8, 1
	je	.LBB293_18
# %bb.14:                               #   in Loop: Header=BB293_3 Depth=1
	cmp	r8, 2
	jne	.LBB293_19
# %bb.15:                               #   in Loop: Header=BB293_3 Depth=1
	cmp	byte ptr [r9], 46
	jne	.LBB293_19
# %bb.16:                               #   in Loop: Header=BB293_3 Depth=1
	cmp	byte ptr [r9 + 1], 46
	jne	.LBB293_19
# %bb.17:                               #   in Loop: Header=BB293_3 Depth=1
	xor	edx, edx
	mov	r11b, 8
	jmp	.LBB293_20
.LBB293_18:                             #   in Loop: Header=BB293_3 Depth=1
	cmp	byte ptr [r9], 46
	je	.LBB293_20
.LBB293_19:                             #   in Loop: Header=BB293_3 Depth=1
	mov	r11b, 9
	xor	edx, edx
.LBB293_20:                             #   in Loop: Header=BB293_3 Depth=1
	add	rax, r8
	mov	r15, rbx
	sub	r15, rax
	jb	.LBB293_21
# %bb.58:                               #   in Loop: Header=BB293_3 Depth=1
	add	rax, r9
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], r15
	mov	bpl, 2
	mov	r14, r9
	mov	rbx, r15
	test	dl, dl
	jne	.LBB293_3
	jmp	.LBB293_59
	.p2align	4
.LBB293_57:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB293_25 Depth 2
                                        #     Child Loop BB293_43 Depth 2
	mov	r9, rax
	inc	rax
	mov	rdx, rbx
.LBB293_25:                             #   Parent Loop BB293_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	bpl, r10b
	ja	.LBB293_61
# %bb.26:                               #   in Loop: Header=BB293_25 Depth=2
	cmp	bpl, 2
	je	.LBB293_33
# %bb.27:                               #   in Loop: Header=BB293_25 Depth=2
	movzx	ebp, bpl
	cmp	ebp, 1
	jne	.LBB293_23
# %bb.28:                               #   in Loop: Header=BB293_25 Depth=2
	mov	byte ptr [rsi + 56], 2
	cmp	rdx, 1
	jne	.LBB293_29
# %bb.24:                               #   in Loop: Header=BB293_25 Depth=2
	mov	bpl, 2
	mov	edx, 1
	cmp	byte ptr [r9], 46
	jne	.LBB293_25
	jmp	.LBB293_35
.LBB293_29:                             #   in Loop: Header=BB293_57 Depth=1
	test	rdx, rdx
	je	.LBB293_32
# %bb.30:                               #   in Loop: Header=BB293_57 Depth=1
	cmp	byte ptr [r9], 46
	jne	.LBB293_32
# %bb.31:                               #   in Loop: Header=BB293_57 Depth=1
	cmp	byte ptr [rax], 47
	je	.LBB293_35
.LBB293_32:                             #   in Loop: Header=BB293_57 Depth=1
	cmp	r10b, 2
	jb	.LBB293_61
	.p2align	4
.LBB293_33:                             #   in Loop: Header=BB293_57 Depth=1
	test	rdx, rdx
	je	.LBB293_34
# %bb.42:                               #   in Loop: Header=BB293_57 Depth=1
	xor	r8d, r8d
	.p2align	4
.LBB293_43:                             #   Parent Loop BB293_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [r9 + r8], 47
	je	.LBB293_44
# %bb.45:                               #   in Loop: Header=BB293_43 Depth=2
	inc	r8
	cmp	rdx, r8
	jne	.LBB293_43
# %bb.46:                               #   in Loop: Header=BB293_57 Depth=1
	mov	r8, rdx
	xor	eax, eax
	mov	r11b, 10
	mov	r15b, 1
	test	r8, r8
	jne	.LBB293_48
	jmp	.LBB293_55
	.p2align	4
.LBB293_44:                             #   in Loop: Header=BB293_57 Depth=1
	mov	eax, 1
	mov	r11b, 10
	mov	r15b, 1
	test	r8, r8
	je	.LBB293_55
.LBB293_48:                             #   in Loop: Header=BB293_57 Depth=1
	cmp	r8, 2
	je	.LBB293_52
# %bb.49:                               #   in Loop: Header=BB293_57 Depth=1
	cmp	r8, 1
	jne	.LBB293_51
# %bb.50:                               #   in Loop: Header=BB293_57 Depth=1
	cmp	byte ptr [r9], 46
	jne	.LBB293_51
	jmp	.LBB293_55
.LBB293_52:                             #   in Loop: Header=BB293_57 Depth=1
	cmp	byte ptr [r9], 46
	jne	.LBB293_51
# %bb.53:                               #   in Loop: Header=BB293_57 Depth=1
	cmp	byte ptr [r9 + 1], 46
	jne	.LBB293_51
# %bb.54:                               #   in Loop: Header=BB293_57 Depth=1
	xor	r15d, r15d
	mov	r11b, 8
	jmp	.LBB293_55
	.p2align	4
.LBB293_51:                             #   in Loop: Header=BB293_57 Depth=1
	mov	r11b, 9
	xor	r15d, r15d
.LBB293_55:                             #   in Loop: Header=BB293_57 Depth=1
	add	rax, r8
	mov	rbx, rdx
	sub	rbx, rax
	jb	.LBB293_22
# %bb.56:                               #   in Loop: Header=BB293_57 Depth=1
	add	rax, r9
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], rbx
	mov	bpl, 2
	mov	r14, r9
	test	r15b, r15b
	jne	.LBB293_57
.LBB293_59:
	mov	qword ptr [rdi + 8], r9
	mov	qword ptr [rdi + 16], r8
	mov	ecx, r11d
	jmp	.LBB293_60
.LBB293_39:
	mov	qword ptr [rdi + 8], r14
	mov	qword ptr [rdi + 16], r8
	mov	byte ptr [rsi + 56], 2
	test	rbx, rbx
	je	.LBB293_41
# %bb.40:
	dec	rbx
	inc	r9
	mov	qword ptr [rsi], r9
	mov	qword ptr [rsi + 8], rbx
	mov	cl, 6
	jmp	.LBB293_60
.LBB293_61:
	mov	qword ptr [rdi + 8], r14
	mov	qword ptr [rdi + 16], r8
	jmp	.LBB293_60
.LBB293_34:
	mov	qword ptr [rdi + 8], r14
	mov	qword ptr [rdi + 16], r8
	mov	byte ptr [rsi + 56], 3
	jmp	.LBB293_60
.LBB293_35:
	mov	qword ptr [rdi + 8], r14
	mov	qword ptr [rdi + 16], r8
	test	rbx, rbx
	je	.LBB293_37
# %bb.36:
	dec	rbx
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], rbx
	mov	cl, 7
.LBB293_60:
	mov	byte ptr [rdi], cl
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB293_23:
	.cfi_def_cfa_offset 48
	mov	qword ptr [rdi + 8], r14
	mov	qword ptr [rdi + 16], r8
	mov	byte ptr [rdi], r11b
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.72]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.884]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB293_41:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.882]
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB293_21:
	mov	rdx, rbx
.LBB293_22:
	mov	qword ptr [rdi + 8], r9
	mov	qword ptr [rdi + 16], r8
	mov	byte ptr [rdi], r11b
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.883]
	mov	rdi, rax
	mov	rsi, rdx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB293_37:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.881]
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end293:
	.size	_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next, .Lfunc_end293-_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next
	.cfi_endproc
                                        # -- End function
