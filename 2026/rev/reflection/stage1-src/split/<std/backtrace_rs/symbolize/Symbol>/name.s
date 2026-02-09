	.section	.text._RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name
	.type	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name,@function
_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name: # @_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 128
	.cfi_def_cfa_offset 160
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	cmp	dword ptr [rsi], 3
	jne	.LBB173_4
# %bb.1:
	mov	r14, qword ptr [rsi + 8]
	mov	r15, qword ptr [rsi + 16]
	jmp	.LBB173_2
.LBB173_4:
	mov	r14, qword ptr [rsi + 40]
	test	r14, r14
	je	.LBB173_10
# %bb.5:
	mov	r15, qword ptr [rsi + 48]
.LBB173_2:
	mov	rdi, rsp
	mov	rsi, r14
	mov	rdx, r15
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	dword ptr [rsp], 1
	jne	.LBB173_6
# %bb.3:
	mov	eax, 2
	jmp	.LBB173_8
.LBB173_6:
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 16]
	mov	rdi, rsp
	call	_RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle
	mov	rax, qword ptr [rsp]
	cmp	rax, 2
	je	.LBB173_8
# %bb.7:
	mov	rcx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 112], rcx
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmm1, xmmword ptr [rsp + 24]
	movups	xmm2, xmmword ptr [rsp + 40]
	movaps	xmmword ptr [rsp + 96], xmm2
	movaps	xmmword ptr [rsp + 80], xmm1
	movaps	xmmword ptr [rsp + 64], xmm0
.LBB173_8:
	mov	qword ptr [rbx], rax
	movaps	xmm0, xmmword ptr [rsp + 64]
	movaps	xmm1, xmmword ptr [rsp + 80]
	movaps	xmm2, xmmword ptr [rsp + 96]
	movups	xmmword ptr [rbx + 8], xmm0
	movups	xmmword ptr [rbx + 24], xmm1
	movups	xmmword ptr [rbx + 40], xmm2
	mov	rax, qword ptr [rsp + 112]
	mov	qword ptr [rbx + 56], rax
	mov	qword ptr [rbx + 64], r14
	mov	qword ptr [rbx + 72], r15
.LBB173_9:
	add	rsp, 128
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB173_10:
	.cfi_def_cfa_offset 160
	mov	qword ptr [rbx], 3
	jmp	.LBB173_9
.Lfunc_end173:
	.size	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name, .Lfunc_end173-_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name
	.cfi_endproc
                                        # -- End function
