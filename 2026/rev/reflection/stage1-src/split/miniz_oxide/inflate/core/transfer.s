	.section	.text._RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer
	.type	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer,@function
_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer: # @_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer
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
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r15, r8
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rdx
	sub	rdi, rcx
	setb	r8b
	mov	rsi, rcx
	sub	rsi, rdx
	cmovae	rdi, rsi
	mov	eax, r15d
	and	eax, -4
	lea	r12, [rax + rcx]
	cmp	rdi, 1
	sete	dil
	test	r8b, dil
	je	.LBB255_1
# %bb.6:
	lea	rdi, [rcx - 1]
	cmp	rdi, rbx
	jae	.LBB255_45
# %bb.7:
	cmp	r12, rcx
	jb	.LBB255_46
# %bb.8:
	cmp	r12, rbx
	ja	.LBB255_46
# %bb.9:
	lea	rdi, [r14 + rcx]
	movzx	esi, byte ptr [r14 + rcx - 1]
	mov	rdx, rax
	call	qword ptr [rip + memset@GOTPCREL]
	lea	rdx, [r12 - 1]
	and	r15d, 3
	lea	rax, [rip + .LJTI255_0]
	movsxd	rsi, dword ptr [rax + 4*r15]
	add	rsi, rax
	mov	rcx, r12
	jmp	rsi
.LBB255_1:
	cmp	rdx, rcx
	setb	dil
	cmp	rsi, 4
	setae	sil
	xor	eax, eax
	mov	r8, rbx
	sub	r8, 3
	cmovae	rax, r8
	cmp	rax, r12
	cmovae	rax, r12
	test	dil, sil
	je	.LBB255_2
# %bb.12:
	cmp	rcx, rax
	jae	.LBB255_11
# %bb.13:
	lea	rdi, [rbx - 4]
	.p2align	4
.LBB255_14:                             # =>This Inner Loop Header: Depth=1
	lea	rsi, [rdx + 3]
	cmp	rsi, rbx
	jae	.LBB255_15
# %bb.21:                               #   in Loop: Header=BB255_14 Depth=1
	cmp	rdx, -4
	jae	.LBB255_51
# %bb.22:                               #   in Loop: Header=BB255_14 Depth=1
	cmp	rcx, rdi
	ja	.LBB255_52
# %bb.23:                               #   in Loop: Header=BB255_14 Depth=1
	mov	esi, dword ptr [r14 + rdx]
	mov	dword ptr [r14 + rcx], esi
	add	rdx, 4
	add	rcx, 4
	cmp	rcx, rax
	jb	.LBB255_14
	jmp	.LBB255_11
.LBB255_2:
	cmp	rcx, rax
	jae	.LBB255_11
# %bb.3:
	lea	r8, [rdx + r14]
	add	r8, 3
	lea	r9, [rcx + r14]
	add	r9, 3
	xor	esi, esi
	.p2align	4
.LBB255_4:                              # =>This Inner Loop Header: Depth=1
	lea	rdi, [rcx + rsi]
	add	rdi, 3
	cmp	rdi, rbx
	jae	.LBB255_5
# %bb.16:                               #   in Loop: Header=BB255_4 Depth=1
	lea	rdi, [rdx + rsi]
	add	rdi, 3
	cmp	rdi, rbx
	jae	.LBB255_47
# %bb.17:                               #   in Loop: Header=BB255_4 Depth=1
	lea	rdi, [rdx + rsi]
	cmp	rdi, rbx
	jae	.LBB255_48
# %bb.18:                               #   in Loop: Header=BB255_4 Depth=1
	movzx	edi, byte ptr [r8 + rsi - 3]
	mov	byte ptr [r9 + rsi - 3], dil
	lea	rdi, [rdx + rsi]
	inc	rdi
	cmp	rdi, rbx
	jae	.LBB255_49
# %bb.19:                               #   in Loop: Header=BB255_4 Depth=1
	movzx	edi, byte ptr [r8 + rsi - 2]
	mov	byte ptr [r9 + rsi - 2], dil
	lea	rdi, [rdx + rsi]
	add	rdi, 2
	cmp	rdi, rbx
	jae	.LBB255_50
# %bb.20:                               #   in Loop: Header=BB255_4 Depth=1
	movzx	edi, byte ptr [r8 + rsi - 1]
	mov	byte ptr [r9 + rsi - 1], dil
	movzx	edi, byte ptr [r8 + rsi]
	mov	byte ptr [r9 + rsi], dil
	lea	rdi, [rcx + rsi]
	add	rdi, 4
	add	rsi, 4
	cmp	rdi, rax
	jb	.LBB255_4
# %bb.10:
	add	rdx, rsi
	add	rcx, rsi
.LBB255_11:
	and	r15d, 3
	lea	rax, [rip + .LJTI255_0]
	movsxd	rsi, dword ptr [rax + 4*r15]
	add	rsi, rax
	jmp	rsi
.LBB255_30:
	cmp	rdx, rbx
	jae	.LBB255_31
# %bb.27:
	cmp	rcx, rbx
	jb	.LBB255_25
# %bb.28:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.39]
	mov	rdi, rcx
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_33:
	lea	rax, [rcx + 1]
	cmp	rax, rbx
	jae	.LBB255_53
# %bb.34:
	lea	rsi, [rdx + 1]
	cmp	rsi, rbx
	jae	.LBB255_54
# %bb.35:
	cmp	rdx, rbx
	jae	.LBB255_55
# %bb.36:
	cmp	rcx, rbx
	jb	.LBB255_24
# %bb.37:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.45]
	mov	rdi, rcx
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_38:
	lea	rax, [rcx + 2]
	cmp	rax, rbx
	jae	.LBB255_56
# %bb.39:
	lea	rsi, [rdx + 2]
	cmp	rsi, rbx
	jae	.LBB255_57
# %bb.40:
	cmp	rdx, rbx
	jae	.LBB255_58
# %bb.41:
	cmp	rcx, rbx
	jae	.LBB255_59
# %bb.42:
	movzx	edi, byte ptr [r14 + rdx]
	mov	byte ptr [r14 + rcx], dil
	inc	rdx
	cmp	rdx, rbx
	jae	.LBB255_60
# %bb.43:
	inc	rcx
	cmp	rcx, rbx
	jae	.LBB255_44
.LBB255_24:
	movzx	edx, byte ptr [r14 + rdx]
	mov	byte ptr [r14 + rcx], dl
	mov	rdx, rsi
	mov	rcx, rax
.LBB255_25:
	movzx	eax, byte ptr [r14 + rdx]
	mov	byte ptr [r14 + rcx], al
.LBB255_26:
	add	rsp, 8
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
.LBB255_5:
	.cfi_def_cfa_offset 48
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.29]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.30]
	mov	esi, 47
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB255_47:
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.31]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.32]
	mov	esi, 72
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB255_15:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.54]
	xor	edi, edi
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB255_51:
	lea	rsi, [rdx + 4]
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.54]
	mov	rdi, rdx
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB255_52:
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.0]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.54]
	mov	esi, 43
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB255_46:
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.28]
	mov	rdi, rcx
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB255_53:
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.40]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.41]
	mov	esi, 47
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB255_56:
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.46]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.47]
	mov	esi, 47
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB255_54:
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.42]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.43]
	mov	esi, 72
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB255_57:
	lea	rdi, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.48]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.49]
	mov	esi, 72
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.LBB255_50:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.36]
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_49:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.34]
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_48:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.33]
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_45:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.27]
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_31:
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.38]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	rdx, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_55:
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.44]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	rdx, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_58:
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.50]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	rdx, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_59:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.51]
	mov	rdi, rcx
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_60:
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.52]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	rdx, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB255_44:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.53]
	mov	rdi, rcx
	mov	rsi, rbx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end255:
	.size	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer, .Lfunc_end255-_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer
	.cfi_endproc
	.section	.rodata._RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer,"a",@progbits
	.p2align	2, 0x0
.LJTI255_0:
	.long	.LBB255_26-.LJTI255_0
	.long	.LBB255_30-.LJTI255_0
	.long	.LBB255_33-.LJTI255_0
	.long	.LBB255_38-.LJTI255_0
                                        # -- End function
