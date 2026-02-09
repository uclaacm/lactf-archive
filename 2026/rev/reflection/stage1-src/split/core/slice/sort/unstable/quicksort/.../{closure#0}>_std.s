	.section	.text._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_
	.type	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_,@function
_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_: # @_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_
.Lfunc_begin61:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception61
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
	sub	rsp, 1192
	.cfi_def_cfa_offset 1248
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	r14, rdi
	cmp	rsi, 33
	jae	.LBB298_1
.LBB298_4:
	cmp	rbx, 2
	jb	.LBB298_37
# %bb.5:
	mov	rax, rbx
	shr	rax
	cmp	rbx, 8
	jb	.LBB298_7
# %bb.6:
	mov	rcx, qword ptr [r14 + 24]
	mov	rdx, qword ptr [r14 + 72]
	xor	r8d, r8d
	xor	esi, esi
	cmp	rcx, qword ptr [r14]
	setae	r8b
	setb	sil
	lea	rdi, [r14 + 72]
	lea	r9, [r14 + 48]
	cmp	rdx, qword ptr [r14 + 48]
	lea	r10, [rsi + 2*rsi]
	lea	rsi, [r14 + 8*r10]
	lea	r8, [r8 + 2*r8]
	mov	rdx, r9
	cmovb	rdx, rdi
	lea	rcx, [r14 + 8*r8]
	cmovb	rdi, r9
	mov	r9, qword ptr [rdx]
	mov	r11, qword ptr [rdi]
	mov	r8, qword ptr [r14 + 8*r8]
	cmp	r11, r8
	mov	r15, rcx
	cmovb	r15, rdx
	cmp	r9, qword ptr [r14 + 8*r10]
	cmovb	r15, rsi
	cmovb	rsi, rdx
	cmovb	rdx, rcx
	cmp	r11, r8
	cmovae	rcx, rdi
	cmovb	rdx, rdi
	mov	rdi, qword ptr [rdx]
	cmp	rdi, qword ptr [r15]
	mov	rdi, r15
	cmovb	rdi, rdx
	cmovb	rdx, r15
	mov	r8, qword ptr [rsi + 16]
	mov	qword ptr [rsp + 48], r8
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	rsi, qword ptr [rdi + 16]
	mov	qword ptr [rsp + 72], rsi
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rsp + 56], xmm0
	mov	rsi, qword ptr [rdx + 16]
	mov	qword ptr [rsp + 96], rsi
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 80], xmm0
	lea	rdx, [8*rax]
	lea	rdx, [rdx + 2*rdx]
	lea	r9, [r14 + rdx]
	mov	rsi, qword ptr [r14 + rdx + 24]
	mov	rdi, qword ptr [r14 + rdx + 72]
	xor	r10d, r10d
	xor	r11d, r11d
	cmp	rsi, qword ptr [r14 + rdx]
	setae	r10b
	setb	r11b
	lea	r8, [r14 + rdx]
	add	r8, 72
	lea	r15, [r14 + rdx]
	add	r15, 48
	cmp	rdi, qword ptr [r14 + rdx + 48]
	lea	r11, [r11 + 2*r11]
	lea	r10, [r10 + 2*r10]
	lea	rsi, [r9 + 8*r10]
	mov	rdi, r15
	cmovb	rdi, r8
	cmovb	r8, r15
	mov	r15, qword ptr [r8]
	mov	r10, qword ptr [r9 + 8*r10]
	cmp	r15, r10
	mov	r12, rsi
	cmovb	r12, rdi
	mov	r13, qword ptr [rdi]
	cmp	r13, qword ptr [r9 + 8*r11]
	lea	r9, [r9 + 8*r11]
	cmovb	r12, r9
	cmovb	r9, rdi
	mov	r11, qword ptr [rcx + 16]
	cmovb	rdi, rsi
	cmp	r15, r10
	cmovae	rsi, r8
	cmovb	rdi, r8
	mov	qword ptr [rsp + 120], r11
	mov	r8, qword ptr [rdi]
	cmp	r8, qword ptr [r12]
	movups	xmm0, xmmword ptr [rcx]
	mov	rcx, r12
	cmovb	rcx, rdi
	movups	xmmword ptr [rsp + 104], xmm0
	cmovb	rdi, r12
	mov	r8, qword ptr [r9 + 16]
	mov	qword ptr [rsp + rdx + 48], r8
	movups	xmm0, xmmword ptr [r9]
	movups	xmmword ptr [rsp + rdx + 32], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rsp + rdx + 56], xmm0
	mov	rcx, qword ptr [rcx + 16]
	mov	qword ptr [rsp + rdx + 72], rcx
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rsp + rdx + 80], xmm0
	mov	rcx, qword ptr [rdi + 16]
	mov	qword ptr [rsp + rdx + 96], rcx
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rsp + rdx + 104], xmm0
	mov	rcx, qword ptr [rsi + 16]
	mov	qword ptr [rsp + rdx + 120], rcx
	mov	edx, 4
	mov	rsi, rbx
	sub	rsi, rax
	cmp	rdx, rax
	jb	.LBB298_9
	jmp	.LBB298_14
.LBB298_1:
	mov	ebp, ecx
	mov	r13, rdx
	lea	r12, [rsp + 32]
	jmp	.LBB298_2
	.p2align	4
.LBB298_52:                             #   in Loop: Header=BB298_2 Depth=1
	lea	rcx, [rax + 2*rax]
	mov	rdx, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 48], rdx
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	rdx, qword ptr [r14 + 8*rcx + 16]
	movups	xmm0, xmmword ptr [r14 + 8*rcx]
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 16], rdx
	mov	rdx, qword ptr [rsp + 48]
	mov	qword ptr [r14 + 8*rcx + 16], rdx
	movaps	xmm0, xmmword ptr [rsp + 32]
	movups	xmmword ptr [r14 + 8*rcx], xmm0
	not	rax
	add	rbx, rax
	lea	r14, [r14 + 8*rcx]
	add	r14, 24
	xor	r13d, r13d
	cmp	rbx, 33
	jb	.LBB298_4
.LBB298_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB298_49 Depth 2
                                        #     Child Loop BB298_50 Depth 2
                                        #     Child Loop BB298_43 Depth 2
                                        #     Child Loop BB298_44 Depth 2
	sub	ebp, 1
	jb	.LBB298_3
# %bb.38:                               #   in Loop: Header=BB298_2 Depth=1
	mov	rcx, rbx
	shr	rcx, 3
	lea	rax, [rcx + 2*rcx]
	shl	rax, 5
	add	rax, r14
	imul	rdx, rcx, 168
	add	rdx, r14
	cmp	rbx, 64
	jae	.LBB298_39
# %bb.40:                               #   in Loop: Header=BB298_2 Depth=1
	mov	rcx, qword ptr [r14]
	mov	rsi, qword ptr [rax]
	cmp	rcx, rsi
	setb	dil
	mov	r8, qword ptr [rdx]
	cmp	rcx, r8
	setb	cl
	xor	cl, dil
	cmp	rsi, r8
	setb	sil
	xor	sil, dil
	cmovne	rax, rdx
	test	cl, cl
	cmovne	rax, r14
	sub	rax, r14
	test	r13, r13
	jne	.LBB298_47
	jmp	.LBB298_42
	.p2align	4
.LBB298_39:                             #   in Loop: Header=BB298_2 Depth=1
	mov	rdi, r14
	mov	rsi, rax
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared5pivot11median3_recNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB14_20sort_unstable_by_keyyNCNvMs_B16_NtB16_6Object5parses1_0E0EB1e_
	sub	rax, r14
	test	r13, r13
	je	.LBB298_42
.LBB298_47:                             #   in Loop: Header=BB298_2 Depth=1
	mov	rcx, qword ptr [r13]
	cmp	rcx, qword ptr [r14 + rax]
	jae	.LBB298_48
.LBB298_42:                             #   in Loop: Header=BB298_2 Depth=1
	mov	qword ptr [rsp + 24], r13       # 8-byte Spill
	mov	rcx, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 48], rcx
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	rcx, qword ptr [r14 + rax + 16]
	movups	xmm0, xmmword ptr [r14 + rax]
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 16], rcx
	mov	rcx, qword ptr [rsp + 48]
	mov	qword ptr [r14 + rax + 16], rcx
	movaps	xmm0, xmmword ptr [rsp + 32]
	movups	xmmword ptr [r14 + rax], xmm0
	lea	rax, [r14 + 24]
	mov	rcx, qword ptr [r14 + 40]
	mov	qword ptr [rsp + 48], rcx
	movups	xmm0, xmmword ptr [r14 + 24]
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	rsi, [8*rbx]
	lea	rdi, [rsi + 2*rsi]
	add	rdi, r14
	lea	rcx, [r14 + 48]
	mov	rdx, qword ptr [r14]
	lea	r11, [rsi + 2*rsi]
	add	r11, -72
	lea	r10, [rsi + 2*rsi]
	add	r10, -48
	xor	esi, esi
	.p2align	4
.LBB298_43:                             #   Parent Loop BB298_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r8, qword ptr [rcx + 16]
	cmp	qword ptr [rcx], rdx
	lea	r9, [rsi + 2*rsi]
	mov	r13, qword ptr [rax + 8*r9 + 16]
	movups	xmm0, xmmword ptr [rax + 8*r9]
	movups	xmmword ptr [rcx - 24], xmm0
	mov	qword ptr [rcx - 8], r13
	mov	qword ptr [rax + 8*r9 + 16], r8
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [rax + 8*r9], xmm0
	adc	rsi, 0
	add	rcx, 24
	mov	r8, r11
	add	r11, -24
	mov	r9, r10
	add	r10, -24
	cmp	rcx, rdi
	jb	.LBB298_43
	.p2align	4
.LBB298_44:                             #   Parent Loop BB298_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r8, r8
	mov	rdi, rcx
	cmove	rdi, r12
	cmp	qword ptr [rdi], rdx
	lea	r10, [rsi + 2*rsi]
	movups	xmm0, xmmword ptr [rax + 8*r10]
	mov	r11, qword ptr [rax + 8*r10 + 16]
	mov	qword ptr [rcx - 8], r11
	movups	xmmword ptr [rcx - 24], xmm0
	mov	r11, qword ptr [rdi + 16]
	mov	qword ptr [rax + 8*r10 + 16], r11
	movups	xmm0, xmmword ptr [rdi]
	adc	rsi, 0
	movups	xmmword ptr [rax + 8*r10], xmm0
	add	rcx, 24
	add	r8, -24
	add	r9, -24
	jne	.LBB298_44
# %bb.45:                               #   in Loop: Header=BB298_2 Depth=1
	cmp	rsi, rbx
	jae	.LBB298_54
# %bb.46:                               #   in Loop: Header=BB298_2 Depth=1
	lea	rax, [rsi + 2*rsi]
	lea	r13, [r14 + 8*rax]
	mov	rcx, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 48], rcx
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	rcx, qword ptr [r14 + 8*rax + 16]
	movups	xmm0, xmmword ptr [r14 + 8*rax]
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 16], rcx
	mov	rcx, qword ptr [rsp + 48]
	mov	qword ptr [r14 + 8*rax + 16], rcx
	movaps	xmm0, xmmword ptr [rsp + 32]
	movups	xmmword ptr [r14 + 8*rax], xmm0
	lea	r15, [r14 + 8*rax]
	add	r15, 24
	mov	rax, rsi
	not	rax
	add	rbx, rax
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	ecx, ebp
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_
	mov	r14, r15
	cmp	rbx, 33
	jae	.LBB298_2
	jmp	.LBB298_4
	.p2align	4
.LBB298_48:                             #   in Loop: Header=BB298_2 Depth=1
	add	rax, r14
	mov	rcx, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 48], rcx
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	rcx, qword ptr [rax + 16]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 16], rcx
	mov	rcx, qword ptr [rsp + 48]
	mov	qword ptr [rax + 16], rcx
	movaps	xmm0, xmmword ptr [rsp + 32]
	movups	xmmword ptr [rax], xmm0
	lea	rcx, [r14 + 24]
	mov	rax, qword ptr [r14 + 40]
	mov	qword ptr [rsp + 48], rax
	movups	xmm0, xmmword ptr [r14 + 24]
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	rax, [8*rbx]
	lea	rdi, [rax + 2*rax]
	add	rdi, r14
	lea	rdx, [r14 + 48]
	mov	rsi, qword ptr [r14]
	lea	r11, [rax + 2*rax]
	add	r11, -72
	lea	r10, [rax + 2*rax]
	add	r10, -48
	xor	eax, eax
	.p2align	4
.LBB298_49:                             #   Parent Loop BB298_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rsi, qword ptr [rdx]
	lea	r8, [rax + 2*rax]
	mov	r9, qword ptr [rcx + 8*r8 + 16]
	movups	xmm0, xmmword ptr [rcx + 8*r8]
	movups	xmmword ptr [rdx - 24], xmm0
	mov	qword ptr [rdx - 8], r9
	mov	r9, qword ptr [rdx + 16]
	mov	qword ptr [rcx + 8*r8 + 16], r9
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [rcx + 8*r8], xmm0
	sbb	rax, -1
	add	rdx, 24
	mov	r8, r11
	add	r11, -24
	mov	r9, r10
	add	r10, -24
	cmp	rdx, rdi
	jb	.LBB298_49
	.p2align	4
.LBB298_50:                             #   Parent Loop BB298_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r8, r8
	mov	rdi, rdx
	cmove	rdi, r12
	cmp	rsi, qword ptr [rdi]
	lea	r10, [rax + 2*rax]
	movups	xmm0, xmmword ptr [rcx + 8*r10]
	mov	r11, qword ptr [rcx + 8*r10 + 16]
	mov	qword ptr [rdx - 8], r11
	movups	xmmword ptr [rdx - 24], xmm0
	mov	r11, qword ptr [rdi + 16]
	mov	qword ptr [rcx + 8*r10 + 16], r11
	movups	xmm0, xmmword ptr [rdi]
	sbb	rax, -1
	movups	xmmword ptr [rcx + 8*r10], xmm0
	add	rdx, 24
	add	r8, -24
	add	r9, -24
	jne	.LBB298_50
# %bb.51:                               #   in Loop: Header=BB298_2 Depth=1
	cmp	rax, rbx
	jb	.LBB298_52
.LBB298_54:
	ud2
.LBB298_3:
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 1192
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
	jmp	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB15_20sort_unstable_by_keyyNCNvMs_B17_NtB17_6Object5parses1_0E0EB1f_ # TAILCALL
.LBB298_7:
	.cfi_def_cfa_offset 1248
	mov	rcx, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 48], rcx
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	rcx, [8*rax]
	lea	rcx, [rcx + 2*rcx]
	mov	rdx, qword ptr [r14 + rcx + 16]
	mov	qword ptr [rsp + rcx + 48], rdx
	movups	xmm0, xmmword ptr [r14 + rcx]
	movups	xmmword ptr [rsp + rcx + 32], xmm0
	mov	edx, 1
	mov	rsi, rbx
	sub	rsi, rax
	cmp	rdx, rax
	jae	.LBB298_14
.LBB298_9:
	lea	ecx, [8*rdx]
	lea	rcx, [rcx + 2*rcx]
	lea	rdi, [rsp + 32]
	mov	r8, rdx
	jmp	.LBB298_10
	.p2align	4
.LBB298_13:                             #   in Loop: Header=BB298_10 Depth=1
	mov	r10, rdi
.LBB298_35:                             #   in Loop: Header=BB298_10 Depth=1
	mov	qword ptr [r10], r9
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r10 + 8], xmm0
.LBB298_36:                             #   in Loop: Header=BB298_10 Depth=1
	inc	r8
	add	rcx, 24
	cmp	r8, rax
	je	.LBB298_14
.LBB298_10:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB298_12 Depth 2
	lea	r9, [8*r8]
	lea	r10, [r9 + 2*r9]
	movups	xmm0, xmmword ptr [r14 + r10]
	movups	xmmword ptr [rsp + r10 + 32], xmm0
	mov	r9, qword ptr [r14 + r10 + 16]
	mov	qword ptr [rsp + r10 + 48], r9
	mov	r9, qword ptr [rsp + r10 + 32]
	cmp	r9, qword ptr [rsp + r10 + 8]
	jae	.LBB298_36
# %bb.11:                               #   in Loop: Header=BB298_10 Depth=1
	add	r10, r14
	movups	xmm0, xmmword ptr [r10 + 8]
	movaps	xmmword ptr [rsp], xmm0
	mov	r10, rcx
	.p2align	4
.LBB298_12:                             #   Parent Loop BB298_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r11, qword ptr [rsp + r10 + 24]
	mov	qword ptr [rsp + r10 + 48], r11
	movups	xmm0, xmmword ptr [rsp + r10 + 8]
	movups	xmmword ptr [rsp + r10 + 32], xmm0
	cmp	r10, 24
	je	.LBB298_13
# %bb.33:                               #   in Loop: Header=BB298_12 Depth=2
	lea	r11, [r10 - 24]
	cmp	r9, qword ptr [rsp + r10 - 16]
	mov	r10, r11
	jb	.LBB298_12
# %bb.34:                               #   in Loop: Header=BB298_10 Depth=1
	lea	r10, [rsp + r11]
	add	r10, 32
	jmp	.LBB298_35
.LBB298_14:
	lea	rcx, [8*rax]
	lea	rdi, [rcx + 2*rcx]
	lea	rcx, [rsp + rdi]
	add	rcx, 32
	cmp	rdx, rsi
	jae	.LBB298_24
# %bb.15:
	add	rdi, r14
	lea	r8d, [8*rdx]
	lea	r8, [r8 + 2*r8]
	jmp	.LBB298_16
	.p2align	4
.LBB298_19:                             #   in Loop: Header=BB298_16 Depth=1
	mov	r10, rcx
.LBB298_22:                             #   in Loop: Header=BB298_16 Depth=1
	mov	qword ptr [r10], r9
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r10 + 8], xmm0
.LBB298_23:                             #   in Loop: Header=BB298_16 Depth=1
	inc	rdx
	add	r8, 24
	cmp	rdx, rsi
	je	.LBB298_24
.LBB298_16:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB298_18 Depth 2
	lea	r9, [8*rdx]
	lea	r10, [r9 + 2*r9]
	movups	xmm0, xmmword ptr [rdi + r10]
	movups	xmmword ptr [rcx + r10], xmm0
	mov	r9, qword ptr [rdi + r10 + 16]
	mov	qword ptr [rcx + r10 + 16], r9
	mov	r9, qword ptr [rcx + r10]
	cmp	r9, qword ptr [rcx + r10 - 24]
	jae	.LBB298_23
# %bb.17:                               #   in Loop: Header=BB298_16 Depth=1
	add	r10, rdi
	movups	xmm0, xmmword ptr [r10 + 8]
	movaps	xmmword ptr [rsp], xmm0
	mov	r11, r8
	.p2align	4
.LBB298_18:                             #   Parent Loop BB298_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r10, qword ptr [rcx + r11 - 8]
	mov	qword ptr [rcx + r11 + 16], r10
	movups	xmm0, xmmword ptr [rcx + r11 - 24]
	movups	xmmword ptr [rcx + r11], xmm0
	cmp	r11, 24
	je	.LBB298_19
# %bb.20:                               #   in Loop: Header=BB298_18 Depth=2
	lea	r10, [r11 - 24]
	cmp	r9, qword ptr [rcx + r11 - 48]
	mov	r11, r10
	jb	.LBB298_18
# %bb.21:                               #   in Loop: Header=BB298_16 Depth=1
	add	r10, rcx
	jmp	.LBB298_22
.LBB298_24:
	lea	rdx, [rbx + 2*rbx]
	lea	r9, [r14 + 8*rdx]
	add	r9, -24
	lea	rdx, [rsp + 8*rdx]
	add	rdx, 8
	lea	rsi, [rcx - 24]
	lea	rdi, [rsp + 32]
	mov	r8, r14
	.p2align	4
.LBB298_25:                             # =>This Inner Loop Header: Depth=1
	mov	r10, rcx
	mov	r11, rdi
	mov	rdi, qword ptr [rcx]
	add	rcx, 24
	cmp	rdi, qword ptr [r11]
	lea	rdi, [r11 + 24]
	cmovb	rdi, r11
	cmovb	r11, r10
	mov	r15, qword ptr [r11 + 16]
	mov	qword ptr [r8 + 16], r15
	cmovae	rcx, r10
	mov	r10, qword ptr [rdx]
	mov	r15, qword ptr [rsi]
	cmp	r10, r15
	mov	r12d, 0
	adc	r12, -1
	cmp	r10, r15
	mov	r10, rdx
	cmovb	r10, rsi
	movups	xmm0, xmmword ptr [r11]
	mov	r11d, 0
	sbb	r11, r11
	movups	xmmword ptr [r8], xmm0
	add	r8, 24
	mov	r15, qword ptr [r10 + 16]
	mov	qword ptr [r9 + 16], r15
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [r9], xmm0
	lea	r10, [r12 + 2*r12]
	lea	rdx, [rdx + 8*r10]
	lea	r10, [r11 + 2*r11]
	lea	rsi, [rsi + 8*r10]
	add	r9, -24
	dec	rax
	jne	.LBB298_25
# %bb.26:
	add	rsi, 24
	test	bl, 1
	je	.LBB298_28
# %bb.27:
	lea	rax, [rdi + 24]
	lea	r9, [rcx + 24]
	cmp	rdi, rsi
	mov	r10, rcx
	cmovb	r10, rdi
	mov	r11, qword ptr [r10 + 16]
	mov	qword ptr [r8 + 16], r11
	movups	xmm0, xmmword ptr [r10]
	movups	xmmword ptr [r8], xmm0
	cmovb	rdi, rax
	cmovae	rcx, r9
.LBB298_28:
	cmp	rdi, rsi
	jne	.LBB298_30
# %bb.29:
	add	rdx, 24
	cmp	rcx, rdx
	jne	.LBB298_30
.LBB298_37:
	add	rsp, 1192
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
.LBB298_30:
	.cfi_def_cfa_offset 1248
.Ltmp1046:
	call	_RNvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort22panic_on_ord_violation
.Ltmp1047:
# %bb.31:
.LBB298_32:
.Ltmp1048:
	mov	r15, rax
	shl	rbx, 3
	lea	rdx, [rbx + 2*rbx]
	lea	rsi, [rsp + 32]
	mov	rdi, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end298:
	.size	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_, .Lfunc_end298-_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB8_SB17_20sort_unstable_by_keyyNCNvMs_B19_NtB19_6Object5parses1_0E0EB1h_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table298:
.Lexception61:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end61-.Lcst_begin61
.Lcst_begin61:
	.uleb128 .Lfunc_begin61-.Lfunc_begin61  # >> Call Site 1 <<
	.uleb128 .Ltmp1046-.Lfunc_begin61       #   Call between .Lfunc_begin61 and .Ltmp1046
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1046-.Lfunc_begin61       # >> Call Site 2 <<
	.uleb128 .Ltmp1047-.Ltmp1046            #   Call between .Ltmp1046 and .Ltmp1047
	.uleb128 .Ltmp1048-.Lfunc_begin61       #     jumps to .Ltmp1048
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1047-.Lfunc_begin61       # >> Call Site 3 <<
	.uleb128 .Lfunc_end298-.Ltmp1047        #   Call between .Ltmp1047 and .Lfunc_end298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end61:
	.p2align	2, 0x0
                                        # -- End function
