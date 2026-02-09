	.section	.text._RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_
	.type	_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_,@function
_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_: # @_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	dword ptr [rsp + 4], 0
	cmp	esi, 128
	jae	.LBB67_1
# %bb.9:
	mov	byte ptr [rsp + 4], sil
	mov	edx, 1
	jmp	.LBB67_6
.LBB67_1:
	mov	eax, esi
	and	al, 63
	or	al, -128
	mov	ecx, esi
	shr	ecx, 6
	cmp	esi, 2048
	jae	.LBB67_3
# %bb.2:
	or	cl, -64
	mov	byte ptr [rsp + 4], cl
	mov	byte ptr [rsp + 5], al
	mov	edx, 2
	jmp	.LBB67_6
.LBB67_3:
	and	cl, 63
	or	cl, -128
	mov	edx, esi
	shr	edx, 12
	cmp	esi, 65535
	ja	.LBB67_5
# %bb.4:
	or	dl, -32
	mov	byte ptr [rsp + 4], dl
	mov	byte ptr [rsp + 5], cl
	mov	byte ptr [rsp + 6], al
	mov	edx, 3
	jmp	.LBB67_6
.LBB67_5:
	and	dl, 63
	or	dl, -128
	shr	esi, 18
	or	sil, -16
	mov	byte ptr [rsp + 4], sil
	mov	byte ptr [rsp + 5], dl
	mov	byte ptr [rsp + 6], cl
	mov	byte ptr [rsp + 7], al
	mov	edx, 4
.LBB67_6:
	sub	qword ptr [rdi + 8], rdx
	setb	al
	or	al, byte ptr [rdi]
	movzx	ecx, al
	mov	eax, ecx
	and	eax, 1
	mov	qword ptr [rdi], rax
	mov	al, 1
	test	cl, 1
	jne	.LBB67_8
# %bb.7:
	mov	rax, qword ptr [rdi + 16]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsp + 4]
	call	qword ptr [rax + 24]
.LBB67_8:
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end67:
	.size	_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_, .Lfunc_end67-_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write10write_charB5_
	.cfi_endproc
                                        # -- End function
