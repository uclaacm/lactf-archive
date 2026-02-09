	.section	.text._RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	.type	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx,@function
_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx: # @_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
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
	sub	rsp, 264
	.cfi_def_cfa_offset 304
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	movzx	ebp, byte ptr [rip + _RNvNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx17STATX_SAVED_STATE.0]
	cmp	bpl, 2
	jne	.LBB131_2
.LBB131_16:
	mov	qword ptr [rbx], 3
	jmp	.LBB131_17
.LBB131_2:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 240], xmm0
	movaps	xmmword ptr [rsp + 224], xmm0
	movaps	xmmword ptr [rsp + 208], xmm0
	movaps	xmmword ptr [rsp + 192], xmm0
	movaps	xmmword ptr [rsp + 176], xmm0
	movaps	xmmword ptr [rsp + 160], xmm0
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	movaps	xmmword ptr [rsp], xmm0
	cmp	qword ptr [rip + statx@GOTPCREL], 0
	je	.LBB131_7
# %bb.3:
	mov	r8, rsp
	mov	edi, esi
	mov	rsi, rdx
	mov	edx, ecx
	mov	ecx, 4095
	call	qword ptr [rip + statx@GOTPCREL]
                                        # kill: def $eax killed $eax def $rax
	cmp	eax, -1
	je	.LBB131_8
.LBB131_4:
	test	bpl, bpl
	jne	.LBB131_6
# %bb.5:
	mov	byte ptr [rip + _RNvNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx17STATX_SAVED_STATE.0], 1
.LBB131_6:
	mov	ecx, dword ptr [rsp + 136]
	mov	eax, dword ptr [rsp + 140]
	mov	edx, ecx
	shl	edx, 8
	and	edx, 1048320
	and	ecx, -4096
	shl	rcx, 32
	or	rcx, rdx
	movzx	edx, al
	or	rdx, rcx
	shl	rax, 12
	and	rax, -1048576
	or	rax, rdx
	mov	edx, dword ptr [rsp + 128]
	mov	ecx, dword ptr [rsp + 132]
	mov	esi, edx
	shl	esi, 8
	and	esi, 1048320
	and	edx, -4096
	shl	rdx, 32
	or	rdx, rsi
	movzx	esi, cl
	or	rsi, rdx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 152], xmm0
	mov	qword ptr [rbx + 168], 0
	shl	rcx, 12
	and	rcx, -1048576
	or	rcx, rsi
	mov	edx, dword ptr [rsp]
	movaps	xmm0, xmmword ptr [rsp + 80]
	movups	xmmword ptr [rbx + 8], xmm0
	mov	qword ptr [rbx], 1
	mov	dword ptr [rbx + 24], edx
	mov	qword ptr [rbx + 32], rax
	mov	rax, qword ptr [rsp + 32]
	mov	qword ptr [rbx + 40], rax
	mov	eax, dword ptr [rsp + 16]
	mov	qword ptr [rbx + 48], rax
	movzx	eax, word ptr [rsp + 28]
	mov	dword ptr [rbx + 56], eax
	mov	rax, qword ptr [rsp + 20]
	mov	qword ptr [rbx + 60], rax
	mov	dword ptr [rbx + 68], 0
	mov	qword ptr [rbx + 72], rcx
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rbx + 80], rax
	mov	eax, dword ptr [rsp + 4]
	mov	qword ptr [rbx + 88], rax
	mov	rax, qword ptr [rsp + 48]
	mov	qword ptr [rbx + 96], rax
	mov	rax, qword ptr [rsp + 64]
	mov	qword ptr [rbx + 104], rax
	mov	eax, dword ptr [rsp + 72]
	mov	qword ptr [rbx + 112], rax
	mov	rax, qword ptr [rsp + 112]
	mov	qword ptr [rbx + 120], rax
	mov	eax, dword ptr [rsp + 120]
	mov	qword ptr [rbx + 128], rax
	mov	rax, qword ptr [rsp + 96]
	mov	qword ptr [rbx + 136], rax
	mov	eax, dword ptr [rsp + 104]
	mov	qword ptr [rbx + 144], rax
	jmp	.LBB131_17
.LBB131_7:
	mov	r9, rsp
	mov	edi, 332
	mov	r8d, 4095
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	cmp	eax, -1
	jne	.LBB131_4
.LBB131_8:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	r14, rax
	mov	r15d, dword ptr [rax]
	shl	r15, 32
	or	r15, 2
	movzx	eax, byte ptr [rip + _RNvNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx17STATX_SAVED_STATE.0]
	cmp	al, 1
	jne	.LBB131_10
.LBB131_9:
	mov	qword ptr [rbx], 2
	mov	qword ptr [rbx + 8], r15
.LBB131_17:
	add	rsp, 264
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
.LBB131_10:
	.cfi_def_cfa_offset 304
	cmp	qword ptr [rip + statx@GOTPCREL], 0
	je	.LBB131_12
# %bb.11:
	xor	edi, edi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 4095
	xor	r8d, r8d
	call	qword ptr [rip + statx@GOTPCREL]
                                        # kill: def $eax killed $eax def $rax
	cmp	eax, -1
	jne	.LBB131_15
	jmp	.LBB131_13
.LBB131_12:
	mov	edi, 332
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	mov	r8d, 4095
	xor	r9d, r9d
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	cmp	eax, -1
	jne	.LBB131_15
.LBB131_13:
	cmp	dword ptr [r14], 14
	jne	.LBB131_15
# %bb.14:
	mov	byte ptr [rip + _RNvNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx17STATX_SAVED_STATE.0], 1
	jmp	.LBB131_9
.LBB131_15:
	mov	byte ptr [rip + _RNvNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx17STATX_SAVED_STATE.0], 2
	jmp	.LBB131_16
.Lfunc_end131:
	.size	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx, .Lfunc_end131-_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	.cfi_endproc
                                        # -- End function
