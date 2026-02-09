	.section	.text._RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_
	.type	_RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_,@function
_RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_: # @_RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_
	.cfi_startproc
# %bb.0:
	sub	qword ptr [rdi + 8], rdx
	setb	al
	or	al, byte ptr [rdi]
	movzx	eax, al
	mov	ecx, eax
	and	ecx, 1
	mov	qword ptr [rdi], rcx
	test	al, 1
	je	.LBB66_2
# %bb.1:
	mov	al, 1
	ret
.LBB66_2:
	mov	rax, qword ptr [rdi + 16]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 24]
	jmp	rax                             # TAILCALL
.Lfunc_end66:
	.size	_RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_, .Lfunc_end66-_RNvXs0_Csbho2wNjk0G0_14rustc_demangleINtB5_21SizeLimitedFmtAdapterQNtNtCsfQL5qMWGko6_4core3fmt9FormatterENtB15_5Write9write_strB5_
	.cfi_endproc
                                        # -- End function
