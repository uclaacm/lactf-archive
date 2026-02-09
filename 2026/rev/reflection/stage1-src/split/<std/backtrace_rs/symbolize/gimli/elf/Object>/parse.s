	.section	.text._RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
	.type	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse,@function
_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse: # @_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception16
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
	sub	rsp, 136
	.cfi_def_cfa_offset 192
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	cmp	rdx, 64
	jae	.LBB140_1
.LBB140_75:
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
.LBB140_76:
	add	rsp, 136
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
.LBB140_1:
	.cfi_def_cfa_offset 192
	mov	r15, rsi
	cmp	dword ptr [rsi], 1179403647
	jne	.LBB140_75
# %bb.2:
	cmp	byte ptr [r15 + 4], 2
	jne	.LBB140_75
# %bb.3:
	movzx	eax, byte ptr [r15 + 5]
	lea	ecx, [rax - 1]
	cmp	cl, 1
	ja	.LBB140_75
# %bb.4:
	cmp	byte ptr [r15 + 6], 1
	jne	.LBB140_75
# %bb.5:
	cmp	al, 2
	je	.LBB140_75
# %bb.6:
	mov	r14, rdx
	mov	rsi, qword ptr [r15 + 40]
	mov	r13d, 1
	test	rsi, rsi
	je	.LBB140_7
# %bb.8:
	movzx	ebp, word ptr [r15 + 60]
	movzx	eax, word ptr [r15 + 58]
	test	rbp, rbp
	je	.LBB140_9
# %bb.13:
	cmp	ax, 64
	jne	.LBB140_75
# %bb.14:
	mov	rax, r14
	sub	rax, rsi
.LBB140_15:
	cmp	r14, rsi
	jb	.LBB140_75
# %bb.16:
	mov	rdi, rbp
	shl	rdi, 6
	cmp	rdi, rax
	ja	.LBB140_75
# %bb.17:
	lea	r11, [r15 + rsi]
	movzx	eax, word ptr [r15 + 62]
	cmp	eax, 65535
	jne	.LBB140_19
# %bb.18:
	mov	eax, dword ptr [r11 + 40]
.LBB140_19:
	test	eax, eax
	je	.LBB140_75
# %bb.20:
	mov	eax, eax
	cmp	rbp, rax
	jbe	.LBB140_75
# %bb.21:
	shl	rax, 6
	mov	qword ptr [rsp + 56], 0         # 8-byte Folded Spill
	cmp	dword ptr [r11 + rax + 4], 8
	mov	r12d, 0
	mov	ecx, 0
	je	.LBB140_23
# %bb.22:
	add	rax, r11
	mov	rcx, qword ptr [rax + 24]
	mov	r12, qword ptr [rax + 32]
	mov	qword ptr [rsp + 56], r15       # 8-byte Spill
	add	r12, rcx
	jb	.LBB140_75
.LBB140_23:
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	xor	r8d, r8d
	mov	rax, rdi
	mov	r10, r11
.LBB140_25:                             # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [r10 + 4], 2
	je	.LBB140_26
# %bb.24:                               #   in Loop: Header=BB140_25 Depth=1
	inc	r8
	add	r10, 64
	add	rax, -64
	jne	.LBB140_25
.LBB140_54:
	mov	rax, rdi
	mov	r9, r11
	xor	r8d, r8d
.LBB140_55:                             # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [r9 + 4], 11
	je	.LBB140_56
# %bb.51:                               #   in Loop: Header=BB140_55 Depth=1
	inc	r8
	add	r9, 64
	add	rax, -64
	jne	.LBB140_55
# %bb.52:
	mov	qword ptr [rsp + 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 40], rbp       # 8-byte Spill
	jmp	.LBB140_53
.LBB140_9:
	cmp	ax, 64
	jne	.LBB140_75
# %bb.10:
	mov	rax, r14
	sub	rax, rsi
	setb	cl
	cmp	rax, 64
	setb	dl
	or	dl, cl
	jne	.LBB140_75
# %bb.11:
	mov	rbp, qword ptr [r15 + rsi + 32]
	test	rbp, rbp
	je	.LBB140_7
# %bb.12:
	mov	rcx, rbp
	shr	rcx, 58
	je	.LBB140_15
	jmp	.LBB140_75
.LBB140_7:
	xor	r12d, r12d
	mov	qword ptr [rsp + 32], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 56], 0         # 8-byte Folded Spill
	mov	r11d, 1
	mov	qword ptr [rsp + 40], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 24], 0         # 8-byte Folded Spill
.LBB140_53:
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	xor	edx, edx
.LBB140_42:
	shl	rdx, 3
	lea	rax, [rdx + 2*rdx]
	lea	rbp, [rax + r13]
	mov	qword ptr [rsp + 48], r11       # 8-byte Spill
	mov	qword ptr [rsp + 120], r12      # 8-byte Spill
	.p2align	4
.LBB140_43:                             # =>This Inner Loop Header: Depth=1
	test	rax, rax
	je	.LBB140_44
# %bb.77:                               #   in Loop: Header=BB140_43 Depth=1
	mov	rcx, r13
	add	r13, 24
	movzx	edx, byte ptr [rcx + 4]
	and	dl, 15
	add	dl, -3
	add	rax, -24
	cmp	dl, -2
	jb	.LBB140_43
# %bb.78:                               #   in Loop: Header=BB140_43 Depth=1
	cmp	word ptr [rcx + 6], 0
	je	.LBB140_43
# %bb.79:
	movups	xmm0, xmmword ptr [r13 - 16]
	movaps	xmmword ptr [rsp + 96], xmm0    # 16-byte Spill
	mov	r12d, dword ptr [r13 - 24]
	mov	edi, 96
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB140_106
# %bb.80:
	movaps	xmm0, xmmword ptr [rsp + 96]    # 16-byte Reload
	movups	xmmword ptr [rax], xmm0
	mov	dword ptr [rax + 16], r12d
	mov	qword ptr [rsp + 64], 4
	mov	qword ptr [rsp + 72], rax
	mov	qword ptr [rsp + 80], 1
	mov	esi, 1
	lea	rdi, [rsp + 64]
	.p2align	4
.LBB140_81:                             # =>This Inner Loop Header: Depth=1
	cmp	r13, rbp
	je	.LBB140_92
# %bb.82:                               #   in Loop: Header=BB140_81 Depth=1
	mov	rcx, r13
	add	r13, 24
	movzx	edx, byte ptr [rcx + 4]
	and	dl, 15
	add	dl, -3
	cmp	dl, -2
	jb	.LBB140_81
# %bb.83:                               #   in Loop: Header=BB140_81 Depth=1
	cmp	word ptr [rcx + 6], 0
	je	.LBB140_81
# %bb.84:                               #   in Loop: Header=BB140_81 Depth=1
	movups	xmm0, xmmword ptr [r13 - 16]
	movaps	xmmword ptr [rsp + 96], xmm0    # 16-byte Spill
	mov	ecx, dword ptr [r13 - 24]
	mov	dword ptr [rsp + 132], ecx      # 4-byte Spill
	cmp	rsi, qword ptr [rsp + 64]
	jne	.LBB140_87
# %bb.85:                               #   in Loop: Header=BB140_81 Depth=1
.Ltmp382:
	mov	edx, 1
	mov	ecx, 8
	mov	r8d, 24
	mov	r12, rsi
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp383:
# %bb.86:                               #   in Loop: Header=BB140_81 Depth=1
	mov	rax, qword ptr [rsp + 72]
	lea	rdi, [rsp + 64]
	mov	rsi, r12
.LBB140_87:                             #   in Loop: Header=BB140_81 Depth=1
	lea	rcx, [rsi + 2*rsi]
	movaps	xmm0, xmmword ptr [rsp + 96]    # 16-byte Reload
	movups	xmmword ptr [rax + 8*rcx], xmm0
	mov	edx, dword ptr [rsp + 132]      # 4-byte Reload
	mov	dword ptr [rax + 8*rcx + 16], edx
	inc	rsi
	mov	qword ptr [rsp + 80], rsi
	jmp	.LBB140_81
.LBB140_44:
	mov	r13d, 8
	xor	ebp, ebp
	xor	esi, esi
	jmp	.LBB140_45
.LBB140_92:
	mov	rbp, qword ptr [rsp + 64]
	mov	r13, qword ptr [rsp + 72]
	cmp	rsi, 2
	jae	.LBB140_93
.LBB140_45:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
.LBB140_46:
	mov	qword ptr [rbx], rbp
	mov	qword ptr [rbx + 8], r13
	mov	qword ptr [rbx + 16], rsi
	mov	qword ptr [rbx + 24], r15
	mov	qword ptr [rbx + 32], r14
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	mov	qword ptr [rbx + 40], rax
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [rbx + 48], rax
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [rbx + 56], rax
	mov	qword ptr [rbx + 64], r14
	mov	qword ptr [rbx + 72], rcx
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [rbx + 80], rax
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rbx + 88], rax
	mov	qword ptr [rbx + 96], r14
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rbx + 104], rax
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rbx + 112], rax
	jmp	.LBB140_76
.LBB140_26:
	mov	qword ptr [rsp + 120], r12      # 8-byte Spill
	mov	qword ptr [rsp + 48], r11       # 8-byte Spill
	mov	rcx, qword ptr [r10 + 32]
	test	rcx, rcx
	je	.LBB140_27
# %bb.28:
	mov	rdx, qword ptr [r10 + 24]
	mov	rax, r14
	mov	qword ptr [rsp + 96], rdx       # 8-byte Spill
	sub	rax, rdx
	setb	dl
	cmp	rcx, rax
	seta	al
	or	al, dl
	jne	.LBB140_75
# %bb.29:
	add	qword ptr [rsp + 96], r15       # 8-byte Folded Spill
	jmp	.LBB140_30
.LBB140_56:
	mov	rcx, qword ptr [r9 + 32]
	test	rcx, rcx
	je	.LBB140_57
# %bb.58:
	mov	r13, qword ptr [r9 + 24]
	mov	rax, r14
	sub	rax, r13
	setb	dl
	cmp	rcx, rax
	seta	al
	or	al, dl
	jne	.LBB140_75
# %bb.59:
	add	r13, r15
	jmp	.LBB140_60
.LBB140_27:
	mov	eax, 1
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
.LBB140_30:
	movabs	rdx, -6148914691236517205
	mov	rax, rcx
	mul	rdx
	shr	rdx, 4
	lea	rax, [8*rdx]
	lea	rax, [rax + 2*rax]
	cmp	rcx, rax
	jne	.LBB140_75
# %bb.31:
	mov	eax, dword ptr [r10 + 40]
	test	rax, rax
	je	.LBB140_32
# %bb.33:
	cmp	rbp, rax
	jbe	.LBB140_75
# %bb.34:
	shl	rax, 6
	mov	r9, qword ptr [rsp + 48]        # 8-byte Reload
	cmp	dword ptr [r9 + rax + 4], 3
	jne	.LBB140_75
# %bb.35:
	add	rax, qword ptr [rsp + 48]       # 8-byte Folded Reload
	mov	r9, qword ptr [rax + 24]
	mov	r10, qword ptr [rax + 32]
	mov	qword ptr [rsp + 24], r15       # 8-byte Spill
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	add	r10, r9
	mov	qword ptr [rsp + 8], r10        # 8-byte Spill
	jae	.LBB140_36
	jmp	.LBB140_75
.LBB140_57:
	mov	r13d, 1
.LBB140_60:
	movabs	rdx, -6148914691236517205
	mov	rax, rcx
	mul	rdx
	shr	rdx, 4
	lea	rax, [8*rdx]
	lea	rax, [rax + 2*rax]
	cmp	rcx, rax
	jne	.LBB140_75
# %bb.61:
	mov	eax, dword ptr [r9 + 40]
	test	rax, rax
	je	.LBB140_62
# %bb.63:
	cmp	rbp, rax
	jbe	.LBB140_75
# %bb.64:
	shl	rax, 6
	cmp	dword ptr [r11 + rax + 4], 3
	jne	.LBB140_75
# %bb.65:
	add	rax, r11
	mov	rcx, qword ptr [rax + 24]
	mov	r9, qword ptr [rax + 32]
	mov	qword ptr [rsp + 24], r15       # 8-byte Spill
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	add	r9, rcx
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	jae	.LBB140_66
	jmp	.LBB140_75
.LBB140_32:
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
.LBB140_36:
	lea	rax, [rsi + r15]
	add	rax, 40
	xor	r10d, r10d
	jmp	.LBB140_37
.LBB140_39:                             #   in Loop: Header=BB140_37 Depth=1
	add	r10, 64
	cmp	rdi, r10
	je	.LBB140_40
.LBB140_37:                             # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rax + r10 - 36], 18
	jne	.LBB140_39
# %bb.38:                               #   in Loop: Header=BB140_37 Depth=1
	mov	r11d, dword ptr [rax + r10]
	cmp	r8, r11
	jne	.LBB140_39
# %bb.47:                               #   in Loop: Header=BB140_37 Depth=1
	mov	r11, qword ptr [rax + r10 - 8]
	test	r11, r11
	je	.LBB140_39
# %bb.48:                               #   in Loop: Header=BB140_37 Depth=1
	test	r11b, 3
	jne	.LBB140_75
# %bb.49:                               #   in Loop: Header=BB140_37 Depth=1
	mov	r12, qword ptr [rax + r10 - 16]
	cmp	r14, r12
	jb	.LBB140_75
# %bb.50:                               #   in Loop: Header=BB140_37 Depth=1
	mov	r9, rbp
	mov	rbp, r14
	sub	rbp, r12
	cmp	r11, rbp
	mov	rbp, r9
	jbe	.LBB140_39
	jmp	.LBB140_75
.LBB140_40:
	cmp	rcx, 23
	mov	r11, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r12, qword ptr [rsp + 120]      # 8-byte Reload
	jbe	.LBB140_54
# %bb.41:
	mov	qword ptr [rsp + 40], rbp       # 8-byte Spill
	mov	r13, qword ptr [rsp + 96]       # 8-byte Reload
	jmp	.LBB140_42
.LBB140_62:
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
.LBB140_66:
	lea	rax, [rsi + r15]
	add	rax, 40
	xor	ecx, ecx
	jmp	.LBB140_67
.LBB140_69:                             #   in Loop: Header=BB140_67 Depth=1
	add	rcx, 64
	cmp	rdi, rcx
	je	.LBB140_70
.LBB140_67:                             # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rax + rcx - 36], 18
	jne	.LBB140_69
# %bb.68:                               #   in Loop: Header=BB140_67 Depth=1
	mov	esi, dword ptr [rax + rcx]
	cmp	r8, rsi
	jne	.LBB140_69
# %bb.71:                               #   in Loop: Header=BB140_67 Depth=1
	mov	rsi, qword ptr [rax + rcx - 8]
	test	rsi, rsi
	je	.LBB140_69
# %bb.72:                               #   in Loop: Header=BB140_67 Depth=1
	test	sil, 3
	jne	.LBB140_75
# %bb.73:                               #   in Loop: Header=BB140_67 Depth=1
	mov	r9, qword ptr [rax + rcx - 16]
	cmp	r14, r9
	jb	.LBB140_75
# %bb.74:                               #   in Loop: Header=BB140_67 Depth=1
	mov	r10, r14
	sub	r10, r9
	cmp	rsi, r10
	jbe	.LBB140_69
	jmp	.LBB140_75
.LBB140_70:
	mov	qword ptr [rsp + 40], rbp       # 8-byte Spill
	jmp	.LBB140_42
.LBB140_93:
	mov	r12, rsi
	cmp	rsi, 21
	jae	.LBB140_94
# %bb.96:
	lea	rax, [r12 + 2*r12]
	lea	rax, [8*rax]
	add	rax, r13
	lea	rsi, [r13 + 24]
	mov	ecx, 24
	mov	rdi, r13
	jmp	.LBB140_97
.LBB140_100:                            #   in Loop: Header=BB140_97 Depth=1
	mov	rdi, r13
.LBB140_103:                            #   in Loop: Header=BB140_97 Depth=1
	mov	qword ptr [rdi], rsi
	movaps	xmm0, xmmword ptr [rsp + 64]
	movups	xmmword ptr [rdi + 8], xmm0
.LBB140_104:                            #   in Loop: Header=BB140_97 Depth=1
	lea	rsi, [rdx + 24]
	add	rcx, 24
	mov	rdi, rdx
	cmp	rsi, rax
	je	.LBB140_95
.LBB140_97:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB140_99 Depth 2
	mov	rdx, rsi
	mov	rsi, qword ptr [rdi + 24]
	cmp	rsi, qword ptr [rdi]
	jae	.LBB140_104
# %bb.98:                               #   in Loop: Header=BB140_97 Depth=1
	movups	xmm0, xmmword ptr [rdi + 32]
	movaps	xmmword ptr [rsp + 64], xmm0
	mov	r8, rcx
.LBB140_99:                             #   Parent Loop BB140_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdi, qword ptr [r13 + r8 - 8]
	mov	qword ptr [r13 + r8 + 16], rdi
	movups	xmm0, xmmword ptr [r13 + r8 - 24]
	movups	xmmword ptr [r13 + r8], xmm0
	cmp	r8, 24
	je	.LBB140_100
# %bb.101:                              #   in Loop: Header=BB140_99 Depth=2
	lea	rdi, [r8 - 24]
	cmp	rsi, qword ptr [r13 + r8 - 48]
	mov	r8, rdi
	jb	.LBB140_99
# %bb.102:                              #   in Loop: Header=BB140_97 Depth=1
	add	rdi, r13
	jmp	.LBB140_103
.LBB140_106:
	mov	edi, 96
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB140_94:
.Ltmp385:
	mov	rdi, r13
	mov	rsi, r12
	call	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf9ParsedSymNCINvMB6_SBT_20sort_unstable_by_keyyNCNvMs_BV_NtBV_6Object5parses1_0E0EB13_
.Ltmp386:
.LBB140_95:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	rsi, r12
	jmp	.LBB140_46
.LBB140_105:
.Ltmp387:
	mov	rbx, rax
	test	rbp, rbp
	jne	.LBB140_90
	jmp	.LBB140_91
.LBB140_88:
.Ltmp384:
	mov	rbx, rax
	cmp	qword ptr [rsp + 64], 0
	je	.LBB140_91
# %bb.89:
	mov	r13, qword ptr [rsp + 72]
.LBB140_90:
	mov	rdi, r13
	call	qword ptr [rip + free@GOTPCREL]
.LBB140_91:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end140:
	.size	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse, .Lfunc_end140-_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
	.cfi_endproc
	.section	.gcc_except_table._RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse,"a",@progbits
	.p2align	2, 0x0
GCC_except_table140:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp382-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin16        #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp385-.Ltmp383              #   Call between .Ltmp383 and .Ltmp385
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin16        #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Lfunc_end140-.Ltmp386         #   Call between .Ltmp386 and .Lfunc_end140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
                                        # -- End function
