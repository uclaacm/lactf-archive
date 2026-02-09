	.section	.text._RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup
	.type	_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup,@function
_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup: # @_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup
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
	movabs	rax, 6076294132934528845
	cmp	qword ptr [rdi], rax
	jne	.LBB361_3
# %bb.1:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.376]
	cmp	qword ptr [rdi + 32], rax
	jne	.LBB361_4
# %bb.2:
	mov	rbx, qword ptr [rdi + 40]
	mov	r14, qword ptr [rdi + 48]
	call	qword ptr [rip + free@GOTPCREL]
	mov	rax, rbx
	mov	rdx, r14
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB361_3:
	.cfi_def_cfa_offset 32
	call	qword ptr [rip + _Unwind_DeleteException@GOTPCREL]
.LBB361_4:
	call	_RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception
.Lfunc_end361:
	.size	_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup, .Lfunc_end361-_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup
	.cfi_endproc
                                        # -- End function
