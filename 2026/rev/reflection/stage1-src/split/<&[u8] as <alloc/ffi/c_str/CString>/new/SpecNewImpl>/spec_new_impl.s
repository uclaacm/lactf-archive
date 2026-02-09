	.section	.text._RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
	.type	_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl,@function
_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl: # @_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r13
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r15, rdx
	inc	r15
	jns	.LBB295_1
# %bb.17:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB295_1:
	mov	r14, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rdi, r15
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB295_18
# %bb.2:
	mov	r12, rax
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	rax, [r13 + 7]
	and	rax, -8
	sub	rax, r13
	jne	.LBB295_11
# %bb.3:
	xor	eax, eax
	jmp	.LBB295_4
.LBB295_11:
	xor	ecx, ecx
	.p2align	4
.LBB295_12:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [r13 + rcx], 0
	je	.LBB295_15
# %bb.13:                               #   in Loop: Header=BB295_12 Depth=1
	inc	rcx
	cmp	rax, rcx
	jne	.LBB295_12
.LBB295_4:
	movabs	rcx, -9187201950435737472
	movabs	rdx, 72340172838076672
	lea	rsi, [r14 - 16]
	.p2align	4
.LBB295_5:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [r13 + rax]
	mov	r8, qword ptr [r13 + rax + 8]
	mov	r9, rdx
	sub	r9, rdi
	or	r9, rdi
	mov	rdi, rdx
	sub	rdi, r8
	or	rdi, r8
	and	r9, rcx
	and	r9, rdi
	cmp	r9, rcx
	jne	.LBB295_6
# %bb.19:                               #   in Loop: Header=BB295_5 Depth=1
	add	rax, 16
	cmp	rax, rsi
	jbe	.LBB295_5
.LBB295_6:
	mov	rdx, r14
	sub	rdx, rax
	je	.LBB295_10
# %bb.7:
	add	r13, rax
	xor	ecx, ecx
	.p2align	4
.LBB295_8:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [r13 + rcx], 0
	je	.LBB295_14
# %bb.9:                                #   in Loop: Header=BB295_8 Depth=1
	inc	rcx
	cmp	rdx, rcx
	jne	.LBB295_8
.LBB295_10:
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rbx + 8], r12
	mov	qword ptr [rbx + 16], r15
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	jmp	.LBB295_16
.LBB295_14:
	add	rcx, rax
.LBB295_15:
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r12
	mov	qword ptr [rbx + 16], r14
	mov	qword ptr [rbx + 24], rcx
.LBB295_16:
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB295_18:
	.cfi_def_cfa_offset 48
	mov	rdi, r15
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Lfunc_end295:
	.size	_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl, .Lfunc_end295-_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
	.cfi_endproc
                                        # -- End function
