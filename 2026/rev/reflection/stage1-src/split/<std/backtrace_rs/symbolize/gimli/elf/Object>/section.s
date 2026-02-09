	.section	.text._RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	.type	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section,@function
_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section: # @_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov	qword ptr [rsp], 0
	sub	rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov	qword ptr [rsp], 0
	sub	rsp, 2424
	.cfi_def_cfa_offset 10672
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 56], rsi       # 8-byte Spill
	mov	r14, qword ptr [rdi + 40]
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	mov	rax, qword ptr [rdi + 48]
	mov	rdi, rax
	shl	rdi, 6
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	test	rax, rax
	je	.LBB162_9
# %bb.1:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [rax + 56]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	test	rax, rax
	je	.LBB162_9
# %bb.2:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rsi, qword ptr [rax + 72]
	mov	r13, qword ptr [rax + 80]
	mov	rax, qword ptr [rax + 64]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	add	rax, r13
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	r15, rdi
	mov	rbx, r14
	mov	qword ptr [rsp + 64], rdi       # 8-byte Spill
	mov	qword ptr [rsp + 24], rsi       # 8-byte Spill
	jmp	.LBB162_3
	.p2align	4
.LBB162_8:                              #   in Loop: Header=BB162_3 Depth=1
	add	rbx, 64
	add	r15, -64
	je	.LBB162_9
.LBB162_3:                              # =>This Inner Loop Header: Depth=1
	mov	ebp, dword ptr [rbx]
	add	rbp, rsi
	setb	al
	mov	r12, r13
	sub	r12, rbp
	setb	cl
	or	cl, al
	jne	.LBB162_8
# %bb.4:                                #   in Loop: Header=BB162_3 Depth=1
	cmp	r13, qword ptr [rsp + 48]       # 8-byte Folded Reload
	ja	.LBB162_8
# %bb.5:                                #   in Loop: Header=BB162_3 Depth=1
	add	rbp, qword ptr [rsp + 40]       # 8-byte Folded Reload
	mov	rax, qword ptr [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw2FN]
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 80]       # 8-byte Reload
	call	rax
	mov	rsi, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 64]       # 8-byte Reload
	test	al, 1
	je	.LBB162_8
# %bb.6:                                #   in Loop: Header=BB162_3 Depth=1
	sub	rdx, rbp
	cmp	rdx, r12
	seta	al
	cmp	rdx, qword ptr [rsp + 32]       # 8-byte Folded Reload
	setne	cl
	or	cl, al
	jne	.LBB162_8
# %bb.7:                                #   in Loop: Header=BB162_3 Depth=1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	call	qword ptr [rip + bcmp@GOTPCREL]
	mov	rsi, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rdi, qword ptr [rsp + 64]       # 8-byte Reload
	test	eax, eax
	jne	.LBB162_8
# %bb.22:
	cmp	dword ptr [rbx + 4], 8
	je	.LBB162_39
# %bb.23:
	mov	r15, qword ptr [rbx + 32]
	test	r15, r15
	je	.LBB162_39
# %bb.24:
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rsi + 32]
	mov	rax, qword ptr [rbx + 24]
	sub	rcx, rax
	setb	dl
	cmp	r15, rcx
	seta	cl
	or	cl, dl
	jne	.LBB162_25
# %bb.26:
	add	rax, qword ptr [rsi + 24]
	test	byte ptr [rbx + 9], 8
	je	.LBB162_31
# %bb.27:
	cmp	r15, 24
	jb	.LBB162_25
# %bb.28:
	cmp	dword ptr [rax], 1
	jne	.LBB162_25
# %bb.29:
	add	r15, -24
	mov	rsi, qword ptr [rax + 8]
	add	rax, 24
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r12, rax
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate
	mov	rbx, rax
	mov	r14, rdx
	lea	r13, [rsp + 112]
	xor	ebp, ebp
	mov	edx, 10501
	mov	rdi, r13
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	lea	rdi, [rsp + 88]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	mov	r9, r14
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress
	xor	r15, qword ptr [rsp + 88]
	mov	rax, r14
	xor	rax, qword ptr [rsp + 104]
	or	rax, r15
	cmovne	rbx, rbp
	cmp	byte ptr [rsp + 96], 0
	cmovne	rbx, rbp
	mov	r15, r14
.LBB162_30:
	mov	rax, rbx
	jmp	.LBB162_31
.LBB162_9:
	mov	eax, 1650811950
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	xor	eax, dword ptr [rdx]
	mov	ecx, 1600615778
	xor	ecx, dword ptr [rdx + 3]
	or	ecx, eax
	je	.LBB162_10
.LBB162_25:
	xor	eax, eax
                                        # implicit-def: $r15
.LBB162_31:
	mov	rdx, r15
	add	rsp, 10616
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB162_10:
	.cfi_def_cfa_offset 10672
	cmp	byte ptr [rdx + 7], -64
	jl	.LBB162_32
# %bb.11:
	cmp	qword ptr [rsp + 72], 0         # 8-byte Folded Reload
	je	.LBB162_25
# %bb.12:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [rax + 56]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	test	rax, rax
	je	.LBB162_25
# %bb.13:
	add	qword ptr [rsp + 16], 7         # 8-byte Folded Spill
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rax + 64]
	mov	qword ptr [rsp + 48], rcx       # 8-byte Spill
	mov	r15, qword ptr [rax + 72]
	mov	r12, qword ptr [rax + 80]
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	add	rax, r12
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	jmp	.LBB162_14
	.p2align	4
.LBB162_21:                             #   in Loop: Header=BB162_14 Depth=1
	add	r14, 64
	add	rdi, -64
	je	.LBB162_25
.LBB162_14:                             # =>This Inner Loop Header: Depth=1
	mov	ebp, dword ptr [r14]
	add	rbp, r15
	setb	al
	mov	r13, r12
	sub	r13, rbp
	setb	cl
	or	cl, al
	jne	.LBB162_21
# %bb.15:                               #   in Loop: Header=BB162_14 Depth=1
	cmp	r12, qword ptr [rsp + 48]       # 8-byte Folded Reload
	ja	.LBB162_21
# %bb.16:                               #   in Loop: Header=BB162_14 Depth=1
	add	rbp, qword ptr [rsp + 24]       # 8-byte Folded Reload
	mov	rax, qword ptr [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw2FN]
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	call	rax
	mov	rdi, rbx
	test	al, 1
	je	.LBB162_21
# %bb.17:                               #   in Loop: Header=BB162_14 Depth=1
	sub	rdx, rbp
	cmp	rdx, r13
	seta	al
	cmp	rdx, 8
	setb	cl
	or	cl, al
	jne	.LBB162_21
# %bb.18:                               #   in Loop: Header=BB162_14 Depth=1
	xor	eax, eax
	movabs	rcx, 6874592421672679982
	cmp	qword ptr [rbp], rcx
	setne	cl
	lea	rsi, [rdx - 1]
	cmp	rsi, qword ptr [rsp + 32]       # 8-byte Folded Reload
	jne	.LBB162_21
# %bb.19:                               #   in Loop: Header=BB162_14 Depth=1
	mov	al, cl
	test	eax, eax
	jne	.LBB162_21
# %bb.20:                               #   in Loop: Header=BB162_14 Depth=1
	add	rdx, -8
	add	rbp, 8
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	call	qword ptr [rip + bcmp@GOTPCREL]
	mov	rdi, rbx
	test	eax, eax
	jne	.LBB162_21
# %bb.33:
	cmp	dword ptr [r14 + 4], 8
	je	.LBB162_25
# %bb.34:
	mov	rax, qword ptr [r14 + 32]
	test	rax, rax
	je	.LBB162_25
# %bb.35:
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rcx, qword ptr [rcx + 32]
	mov	r12, qword ptr [r14 + 24]
	sub	rcx, r12
	setb	dl
	cmp	rax, rcx
	seta	cl
	or	cl, dl
	jne	.LBB162_25
# %bb.36:
	xor	r13d, r13d
	sub	rax, 8
	cmovae	r13, rax
	jb	.LBB162_25
# %bb.37:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	add	r12, qword ptr [rax + 24]
	cmp	qword ptr [r12], 1112099930
	setne	al
	cmp	r13, 4
	setb	cl
	or	cl, al
	jne	.LBB162_25
# %bb.38:
	add	r13, -4
	mov	esi, dword ptr [r12 + 8]
	add	r12, 12
	bswap	esi
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate
	mov	r15, rdx
	mov	rdi, r12
	mov	rsi, r13
	mov	rbx, rax
	mov	rdx, rax
	mov	rcx, r15
	call	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15decompress_zlib
	test	al, al
	jne	.LBB162_30
	jmp	.LBB162_25
.LBB162_39:
	xor	eax, eax
	test	byte ptr [rbx + 9], 8
	sete	al
	xor	r15d, r15d
	jmp	.LBB162_31
.LBB162_32:
	lea	r8, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.371]
	mov	edx, 7
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end162:
	.size	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section, .Lfunc_end162-_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	.cfi_endproc
                                        # -- End function
