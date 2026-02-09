	.section	.text._RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix
	.type	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix,@function
_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix: # @_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix
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
	sub	rsp, 472
	.cfi_def_cfa_offset 528
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	test	rsi, rsi
	je	.LBB153_1
# %bb.2:
	cmp	byte ptr [rdi], 47
	sete	r8b
	test	rcx, rcx
	je	.LBB153_4
.LBB153_5:
	cmp	byte ptr [rdx], 47
	sete	al
	jmp	.LBB153_6
.LBB153_1:
	xor	r8d, r8d
	test	rcx, rcx
	jne	.LBB153_5
.LBB153_4:
	xor	eax, eax
.LBB153_6:
	mov	qword ptr [rsp + 408], rdx
	mov	qword ptr [rsp + 416], rcx
	mov	byte ptr [rsp + 424], 6
	mov	byte ptr [rsp + 466], al
	mov	word ptr [rsp + 464], 513
	lea	r10, [rsp + 209]
	mov	r9b, 6
	mov	cl, 1
	mov	dl, 2
	cmp	r9b, 6
	je	.LBB153_9
	.p2align	4
.LBB153_8:
	mov	rax, qword ptr [rsp + 63]
	mov	qword ptr [rsp + 111], rax
	movups	xmm0, xmmword ptr [rsp + 32]
	movups	xmm1, xmmword ptr [rsp + 48]
	movaps	xmmword ptr [rsp + 96], xmm1
	movaps	xmmword ptr [rsp + 80], xmm0
.LBB153_9:                              # =>This Inner Loop Header: Depth=1
	mov	r12, rdi
	mov	qword ptr [rsp + 192], rdi
	mov	r13, rsi
	mov	qword ptr [rsp + 200], rsi
	mov	byte ptr [rsp + 15], r9b        # 1-byte Spill
	mov	byte ptr [rsp + 208], r9b
	mov	rax, qword ptr [rsp + 111]
	mov	qword ptr [r10 + 31], rax
	movaps	xmm0, xmmword ptr [rsp + 80]
	movaps	xmm1, xmmword ptr [rsp + 96]
	movups	xmmword ptr [r10 + 16], xmm1
	mov	rbx, r10
	movups	xmmword ptr [r10], xmm0
	mov	r14d, r8d
	mov	byte ptr [rsp + 250], r8b
	mov	r15d, ecx
	mov	byte ptr [rsp + 248], cl
	mov	ebp, edx
	mov	byte ptr [rsp + 249], dl
	lea	rdi, [rsp + 296]
	lea	rsi, [rsp + 192]
	call	_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next
	lea	rdi, [rsp + 352]
	lea	rsi, [rsp + 408]
	call	_RNvXsi_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits8iterator8Iterator4next
	mov	rax, qword ptr [rsp + 344]
	mov	qword ptr [rsp + 128], rax
	movups	xmm0, xmmword ptr [rsp + 296]
	movups	xmm1, xmmword ptr [rsp + 312]
	movups	xmm2, xmmword ptr [rsp + 328]
	movaps	xmmword ptr [rsp + 112], xmm2
	movaps	xmmword ptr [rsp + 96], xmm1
	movaps	xmmword ptr [rsp + 80], xmm0
	mov	rax, qword ptr [rsp + 400]
	lea	rcx, [rsp + 136]
	mov	qword ptr [rcx + 48], rax
	movups	xmm0, xmmword ptr [rsp + 352]
	movups	xmm1, xmmword ptr [rsp + 368]
	movups	xmm2, xmmword ptr [rsp + 384]
	movups	xmmword ptr [rcx + 32], xmm2
	movups	xmmword ptr [rcx + 16], xmm1
	movups	xmmword ptr [rcx], xmm0
	cmp	byte ptr [rsp + 296], 10
	movzx	eax, byte ptr [rsp + 352]
	je	.LBB153_13
# %bb.10:                               #   in Loop: Header=BB153_9 Depth=1
	cmp	al, 10
	je	.LBB153_14
# %bb.11:                               #   in Loop: Header=BB153_9 Depth=1
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 136]
	call	_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq
	test	al, al
	je	.LBB153_15
# %bb.12:                               #   in Loop: Header=BB153_9 Depth=1
	mov	rdi, qword ptr [rsp + 192]
	mov	rsi, qword ptr [rsp + 200]
	movzx	r9d, byte ptr [rsp + 208]
	mov	r10, rbx
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 16]
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 48], xmm1
	mov	rax, qword ptr [rbx + 31]
	mov	qword ptr [rsp + 63], rax
	movzx	ecx, byte ptr [rsp + 248]
	movzx	edx, byte ptr [rsp + 249]
	movzx	r8d, byte ptr [rsp + 250]
	movzx	eax, byte ptr [rbx + 46]
	mov	byte ptr [rsp + 28], al
	mov	eax, dword ptr [rbx + 42]
	mov	dword ptr [rsp + 24], eax
	cmp	r9b, 6
	jne	.LBB153_8
	jmp	.LBB153_9
.LBB153_13:
	cmp	al, 10
	jne	.LBB153_15
.LBB153_14:
	mov	rax, qword ptr [rsp + 63]
	mov	qword ptr [rsp + 287], rax
	movaps	xmm0, xmmword ptr [rsp + 32]
	movaps	xmm1, xmmword ptr [rsp + 48]
	movaps	xmmword ptr [rsp + 272], xmm1
	movaps	xmmword ptr [rsp + 256], xmm0
	mov	eax, dword ptr [rsp + 24]
	mov	dword ptr [rsp + 16], eax
	movzx	eax, byte ptr [rsp + 28]
	mov	byte ptr [rsp + 20], al
	cmp	r14b, 2
	jne	.LBB153_16
.LBB153_15:
	xor	eax, eax
                                        # implicit-def: $rdx
	jmp	.LBB153_17
.LBB153_16:
	mov	rax, qword ptr [rsp + 287]
	mov	qword ptr [rsp + 128], rax
	movaps	xmm0, xmmword ptr [rsp + 256]
	movaps	xmm1, xmmword ptr [rsp + 272]
	movups	xmmword ptr [rsp + 113], xmm1
	movups	xmmword ptr [rsp + 97], xmm0
	mov	eax, dword ptr [rsp + 16]
	mov	dword ptr [rsp + 139], eax
	movzx	eax, byte ptr [rsp + 20]
	mov	byte ptr [rsp + 143], al
	mov	qword ptr [rsp + 80], r12
	mov	qword ptr [rsp + 88], r13
	movzx	eax, byte ptr [rsp + 15]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 96], al
	mov	byte ptr [rsp + 136], r15b
	mov	byte ptr [rsp + 137], bpl
	mov	byte ptr [rsp + 138], r14b
	lea	rdi, [rsp + 80]
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path
.LBB153_17:
	add	rsp, 472
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
.Lfunc_end153:
	.size	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix, .Lfunc_end153-_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix
	.cfi_endproc
                                        # -- End function
