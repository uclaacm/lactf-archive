	.section	.text._RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq
	.type	_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq,@function
_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq: # @_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	movzx	ecx, byte ptr [rdi]
	lea	r8, [rcx - 5]
	xor	eax, eax
	cmp	rcx, 6
	cmovb	r8, rax
	movzx	edx, byte ptr [rsi]
	lea	r9, [rdx - 5]
	cmp	rdx, 6
	cmovb	r9, rax
	cmp	r8, r9
	jne	.LBB150_7
# %bb.1:
	mov	al, 1
	test	r8, r8
	je	.LBB150_8
# %bb.2:
	cmp	r8, 4
	jne	.LBB150_7
.LBB150_3:
	mov	rdx, qword ptr [rdi + 16]
	cmp	rdx, qword ptr [rsi + 16]
	jne	.LBB150_15
# %bb.4:
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rdi + 8]
.LBB150_5:
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
.LBB150_6:
	sete	al
.LBB150_7:
                                        # kill: def $al killed $al killed $rax
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB150_8:
	.cfi_def_cfa_offset 32
	cmp	dl, 5
	ja	.LBB150_7
# %bb.9:
	cmp	cl, dl
	jne	.LBB150_15
# %bb.10:
	mov	eax, ecx
	lea	rcx, [rip + .LJTI150_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB150_12:
	mov	rdx, qword ptr [rdi + 16]
	cmp	rdx, qword ptr [rsi + 16]
	jne	.LBB150_15
# %bb.13:
	mov	rbx, rsi
	mov	rsi, qword ptr [rsi + 8]
	mov	r14, rdi
	mov	rdi, qword ptr [rdi + 8]
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
	jne	.LBB150_15
# %bb.14:
	mov	rdx, qword ptr [r14 + 32]
	cmp	rdx, qword ptr [rbx + 32]
	jne	.LBB150_15
# %bb.17:
	mov	rsi, qword ptr [rbx + 24]
	mov	rdi, qword ptr [r14 + 24]
	jmp	.LBB150_5
.LBB150_15:
	xor	eax, eax
                                        # kill: def $al killed $al killed $rax
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB150_11:
	.cfi_def_cfa_offset 32
	movzx	eax, byte ptr [rdi + 1]
	cmp	al, byte ptr [rsi + 1]
	jmp	.LBB150_6
.Lfunc_end150:
	.size	_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq, .Lfunc_end150-_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq
	.cfi_endproc
	.section	.rodata._RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq,"a",@progbits
	.p2align	2, 0x0
.LJTI150_0:
	.long	.LBB150_3-.LJTI150_0
	.long	.LBB150_12-.LJTI150_0
	.long	.LBB150_11-.LJTI150_0
	.long	.LBB150_3-.LJTI150_0
	.long	.LBB150_12-.LJTI150_0
	.long	.LBB150_11-.LJTI150_0
                                        # -- End function
