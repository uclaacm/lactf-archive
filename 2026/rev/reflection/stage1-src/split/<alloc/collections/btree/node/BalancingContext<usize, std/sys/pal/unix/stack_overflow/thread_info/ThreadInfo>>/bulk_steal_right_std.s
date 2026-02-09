	.section	.text._RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_
	.type	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_,@function
_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_: # @_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_
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
	sub	rsp, 152
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, qword ptr [rdi + 24]
	movzx	r8d, word ptr [r15 + 538]
	lea	rax, [rsi + r8]
	cmp	rax, 12
	jae	.LBB375_18
# %bb.1:
	mov	r12, qword ptr [rdi + 40]
	movzx	ecx, word ptr [r12 + 538]
	sub	rcx, rsi
	jb	.LBB375_19
# %bb.2:
	mov	word ptr [r15 + 538], ax
	mov	word ptr [r12 + 538], cx
	mov	rax, qword ptr [r12 + 8*rsi]
	lea	rdx, [r12 + 96]
	mov	qword ptr [rsp + 40], rdx       # 8-byte Spill
	lea	rdx, [8*rsi]
	lea	r9, [rdx + 4*rdx - 40]
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	lea	rdx, [rdx + 4*rdx]
	mov	qword ptr [rsp + 48], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 24], rcx       # 8-byte Spill
	mov	rcx, qword ptr [r12 + rdx + 88]
	mov	qword ptr [rsp + 96], rcx
	movups	xmm0, xmmword ptr [r12 + rdx + 56]
	movups	xmm1, xmmword ptr [r12 + rdx + 72]
	movaps	xmmword ptr [rsp + 80], xmm1
	movaps	xmmword ptr [rsp + 64], xmm0
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 16]
	mov	rbx, rsi
	lea	rsi, [rdx + 4*rdx]
	mov	qword ptr [rsp + 56], rdi       # 8-byte Spill
	mov	rdi, qword ptr [rcx + 8*rdx + 8]
	mov	qword ptr [rcx + 8*rdx + 8], rax
	mov	rax, qword ptr [rcx + 8*rsi + 128]
	mov	qword ptr [rsp + 144], rax
	movups	xmm0, xmmword ptr [rcx + 8*rsi + 96]
	movups	xmm1, xmmword ptr [rcx + 8*rsi + 112]
	movaps	xmmword ptr [rsp + 128], xmm1
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmm0, xmmword ptr [rsp + 64]
	movaps	xmm1, xmmword ptr [rsp + 80]
	movups	xmmword ptr [rcx + 8*rsi + 96], xmm0
	movups	xmmword ptr [rcx + 8*rsi + 112], xmm1
	mov	rax, qword ptr [rsp + 96]
	mov	qword ptr [rcx + 8*rsi + 128], rax
	mov	qword ptr [r15 + 8*r8 + 8], rdi
	lea	r13, [r8 + 4*r8]
	mov	rax, qword ptr [rsp + 144]
	mov	qword ptr [r15 + 8*r13 + 128], rax
	movaps	xmm0, xmmword ptr [rsp + 112]
	movaps	xmm1, xmmword ptr [rsp + 128]
	movups	xmmword ptr [r15 + 8*r13 + 112], xmm1
	movups	xmmword ptr [r15 + 8*r13 + 96], xmm0
	lea	rbp, [r12 + 8]
	mov	qword ptr [rsp + 8], r8         # 8-byte Spill
	lea	rdi, [r15 + 8*r8 + 16]
	lea	rdx, [8*rbx - 8]
	mov	r14, qword ptr [rip + memcpy@GOTPCREL]
	mov	rsi, rbp
	call	r14
	mov	rax, r14
	lea	rdi, [r15 + 8*r13]
	add	rdi, 136
	mov	r14, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	call	rax
	mov	qword ptr [rsp + 16], rbx       # 8-byte Spill
	lea	rsi, [r12 + 8*rbx]
	add	rsi, 8
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	lea	r13d, [8*rax]
	mov	rbx, qword ptr [rip + memmove@GOTPCREL]
	mov	rdi, rbp
	mov	rdx, r13
	call	rbx
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	lea	rsi, [r12 + rax]
	add	rsi, 96
	lea	rdx, [4*r13]
	add	rdx, r13
	mov	rdi, r14
	call	rbx
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	cmp	qword ptr [rax + 32], 0
	mov	rax, qword ptr [rax + 48]
	je	.LBB375_14
# %bb.3:
	test	rax, rax
	je	.LBB375_15
# %bb.4:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rbx, [rax + 1]
	lea	r14, [r12 + 544]
	lea	rdi, [r15 + 8*rbx]
	add	rdi, 544
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rbp, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rsi, [r12 + 8*rbp]
	add	rsi, 544
	add	r13, 8
	mov	rdi, r14
	mov	rdx, r13
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [r15 + 8*rbx + 544]
	mov	qword ptr [rax], r15
	mov	word ptr [rax + 536], bx
	cmp	rbp, 1
	je	.LBB375_9
# %bb.5:
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [r15 + 8*rcx + 560]
	mov	qword ptr [rax], r15
	add	ecx, 2
	mov	word ptr [rax + 536], cx
	cmp	rbp, 2
	je	.LBB375_9
# %bb.6:
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [r15 + 8*rcx + 568]
	mov	qword ptr [rax], r15
	add	ecx, 3
	mov	word ptr [rax + 536], cx
	cmp	rbp, 3
	je	.LBB375_9
# %bb.7:
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [r15 + 8*rcx + 576]
	mov	qword ptr [rax], r15
	add	ecx, 4
	mov	word ptr [rax + 536], cx
	cmp	rbp, 4
	je	.LBB375_9
# %bb.8:
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [r15 + 8*rcx + 584]
	mov	qword ptr [rax], r15
	add	ecx, 5
	mov	word ptr [rax + 536], cx
.LBB375_9:
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	lea	rdx, [rcx + 1]
	mov	eax, edx
	and	eax, 3
	cmp	ecx, 3
	jae	.LBB375_16
# %bb.10:
	xor	ecx, ecx
	jmp	.LBB375_11
.LBB375_14:
	test	rax, rax
	je	.LBB375_13
.LBB375_15:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.72]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.252]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB375_16:
	and	rdx, -4
	xor	ecx, ecx
	.p2align	4
.LBB375_17:                             # =>This Inner Loop Header: Depth=1
	mov	rsi, qword ptr [r12 + 8*rcx + 544]
	mov	qword ptr [rsi], r12
	mov	edi, ecx
	mov	word ptr [rsi + 536], cx
	mov	rsi, qword ptr [r12 + 8*rcx + 552]
	mov	qword ptr [rsi], r12
	lea	r8d, [rdi + 1]
	mov	word ptr [rsi + 536], r8w
	mov	rsi, qword ptr [r12 + 8*rcx + 560]
	mov	qword ptr [rsi], r12
	lea	r8d, [rdi + 2]
	mov	word ptr [rsi + 536], r8w
	mov	rsi, qword ptr [r12 + 8*rcx + 568]
	add	rcx, 4
	mov	qword ptr [rsi], r12
	add	edi, 3
	mov	word ptr [rsi + 536], di
	cmp	rcx, rdx
	jne	.LBB375_17
.LBB375_11:
	test	rax, rax
	je	.LBB375_13
	.p2align	4
.LBB375_12:                             # =>This Inner Loop Header: Depth=1
	mov	rdx, qword ptr [r12 + 8*rcx + 544]
	mov	qword ptr [rdx], r12
	mov	word ptr [rdx + 536], cx
	inc	rcx
	dec	rax
	jne	.LBB375_12
.LBB375_13:
	add	rsp, 152
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
.LBB375_18:
	.cfi_def_cfa_offset 208
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.248]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.249]
	mov	esi, 50
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB375_19:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.250]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.251]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Lfunc_end375:
	.size	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_, .Lfunc_end375-_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_
	.cfi_endproc
                                        # -- End function
