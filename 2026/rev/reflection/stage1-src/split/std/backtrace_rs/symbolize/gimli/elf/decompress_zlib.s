	.section	.text._RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib
	.type	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib,@function
_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib: # @_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib
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
	sub	rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov	qword ptr [rsp], 0
	sub	rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov	qword ptr [rsp], 0
	sub	rsp, 2336
	.cfi_def_cfa_offset 10576
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	lea	r13, [rsp + 24]
	mov	edx, 10501
	mov	rdi, r13
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	mov	rdi, rsp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	mov	r9, rbx
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress
	cmp	byte ptr [rsp + 8], 0
	sete	al
	cmp	qword ptr [rsp], r15
	sete	cl
	and	cl, al
	cmp	qword ptr [rsp + 16], rbx
	sete	al
	and	al, cl
	add	rsp, 10528
	.cfi_def_cfa_offset 48
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
.Lfunc_end251:
	.size	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib, .Lfunc_end251-_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib
	.cfi_endproc
                                        # -- End function
