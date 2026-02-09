	.section	.text._RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize
	.type	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize,@function
_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize: # @_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize
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
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	mov	rdi, rsi
	xor	esi, esi
	call	qword ptr [rip + realpath@GOTPCREL]
	test	rax, rax
	je	.LBB145_1
# %bb.2:
	mov	r14, rax
	mov	rdi, rax
	call	qword ptr [rip + strlen@GOTPCREL]
	mov	r15, rax
	test	rax, rax
	je	.LBB145_3
# %bb.4:
	mov	rdi, r15
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB145_8
# %bb.5:
	mov	r12, rax
	jmp	.LBB145_6
.LBB145_1:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	qword ptr [rbx + 8], rax
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	jmp	.LBB145_7
.LBB145_3:
	mov	r12d, 1
.LBB145_6:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r12
	mov	qword ptr [rbx + 16], r15
.LBB145_7:
	add	rsp, 8
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
.LBB145_8:
	.cfi_def_cfa_offset 48
	mov	rdi, r15
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Lfunc_end145:
	.size	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize, .Lfunc_end145-_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize
	.cfi_endproc
                                        # -- End function
