	.section	.text._RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix
	.type	_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix,@function
_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix: # @_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix
	.cfi_startproc
# %bb.0:
	cmp	rdx, 1
	je	.LBB136_5
# %bb.1:
	test	rdx, rdx
	jne	.LBB136_8
# %bb.2:
	mov	byte ptr [rdi + 1], 0
	mov	al, 1
	mov	byte ptr [rdi], al
	ret
.LBB136_5:
	movzx	eax, byte ptr [rsi]
	cmp	eax, 45
	je	.LBB136_7
# %bb.6:
	cmp	eax, 43
	jne	.LBB136_9
.LBB136_7:
	mov	byte ptr [rdi + 1], 1
	mov	al, 1
	mov	byte ptr [rdi], al
	ret
.LBB136_8:
	movzx	eax, byte ptr [rsi]
.LBB136_9:
	xor	r8d, r8d
	cmp	al, 43
	sete	r8b
	mov	rcx, rdx
	sub	rcx, r8
	add	rsi, r8
	mov	rax, r8
	neg	rax
	cmp	rcx, 17
	jae	.LBB136_10
# %bb.15:
	test	rcx, rcx
	je	.LBB136_16
# %bb.19:
	add	rdx, rax
	neg	rdx
	xor	ecx, ecx
	xor	r8d, r8d
	.p2align	4
.LBB136_20:                             # =>This Inner Loop Header: Depth=1
	movzx	r9d, byte ptr [rsi + rcx]
	lea	r10d, [r9 - 65]
	and	r10d, -33
	add	r10d, 10
	lea	eax, [r9 - 48]
	cmp	r9d, 58
	cmovae	eax, r10d
	cmp	eax, 15
	ja	.LBB136_7
# %bb.21:                               #   in Loop: Header=BB136_20 Depth=1
	shl	r8, 4
	mov	eax, eax
	or	rax, r8
	inc	rcx
	mov	r9, rdx
	mov	r8, rax
	add	r9, rcx
	jne	.LBB136_20
.LBB136_17:
	mov	qword ptr [rdi + 8], rax
	xor	eax, eax
	mov	byte ptr [rdi], al
	ret
.LBB136_10:
	add	rdx, rax
	neg	rdx
	xor	ecx, ecx
	xor	eax, eax
	mov	r8, rdx
	add	r8, rcx
	je	.LBB136_17
	.p2align	4
.LBB136_12:                             # =>This Inner Loop Header: Depth=1
	movzx	r9d, byte ptr [rsi + rcx]
	lea	r10d, [r9 - 65]
	and	r10d, -33
	add	r10d, 10
	lea	r8d, [r9 - 48]
	cmp	r9d, 58
	cmovae	r8d, r10d
	cmp	r8d, 15
	ja	.LBB136_7
# %bb.13:                               #   in Loop: Header=BB136_12 Depth=1
	mov	r9, rax
	shr	r9, 60
	jne	.LBB136_18
# %bb.14:                               #   in Loop: Header=BB136_12 Depth=1
	shl	rax, 4
	mov	r8d, r8d
	or	rax, r8
	inc	rcx
	mov	r8, rdx
	add	r8, rcx
	jne	.LBB136_12
	jmp	.LBB136_17
.LBB136_16:
	xor	eax, eax
	mov	qword ptr [rdi + 8], rax
	xor	eax, eax
	mov	byte ptr [rdi], al
	ret
.LBB136_18:
	mov	byte ptr [rdi + 1], 2
	mov	al, 1
	mov	byte ptr [rdi], al
	ret
.Lfunc_end136:
	.size	_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix, .Lfunc_end136-_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix
	.cfi_endproc
                                        # -- End function
