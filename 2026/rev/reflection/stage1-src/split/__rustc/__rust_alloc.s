	.section	.text._RNvCsL6e0J8m5bd_7___rustc12___rust_alloc,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	.type	_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc,@function
_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc: # @_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	.cfi_startproc
# %bb.0:
	test	rdi, rdi
	je	.LBB149_1
# %bb.4:
	jmp	qword ptr [rip + malloc@GOTPCREL] # TAILCALL
.LBB149_1:
	push	rbx
	.cfi_def_cfa_offset 16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -16
	mov	qword ptr [rsp + 8], 0
	xor	ebx, ebx
	lea	rdi, [rsp + 8]
	mov	esi, 8
	xor	edx, edx
	call	qword ptr [rip + posix_memalign@GOTPCREL]
	test	eax, eax
	jne	.LBB149_3
# %bb.2:
	mov	rbx, qword ptr [rsp + 8]
.LBB149_3:
	mov	rax, rbx
	add	rsp, 16
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end149:
	.size	_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc, .Lfunc_end149-_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	.cfi_endproc
                                        # -- End function
