	.section	.text._RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c
	.type	_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c,@function
_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c: # @_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c
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
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rsi
	mov	rbx, rdi
	movzx	ecx, byte ptr [rdx + 9]
	movzx	eax, byte ptr [rdx + 10]
	cmp	byte ptr [rdx + 8], 0
	je	.LBB130_1
# %bb.10:
	test	cl, cl
	je	.LBB130_11
# %bb.15:
	mov	esi, 2
	mov	ebp, 1026
	test	al, al
	je	.LBB130_9
	jmp	.LBB130_19
.LBB130_1:
	test	cl, cl
	je	.LBB130_2
# %bb.7:
	mov	esi, 1
	mov	ebp, 1025
	test	al, al
	jne	.LBB130_19
.LBB130_9:
	movzx	eax, byte ptr [rdx + 11]
	movzx	ecx, byte ptr [rdx + 13]
	mov	ebp, esi
	jmp	.LBB130_20
.LBB130_11:
	mov	ebp, 1026
	test	al, al
	jne	.LBB130_19
# %bb.12:
	cmp	byte ptr [rdx + 11], 0
	jne	.LBB130_6
# %bb.13:
	cmp	byte ptr [rdx + 12], 0
	jne	.LBB130_6
# %bb.14:
	xor	ebp, ebp
	cmp	byte ptr [rdx + 13], 0
	mov	ecx, 0
	mov	eax, 0
	je	.LBB130_20
	jmp	.LBB130_6
.LBB130_2:
	mov	ebp, 1025
	test	al, al
	je	.LBB130_3
.LBB130_19:
	movzx	eax, byte ptr [rdx + 11]
	movzx	ecx, byte ptr [rdx + 13]
	mov	esi, eax
	not	sil
	or	sil, cl
	test	sil, 1
	je	.LBB130_6
.LBB130_20:
	cmp	byte ptr [rdx + 12], 0
	je	.LBB130_21
# %bb.23:
	test	cl, 1
	jne	.LBB130_25
# %bb.24:
	movzx	eax, al
	shl	eax, 9
	or	eax, 64
	jmp	.LBB130_26
.LBB130_21:
	test	cl, 1
	je	.LBB130_22
.LBB130_25:
	mov	eax, 192
	jmp	.LBB130_26
.LBB130_22:
	movzx	eax, al
	shl	eax, 9
.LBB130_26:
	mov	ecx, -524292
	and	ecx, dword ptr [rdx]
	or	ebp, ecx
	or	ebp, eax
	or	ebp, 524288
	mov	r15d, dword ptr [rdx + 4]
	mov	r12, qword ptr [rip + open64@GOTPCREL]
	mov	r13, qword ptr [rip + __errno_location@GOTPCREL]
	.p2align	4
.LBB130_27:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r15d
	xor	eax, eax
	call	r12
	cmp	eax, -1
	jne	.LBB130_30
# %bb.28:                               #   in Loop: Header=BB130_27 Depth=1
	call	r13
	movsxd	rax, dword ptr [rax]
	cmp	rax, 4
	je	.LBB130_27
# %bb.29:
	shl	rax, 32
	or	rax, 2
	jmp	.LBB130_18
.LBB130_30:
	mov	dword ptr [rbx + 4], eax
	xor	eax, eax
	jmp	.LBB130_31
.LBB130_3:
	cmp	byte ptr [rdx + 12], 0
	jne	.LBB130_6
# %bb.4:
	cmp	byte ptr [rdx + 13], 0
	jne	.LBB130_6
# %bb.5:
	cmp	byte ptr [rdx + 11], 0
	jne	.LBB130_6
# %bb.16:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.374]
	mov	esi, 58
	jmp	.LBB130_17
.LBB130_6:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.375]
	mov	esi, 61
.LBB130_17:
	call	_RINvMs5_NtNtCs3bNtqN8jaZB_3std2io5errorNtB6_5Error3newReEBa_
.LBB130_18:
	mov	qword ptr [rbx + 8], rax
	mov	eax, 1
.LBB130_31:
	mov	dword ptr [rbx], eax
	add	rsp, 8
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
.Lfunc_end130:
	.size	_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c, .Lfunc_end130-_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c
	.cfi_endproc
                                        # -- End function
