	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	rcx, qword ptr [rdi]
	test	rcx, rcx
	je	.LBB94_13
# %bb.1:
	mov	rsi, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 16]
	cmp	rax, rsi
	jae	.LBB94_13
# %bb.2:
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 75
	je	.LBB94_12
# %bb.3:
	cmp	edx, 76
	jne	.LBB94_13
# %bb.4:
	lea	r8, [rax + 1]
	mov	qword ptr [rdi + 16], r8
	cmp	r8, rsi
	jae	.LBB94_5
# %bb.14:
	cmp	byte ptr [rcx + r8], 95
	jne	.LBB94_5
# %bb.15:
	add	rax, 2
	mov	qword ptr [rdi + 16], rax
	xor	eax, eax
	mov	rsi, rax
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index # TAILCALL
.LBB94_13:
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type # TAILCALL
.LBB94_12:
	.cfi_def_cfa_offset 16
	inc	rax
	mov	qword ptr [rdi + 16], rax
	xor	esi, esi
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const # TAILCALL
.LBB94_5:
	.cfi_def_cfa_offset 16
	xor	eax, eax
	mov	r9d, 62
	.p2align	4
.LBB94_6:                               # =>This Inner Loop Header: Depth=1
	cmp	r8, rsi
	jae	.LBB94_23
# %bb.7:                                #   in Loop: Header=BB94_6 Depth=1
	movzx	edx, byte ptr [rcx + r8]
	cmp	dl, 95
	je	.LBB94_16
# %bb.8:                                #   in Loop: Header=BB94_6 Depth=1
	lea	r10d, [rdx - 48]
	cmp	r10b, 10
	jb	.LBB94_21
# %bb.9:                                #   in Loop: Header=BB94_6 Depth=1
	lea	r10d, [rdx - 97]
	cmp	r10b, 26
	jae	.LBB94_10
# %bb.19:                               #   in Loop: Header=BB94_6 Depth=1
	add	dl, -87
	jmp	.LBB94_20
.LBB94_10:                              #   in Loop: Header=BB94_6 Depth=1
	lea	r10d, [rdx - 65]
	cmp	r10b, 26
	jae	.LBB94_23
# %bb.11:                               #   in Loop: Header=BB94_6 Depth=1
	add	dl, -29
.LBB94_20:                              #   in Loop: Header=BB94_6 Depth=1
	mov	r10d, edx
.LBB94_21:                              #   in Loop: Header=BB94_6 Depth=1
	inc	r8
	mov	qword ptr [rdi + 16], r8
	mul	r9
	jo	.LBB94_23
# %bb.22:                               #   in Loop: Header=BB94_6 Depth=1
	movzx	edx, r10b
	add	rax, rdx
	jae	.LBB94_6
.LBB94_23:
	mov	rax, qword ptr [rdi + 32]
	test	rax, rax
	je	.LBB94_25
# %bb.24:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	mov	rbx, rdi
	mov	rdi, rax
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	rdi, rbx
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.LBB94_26
.LBB94_25:
	mov	qword ptr [rdi], 0
	mov	byte ptr [rdi + 8], 0
	xor	eax, eax
.LBB94_26:
                                        # kill: def $al killed $al killed $eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB94_16:
	.cfi_def_cfa_offset 16
	inc	r8
	mov	qword ptr [rdi + 16], r8
	cmp	rax, -1
	je	.LBB94_23
# %bb.17:
	inc	rax
	mov	rsi, rax
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index # TAILCALL
.Lfunc_end94:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg, .Lfunc_end94-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer17print_generic_arg
	.cfi_endproc
                                        # -- End function
