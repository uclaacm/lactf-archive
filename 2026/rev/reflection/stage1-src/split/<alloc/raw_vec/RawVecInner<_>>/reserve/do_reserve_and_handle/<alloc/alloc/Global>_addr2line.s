	.section	.text.unlikely._RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line
	.type	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line,@function
_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line: # @_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	add	rsi, rdx
	jb	.LBB196_1
# %bb.2:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	lea	rcx, [rax + rax]
	cmp	rsi, rcx
	cmova	rcx, rsi
	cmp	rcx, 9
	mov	r14d, 8
	cmovae	r14, rcx
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, rsp
	mov	rsi, rax
	mov	rcx, r14
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfwdNdOnv07X_9addr2line
	cmp	dword ptr [rsp], 1
	je	.LBB196_3
# %bb.5:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], r14
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB196_1:
	.cfi_def_cfa_offset 48
	xor	edi, edi
                                        # implicit-def: $rsi
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.LBB196_3:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 16]
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Lfunc_end196:
	.size	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line, .Lfunc_end196-_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfwdNdOnv07X_9addr2line
	.cfi_endproc
                                        # -- End function
