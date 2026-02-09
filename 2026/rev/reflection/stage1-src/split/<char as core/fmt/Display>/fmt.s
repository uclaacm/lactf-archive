	.section	.text._RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt
	.type	_RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt,@function
_RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt: # @_RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt
	.cfi_startproc
# %bb.0:
	test	byte ptr [rsi + 19], 24
	mov	eax, dword ptr [rdi]
	je	.LBB90_8
# %bb.1:
	push	rax
	.cfi_def_cfa_offset 16
	mov	dword ptr [rsp + 4], 0
	cmp	eax, 128
	jae	.LBB90_2
# %bb.9:
	mov	byte ptr [rsp + 4], al
	mov	edx, 1
	jmp	.LBB90_7
.LBB90_8:
	.cfi_def_cfa_offset 8
	mov	rdi, qword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rcx + 32]
	mov	esi, eax
	jmp	rcx                             # TAILCALL
.LBB90_2:
	.cfi_def_cfa_offset 16
	mov	ecx, eax
	and	cl, 63
	or	cl, -128
	mov	edx, eax
	shr	edx, 6
	cmp	eax, 2048
	jae	.LBB90_4
# %bb.3:
	or	dl, -64
	mov	byte ptr [rsp + 4], dl
	mov	byte ptr [rsp + 5], cl
	mov	edx, 2
	jmp	.LBB90_7
.LBB90_4:
	and	dl, 63
	or	dl, -128
	mov	edi, eax
	shr	edi, 12
	cmp	eax, 65535
	ja	.LBB90_6
# %bb.5:
	or	dil, -32
	mov	byte ptr [rsp + 4], dil
	mov	byte ptr [rsp + 5], dl
	mov	byte ptr [rsp + 6], cl
	mov	edx, 3
	jmp	.LBB90_7
.LBB90_6:
	and	dil, 63
	or	dil, -128
	shr	eax, 18
	or	al, -16
	mov	byte ptr [rsp + 4], al
	mov	byte ptr [rsp + 5], dil
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], cl
	mov	edx, 4
.LBB90_7:
	lea	rax, [rsp + 4]
	mov	rdi, rsi
	mov	rsi, rax
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end90:
	.size	_RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt, .Lfunc_end90-_RNvXsk_NtCsfQL5qMWGko6_4core3fmtcNtB5_7Display3fmt
	.cfi_endproc
                                        # -- End function
