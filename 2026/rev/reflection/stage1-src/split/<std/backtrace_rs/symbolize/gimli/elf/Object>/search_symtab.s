	.section	.text._RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab
	.type	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab,@function
_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab: # @_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab
	.cfi_startproc
# %bb.0:
	mov	rdx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+48]
	xor	eax, eax
	test	rdx, rdx
	je	.LBB171_1
# %bb.3:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rcx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+40]
	cmp	rdx, 1
	je	.LBB171_6
# %bb.4:
	xor	r8d, r8d
	mov	rsi, rdx
	.p2align	4
.LBB171_5:                              # =>This Inner Loop Header: Depth=1
	mov	r9, rsi
	shr	r9
	lea	rax, [r9 + r8]
	lea	r10, [rax + 2*rax]
	cmp	qword ptr [rcx + 8*r10], rdi
	cmova	rax, r8
	sub	rsi, r9
	mov	r8, rax
	cmp	rsi, 1
	ja	.LBB171_5
.LBB171_6:
	lea	rsi, [rax + 2*rax]
	mov	rsi, qword ptr [rcx + 8*rsi]
	cmp	rsi, rdi
	je	.LBB171_10
# %bb.7:
	adc	rax, 0
	je	.LBB171_8
# %bb.9:
	dec	rax
.LBB171_10:
	cmp	rax, rdx
	jae	.LBB171_8
# %bb.11:
	lea	rdx, [rax + 2*rax]
	mov	rax, qword ptr [rcx + 8*rdx]
	cmp	rax, rdi
	ja	.LBB171_8
# %bb.12:
	lea	rcx, [rcx + 8*rdx]
	add	rax, qword ptr [rcx + 8]
	cmp	rdi, rax
	ja	.LBB171_8
# %bb.13:
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+120]
	test	rax, rax
	je	.LBB171_8
# %bb.14:
	mov	ebx, dword ptr [rcx + 16]
	add	rbx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+136]
	jb	.LBB171_8
# %bb.15:
	mov	rdx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+144]
	mov	r14, rdx
	sub	r14, rbx
	jb	.LBB171_8
# %bb.16:
	cmp	rdx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+128]
	jbe	.LBB171_17
.LBB171_8:
	xor	eax, eax
                                        # implicit-def: $rdx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore r14
	ret
.LBB171_1:
                                        # implicit-def: $rdx
	ret
.LBB171_17:
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	add	rbx, rax
	add	rdx, rax
	mov	rax, qword ptr [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw2FN]
	xor	edi, edi
	mov	rsi, rbx
	call	rax
	test	al, 1
	je	.LBB171_18
# %bb.19:
	sub	rdx, rbx
	xor	eax, eax
	cmp	rdx, r14
	cmovbe	rax, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore r14
	ret
.LBB171_18:
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
                                        # implicit-def: $rdx
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore r14
	ret
.Lfunc_end171:
	.size	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab, .Lfunc_end171-_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab
	.cfi_endproc
                                        # -- End function
