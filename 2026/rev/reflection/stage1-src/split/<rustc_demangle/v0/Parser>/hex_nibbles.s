	.section	.text._RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles
	.type	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles,@function
_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles: # @_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	r8, rsi
	mov	rax, rdi
	mov	rdx, qword ptr [rsi + 16]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	r10, rdx
	.p2align	4
.LBB99_1:                               # =>This Inner Loop Header: Depth=1
	cmp	r10, rsi
	jae	.LBB99_9
# %bb.2:                                #   in Loop: Header=BB99_1 Depth=1
	mov	rcx, r10
	movzx	r9d, byte ptr [rdi + r10]
	inc	r10
	mov	qword ptr [r8 + 16], r10
	lea	r11d, [r9 - 48]
	cmp	r11b, 10
	setb	r11b
	lea	ebx, [r9 - 97]
	cmp	bl, 6
	setb	bl
	or	bl, r11b
	jne	.LBB99_1
# %bb.3:
	cmp	r9b, 95
	jne	.LBB99_9
# %bb.4:
	mov	r8, rcx
	sub	r8, rdx
	jb	.LBB99_10
# %bb.5:
	test	rdx, rdx
	je	.LBB99_7
# %bb.6:
	cmp	byte ptr [rdi + rdx], -65
	jle	.LBB99_10
.LBB99_7:
	add	rdi, rdx
	mov	qword ptr [rax], rdi
	mov	qword ptr [rax + 8], r8
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB99_9:
	.cfi_def_cfa_offset 16
	mov	byte ptr [rax + 8], 0
	mov	qword ptr [rax], 0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB99_10:
	.cfi_def_cfa_offset 16
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.45]
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end99:
	.size	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles, .Lfunc_end99-_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles
	.cfi_endproc
                                        # -- End function
