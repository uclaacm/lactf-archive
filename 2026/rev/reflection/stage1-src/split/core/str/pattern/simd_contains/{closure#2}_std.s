	.section	.text.unlikely._RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	.type	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std,@function
_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std: # @_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	test	ecx, ecx
	je	.LBB175_3
.LBB175_1:
	xor	eax, eax
.LBB175_2:
                                        # kill: def $al killed $al killed $eax
	ret
.LBB175_3:
	mov	rax, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 16]
	add	rsi, rax
	inc	rsi
	mov	rdi, qword ptr [rdi + 24]
	cmp	rdi, 4
	jae	.LBB175_12
	jmp	.LBB175_4
	.p2align	4
.LBB175_16:                             #   in Loop: Header=BB175_12 Depth=1
	mov	eax, dword ptr [rax]
	cmp	eax, dword ptr [r8 + rdi - 4]
	je	.LBB175_17
.LBB175_11:                             #   in Loop: Header=BB175_12 Depth=1
	mov	ax, -2
                                        # kill: def $cl killed $cl killed $rcx
	rol	ax, cl
	and	dx, ax
	je	.LBB175_1
.LBB175_12:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB175_14 Depth 2
	rep		bsf	ecx, edx
	lea	r9, [rsi + rcx]
	lea	rax, [rdi + r9]
	add	rax, -4
	cmp	r9, rax
	jae	.LBB175_16
# %bb.13:                               #   in Loop: Header=BB175_12 Depth=1
	mov	r10, r8
	.p2align	4
.LBB175_14:                             #   Parent Loop BB175_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r11d, dword ptr [r9]
	cmp	r11d, dword ptr [r10]
	jne	.LBB175_11
# %bb.15:                               #   in Loop: Header=BB175_14 Depth=2
	add	r9, 4
	add	r10, 4
	cmp	r9, rax
	jb	.LBB175_14
	jmp	.LBB175_16
	.p2align	4
.LBB175_10:                             #   in Loop: Header=BB175_4 Depth=1
	mov	ax, -2
                                        # kill: def $cl killed $cl killed $rcx
	rol	ax, cl
	and	dx, ax
	je	.LBB175_1
.LBB175_4:                              # =>This Inner Loop Header: Depth=1
	mov	al, 1
	test	rdi, rdi
	je	.LBB175_2
# %bb.5:                                #   in Loop: Header=BB175_4 Depth=1
	rep		bsf	ecx, edx
	movzx	r9d, byte ptr [rsi + rcx]
	cmp	r9b, byte ptr [r8]
	jne	.LBB175_10
# %bb.6:                                #   in Loop: Header=BB175_4 Depth=1
	cmp	rdi, 1
	je	.LBB175_2
# %bb.7:                                #   in Loop: Header=BB175_4 Depth=1
	movzx	r9d, byte ptr [rsi + rcx + 1]
	cmp	r9b, byte ptr [r8 + 1]
	jne	.LBB175_10
# %bb.8:                                #   in Loop: Header=BB175_4 Depth=1
	cmp	rdi, 2
	je	.LBB175_2
# %bb.9:                                #   in Loop: Header=BB175_4 Depth=1
	cmp	rdi, 3
	sete	r9b
	movzx	r10d, byte ptr [rsi + rcx + 2]
	cmp	r10b, byte ptr [r8 + 2]
	sete	r10b
	test	r10b, r9b
	je	.LBB175_10
	jmp	.LBB175_2
.LBB175_17:
	mov	al, 1
                                        # kill: def $al killed $al killed $eax
	ret
.Lfunc_end175:
	.size	_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std, .Lfunc_end175-_RNCNvNtNtCsfQL5qMWGko6_4core3str7pattern13simd_containss0_0Cs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
