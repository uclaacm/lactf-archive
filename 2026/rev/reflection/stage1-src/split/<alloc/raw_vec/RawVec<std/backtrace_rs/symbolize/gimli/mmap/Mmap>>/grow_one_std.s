	.section	.text.unlikely._RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_
	.type	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_,@function
_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_: # @_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_
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
	mov	rbx, rdi
	mov	rsi, qword ptr [rdi]
	lea	rax, [rsi + rsi]
	cmp	rax, 5
	mov	r14d, 4
	cmovae	r14, rax
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, rsp
	mov	r8d, 8
	mov	r9d, 16
	mov	rcx, r14
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp], 1
	je	.LBB161_2
# %bb.1:
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
.LBB161_2:
	.cfi_def_cfa_offset 48
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 16]
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Lfunc_end161:
	.size	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_, .Lfunc_end161-_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_
	.cfi_endproc
                                        # -- End function
