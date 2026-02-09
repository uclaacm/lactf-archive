	.section	.text.unlikely._RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_
	.type	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_,@function
_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_: # @_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 208
	.cfi_def_cfa_offset 240
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rdi
	mov	rdi, rsp
	call	_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
	mov	rax, qword ptr [rsp]
	neg	rax
	jno	.LBB294_8
# %bb.1:
	mov	rbx, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 16]
	lea	rdi, [rsp + 32]
	mov	esi, -100
	mov	rdx, rbx
	xor	ecx, ecx
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	cmp	dword ptr [rsp + 32], 3
	jne	.LBB294_2
# %bb.3:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 160], xmm0
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	rsi, [rsp + 32]
	mov	rdi, rbx
	call	qword ptr [rip + stat64@GOTPCREL]
	cmp	eax, -1
	je	.LBB294_4
# %bb.5:
	lea	rdi, [r14 + 32]
	lea	rsi, [rsp + 32]
	mov	edx, 144
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [r14], 0
	mov	byte ptr [rbx], 0
	test	r15, r15
	jne	.LBB294_10
	jmp	.LBB294_7
.LBB294_8:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14], 2
	jae	.LBB294_7
# %bb.9:
	mov	rbx, qword ptr [rsp + 8]
	jmp	.LBB294_10
.LBB294_2:
	lea	rsi, [rsp + 32]
	mov	edx, 176
	mov	rdi, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	byte ptr [rbx], 0
	test	r15, r15
	je	.LBB294_7
.LBB294_10:
	mov	rdi, rbx
	add	rsp, 208
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB294_4:
	.cfi_def_cfa_offset 240
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14], 2
	mov	byte ptr [rbx], 0
	test	r15, r15
	jne	.LBB294_10
.LBB294_7:
	add	rsp, 208
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end294:
	.size	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_, .Lfunc_end294-_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_
	.cfi_endproc
                                        # -- End function
