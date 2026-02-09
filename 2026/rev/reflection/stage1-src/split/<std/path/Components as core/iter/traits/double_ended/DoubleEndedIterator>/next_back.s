	.section	.text._RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
	.type	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back,@function
_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back: # @_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
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
	mov	rbx, rdi
	movzx	edx, byte ptr [rsi + 56]
	mov	bpl, 10
	cmp	dl, 3
	jne	.LBB147_3
.LBB147_1:
	mov	byte ptr [rbx], bpl
.LBB147_2:
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
.LBB147_3:
	.cfi_def_cfa_offset 128
	mov	r14, rsi
	movzx	eax, byte ptr [rsi + 57]
	cmp	al, 3
	sete	sil
	cmp	dl, al
	seta	cl
	or	cl, sil
	mov	r8, qword ptr [r14]
	mov	r15, qword ptr [r14 + 8]
	lea	r13, [rsp + 16]
	movzx	esi, byte ptr [r14 + 58]
	cmp	dl, 1
	ja	.LBB147_12
# %bb.4:
	test	sil, 1
	je	.LBB147_23
# %bb.5:
	test	cl, cl
	jne	.LBB147_1
# %bb.6:
	lea	r12, [rsp + 8]
.LBB147_7:                              # =>This Inner Loop Header: Depth=1
	cmp	al, 1
	je	.LBB147_58
# %bb.8:                                #   in Loop: Header=BB147_7 Depth=1
	movzx	eax, al
	cmp	eax, 2
	jne	.LBB147_63
# %bb.9:                                #   in Loop: Header=BB147_7 Depth=1
	cmp	r15, 1
	jbe	.LBB147_57
# %bb.10:                               #   in Loop: Header=BB147_7 Depth=1
	mov	rdi, r12
	mov	rsi, r14
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	mov	rax, qword ptr [r13 + 48]
	mov	rsi, r15
	mov	qword ptr [rbx + 48], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmm2, xmmword ptr [r13 + 32]
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	sub	rsi, qword ptr [rsp + 8]
	jb	.LBB147_65
# %bb.11:                               #   in Loop: Header=BB147_7 Depth=1
	mov	qword ptr [r14 + 8], rsi
	mov	al, 2
	cmp	byte ptr [rbx], 10
	mov	r15, rsi
	je	.LBB147_7
	jmp	.LBB147_2
.LBB147_12:
	movzx	eax, al
	test	sil, 1
	je	.LBB147_39
# %bb.13:
	test	cl, cl
	jne	.LBB147_1
# %bb.14:
	cmp	eax, 1
	je	.LBB147_58
# %bb.15:
	cmp	eax, 2
	jne	.LBB147_63
# %bb.16:
	test	r15, r15
	je	.LBB147_49
# %bb.17:
	lea	rdi, [rsp + 8]
	mov	rsi, r14
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	mov	rax, qword ptr [r13 + 48]
	mov	r12, r15
	mov	qword ptr [rbx + 48], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmm2, xmmword ptr [r13 + 32]
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	sub	r12, qword ptr [rsp + 8]
	jb	.LBB147_64
# %bb.18:
	mov	qword ptr [r14 + 8], r12
	cmp	byte ptr [rbx], 10
	jne	.LBB147_2
# %bb.19:
	lea	r15, [rsp + 8]
.LBB147_20:                             # =>This Inner Loop Header: Depth=1
	test	r12, r12
	je	.LBB147_49
# %bb.21:                               #   in Loop: Header=BB147_20 Depth=1
	mov	rdi, r15
	mov	rsi, r14
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	mov	rax, qword ptr [r13 + 48]
	mov	rsi, r12
	mov	qword ptr [rbx + 48], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmm2, xmmword ptr [r13 + 32]
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	sub	rsi, qword ptr [rsp + 8]
	jb	.LBB147_61
# %bb.22:                               #   in Loop: Header=BB147_20 Depth=1
	mov	qword ptr [r14 + 8], rsi
	cmp	byte ptr [rbx], 10
	mov	r12, rsi
	je	.LBB147_20
	jmp	.LBB147_2
.LBB147_23:
	test	cl, cl
	jne	.LBB147_1
# %bb.24:
	lea	rdi, [rsp + 8]
.LBB147_25:                             # =>This Inner Loop Header: Depth=1
	cmp	al, 1
	je	.LBB147_51
# %bb.26:                               #   in Loop: Header=BB147_25 Depth=1
	movzx	eax, al
	cmp	eax, 2
	jne	.LBB147_63
# %bb.27:                               #   in Loop: Header=BB147_25 Depth=1
	mov	rax, r15
	test	r15, r15
	je	.LBB147_36
# %bb.28:                               #   in Loop: Header=BB147_25 Depth=1
	cmp	r15, 1
	jne	.LBB147_31
# %bb.29:                               #   in Loop: Header=BB147_25 Depth=1
	cmp	byte ptr [r8], 46
	je	.LBB147_33
	jmp	.LBB147_35
.LBB147_31:                             #   in Loop: Header=BB147_25 Depth=1
	cmp	byte ptr [r8], 46
	jne	.LBB147_35
# %bb.32:                               #   in Loop: Header=BB147_25 Depth=1
	cmp	byte ptr [r8 + 1], 47
	jne	.LBB147_35
.LBB147_33:                             #   in Loop: Header=BB147_25 Depth=1
	mov	eax, 1
	jmp	.LBB147_36
.LBB147_35:                             #   in Loop: Header=BB147_25 Depth=1
	xor	eax, eax
.LBB147_36:                             #   in Loop: Header=BB147_25 Depth=1
	cmp	r15, rax
	jbe	.LBB147_50
# %bb.37:                               #   in Loop: Header=BB147_25 Depth=1
	mov	qword ptr [rsp], r8             # 8-byte Spill
	mov	r12, rdi
	mov	rsi, r14
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	mov	rax, qword ptr [r13 + 48]
	mov	rsi, r15
	mov	qword ptr [rbx + 48], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmm2, xmmword ptr [r13 + 32]
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	sub	rsi, qword ptr [rsp + 8]
	jb	.LBB147_65
# %bb.38:                               #   in Loop: Header=BB147_25 Depth=1
	mov	qword ptr [r14 + 8], rsi
	mov	al, 2
	cmp	byte ptr [rbx], 10
	mov	r15, rsi
	mov	rdi, r12
	mov	r8, qword ptr [rsp]             # 8-byte Reload
	je	.LBB147_25
	jmp	.LBB147_2
.LBB147_39:
	test	cl, cl
	jne	.LBB147_1
# %bb.40:
	cmp	eax, 1
	je	.LBB147_51
# %bb.41:
	cmp	eax, 2
	jne	.LBB147_63
# %bb.42:
	test	r15, r15
	je	.LBB147_49
# %bb.43:
	lea	rdi, [rsp + 8]
	mov	rsi, r14
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	mov	rax, qword ptr [r13 + 48]
	mov	r12, r15
	mov	qword ptr [rbx + 48], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmm2, xmmword ptr [r13 + 32]
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	sub	r12, qword ptr [rsp + 8]
	jb	.LBB147_64
# %bb.44:
	mov	qword ptr [r14 + 8], r12
	cmp	byte ptr [rbx], 10
	jne	.LBB147_2
# %bb.45:
	lea	r15, [rsp + 8]
.LBB147_46:                             # =>This Inner Loop Header: Depth=1
	test	r12, r12
	je	.LBB147_49
# %bb.47:                               #   in Loop: Header=BB147_46 Depth=1
	mov	rdi, r15
	mov	rsi, r14
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	mov	rax, qword ptr [r13 + 48]
	mov	rsi, r12
	mov	qword ptr [rbx + 48], rax
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 16]
	movups	xmm2, xmmword ptr [r13 + 32]
	movups	xmmword ptr [rbx + 32], xmm2
	movups	xmmword ptr [rbx + 16], xmm1
	movups	xmmword ptr [rbx], xmm0
	sub	rsi, qword ptr [rsp + 8]
	jb	.LBB147_61
# %bb.48:                               #   in Loop: Header=BB147_46 Depth=1
	mov	qword ptr [r14 + 8], rsi
	cmp	byte ptr [rbx], 10
	mov	r12, rsi
	je	.LBB147_46
	jmp	.LBB147_2
.LBB147_49:
	mov	byte ptr [r14 + 57], 1
	jmp	.LBB147_1
.LBB147_50:
	mov	byte ptr [r14 + 57], 1
.LBB147_51:
	mov	byte ptr [r14 + 57], 3
	test	r15, r15
	je	.LBB147_1
# %bb.52:
	cmp	r15, 1
	jne	.LBB147_54
# %bb.53:
	mov	r15d, 1
	cmp	byte ptr [r8], 46
	jne	.LBB147_1
	jmp	.LBB147_56
.LBB147_54:
	cmp	byte ptr [r8], 46
	jne	.LBB147_1
# %bb.55:
	cmp	byte ptr [r8 + 1], 47
	jne	.LBB147_1
.LBB147_56:
	dec	r15
	mov	bpl, 7
	jmp	.LBB147_59
.LBB147_57:
	mov	byte ptr [r14 + 57], 1
.LBB147_58:
	mov	byte ptr [r14 + 57], 3
	mov	bpl, 6
	sub	r15, 1
	jb	.LBB147_62
.LBB147_59:
	mov	qword ptr [r14 + 8], r15
	jmp	.LBB147_1
.LBB147_61:
	mov	r15, r12
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.894]
	xor	edi, edi
	mov	rdx, r15
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB147_62:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.893]
	xor	edi, edi
	mov	rsi, r15
	xor	edx, edx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB147_63:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.72]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.895]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB147_64:
	mov	rsi, r12
.LBB147_65:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.894]
	xor	edi, edi
	mov	rdx, r15
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end147:
	.size	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back, .Lfunc_end147-_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
	.cfi_endproc
                                        # -- End function
