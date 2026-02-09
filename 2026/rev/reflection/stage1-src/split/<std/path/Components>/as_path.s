	.section	.text._RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path
	.type	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path,@function
_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path: # @_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 136
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	movzx	esi, byte ptr [rdi + 16]
	cmp	sil, 6
	je	.LBB148_2
# %bb.1:
	mov	rax, qword ptr [rdi + 48]
	mov	qword ptr [rsp + 95], rax
	movups	xmm0, xmmword ptr [rdi + 17]
	movups	xmm1, xmmword ptr [rdi + 33]
	movaps	xmmword ptr [rsp + 80], xmm1
	movaps	xmmword ptr [rsp + 64], xmm0
.LBB148_2:
	movzx	eax, byte ptr [rdi + 58]
	movzx	ecx, byte ptr [rdi + 56]
	movzx	edx, byte ptr [rdi + 57]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], rbx
	mov	byte ptr [rsp + 16], sil
	movaps	xmm0, xmmword ptr [rsp + 64]
	movaps	xmm1, xmmword ptr [rsp + 80]
	movups	xmmword ptr [rsp + 17], xmm0
	movups	xmmword ptr [rsp + 33], xmm1
	mov	rsi, qword ptr [rsp + 95]
	mov	qword ptr [rsp + 48], rsi
	mov	byte ptr [rsp + 58], al
	mov	byte ptr [rsp + 56], cl
	mov	byte ptr [rsp + 57], dl
	cmp	cl, 2
	jne	.LBB148_15
# %bb.3:
	test	rbx, rbx
	je	.LBB148_29
	.p2align	4
.LBB148_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_5 Depth 2
	xor	esi, esi
	.p2align	4
.LBB148_5:                              #   Parent Loop BB148_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	byte ptr [r14 + rsi], 47
	je	.LBB148_8
# %bb.6:                                #   in Loop: Header=BB148_5 Depth=2
	inc	rsi
	cmp	rbx, rsi
	jne	.LBB148_5
# %bb.7:                                #   in Loop: Header=BB148_4 Depth=1
	mov	rsi, rbx
	xor	edi, edi
	test	rsi, rsi
	jne	.LBB148_9
	jmp	.LBB148_11
	.p2align	4
.LBB148_8:                              #   in Loop: Header=BB148_4 Depth=1
	mov	edi, 1
	test	rsi, rsi
	je	.LBB148_11
.LBB148_9:                              #   in Loop: Header=BB148_4 Depth=1
	cmp	rsi, 1
	jne	.LBB148_14
# %bb.10:                               #   in Loop: Header=BB148_4 Depth=1
	cmp	byte ptr [r14], 46
	jne	.LBB148_14
.LBB148_11:                             #   in Loop: Header=BB148_4 Depth=1
	add	rdi, rsi
	cmp	rbx, rdi
	jb	.LBB148_45
# %bb.12:                               #   in Loop: Header=BB148_4 Depth=1
	add	r14, rdi
	sub	rbx, rdi
	jne	.LBB148_4
# %bb.13:
	xor	ebx, ebx
.LBB148_14:
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], rbx
.LBB148_15:
	cmp	dl, 2
	jne	.LBB148_30
# %bb.16:
	cmp	cl, 1
	ja	.LBB148_24
# %bb.17:
	test	al, al
	je	.LBB148_31
# %bb.18:
	cmp	rbx, 2
	jb	.LBB148_30
# %bb.19:
	lea	r15, [rsp + 64]
	mov	r12, rsp
	.p2align	4
.LBB148_20:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	cmp	byte ptr [rsp + 72], 10
	jne	.LBB148_30
# %bb.21:                               #   in Loop: Header=BB148_20 Depth=1
	mov	rsi, rbx
	sub	rsi, qword ptr [rsp + 64]
	jb	.LBB148_44
# %bb.22:                               #   in Loop: Header=BB148_20 Depth=1
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rsi
	cmp	rsi, 1
	ja	.LBB148_20
# %bb.23:
	mov	rbx, rsi
	jmp	.LBB148_30
.LBB148_24:
	test	rbx, rbx
	je	.LBB148_29
# %bb.25:
	lea	r15, [rsp + 64]
	mov	r12, rsp
	.p2align	4
.LBB148_26:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	cmp	byte ptr [rsp + 72], 10
	jne	.LBB148_30
# %bb.27:                               #   in Loop: Header=BB148_26 Depth=1
	mov	rsi, rbx
	sub	rsi, qword ptr [rsp + 64]
	jb	.LBB148_44
# %bb.28:                               #   in Loop: Header=BB148_26 Depth=1
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rsi
	jne	.LBB148_26
.LBB148_29:
	xor	ebx, ebx
.LBB148_30:
	mov	rax, r14
	mov	rdx, rbx
	add	rsp, 136
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB148_31:
	.cfi_def_cfa_offset 176
	lea	r15, [rsp + 64]
	mov	r12, rsp
	mov	rax, rbx
	test	rbx, rbx
	je	.LBB148_39
	.p2align	4
.LBB148_32:
	cmp	rbx, 1
	jne	.LBB148_35
# %bb.33:
	cmp	byte ptr [r14], 46
	jne	.LBB148_34
.LBB148_37:
	mov	eax, 1
	cmp	rbx, rax
	ja	.LBB148_40
	jmp	.LBB148_30
	.p2align	4
.LBB148_35:
	cmp	byte ptr [r14], 46
	jne	.LBB148_38
# %bb.36:
	cmp	byte ptr [r14 + 1], 47
	je	.LBB148_37
.LBB148_34:
	xor	eax, eax
	cmp	rbx, rax
	ja	.LBB148_40
	jmp	.LBB148_30
	.p2align	4
.LBB148_38:
	xor	eax, eax
	.p2align	4
.LBB148_39:
	cmp	rbx, rax
	jbe	.LBB148_30
.LBB148_40:
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	cmp	byte ptr [rsp + 72], 10
	jne	.LBB148_30
# %bb.41:
	mov	rsi, rbx
	sub	rsi, qword ptr [rsp + 64]
	jb	.LBB148_44
# %bb.42:
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rsi
	mov	rax, rbx
	test	rbx, rbx
	jne	.LBB148_32
	jmp	.LBB148_39
.LBB148_44:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.339]
	xor	edi, edi
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB148_45:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.342]
	mov	rsi, rbx
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end148:
	.size	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path, .Lfunc_end148-_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path
	.cfi_endproc
                                        # -- End function
