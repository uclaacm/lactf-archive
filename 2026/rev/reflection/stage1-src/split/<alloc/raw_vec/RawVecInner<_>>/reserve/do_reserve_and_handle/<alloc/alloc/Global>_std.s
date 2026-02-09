	.section	.text.unlikely._RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
	.type	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std,@function
_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std: # @_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
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
	jb	.LBB17_1
# %bb.2:
	mov	r9, r8
	mov	r8, rcx
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	lea	r14, [rax + rax]
	cmp	rsi, r14
	cmova	r14, rsi
	xor	ecx, ecx
	cmp	r9, 1
	sete	cl
	lea	rcx, [4*rcx + 4]
	cmp	r14, rcx
	cmovbe	r14, rcx
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, rsp
	mov	rsi, rax
	mov	rcx, r14
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp], 1
	je	.LBB17_3
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
.LBB17_1:
	.cfi_def_cfa_offset 48
	xor	edi, edi
                                        # implicit-def: $rsi
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.LBB17_3:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 16]
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Lfunc_end17:
	.size	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std, .Lfunc_end17-_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
