	.section	.text.unlikely._RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended
	.type	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended,@function
_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended: # @_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 32
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	eax, dword ptr [rdi]
	cmp	eax, 1073741823
	jne	.LBB318_4
# %bb.1:
	mov	ecx, -99
	.p2align	4
.LBB318_2:                              # =>This Inner Loop Header: Depth=1
	pause
	mov	eax, dword ptr [rbx]
	cmp	eax, 1073741823
	jne	.LBB318_4
# %bb.3:                                #   in Loop: Header=BB318_2 Depth=1
	test	ecx, ecx
	lea	ecx, [rcx + 1]
                                        # kill: def $ecx killed $ecx def $rcx
	jne	.LBB318_2
.LBB318_4:
	lea	r14, [rsp + 16]
	xor	ecx, ecx
	mov	r15, qword ptr [rip + syscall@GOTPCREL]
	mov	r12, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB318_5
	.p2align	4
.LBB318_11:                             #   in Loop: Header=BB318_5 Depth=1
	lea	edx, [rax + 1]
                                        # kill: def $eax killed $eax killed $rax
	lock		cmpxchg	dword ptr [rbx], edx
                                        # kill: def $eax killed $eax def $rax
	je	.LBB318_12
.LBB318_5:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB318_16 Depth 2
                                        #     Child Loop BB318_21 Depth 2
	mov	edx, eax
	and	edx, 1073741823
	test	cl, 1
	je	.LBB318_6
# %bb.10:                               #   in Loop: Header=BB318_5 Depth=1
	mov	esi, eax
	shr	esi, 30
	and	esi, 1
	lea	edi, [rdx - 1073741822]
	cmp	edi, -1073741821
	setb	dil
	or	dil, sil
	je	.LBB318_11
.LBB318_6:                              #   in Loop: Header=BB318_5 Depth=1
	cmp	edx, 1073741822
	setb	sil
	test	eax, 1073741824
	sete	dil
	and	dil, sil
	test	eax, eax
	setns	sil
	test	dil, sil
	jne	.LBB318_11
# %bb.7:                                #   in Loop: Header=BB318_5 Depth=1
	cmp	edx, 1073741822
	je	.LBB318_13
# %bb.8:                                #   in Loop: Header=BB318_5 Depth=1
	test	eax, 1073741824
	jne	.LBB318_9
# %bb.14:                               #   in Loop: Header=BB318_5 Depth=1
	mov	ebp, eax
	or	ebp, 1073741824
                                        # kill: def $eax killed $eax killed $rax
	lock		cmpxchg	dword ptr [rbx], ebp
                                        # kill: def $eax killed $eax def $rax
	jne	.LBB318_5
	jmp	.LBB318_15
.LBB318_9:                              #   in Loop: Header=BB318_5 Depth=1
	mov	ebp, eax
.LBB318_15:                             #   in Loop: Header=BB318_5 Depth=1
	mov	qword ptr [rsp + 8], 0
	.p2align	4
.LBB318_16:                             #   Parent Loop BB318_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbx]
	cmp	eax, ebp
	jne	.LBB318_19
# %bb.17:                               #   in Loop: Header=BB318_16 Depth=2
	cmp	byte ptr [rsp + 8], 0
	mov	r8d, 0
	cmovne	r8, r14
	mov	dword ptr [rsp], -1
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 137
	mov	ecx, ebp
	xor	r9d, r9d
	xor	eax, eax
	call	r15
	test	rax, rax
	jns	.LBB318_19
# %bb.18:                               #   in Loop: Header=BB318_16 Depth=2
	call	r12
	cmp	dword ptr [rax], 4
	je	.LBB318_16
.LBB318_19:                             #   in Loop: Header=BB318_5 Depth=1
	mov	eax, dword ptr [rbx]
	mov	cl, 1
	cmp	eax, 1073741823
	jne	.LBB318_5
# %bb.20:                               #   in Loop: Header=BB318_5 Depth=1
	mov	edx, -99
	.p2align	4
.LBB318_21:                             #   Parent Loop BB318_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pause
	mov	eax, dword ptr [rbx]
	lea	esi, [rdx + 1]
	cmp	eax, 1073741823
	jne	.LBB318_5
# %bb.22:                               #   in Loop: Header=BB318_21 Depth=2
	test	edx, edx
	mov	edx, esi
	jne	.LBB318_21
	jmp	.LBB318_5
.LBB318_12:
	add	rsp, 32
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB318_13:
	.cfi_def_cfa_offset 80
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.184]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.186]
	mov	esi, 73
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end318:
	.size	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended, .Lfunc_end318-_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended
	.cfi_endproc
                                        # -- End function
