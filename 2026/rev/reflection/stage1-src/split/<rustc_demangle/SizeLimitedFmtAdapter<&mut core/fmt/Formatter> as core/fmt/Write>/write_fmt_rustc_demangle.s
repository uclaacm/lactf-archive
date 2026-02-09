	.section	.text._RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_
	.type	_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_,@function
_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_: # @_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_
	.cfi_startproc
# %bb.0:
	mov	rcx, rdx
	mov	rdx, rsi
	test	cl, 1
	jne	.LBB68_1
# %bb.3:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.152]
	jmp	_RNvNtCsfQL5qMWGko6_4core3fmt5write # TAILCALL
.LBB68_1:
	shr	rcx
	sub	qword ptr [rdi + 8], rcx
	setb	al
	or	al, byte ptr [rdi]
	movzx	eax, al
	mov	esi, eax
	and	esi, 1
	mov	qword ptr [rdi], rsi
	test	al, 1
	je	.LBB68_2
# %bb.4:
	mov	al, 1
	ret
.LBB68_2:
	mov	rax, qword ptr [rdi + 16]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 24]
	mov	rsi, rdx
	mov	rdx, rcx
	jmp	rax                             # TAILCALL
.Lfunc_end68:
	.size	_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_, .Lfunc_end68-_RNvYINtCsbho2wNjk0G0_14rustc_demangle21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtBZ_5Write9write_fmtB5_
	.cfi_endproc
                                        # -- End function
