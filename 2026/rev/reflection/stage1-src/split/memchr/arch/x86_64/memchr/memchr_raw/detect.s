	.section	.text._RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect
	.type	_RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect,@function
_RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect: # @_RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect
	.cfi_startproc
# %bb.0:
	mov	rcx, rdx
	lea	rax, [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw9find_sse2]
	mov	qword ptr [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw2FN], rax
	cmp	rsi, rdx
	jae	.LBB177_17
# %bb.1:
	mov	rdx, rsi
	mov	rsi, rcx
	sub	rsi, rdx
	cmp	rsi, 15
	ja	.LBB177_6
# %bb.2:
	add	rsi, rdx
	xor	eax, eax
	.p2align	4
.LBB177_3:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rdx], dil
	je	.LBB177_8
# %bb.4:                                #   in Loop: Header=BB177_3 Depth=1
	inc	rdx
	cmp	rdx, rcx
	jne	.LBB177_3
# %bb.5:
	mov	rdx, rsi
	ret
.LBB177_6:
	movd	xmm0, edi
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	xmm0, xmm0, 68                  # xmm0 = xmm0[0,1,0,1]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqb	xmm1, xmm0
	pmovmskb	eax, xmm1
	test	eax, eax
	je	.LBB177_9
.LBB177_7:
	rep		bsf	eax, eax
	add	rdx, rax
.LBB177_8:
	mov	eax, 1
	ret
.LBB177_9:
	and	rdx, -16
	add	rdx, 16
	cmp	rsi, 64
	setae	sil
	lea	rax, [rcx - 64]
	cmp	rdx, rax
	setbe	dil
	and	dil, sil
	cmp	dil, 1
	jne	.LBB177_12
	.p2align	4
.LBB177_10:                             # =>This Inner Loop Header: Depth=1
	movdqa	xmm4, xmmword ptr [rdx]
	pcmpeqb	xmm4, xmm0
	movdqa	xmm3, xmmword ptr [rdx + 16]
	pcmpeqb	xmm3, xmm0
	movdqa	xmm2, xmmword ptr [rdx + 32]
	pcmpeqb	xmm2, xmm0
	movdqa	xmm1, xmmword ptr [rdx + 48]
	pcmpeqb	xmm1, xmm0
	movdqa	xmm5, xmm4
	por	xmm5, xmm3
	movdqa	xmm6, xmm2
	por	xmm6, xmm1
	por	xmm6, xmm5
	pmovmskb	esi, xmm6
	test	esi, esi
	jne	.LBB177_18
# %bb.11:                               #   in Loop: Header=BB177_10 Depth=1
	add	rdx, 64
	cmp	rdx, rax
	jbe	.LBB177_10
.LBB177_12:
	lea	rax, [rcx - 16]
	cmp	rdx, rax
	ja	.LBB177_15
	.p2align	4
.LBB177_13:                             # =>This Inner Loop Header: Depth=1
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqb	xmm1, xmm0
	pmovmskb	esi, xmm1
	test	esi, esi
	jne	.LBB177_21
# %bb.14:                               #   in Loop: Header=BB177_13 Depth=1
	add	rdx, 16
	cmp	rdx, rax
	jbe	.LBB177_13
.LBB177_15:
	cmp	rdx, rcx
	jae	.LBB177_17
# %bb.16:
	movdqu	xmm1, xmmword ptr [rcx - 16]
	pcmpeqb	xmm0, xmm1
	pmovmskb	edx, xmm0
	xor	eax, eax
	test	edx, edx
	setne	al
	mov	esi, 32
	rep		bsf	esi, edx
	lea	rdx, [rcx + rsi]
	add	rdx, -16
	ret
.LBB177_17:
	xor	eax, eax
                                        # implicit-def: $rdx
	ret
.LBB177_18:
	pmovmskb	eax, xmm4
	test	eax, eax
	jne	.LBB177_7
# %bb.19:
	pmovmskb	eax, xmm3
	test	eax, eax
	je	.LBB177_22
# %bb.20:
	add	rdx, 16
	rep		bsf	eax, eax
	add	rdx, rax
	mov	eax, 1
	ret
.LBB177_21:
	rep		bsf	eax, esi
	add	rdx, rax
	mov	eax, 1
	ret
.LBB177_22:
	pmovmskb	eax, xmm2
	test	eax, eax
	je	.LBB177_24
# %bb.23:
	add	rdx, 32
	rep		bsf	eax, eax
	add	rdx, rax
	mov	eax, 1
	ret
.LBB177_24:
	add	rdx, 48
	pmovmskb	eax, xmm1
	mov	ecx, 32
	rep		bsf	ecx, eax
	add	rdx, rcx
	mov	eax, 1
	ret
.Lfunc_end177:
	.size	_RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect, .Lfunc_end177-_RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw6detect
	.cfi_endproc
                                        # -- End function
