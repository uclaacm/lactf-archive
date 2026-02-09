	.section	.text._RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	.type	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident,@function
_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident: # @_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	r8, rsi
	mov	rsi, qword ptr [rsi + 8]
	mov	r10, qword ptr [r8 + 16]
	cmp	r10, rsi
	jae	.LBB86_4
# %bb.1:
	mov	rax, qword ptr [r8]
	cmp	byte ptr [rax + r10], 117
	jne	.LBB86_4
# %bb.2:
	inc	r10
	mov	qword ptr [r8 + 16], r10
	mov	r11b, 1
	cmp	r10, rsi
	jb	.LBB86_5
	jmp	.LBB86_43
.LBB86_4:
	xor	r11d, r11d
	cmp	r10, rsi
	jae	.LBB86_43
.LBB86_5:
	mov	r9, qword ptr [r8]
	movzx	eax, byte ptr [r9 + r10]
	add	al, -48
	cmp	al, 10
	jae	.LBB86_43
# %bb.6:
	inc	r10
	mov	qword ptr [r8 + 16], r10
	test	al, al
	je	.LBB86_12
# %bb.7:
	movzx	eax, al
	mov	ecx, 10
	.p2align	4
.LBB86_8:                               # =>This Inner Loop Header: Depth=1
	cmp	rsi, r10
	je	.LBB86_29
# %bb.9:                                #   in Loop: Header=BB86_8 Depth=1
	movzx	ebx, byte ptr [r9 + r10]
	add	bl, -48
	cmp	bl, 9
	ja	.LBB86_13
# %bb.10:                               #   in Loop: Header=BB86_8 Depth=1
	inc	r10
	mov	qword ptr [r8 + 16], r10
	mul	rcx
	jo	.LBB86_43
# %bb.11:                               #   in Loop: Header=BB86_8 Depth=1
	movzx	edx, bl
	add	rax, rdx
	jae	.LBB86_8
	jmp	.LBB86_43
.LBB86_12:
	xor	eax, eax
.LBB86_13:
	cmp	r10, rsi
	jae	.LBB86_16
# %bb.14:
	cmp	byte ptr [r9 + r10], 95
	jne	.LBB86_16
# %bb.15:
	inc	r10
	mov	qword ptr [r8 + 16], r10
.LBB86_16:
	mov	rcx, r10
	add	rcx, rax
	jb	.LBB86_43
.LBB86_17:
	mov	qword ptr [r8 + 16], rcx
	cmp	rcx, rsi
	ja	.LBB86_43
# %bb.18:
	cmp	r10, rsi
	jae	.LBB86_20
# %bb.19:
	cmp	byte ptr [r9 + r10], -65
	jle	.LBB86_44
.LBB86_20:
	cmp	rcx, rsi
	jae	.LBB86_22
# %bb.21:
	cmp	byte ptr [r9 + rcx], -65
	jle	.LBB86_44
.LBB86_22:
	lea	rsi, [r9 + r10]
	test	r11b, r11b
	je	.LBB86_30
# %bb.23:
	lea	r8, [r10 + r9]
	dec	r8
	mov	rcx, rax
	.p2align	4
.LBB86_24:                              # =>This Inner Loop Header: Depth=1
	test	rcx, rcx
	je	.LBB86_31
# %bb.25:                               #   in Loop: Header=BB86_24 Depth=1
	mov	rdx, rcx
	dec	rcx
	cmp	byte ptr [r8 + rdx], 95
	jne	.LBB86_24
# %bb.26:
	test	rcx, rcx
	je	.LBB86_34
# %bb.27:
	cmp	rcx, rax
	jae	.LBB86_32
# %bb.28:
	cmp	byte ptr [rsi + rcx], -65
	jg	.LBB86_34
	jmp	.LBB86_45
.LBB86_29:
	mov	r10, rsi
	mov	rcx, r10
	add	rcx, rax
	jae	.LBB86_17
	jmp	.LBB86_43
.LBB86_30:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rdi + 16], 1
	mov	qword ptr [rdi + 24], 0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB86_31:
	.cfi_def_cfa_offset 16
	mov	edx, 1
	xor	ecx, ecx
	jmp	.LBB86_41
.LBB86_32:
	jne	.LBB86_45
# %bb.33:
	test	rdx, rdx
	je	.LBB86_39
.LBB86_34:
	cmp	rdx, rax
	jae	.LBB86_37
# %bb.35:
	cmp	byte ptr [rsi + rdx], -65
	jle	.LBB86_38
# %bb.36:
	mov	r8, rdx
	jmp	.LBB86_40
.LBB86_37:
	mov	r8, rax
	je	.LBB86_40
.LBB86_38:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.48]
	mov	rdi, rsi
	mov	rsi, rax
	mov	rcx, rax
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB86_39:
	xor	r8d, r8d
.LBB86_40:
	sub	rax, r8
	add	r8, rsi
	mov	rdx, rsi
	mov	rsi, r8
.LBB86_41:
	test	rax, rax
	je	.LBB86_43
# %bb.42:
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rdi + 8], rcx
	mov	qword ptr [rdi + 16], rsi
	mov	qword ptr [rdi + 24], rax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB86_43:
	.cfi_def_cfa_offset 16
	mov	byte ptr [rdi + 8], 0
	mov	qword ptr [rdi], 0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB86_44:
	.cfi_def_cfa_offset 16
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.46]
	mov	rdi, r9
	mov	rdx, r10
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB86_45:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.47]
	mov	rdi, rsi
	mov	rsi, rax
	xor	edx, edx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end86:
	.size	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident, .Lfunc_end86-_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser5ident
	.cfi_endproc
                                        # -- End function
