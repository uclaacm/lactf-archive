	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
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
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdx
	mov	rbx, rsi
	cmp	rcx, 8
	jb	.LBB300_2
# %bb.1:
	shr	rcx, 3
	mov	rax, rcx
	shl	rax, 5
	lea	r15, [rax + 2*rax]
	lea	rsi, [rdi + r15]
	imul	r12, rcx, 168
	lea	rdx, [rdi + r12]
	mov	r13, rcx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
	mov	rbp, rax
	lea	rsi, [rbx + r15]
	lea	rdx, [rbx + r12]
	mov	rdi, rbx
	mov	rcx, r13
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
	mov	rbx, rax
	add	r15, r14
	add	r12, r14
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
	mov	rdi, rbp
	mov	r14, rax
.LBB300_2:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rbx]
	cmp	rax, rcx
	setb	dl
	mov	rsi, qword ptr [r14]
	cmp	rax, rsi
	setb	al
	xor	al, dl
	cmp	rcx, rsi
	setb	cl
	xor	cl, dl
	cmovne	rbx, r14
	test	al, al
	cmovne	rbx, rdi
	mov	rax, rbx
	add	rsp, 8
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
.Lfunc_end300:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_, .Lfunc_end300-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
	.cfi_endproc
                                        # -- End function
