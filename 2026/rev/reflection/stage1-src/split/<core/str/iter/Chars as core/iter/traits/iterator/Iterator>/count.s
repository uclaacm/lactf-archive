	.section	.text._RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count,"ax",@progbits
	.p2align	4
	.type	_RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count,@function
_RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count: # @_RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count
	.cfi_startproc
# %bb.0:
	mov	rax, rsi
	sub	rsi, rdi
	cmp	rsi, 32
	jae	_RNvNtNtCsfQL5qMWGko6_4core3str5count14do_count_chars # TAILCALL
# %bb.1:
	cmp	rax, rdi
	je	.LBB109_2
# %bb.3:
	cmp	rsi, 4
	jae	.LBB109_6
# %bb.4:
	xor	ecx, ecx
	xor	eax, eax
	jmp	.LBB109_5
.LBB109_2:
	xor	eax, eax
	ret
.LBB109_6:
	mov	ecx, esi
	and	ecx, 28
	pxor	xmm0, xmm0
	xor	eax, eax
	movdqa	xmm2, xmmword ptr [rip + .LCPI109_0] # xmm2 = [191,191,u,u,u,u,u,u,u,u,u,u,u,u,u,u]
	movdqa	xmm3, xmmword ptr [rip + .LCPI109_1] # xmm3 = [1,1]
	pxor	xmm1, xmm1
	.p2align	4
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	movzx	edx, word ptr [rdi + rax]
	movd	xmm4, edx
	movzx	edx, word ptr [rdi + rax + 2]
	movd	xmm5, edx
	pcmpgtb	xmm4, xmm2
	punpcklbw	xmm4, xmm4              # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	paddq	xmm0, xmm4
	pcmpgtb	xmm5, xmm2
	punpcklbw	xmm5, xmm5              # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm4, xmm5, 212                 # xmm4 = xmm5[0,1,1,3,4,5,6,7]
	pshufd	xmm4, xmm4, 212                 # xmm4 = xmm4[0,1,1,3]
	pand	xmm4, xmm3
	paddq	xmm1, xmm4
	add	rax, 4
	cmp	rcx, rax
	jne	.LBB109_7
# %bb.8:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 238                 # xmm0 = xmm1[2,3,2,3]
	paddq	xmm0, xmm1
	movq	rax, xmm0
	jmp	.LBB109_9
.LBB109_5:
	xor	edx, edx
	cmp	byte ptr [rdi + rcx], -64
	setge	dl
	add	rax, rdx
	inc	rcx
.LBB109_9:
	cmp	rsi, rcx
	jne	.LBB109_5
# %bb.10:
	ret
.Lfunc_end109:
	.size	_RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count, .Lfunc_end109-_RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count
	.cfi_endproc
                                        # -- End function
