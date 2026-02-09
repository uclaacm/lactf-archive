	.section	.text._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_
	.type	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_,@function
_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_: # @_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 24]
	lea	r8, [rdi + 48]
	mov	edx, 2
	mov	r9, rcx
	cmp	rcx, rax
	jae	.LBB297_1
	.p2align	4
.LBB297_3:                              # =>This Inner Loop Header: Depth=1
	mov	r10, r9
	mov	r9, qword ptr [r8]
	cmp	r9, r10
	jae	.LBB297_5
# %bb.4:                                #   in Loop: Header=BB297_3 Depth=1
	inc	rdx
	add	r8, 24
	cmp	rsi, rdx
	jne	.LBB297_3
	jmp	.LBB297_6
	.p2align	4
.LBB297_1:                              # =>This Inner Loop Header: Depth=1
	mov	r10, r9
	mov	r9, qword ptr [r8]
	cmp	r9, r10
	jb	.LBB297_5
# %bb.2:                                #   in Loop: Header=BB297_1 Depth=1
	inc	rdx
	add	r8, 24
	cmp	rsi, rdx
	jne	.LBB297_1
	jmp	.LBB297_6
.LBB297_5:
	cmp	rdx, rsi
	jne	.LBB297_10
.LBB297_6:
	cmp	rcx, rax
	jae	.LBB297_9
# %bb.7:
	lea	rax, [4*rsi]
	and	rax, -8
	lea	rax, [rax + 2*rax]
	lea	rcx, [rsi + 2*rsi]
	lea	rcx, [8*rcx - 24]
	xor	edx, edx
	.p2align	4
.LBB297_8:                              # =>This Inner Loop Header: Depth=1
	movups	xmm0, xmmword ptr [rdi + rdx]
	movups	xmm1, xmmword ptr [rdi + rcx]
	movups	xmmword ptr [rdi + rdx], xmm1
	movups	xmmword ptr [rdi + rcx], xmm0
	mov	rsi, qword ptr [rdi + rdx + 16]
	mov	r8, qword ptr [rdi + rcx + 16]
	mov	qword ptr [rdi + rdx + 16], r8
	mov	qword ptr [rdi + rcx + 16], rsi
	add	rdx, 24
	add	rcx, -24
	cmp	rax, rdx
	jne	.LBB297_8
.LBB297_9:
	ret
.LBB297_10:
	mov	rax, rsi
	or	rax, 1
	bsr	rcx, rax
	xor	ecx, 63
	add	ecx, ecx
	xor	ecx, 126
	xor	edx, edx
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_ # TAILCALL
.Lfunc_end297:
	.size	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_, .Lfunc_end297-_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_
	.cfi_endproc
                                        # -- End function
