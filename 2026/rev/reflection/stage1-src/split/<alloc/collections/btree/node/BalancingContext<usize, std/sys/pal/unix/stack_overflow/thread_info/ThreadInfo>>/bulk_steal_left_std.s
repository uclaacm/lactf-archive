	.section	.text._RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_
	.type	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_,@function
_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_: # @_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_
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
	sub	rsp, 136
	.cfi_def_cfa_offset 192
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbp, qword ptr [rdi + 40]
	movzx	ebx, word ptr [rbp + 538]
	lea	rax, [rsi + rbx]
	cmp	rax, 12
	jae	.LBB373_14
# %bb.1:
	mov	r15, qword ptr [rdi + 24]
	movzx	r13d, word ptr [r15 + 538]
	mov	r14, r13
	sub	r14, rsi
	jb	.LBB373_15
# %bb.2:
	mov	qword ptr [rsp + 40], rdi       # 8-byte Spill
	mov	word ptr [r15 + 538], r14w
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	word ptr [rbp + 538], ax
	lea	rax, [rbp + 8]
	lea	rdi, [8*rsi + 8]
	add	rdi, rbp
	shl	ebx, 3
	mov	r12, qword ptr [rip + memmove@GOTPCREL]
	mov	qword ptr [rsp + 16], rsi       # 8-byte Spill
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rsi, rax
	mov	rdx, rbx
	call	r12
	mov	rcx, r12
	lea	r12, [rbp + 96]
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rax, [rax + 4*rax]
	lea	rdi, [rbp + 8*rax + 96]
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	lea	rdx, [rbx + 4*rbx]
	mov	rsi, r12
	call	rcx
	lea	rbx, [r14 + 1]
	sub	r13, rbx
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	dec	rax
	cmp	r13, rax
	jne	.LBB373_16
# %bb.3:
	lea	rsi, [r15 + 8*rbx]
	add	rsi, 8
	shl	r13d, 3
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, r13
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [rsp + 8], rbx        # 8-byte Spill
	lea	rax, [rbx + 4*rbx]
	lea	rsi, [r15 + 8*rax]
	add	rsi, 96
	lea	r13, [r13 + 4*r13]
	mov	rdi, r12
	mov	rdx, r13
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, qword ptr [r15 + 8*r14 + 8]
	lea	rcx, [r14 + 4*r14]
	movups	xmm0, xmmword ptr [r15 + 8*rcx + 96]
	movups	xmm1, xmmword ptr [r15 + 8*rcx + 112]
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 64], xmm1
	mov	rcx, qword ptr [r15 + 8*rcx + 128]
	mov	qword ptr [rsp + 80], rcx
	mov	r8, qword ptr [rsp + 40]        # 8-byte Reload
	mov	rcx, qword ptr [r8]
	mov	rdx, qword ptr [r8 + 16]
	lea	rsi, [rdx + 4*rdx]
	mov	rdi, qword ptr [rcx + 8*rdx + 8]
	mov	qword ptr [rcx + 8*rdx + 8], rax
	mov	rax, qword ptr [rcx + 8*rsi + 128]
	mov	qword ptr [rsp + 128], rax
	movups	xmm0, xmmword ptr [rcx + 8*rsi + 96]
	movups	xmm1, xmmword ptr [rcx + 8*rsi + 112]
	movaps	xmmword ptr [rsp + 112], xmm1
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmm0, xmmword ptr [rsp + 48]
	movaps	xmm1, xmmword ptr [rsp + 64]
	movups	xmmword ptr [rcx + 8*rsi + 96], xmm0
	movups	xmmword ptr [rcx + 8*rsi + 112], xmm1
	mov	rax, qword ptr [rsp + 80]
	mov	qword ptr [rcx + 8*rsi + 128], rax
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rbp + 8*rbx], rdi
	mov	rax, qword ptr [rsp + 128]
	mov	qword ptr [r12 + r13 + 32], rax
	movaps	xmm0, xmmword ptr [rsp + 96]
	movaps	xmm1, xmmword ptr [rsp + 112]
	movups	xmmword ptr [r12 + r13 + 16], xmm1
	movups	xmmword ptr [r12 + r13], xmm0
	cmp	qword ptr [r8 + 32], 0
	mov	rax, qword ptr [r8 + 48]
	je	.LBB373_10
# %bb.4:
	test	rax, rax
	je	.LBB373_11
# %bb.5:
	lea	r12, [rbp + 544]
	lea	rdi, [8*rbx + 544]
	add	rdi, rbp
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	add	rdx, 8
	mov	rsi, r12
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rsi, [r15 + 8*rax]
	add	rsi, 544
	shl	rbx, 3
	mov	rdi, r12
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rdx, [rcx + 1]
	mov	eax, edx
	and	eax, 3
	cmp	rcx, 3
	jae	.LBB373_12
# %bb.6:
	xor	ecx, ecx
	jmp	.LBB373_7
.LBB373_10:
	test	rax, rax
	je	.LBB373_9
.LBB373_11:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.72]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.247]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB373_12:
	and	edx, 28
	xor	ecx, ecx
	.p2align	4
.LBB373_13:                             # =>This Inner Loop Header: Depth=1
	mov	rsi, qword ptr [rbp + 8*rcx + 544]
	mov	qword ptr [rsi], rbp
	mov	edi, ecx
	mov	word ptr [rsi + 536], cx
	mov	rsi, qword ptr [rbp + 8*rcx + 552]
	mov	qword ptr [rsi], rbp
	lea	r8d, [rdi + 1]
	mov	word ptr [rsi + 536], r8w
	mov	rsi, qword ptr [rbp + 8*rcx + 560]
	mov	qword ptr [rsi], rbp
	lea	r8d, [rdi + 2]
	mov	word ptr [rsi + 536], r8w
	mov	rsi, qword ptr [rbp + 8*rcx + 568]
	add	rcx, 4
	mov	qword ptr [rsi], rbp
	add	edi, 3
	mov	word ptr [rsi + 536], di
	cmp	rcx, rdx
	jne	.LBB373_13
.LBB373_7:
	test	rax, rax
	je	.LBB373_9
	.p2align	4
.LBB373_8:                              # =>This Inner Loop Header: Depth=1
	mov	rdx, qword ptr [rbp + 8*rcx + 544]
	mov	qword ptr [rdx], rbp
	mov	word ptr [rdx + 536], cx
	inc	rcx
	dec	rax
	jne	.LBB373_8
.LBB373_9:
	add	rsp, 136
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
.LBB373_14:
	.cfi_def_cfa_offset 192
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.243]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.244]
	mov	esi, 51
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB373_15:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.245]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.246]
	mov	esi, 39
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB373_16:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.74]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.75]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Lfunc_end373:
	.size	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_, .Lfunc_end373-_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_
	.cfi_endproc
                                        # -- End function
