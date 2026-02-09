	.section	.text._RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	.type	_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_,@function
_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_: # @_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 96
	.cfi_def_cfa_offset 128
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset rbp, -16
	mov	rsi, qword ptr [rdi + 8]
	mov	r8, qword ptr [rdi + 32]
	mov	eax, 1114113
	sub	rsi, r8
	jb	.LBB106_38
# %bb.1:
	mov	rdx, qword ptr [rdi]
	lea	rcx, [rdx + r8]
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 8], rsi
	cmp	r8, 2
	jne	.LBB106_39
# %bb.2:
	movzx	r8d, byte ptr [rdx]
	lea	r9d, [r8 - 65]
	and	r9d, -33
	add	r9d, 10
	lea	eax, [r8 - 48]
	cmp	r8d, 58
	cmovae	eax, r9d
	cmp	eax, 15
	ja	.LBB106_41
# %bb.3:
	movzx	edx, byte ptr [rdx + 1]
	lea	r8d, [rdx - 65]
	and	r8d, -33
	add	r8d, 10
	lea	r9d, [rdx - 48]
	cmp	edx, 58
	cmovae	r9d, r8d
	cmp	r9d, 16
	jae	.LBB106_41
# %bb.4:
	shl	al, 4
	or	r9b, al
	js	.LBB106_5
# %bb.40:
	mov	byte ptr [rsp + 4], r9b
	mov	word ptr [rsp + 5], 0
	mov	byte ptr [rsp + 7], 0
	lea	rax, [rsp + 4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 1
	mov	edx, 1
.LBB106_25:
	lea	rdi, [rsp + 32]
	lea	rsi, [rsp + 4]
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	byte ptr [rsp + 32], 0
	mov	eax, 1114112
	jne	.LBB106_38
# %bb.26:
	mov	rdi, qword ptr [rsp + 40]
	mov	rax, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 80], rdi
	mov	qword ptr [rsp + 88], rax
	lea	rsi, [rdi + rax]
	test	rax, rax
	je	.LBB106_36
# %bb.27:
	movzx	eax, byte ptr [rdi]
	test	al, al
	js	.LBB106_29
# %bb.28:
	lea	rdx, [rdi + 1]
	jmp	.LBB106_34
.LBB106_5:
	mov	eax, 1114112
	cmp	r9b, -64
	jb	.LBB106_38
# %bb.6:
	cmp	r9b, -32
	jae	.LBB106_8
# %bb.7:
	mov	edx, 2
.LBB106_12:
	xor	r8d, r8d
	jmp	.LBB106_13
.LBB106_29:
	mov	ecx, eax
	and	ecx, 31
	movzx	r9d, byte ptr [rdi + 1]
	and	r9d, 63
	cmp	al, -33
	jbe	.LBB106_30
# %bb.31:
	movzx	r8d, byte ptr [rdi + 2]
	shl	r9d, 6
	and	r8d, 63
	or	r8d, r9d
	cmp	al, -16
	jb	.LBB106_32
# %bb.33:
	lea	rdx, [rdi + 4]
	movzx	eax, byte ptr [rdi + 3]
	and	ecx, 7
	shl	ecx, 18
	shl	r8d, 6
	and	eax, 63
	or	eax, r8d
	or	eax, ecx
	jmp	.LBB106_34
.LBB106_8:
	cmp	r9b, -16
	jae	.LBB106_10
# %bb.9:
	mov	edx, 3
	mov	r8b, 1
.LBB106_13:
	mov	byte ptr [rsp + 4], r9b
	mov	word ptr [rsp + 5], 0
	mov	byte ptr [rsp + 7], 0
	lea	rax, [rsp + 4]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], rdx
	mov	eax, 1114112
	cmp	rsi, 2
	jb	.LBB106_38
# %bb.14:
	lea	r11, [rcx + 2]
	lea	r10, [rsi - 2]
	mov	qword ptr [rdi], r11
	mov	qword ptr [rdi + 8], r10
	movzx	ebx, byte ptr [rcx]
	lea	ebp, [rbx - 65]
	and	ebp, -33
	add	ebp, 10
	lea	r11d, [rbx - 48]
	cmp	ebx, 58
	cmovae	r11d, ebp
	cmp	r11d, 15
	ja	.LBB106_41
# %bb.15:
	movzx	r14d, byte ptr [rcx + 1]
	lea	ebp, [r14 - 65]
	and	ebp, -33
	add	ebp, 10
	lea	ebx, [r14 - 48]
	cmp	r14d, 58
	cmovae	ebx, ebp
	cmp	ebx, 15
	ja	.LBB106_41
# %bb.16:
	shl	r11b, 4
	or	bl, r11b
	mov	byte ptr [rsp + 5], bl
	cmp	r9b, -32
	jb	.LBB106_25
# %bb.17:
	cmp	r10, 2
	jb	.LBB106_38
# %bb.18:
	lea	r10, [rcx + 4]
	lea	r9, [rsi - 4]
	mov	qword ptr [rdi], r10
	mov	qword ptr [rdi + 8], r9
	movzx	r11d, byte ptr [rcx + 2]
	lea	ebx, [r11 - 65]
	and	ebx, -33
	add	ebx, 10
	lea	r10d, [r11 - 48]
	cmp	r11d, 58
	cmovae	r10d, ebx
	cmp	r10d, 15
	ja	.LBB106_41
# %bb.19:
	movzx	ebx, byte ptr [rcx + 3]
	lea	ebp, [rbx - 65]
	and	ebp, -33
	add	ebp, 10
	lea	r11d, [rbx - 48]
	cmp	ebx, 58
	cmovae	r11d, ebp
	cmp	r11d, 15
	ja	.LBB106_41
# %bb.20:
	shl	r10b, 4
	or	r11b, r10b
	mov	byte ptr [rsp + 6], r11b
	test	r8b, r8b
	jne	.LBB106_25
# %bb.21:
	cmp	r9, 2
	jb	.LBB106_38
# %bb.22:
	lea	rax, [rcx + 6]
	add	rsi, -6
	mov	qword ptr [rdi], rax
	mov	qword ptr [rdi + 8], rsi
	movzx	esi, byte ptr [rcx + 4]
	lea	edi, [rsi - 65]
	and	edi, -33
	add	edi, 10
	lea	eax, [rsi - 48]
	cmp	esi, 58
	cmovae	eax, edi
	cmp	eax, 15
	ja	.LBB106_41
# %bb.23:
	movzx	esi, byte ptr [rcx + 5]
	lea	edi, [rsi - 65]
	and	edi, -33
	add	edi, 10
	lea	ecx, [rsi - 48]
	cmp	esi, 58
	cmovae	ecx, edi
	cmp	ecx, 15
	ja	.LBB106_41
# %bb.24:
	shl	al, 4
	or	cl, al
	mov	byte ptr [rsp + 7], cl
	jmp	.LBB106_25
.LBB106_30:
	lea	rdx, [rdi + 2]
	shl	ecx, 6
	or	ecx, r9d
	mov	eax, ecx
	jmp	.LBB106_34
.LBB106_10:
	cmp	r9b, -8
	jae	.LBB106_38
# %bb.11:
	mov	edx, 4
	jmp	.LBB106_12
.LBB106_32:
	lea	rdx, [rdi + 3]
	shl	ecx, 12
	or	r8d, ecx
	mov	eax, r8d
.LBB106_34:
	cmp	rdx, rsi
	jne	.LBB106_35
# %bb.37:
	cmp	eax, 1114112
	je	.LBB106_36
.LBB106_38:
	add	rsp, 96
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB106_41:
	.cfi_def_cfa_offset 128
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.20]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB106_39:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.72]
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.19]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB106_35:
	cmp	byte ptr [rdx], 0
.LBB106_36:
	call	_RNvXNtNtCsfQL5qMWGko6_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count
	mov	qword ptr [rsp + 24], rax
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXs1h_NtCsfQL5qMWGko6_4core3fmtQShNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle]
	mov	qword ptr [rsp + 40], rax
	lea	rax, [rsp + 80]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rip + _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtReNtB6_5Debug3fmtCsbho2wNjk0G0_14rustc_demangle]
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rsp + 24]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 72], rax
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.16]
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.17]
	lea	rsi, [rsp + 32]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end106:
	.size	_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_, .Lfunc_end106-_RNvXNtNtNtCsfQL5qMWGko6_4core4iter7sources7from_fnINtB2_6FromFnNCNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB17_10HexNibbles19try_parse_str_charss0_0ENtNtNtB6_6traits8iterator8Iterator4nextB19_
	.cfi_endproc
                                        # -- End function
