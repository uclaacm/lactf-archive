	.section	.text._RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_
	.type	_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_,@function
_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_: # @_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 32
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	ebp, edi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	r14, rsp
	mov	r15, qword ptr [rip + read@GOTPCREL]
	mov	r12, qword ptr [rip + __errno_location@GOTPCREL]
	.p2align	4
.LBB133_1:                              # =>This Inner Loop Header: Depth=1
	mov	edx, 32
	mov	edi, ebp
	mov	rsi, r14
	call	r15
	cmp	rax, -1
	jne	.LBB133_4
# %bb.2:                                #   in Loop: Header=BB133_1 Depth=1
	call	r12
	movsxd	rax, dword ptr [rax]
	cmp	rax, 4
	je	.LBB133_1
# %bb.3:
	shl	rax, 32
	or	rax, 2
	mov	r14, rax
	mov	eax, 1
	jmp	.LBB133_8
.LBB133_4:
	cmp	rax, 33
	jae	.LBB133_9
# %bb.5:
	mov	rcx, qword ptr [rbx]
	mov	r15, qword ptr [rbx + 16]
	sub	rcx, r15
	cmp	rax, rcx
	mov	r14, rax
	ja	.LBB133_6
.LBB133_7:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rsp
	mov	rdx, rax
	mov	r12, rax
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, r12
	add	rax, r15
	mov	qword ptr [rbx + 16], rax
	xor	eax, eax
.LBB133_8:
	mov	rdx, r14
	add	rsp, 32
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB133_9:
	.cfi_def_cfa_offset 80
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.85]
	mov	edx, 32
	xor	edi, edi
	mov	rsi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB133_6:
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, rax
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
	mov	rax, r14
	mov	r15, qword ptr [rbx + 16]
	jmp	.LBB133_7
.Lfunc_end133:
	.size	_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_, .Lfunc_end133-_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_
	.cfi_endproc
                                        # -- End function
