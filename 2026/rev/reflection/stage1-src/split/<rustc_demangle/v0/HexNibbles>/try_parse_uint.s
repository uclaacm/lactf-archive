	.section	.text._RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint
	.type	_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint,@function
_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint: # @_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 136
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rsi
	mov	r14, rdi
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.43]
	lea	r15, [rsp + 32]
	mov	r8d, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new
	lea	r12, [rsp + 8]
	.p2align	4
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, r12
	mov	rsi, r15
	call	_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.LBB100_1
# %bb.2:
	cmp	eax, 1
	jne	.LBB100_4
# %bb.3:
	mov	rcx, qword ptr [rsp + 16]
	mov	rax, rbx
	sub	rax, rcx
	cmp	rax, 16
	ja	.LBB100_6
.LBB100_8:
	mov	eax, 1
	cmp	rbx, rcx
	jne	.LBB100_10
# %bb.9:
	xor	edx, edx
	jmp	.LBB100_7
.LBB100_4:
	mov	rcx, rbx
	mov	rax, rbx
	sub	rax, rcx
	cmp	rax, 16
	jbe	.LBB100_8
.LBB100_6:
	xor	eax, eax
                                        # implicit-def: $rdx
	jmp	.LBB100_7
.LBB100_10:
	add	rbx, r14
	add	rcx, r14
	xor	edx, edx
	.p2align	4
.LBB100_11:                             # =>This Inner Loop Header: Depth=1
	movzx	esi, byte ptr [rcx]
	test	sil, sil
	js	.LBB100_13
# %bb.12:                               #   in Loop: Header=BB100_11 Depth=1
	inc	rcx
	jmp	.LBB100_18
	.p2align	4
.LBB100_13:                             #   in Loop: Header=BB100_11 Depth=1
	mov	edi, esi
	and	edi, 31
	movzx	r9d, byte ptr [rcx + 1]
	and	r9d, 63
	cmp	sil, -33
	jbe	.LBB100_14
# %bb.15:                               #   in Loop: Header=BB100_11 Depth=1
	movzx	r8d, byte ptr [rcx + 2]
	shl	r9d, 6
	and	r8d, 63
	or	r8d, r9d
	cmp	sil, -16
	jb	.LBB100_16
# %bb.17:                               #   in Loop: Header=BB100_11 Depth=1
	movzx	esi, byte ptr [rcx + 3]
	add	rcx, 4
	and	edi, 7
	shl	edi, 18
	shl	r8d, 6
	and	esi, 63
	or	esi, r8d
	or	esi, edi
	jmp	.LBB100_18
.LBB100_14:                             #   in Loop: Header=BB100_11 Depth=1
	add	rcx, 2
	shl	edi, 6
	or	edi, r9d
	mov	esi, edi
	jmp	.LBB100_18
.LBB100_16:                             #   in Loop: Header=BB100_11 Depth=1
	add	rcx, 3
	shl	edi, 12
	or	r8d, edi
	mov	esi, r8d
	.p2align	4
.LBB100_18:                             #   in Loop: Header=BB100_11 Depth=1
	lea	r8d, [rsi - 65]
	and	r8d, -33
	add	r8d, 10
	lea	edi, [rsi - 48]
	cmp	esi, 58
	cmovae	edi, r8d
	cmp	edi, 16
	jae	.LBB100_20
# %bb.19:                               #   in Loop: Header=BB100_11 Depth=1
	mov	rsi, rdx
	shl	rsi, 4
	mov	edx, edi
	or	rdx, rsi
	cmp	rcx, rbx
	jne	.LBB100_11
.LBB100_7:
	add	rsp, 136
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB100_20:
	.cfi_def_cfa_offset 176
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.44]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Lfunc_end100:
	.size	_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint, .Lfunc_end100-_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint
	.cfi_endproc
                                        # -- End function
