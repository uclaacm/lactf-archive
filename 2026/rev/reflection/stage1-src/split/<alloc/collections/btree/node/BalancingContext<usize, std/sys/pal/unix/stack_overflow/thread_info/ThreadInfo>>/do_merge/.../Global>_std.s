	.section	.text._RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_
	.type	_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_,@function
_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_: # @_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_
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
	sub	rsp, 120
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, qword ptr [rdi + 24]
	movzx	r13d, word ptr [rbx + 538]
	mov	rcx, qword ptr [rdi + 40]
	movzx	ebp, word ptr [rcx + 538]
	lea	rax, [1*rbp + 1]
	add	rax, r13
	cmp	rax, 12
	jae	.LBB374_17
# %bb.1:
	mov	r14, qword ptr [rdi]
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	rcx, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 64], rcx       # 8-byte Spill
	movzx	edx, word ptr [r14 + 538]
	mov	qword ptr [rsp + 56], rdx       # 8-byte Spill
	mov	rcx, qword ptr [rdi + 32]
	mov	qword ptr [rsp + 48], rcx       # 8-byte Spill
	lea	r15, [r13 + 1]
	mov	r12, qword ptr [rdi + 16]
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	mov	word ptr [rbx + 538], ax
	mov	qword ptr [rsp + 8], r12        # 8-byte Spill
	lea	rdi, [r14 + 8*r12 + 8]
	mov	rax, qword ptr [r14 + 8*r12 + 8]
	mov	qword ptr [rsp], rax            # 8-byte Spill
	lea	rsi, [r14 + 8*r12]
	add	rsi, 16
	not	r12
	add	r12, rdx
	lea	rdx, [8*r12]
	mov	qword ptr [rsp + 24], rdx       # 8-byte Spill
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rbx + 8*r13 + 8], rax
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rsi, [rax + 8]
	lea	rdi, [rbx + 8*r15 + 8]
	mov	qword ptr [rsp + 40], rbp       # 8-byte Spill
	lea	edx, [8*rbp]
	mov	qword ptr [rsp], rdx            # 8-byte Spill
	mov	rbp, rax
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rax, [rax + 4*rax]
	lea	rdi, [r14 + 8*rax]
	add	rdi, 96
	mov	rcx, qword ptr [r14 + 8*rax + 128]
	mov	qword ptr [rsp + 112], rcx
	movups	xmm0, xmmword ptr [r14 + 8*rax + 96]
	movups	xmm1, xmmword ptr [r14 + 8*rax + 112]
	movaps	xmmword ptr [rsp + 96], xmm1
	movaps	xmmword ptr [rsp + 80], xmm0
	lea	rsi, [r14 + 8*rax]
	add	rsi, 136
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	lea	rdx, [rax + 4*rax]
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	qword ptr [rsp + 16], r13       # 8-byte Spill
	lea	rax, [4*r13]
	add	rax, r13
	movaps	xmm0, xmmword ptr [rsp + 80]
	movaps	xmm1, xmmword ptr [rsp + 96]
	movups	xmmword ptr [rbx + 8*rax + 96], xmm0
	movups	xmmword ptr [rbx + 8*rax + 112], xmm1
	mov	rcx, qword ptr [rsp + 112]
	mov	qword ptr [rbx + 8*rax + 128], rcx
	lea	rsi, [rbp + 96]
	lea	rax, [r15 + 4*r15]
	lea	rdi, [rbx + 8*rax]
	add	rdi, 96
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	lea	rdx, [rax + 4*rax]
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rbp, [rax + 1]
	lea	r13, [r14 + 8*rax]
	add	r13, 552
	lea	rsi, [r14 + 8*rax]
	add	rsi, 560
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	cmp	rbp, rdi
	jae	.LBB374_8
# %bb.2:
	mov	rax, rdi
	sub	rax, qword ptr [rsp + 8]        # 8-byte Folded Reload
	add	rax, -2
	and	r12, 3
	je	.LBB374_6
# %bb.3:
	xor	ecx, ecx
	.p2align	4
.LBB374_4:                              # =>This Inner Loop Header: Depth=1
	mov	rdx, qword ptr [r13 + 8*rcx]
	mov	qword ptr [rdx], r14
	lea	esi, [rcx + rbp]
	mov	word ptr [rdx + 536], si
	inc	rcx
	cmp	r12, rcx
	jne	.LBB374_4
# %bb.5:
	add	rbp, rcx
.LBB374_6:
	cmp	rax, 3
	jb	.LBB374_8
	.p2align	4
.LBB374_7:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [r14 + 8*rbp + 544]
	mov	qword ptr [rax], r14
	mov	word ptr [rax + 536], bp
	mov	rax, qword ptr [r14 + 8*rbp + 552]
	mov	qword ptr [rax], r14
	lea	ecx, [rbp + 1]
	mov	word ptr [rax + 536], cx
	mov	rax, qword ptr [r14 + 8*rbp + 560]
	mov	qword ptr [rax], r14
	lea	ecx, [rbp + 2]
	mov	word ptr [rax + 536], cx
	mov	rax, qword ptr [r14 + 8*rbp + 568]
	mov	qword ptr [rax], r14
	lea	ecx, [rbp + 3]
	mov	word ptr [rax + 536], cx
	add	rbp, 4
	cmp	rbp, rdi
	jne	.LBB374_7
.LBB374_8:
	dec	word ptr [r14 + 538]
	cmp	qword ptr [rsp + 64], 2         # 8-byte Folded Reload
	mov	r12, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 72]       # 8-byte Reload
	jb	.LBB374_16
# %bb.9:
	mov	rbp, qword ptr [rsp + 40]       # 8-byte Reload
	lea	r14, [rbp + 1]
	mov	rax, r13
	sub	rax, qword ptr [rsp + 16]       # 8-byte Folded Reload
	cmp	r14, rax
	jne	.LBB374_18
# %bb.10:
	lea	rax, [rbx + 544]
	lea	rdi, [rax + 8*r15]
	lea	rsi, [r12 + 544]
	lea	edx, [8*r14]
	call	qword ptr [rip + memcpy@GOTPCREL]
	and	r14, 3
	je	.LBB374_14
# %bb.11:
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rcx, [rbx + 8*rax]
	add	rcx, 552
	xor	eax, eax
	.p2align	4
.LBB374_12:                             # =>This Inner Loop Header: Depth=1
	mov	rdx, qword ptr [rcx + 8*rax]
	mov	qword ptr [rdx], rbx
	lea	esi, [r15 + rax]
	mov	word ptr [rdx + 536], si
	inc	rax
	cmp	r14, rax
	jne	.LBB374_12
# %bb.13:
	add	r15, rax
.LBB374_14:
	cmp	bp, 3
	jb	.LBB374_16
	.p2align	4
.LBB374_15:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbx + 8*r15 + 544]
	mov	qword ptr [rax], rbx
	mov	word ptr [rax + 536], r15w
	mov	rax, qword ptr [rbx + 8*r15 + 552]
	mov	qword ptr [rax], rbx
	lea	ecx, [r15 + 1]
	mov	word ptr [rax + 536], cx
	mov	rax, qword ptr [rbx + 8*r15 + 560]
	mov	qword ptr [rax], rbx
	lea	ecx, [r15 + 2]
	mov	word ptr [rax + 536], cx
	mov	rax, qword ptr [rbx + 8*r15 + 568]
	mov	qword ptr [rax], rbx
	lea	rcx, [r15 + 3]
	mov	word ptr [rax + 536], cx
	add	r15, 4
	cmp	rcx, r13
	jne	.LBB374_15
.LBB374_16:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	mov	rax, rbx
	mov	rdx, qword ptr [rsp + 48]       # 8-byte Reload
	add	rsp, 120
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
.LBB374_17:
	.cfi_def_cfa_offset 176
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.14]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.15]
	mov	esi, 42
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB374_18:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.74]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.75]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Lfunc_end374:
	.size	_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_, .Lfunc_end374-_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_
	.cfi_endproc
                                        # -- End function
