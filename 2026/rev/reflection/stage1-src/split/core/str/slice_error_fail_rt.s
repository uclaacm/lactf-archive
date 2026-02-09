	.section	.text._RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt
	.type	_RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt,@function
_RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt: # @_RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt
	.cfi_startproc
# %bb.0:
	sub	rsp, 168
	.cfi_def_cfa_offset 176
	mov	qword ptr [rsp + 144], rdx
	mov	qword ptr [rsp + 152], rcx
	cmp	rsi, 257
	jae	.LBB77_1
# %bb.12:
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	eax, 1
	xor	r9d, r9d
	jmp	.LBB77_13
.LBB77_1:
	mov	eax, 256
	.p2align	4
.LBB77_2:                               # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rdi + rax], -65
	jg	.LBB77_7
# %bb.3:                                #   in Loop: Header=BB77_2 Depth=1
	cmp	byte ptr [rdi + rax - 1], -65
	jg	.LBB77_4
# %bb.8:                                #   in Loop: Header=BB77_2 Depth=1
	cmp	byte ptr [rdi + rax - 2], -65
	jg	.LBB77_5
# %bb.9:                                #   in Loop: Header=BB77_2 Depth=1
	cmp	byte ptr [rdi + rax - 3], -65
	jg	.LBB77_6
# %bb.10:                               #   in Loop: Header=BB77_2 Depth=1
	add	rax, -4
	jne	.LBB77_2
# %bb.11:
	xor	eax, eax
	jmp	.LBB77_7
.LBB77_4:
	dec	rax
	jmp	.LBB77_7
.LBB77_5:
	add	rax, -2
	jmp	.LBB77_7
.LBB77_6:
	add	rax, -3
.LBB77_7:
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 24], rax
	xor	r9d, r9d
	cmp	rax, rsi
	setb	r9b
	lea	r10, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.131]
	mov	eax, 1
	cmovb	rax, r10
	lea	r9, [r9 + 4*r9]
.LBB77_13:
	mov	qword ptr [rsp + 112], rax
	mov	qword ptr [rsp + 120], r9
	cmp	rdx, rsi
	ja	.LBB77_16
# %bb.14:
	cmp	rcx, rsi
	ja	.LBB77_15
# %bb.18:
	cmp	rdx, rcx
	ja	.LBB77_19
# %bb.20:
	test	rdx, rdx
	sete	al
	cmp	rdx, rsi
	setae	r9b
	or	r9b, al
	jne	.LBB77_22
# %bb.21:
	cmp	byte ptr [rdi + rdx], -64
	cmovl	rcx, rdx
.LBB77_22:
	mov	qword ptr [rsp + 160], rcx
	cmp	rcx, rsi
	jae	.LBB77_39
# %bb.23:
	test	rcx, rcx
	je	.LBB77_24
	.p2align	4
.LBB77_36:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rdi + rcx], -65
	jg	.LBB77_25
# %bb.37:                               #   in Loop: Header=BB77_36 Depth=1
	dec	rcx
	jne	.LBB77_36
.LBB77_24:
	xor	ecx, ecx
.LBB77_25:
	cmp	rcx, rsi
	jne	.LBB77_26
.LBB77_39:
	mov	rdi, r8
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB77_26:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	js	.LBB77_27
# %bb.33:
	mov	dword ptr [rsp + 12], edx
	mov	eax, 1
	jmp	.LBB77_32
.LBB77_27:
	mov	eax, edx
	and	eax, 31
	movzx	r9d, byte ptr [rdi + rcx + 1]
	and	r9d, 63
	cmp	dl, -33
	jbe	.LBB77_28
# %bb.34:
	movzx	esi, byte ptr [rdi + rcx + 2]
	shl	r9d, 6
	and	esi, 63
	or	esi, r9d
	cmp	dl, -16
	jb	.LBB77_35
# %bb.38:
	movzx	edx, byte ptr [rdi + rcx + 3]
	and	eax, 7
	shl	eax, 18
	shl	esi, 6
	and	edx, 63
	or	edx, esi
	or	edx, eax
	cmp	edx, 1114112
	je	.LBB77_39
	jmp	.LBB77_29
.LBB77_28:
	shl	eax, 6
	or	eax, r9d
	mov	edx, eax
.LBB77_29:
	mov	dword ptr [rsp + 12], edx
	mov	eax, 1
	cmp	edx, 128
	jae	.LBB77_30
	jmp	.LBB77_32
.LBB77_35:
	shl	eax, 12
	or	esi, eax
	mov	edx, esi
	mov	dword ptr [rsp + 12], edx
	mov	eax, 1
	cmp	edx, 128
	jb	.LBB77_32
.LBB77_30:
	mov	eax, 2
	cmp	edx, 2048
	jb	.LBB77_32
# %bb.31:
	cmp	edx, 65536
	mov	eax, 4
	sbb	rax, 0
.LBB77_32:
	add	rax, rcx
	mov	qword ptr [rsp + 128], rcx
	mov	qword ptr [rsp + 136], rax
	lea	rax, [rsp + 160]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 40], rax
	lea	rax, [rsp + 12]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rip + _RNvXsj_NtCsfQL5qMWGko6_4core3fmtcNtB5_5Debug3fmt]
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rsp + 128]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rip + _RNvXs_NtNtCsfQL5qMWGko6_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtB8_]
	mov	qword ptr [rsp + 72], rax
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 80], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 88], rax
	lea	rcx, [rsp + 112]
	mov	qword ptr [rsp + 96], rcx
	mov	qword ptr [rsp + 104], rax
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.133]
	lea	rsi, [rsp + 32]
	mov	rdx, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB77_15:
	mov	rdx, rcx
.LBB77_16:
	mov	qword ptr [rsp + 128], rdx
	lea	rax, [rsp + 128]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 40], rax
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 56], rax
	lea	rcx, [rsp + 112]
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 72], rax
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.134]
	lea	rsi, [rsp + 32]
	mov	rdx, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB77_19:
	lea	rax, [rsp + 144]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 40], rax
	lea	rcx, [rsp + 152]
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 72], rax
	lea	rcx, [rsp + 112]
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 88], rax
	lea	rdi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.132]
	lea	rsi, [rsp + 32]
	mov	rdx, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end77:
	.size	_RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt, .Lfunc_end77-_RNvNtCsfQL5qMWGko6_4core3str19slice_error_fail_rt
	.cfi_endproc
                                        # -- End function
