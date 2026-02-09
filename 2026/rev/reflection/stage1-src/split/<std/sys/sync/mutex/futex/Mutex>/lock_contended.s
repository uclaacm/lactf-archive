	.section	.text.unlikely._RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended
	.type	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended,@function
_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended: # @_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended
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
	sub	rsp, 40
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	mov	eax, dword ptr [rdi]
	cmp	eax, 1
	jne	.LBB320_4
# %bb.1:
	mov	ecx, -99
	.p2align	4
.LBB320_2:                              # =>This Inner Loop Header: Depth=1
	pause
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	jne	.LBB320_4
# %bb.3:                                #   in Loop: Header=BB320_2 Depth=1
	test	ecx, ecx
	lea	ecx, [rcx + 1]
                                        # kill: def $ecx killed $ecx def $rcx
	jne	.LBB320_2
.LBB320_4:
	test	eax, eax
	jne	.LBB320_6
# %bb.5:
	mov	ecx, 1
	xor	eax, eax
	lock		cmpxchg	dword ptr [rbx], ecx
	jne	.LBB320_6
.LBB320_17:
	add	rsp, 40
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
.LBB320_6:
	.cfi_def_cfa_offset 80
	lea	r14, [rsp + 24]
	mov	r15, qword ptr [rip + syscall@GOTPCREL]
	mov	r12, qword ptr [rip + __errno_location@GOTPCREL]
	.p2align	4
.LBB320_7:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB320_10 Depth 2
                                        #     Child Loop BB320_15 Depth 2
	cmp	eax, 2
	je	.LBB320_9
# %bb.8:                                #   in Loop: Header=BB320_7 Depth=1
	mov	eax, 2
	xchg	dword ptr [rbx], eax
	test	eax, eax
	je	.LBB320_17
.LBB320_9:                              #   in Loop: Header=BB320_7 Depth=1
	mov	qword ptr [rsp + 16], 0
	.p2align	4
.LBB320_10:                             #   Parent Loop BB320_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbx]
	cmp	eax, 2
	jne	.LBB320_13
# %bb.11:                               #   in Loop: Header=BB320_10 Depth=2
	cmp	byte ptr [rsp + 16], 0
	mov	r8d, 0
	cmovne	r8, r14
	mov	dword ptr [rsp], -1
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 137
	mov	ecx, 2
	xor	r9d, r9d
	xor	eax, eax
	call	r15
	test	rax, rax
	jns	.LBB320_13
# %bb.12:                               #   in Loop: Header=BB320_10 Depth=2
	call	r12
	cmp	dword ptr [rax], 4
	je	.LBB320_10
.LBB320_13:                             #   in Loop: Header=BB320_7 Depth=1
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	jne	.LBB320_7
# %bb.14:                               #   in Loop: Header=BB320_7 Depth=1
	mov	ecx, -99
	.p2align	4
.LBB320_15:                             #   Parent Loop BB320_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pause
	mov	eax, dword ptr [rbx]
	lea	edx, [rcx + 1]
	cmp	eax, 1
	jne	.LBB320_7
# %bb.16:                               #   in Loop: Header=BB320_15 Depth=2
	test	ecx, ecx
	mov	ecx, edx
	jne	.LBB320_15
	jmp	.LBB320_7
.Lfunc_end320:
	.size	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended, .Lfunc_end320-_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended
	.cfi_endproc
                                        # -- End function
