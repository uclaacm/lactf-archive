	.section	.text._RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.type	_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,@function
_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt: # @_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 600
	.cfi_def_cfa_offset 656
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 88]
	mov	edx, 512
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
	mov	rcx, qword ptr [rbp + 24]
	mov	qword ptr [rsp + 56], rcx       # 8-byte Spill
	test	rcx, rcx
	je	.LBB87_12
# %bb.1:
	mov	qword ptr [rsp + 48], rbx       # 8-byte Spill
	mov	rax, qword ptr [rbp + 16]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	movzx	ebx, byte ptr [rax]
	mov	rcx, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	je	.LBB87_14
# %bb.2:
	add	rax, rcx
	xor	r10d, r10d
	jmp	.LBB87_3
	.p2align	4
.LBB87_4:                               #   in Loop: Header=BB87_3 Depth=1
	inc	rcx
	cmp	r10, 128
	je	.LBB87_59
.LBB87_11:                              #   in Loop: Header=BB87_3 Depth=1
	mov	dword ptr [rsp + 4*r10 + 88], edx
	inc	r10
	cmp	rcx, rax
	je	.LBB87_15
.LBB87_3:                               # =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [rcx]
	test	dl, dl
	jns	.LBB87_4
# %bb.5:                                #   in Loop: Header=BB87_3 Depth=1
	mov	esi, edx
	and	esi, 31
	movzx	r8d, byte ptr [rcx + 1]
	and	r8d, 63
	cmp	dl, -33
	jbe	.LBB87_9
# %bb.6:                                #   in Loop: Header=BB87_3 Depth=1
	movzx	edi, byte ptr [rcx + 2]
	shl	r8d, 6
	and	edi, 63
	or	edi, r8d
	cmp	dl, -16
	jb	.LBB87_10
# %bb.7:                                #   in Loop: Header=BB87_3 Depth=1
	movzx	edx, byte ptr [rcx + 3]
	and	esi, 7
	shl	esi, 18
	shl	edi, 6
	and	edx, 63
	or	edx, edi
	or	edx, esi
	cmp	edx, 1114112
	je	.LBB87_15
# %bb.8:                                #   in Loop: Header=BB87_3 Depth=1
	add	rcx, 4
	cmp	r10, 128
	jne	.LBB87_11
	jmp	.LBB87_59
.LBB87_9:                               #   in Loop: Header=BB87_3 Depth=1
	add	rcx, 2
	shl	esi, 6
	or	esi, r8d
	mov	edx, esi
	cmp	r10, 128
	jne	.LBB87_11
	jmp	.LBB87_59
.LBB87_10:                              #   in Loop: Header=BB87_3 Depth=1
	add	rcx, 3
	shl	esi, 12
	or	edi, esi
	mov	edx, edi
	cmp	r10, 128
	jne	.LBB87_11
.LBB87_59:
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r14, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 24]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.32]
	mov	edx, 9
	mov	rdi, r14
	mov	r15, rax
	call	rax
	mov	bl, 1
	test	al, al
	jne	.LBB87_64
# %bb.60:
	mov	rdx, qword ptr [rsp + 80]       # 8-byte Reload
	test	rdx, rdx
	je	.LBB87_63
# %bb.61:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	r12, r15
	call	r15
	test	al, al
	jne	.LBB87_64
# %bb.62:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.26]
	mov	edx, 1
	mov	rdi, r14
	call	r12
	test	al, al
	jne	.LBB87_64
.LBB87_63:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r12, r15
	call	r15
	test	al, al
	je	.LBB87_65
.LBB87_64:
	mov	eax, ebx
	add	rsp, 600
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB87_12:
	.cfi_def_cfa_offset 656
	mov	rsi, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 24]
.LBB87_13:
	add	rsp, 600
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	rax                             # TAILCALL
.LBB87_14:
	.cfi_def_cfa_offset 656
	xor	r10d, r10d
.LBB87_15:
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r15, qword ptr [rsp + 40]       # 8-byte Reload
	add	rax, r15
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	lea	rax, [4*r10 + 4]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	rax, r10
	not	rax
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	lea	rax, [r10 + 1]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	lea	r11, [rsp + 4*r10 + 76]
	mov	eax, 700
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	r14d, 72
	mov	ebp, 128
	mov	edx, 26
	movabs	r12, -1581149492032247281
	xor	r8d, r8d
	mov	r9d, 26
.LBB87_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_24 Depth 2
                                        #     Child Loop BB87_44 Depth 2
                                        #     Child Loop BB87_47 Depth 2
                                        #     Child Loop BB87_55 Depth 2
	mov	ecx, 36
	sub	rcx, r14
	mov	eax, 0
	cmovae	rax, rcx
	cmp	rax, 1
	adc	rax, 0
	cmp	rax, 26
	cmovae	rax, rdx
	lea	ecx, [rbx - 97]
	cmp	cl, 26
	jb	.LBB87_19
# %bb.17:                               #   in Loop: Header=BB87_16 Depth=1
	lea	ecx, [rbx - 48]
	cmp	cl, 9
	ja	.LBB87_59
# %bb.18:                               #   in Loop: Header=BB87_16 Depth=1
	add	bl, -22
	mov	ecx, ebx
.LBB87_19:                              #   in Loop: Header=BB87_16 Depth=1
	inc	r15
	movzx	ecx, cl
	cmp	rax, rcx
	jbe	.LBB87_23
.LBB87_20:                              #   in Loop: Header=BB87_16 Depth=1
	add	r8, rcx
	jb	.LBB87_59
# %bb.21:                               #   in Loop: Header=BB87_16 Depth=1
	lea	r13, [r10 + 1]
	mov	rax, r8
	or	rax, r13
	shr	rax, 32
	je	.LBB87_32
# %bb.22:                               #   in Loop: Header=BB87_16 Depth=1
	mov	rax, r8
	xor	edx, edx
	div	r13
	mov	rdi, rdx
	mov	rsi, rax
	add	rsi, rbp
	cmp	rsi, rbp
	jae	.LBB87_33
	jmp	.LBB87_59
	.p2align	4
.LBB87_23:                              #   in Loop: Header=BB87_16 Depth=1
	mov	esi, 36
	sub	rsi, rax
	mov	ebx, 72
	.p2align	4
.LBB87_24:                              #   Parent Loop BB87_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, rbx
	sub	rax, r14
	mov	r13d, 0
	cmovae	r13, rax
	cmp	r13, 1
	adc	r13, 0
	cmp	r13, 26
	cmovae	r13, r9
	cmp	r15, qword ptr [rsp + 64]       # 8-byte Folded Reload
	je	.LBB87_59
# %bb.25:                               #   in Loop: Header=BB87_24 Depth=2
	movzx	eax, byte ptr [r15]
	lea	edx, [rax - 97]
	cmp	dl, 26
	jb	.LBB87_28
# %bb.26:                               #   in Loop: Header=BB87_24 Depth=2
	lea	edx, [rax - 48]
	cmp	dl, 9
	ja	.LBB87_59
# %bb.27:                               #   in Loop: Header=BB87_24 Depth=2
	add	al, -22
	mov	edx, eax
.LBB87_28:                              #   in Loop: Header=BB87_24 Depth=2
	movzx	edi, dl
	mov	rax, rdi
	mul	rsi
	jo	.LBB87_59
# %bb.29:                               #   in Loop: Header=BB87_24 Depth=2
	add	rcx, rax
	jb	.LBB87_59
# %bb.30:                               #   in Loop: Header=BB87_24 Depth=2
	inc	r15
	cmp	r13, rdi
	ja	.LBB87_20
# %bb.31:                               #   in Loop: Header=BB87_24 Depth=2
	mov	edx, 36
	sub	rdx, r13
	add	rbx, 36
	mov	rax, rsi
	mul	rdx
	mov	rsi, rax
	jno	.LBB87_24
	jmp	.LBB87_59
.LBB87_32:                              #   in Loop: Header=BB87_16 Depth=1
	mov	eax, r8d
	xor	edx, edx
	div	r13d
	mov	edi, edx
	mov	esi, eax
	add	rsi, rbp
	cmp	rsi, rbp
	jb	.LBB87_59
.LBB87_33:                              #   in Loop: Header=BB87_16 Depth=1
	mov	rax, rsi
	shr	rax, 32
	jne	.LBB87_59
# %bb.34:                               #   in Loop: Header=BB87_16 Depth=1
	cmp	rsi, 1114112
	je	.LBB87_59
# %bb.35:                               #   in Loop: Header=BB87_16 Depth=1
	mov	eax, esi
	xor	eax, 55296
	add	eax, -1114112
	cmp	eax, -1112064
	jb	.LBB87_59
# %bb.36:                               #   in Loop: Header=BB87_16 Depth=1
	cmp	r10, 127
	ja	.LBB87_59
# %bb.37:                               #   in Loop: Header=BB87_16 Depth=1
	mov	rbx, r10
	sub	rbx, rdi
	jbe	.LBB87_41
# %bb.38:                               #   in Loop: Header=BB87_16 Depth=1
	cmp	rbx, 7
	mov	rbp, qword ptr [rsp + 24]       # 8-byte Reload
	jbe	.LBB87_47
# %bb.39:                               #   in Loop: Header=BB87_16 Depth=1
	mov	rax, r8
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
	or	rax, r14
	shr	rax, 32
	je	.LBB87_42
# %bb.40:                               #   in Loop: Header=BB87_16 Depth=1
	mov	rax, r8
	xor	edx, edx
	div	r14
	jmp	.LBB87_43
	.p2align	4
.LBB87_41:                              #   in Loop: Header=BB87_16 Depth=1
	cmp	rdi, 128
	mov	rbp, qword ptr [rsp + 24]       # 8-byte Reload
	jb	.LBB87_48
	jmp	.LBB87_81
.LBB87_42:                              #   in Loop: Header=BB87_16 Depth=1
	mov	eax, r8d
	xor	edx, edx
	div	r14d
                                        # kill: def $eax killed $eax def $rax
.LBB87_43:                              #   in Loop: Header=BB87_16 Depth=1
	mov	edx, ebx
	and	edx, 120
	imul	rax, rbp
	add	r8, rax
	mov	rax, r10
	sub	rax, r8
	shr	rax, 3
	and	eax, 15
	shl	eax, 3
	xor	r8d, r8d
	.p2align	4
.LBB87_44:                              #   Parent Loop BB87_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	xmm0, xmmword ptr [r11 + 4*r8 - 20]
	movups	xmm1, xmmword ptr [r11 + 4*r8 - 4]
	movups	xmmword ptr [r11 + 4*r8], xmm1
	movups	xmmword ptr [r11 + 4*r8 - 16], xmm0
	add	r8, -8
	mov	r14, rax
	add	r14, r8
	jne	.LBB87_44
# %bb.45:                               #   in Loop: Header=BB87_16 Depth=1
	cmp	rbx, rdx
	je	.LBB87_48
# %bb.46:                               #   in Loop: Header=BB87_16 Depth=1
	sub	r10, rdx
	.p2align	4
.LBB87_47:                              #   Parent Loop BB87_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rsp + 4*r10 + 84]
	mov	dword ptr [rsp + 4*r10 + 88], eax
	dec	r10
	cmp	r10, rdi
	ja	.LBB87_47
.LBB87_48:                              #   in Loop: Header=BB87_16 Depth=1
	mov	dword ptr [rsp + 4*rdi + 88], esi
	cmp	r15, qword ptr [rsp + 64]       # 8-byte Folded Reload
	je	.LBB87_66
# %bb.49:                               #   in Loop: Header=BB87_16 Depth=1
	movzx	ebx, byte ptr [r15]
	mov	rax, rcx
	shr	rax, 32
	je	.LBB87_51
# %bb.50:                               #   in Loop: Header=BB87_16 Depth=1
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rsp + 16]            # 8-byte Folded Reload
	mov	rcx, rax
	jmp	.LBB87_52
.LBB87_51:                              #   in Loop: Header=BB87_16 Depth=1
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rsp + 16]            # 4-byte Folded Reload
	mov	ecx, eax
.LBB87_52:                              #   in Loop: Header=BB87_16 Depth=1
	mov	r10, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, rcx
	or	rax, r13
	shr	rax, 32
	je	.LBB87_56
# %bb.53:                               #   in Loop: Header=BB87_16 Depth=1
	mov	rax, rcx
	xor	edx, edx
	div	r13
	mov	rdx, rax
	add	rdx, rcx
	cmp	rdx, 456
	jb	.LBB87_57
.LBB87_54:                              #   in Loop: Header=BB87_16 Depth=1
	mov	rcx, rdx
	xor	r8d, r8d
	.p2align	4
.LBB87_55:                              #   Parent Loop BB87_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, rcx
	mul	r12
	shr	rdx, 5
	add	r8, 36
	cmp	rcx, 15959
	mov	rcx, rdx
	ja	.LBB87_55
	jmp	.LBB87_58
.LBB87_56:                              #   in Loop: Header=BB87_16 Depth=1
	mov	eax, ecx
	xor	edx, edx
	div	r13d
	mov	edx, eax
	add	rdx, rcx
	cmp	rdx, 456
	jae	.LBB87_54
.LBB87_57:                              #   in Loop: Header=BB87_16 Depth=1
	xor	r8d, r8d
.LBB87_58:                              #   in Loop: Header=BB87_16 Depth=1
	inc	rdi
	lea	eax, [4*rdx]
	lea	eax, [rax + 8*rax]
	add	edx, 38
                                        # kill: def $ax killed $ax killed $eax
	mov	rcx, rdx
	xor	edx, edx
	div	cx
	movzx	r14d, ax
	add	r14, r8
	add	qword ptr [rsp + 32], 4         # 8-byte Folded Spill
	dec	rbp
	mov	qword ptr [rsp + 24], rbp       # 8-byte Spill
	inc	r10
	mov	qword ptr [rsp + 8], r10        # 8-byte Spill
	add	r11, 4
	mov	eax, 2
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	r10, r13
	mov	rbp, rsi
	mov	r8, rdi
	mov	edx, 26
	jmp	.LBB87_16
.LBB87_65:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.33]
	mov	edx, 1
	mov	rdi, r14
	mov	rax, r12
	jmp	.LBB87_13
.LBB87_66:
	mov	r13, qword ptr [rsp + 48]       # 8-byte Reload
	mov	ebx, dword ptr [r13 + 16]
	mov	r15, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	lea	r12, [rsp + 4]
	lea	rbp, [rsp + 88]
	jmp	.LBB87_69
.LBB87_67:                              #   in Loop: Header=BB87_69 Depth=1
	mov	rdi, r15
	call	qword ptr [r14 + 32]
	test	al, al
	jne	.LBB87_80
.LBB87_68:                              #   in Loop: Header=BB87_69 Depth=1
	add	rbp, 4
	add	qword ptr [rsp + 32], -4        # 8-byte Folded Spill
	je	.LBB87_79
.LBB87_69:                              # =>This Inner Loop Header: Depth=1
	mov	esi, dword ptr [rbp]
	test	ebx, 402653184
	je	.LBB87_67
# %bb.70:                               #   in Loop: Header=BB87_69 Depth=1
	mov	dword ptr [rsp + 4], 0
	cmp	esi, 128
	jae	.LBB87_72
# %bb.71:                               #   in Loop: Header=BB87_69 Depth=1
	mov	byte ptr [rsp + 4], sil
	mov	edx, 1
	jmp	.LBB87_77
.LBB87_72:                              #   in Loop: Header=BB87_69 Depth=1
	mov	eax, esi
	and	al, 63
	or	al, -128
	mov	ecx, esi
	shr	ecx, 6
	cmp	esi, 2048
	jae	.LBB87_74
# %bb.73:                               #   in Loop: Header=BB87_69 Depth=1
	or	cl, -64
	mov	byte ptr [rsp + 4], cl
	mov	byte ptr [rsp + 5], al
	mov	edx, 2
	jmp	.LBB87_77
.LBB87_74:                              #   in Loop: Header=BB87_69 Depth=1
	and	cl, 63
	or	cl, -128
	mov	edx, esi
	shr	edx, 12
	cmp	esi, 65535
	ja	.LBB87_76
# %bb.75:                               #   in Loop: Header=BB87_69 Depth=1
	or	dl, -32
	mov	byte ptr [rsp + 4], dl
	mov	byte ptr [rsp + 5], cl
	mov	byte ptr [rsp + 6], al
	mov	edx, 3
	jmp	.LBB87_77
.LBB87_76:                              #   in Loop: Header=BB87_69 Depth=1
	and	dl, 63
	or	dl, -128
	shr	esi, 18
	or	sil, -16
	mov	byte ptr [rsp + 4], sil
	mov	byte ptr [rsp + 5], dl
	mov	byte ptr [rsp + 6], cl
	mov	byte ptr [rsp + 7], al
	mov	edx, 4
.LBB87_77:                              #   in Loop: Header=BB87_69 Depth=1
	mov	rdi, r13
	mov	rsi, r12
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB87_68
.LBB87_80:
	mov	bl, 1
	jmp	.LBB87_64
.LBB87_79:
	xor	ebx, ebx
	jmp	.LBB87_64
.LBB87_81:
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.15]
	mov	esi, 128
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end87:
	.size	_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt, .Lfunc_end87-_RNvXs0_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_5IdentNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_endproc
                                        # -- End function
