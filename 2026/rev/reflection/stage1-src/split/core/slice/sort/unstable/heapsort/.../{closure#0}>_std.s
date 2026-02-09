	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_
	.cfi_startproc
# %bb.0:
	mov	rax, rsi
	shr	rax
	add	rax, rsi
	jmp	.LBB299_1
	.p2align	4
.LBB299_9:                              #   in Loop: Header=BB299_1 Depth=1
	test	rax, rax
	je	.LBB299_10
.LBB299_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB299_5 Depth 2
	dec	rax
	mov	rdx, rax
	sub	rdx, rsi
	jae	.LBB299_3
# %bb.2:                                #   in Loop: Header=BB299_1 Depth=1
	lea	rcx, [rax + 2*rax]
	mov	rdx, qword ptr [rdi + 16]
	mov	qword ptr [rsp - 8], rdx
	movups	xmm0, xmmword ptr [rdi]
	movaps	xmmword ptr [rsp - 24], xmm0
	mov	rdx, qword ptr [rdi + 8*rcx + 16]
	movups	xmm0, xmmword ptr [rdi + 8*rcx]
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 16], rdx
	mov	rdx, qword ptr [rsp - 8]
	mov	qword ptr [rdi + 8*rcx + 16], rdx
	movaps	xmm0, xmmword ptr [rsp - 24]
	movups	xmmword ptr [rdi + 8*rcx], xmm0
	xor	edx, edx
.LBB299_3:                              #   in Loop: Header=BB299_1 Depth=1
	cmp	rsi, rax
	mov	rcx, rax
	cmovb	rcx, rsi
	lea	r8, [2*rdx + 1]
	cmp	r8, rcx
	jae	.LBB299_9
# %bb.4:                                #   in Loop: Header=BB299_1 Depth=1
	lea	r10, [rdx + rdx]
	.p2align	4
.LBB299_5:                              #   Parent Loop BB299_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	r10, 2
	cmp	r10, rcx
	jae	.LBB299_7
# %bb.6:                                #   in Loop: Header=BB299_5 Depth=2
	lea	r9, [r8 + 2*r8]
	lea	r10, [r10 + 2*r10]
	mov	r9, qword ptr [rdi + 8*r9]
	cmp	r9, qword ptr [rdi + 8*r10]
	adc	r8, 0
.LBB299_7:                              #   in Loop: Header=BB299_5 Depth=2
	mov	r9, r8
	lea	r8, [rdx + 2*rdx]
	lea	r10, [r9 + 2*r9]
	mov	rdx, qword ptr [rdi + 8*r8]
	mov	r11, qword ptr [rdi + 8*r10]
	cmp	rdx, r11
	jae	.LBB299_9
# %bb.8:                                #   in Loop: Header=BB299_5 Depth=2
	lea	r8, [rdi + 8*r8]
	lea	r10, [rdi + 8*r10]
	mov	qword ptr [r8], r11
	mov	qword ptr [r10], rdx
	movups	xmm0, xmmword ptr [r8 + 8]
	movups	xmm1, xmmword ptr [r10 + 8]
	movups	xmmword ptr [r8 + 8], xmm1
	movups	xmmword ptr [r10 + 8], xmm0
	lea	r10, [r9 + r9]
	lea	r8, [2*r9 + 1]
	mov	rdx, r9
	cmp	r8, rcx
	jb	.LBB299_5
	jmp	.LBB299_9
.LBB299_10:
	ret
.Lfunc_end299:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_, .Lfunc_end299-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_
	.cfi_endproc
                                        # -- End function
