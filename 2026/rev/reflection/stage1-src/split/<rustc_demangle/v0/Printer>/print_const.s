	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 24
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rcx, qword ptr [rdi]
	test	rcx, rcx
	je	.LBB95_35
# %bb.1:
	mov	rdi, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, rdi
	jae	.LBB95_42
# %bb.2:
	movzx	r14d, byte ptr [rcx + rax]
	lea	rdx, [rax + 1]
	mov	qword ptr [rbx + 16], rdx
	mov	r8d, dword ptr [rbx + 24]
	inc	r8d
	mov	dword ptr [rbx + 24], r8d
	cmp	r8d, 500
	jbe	.LBB95_6
# %bb.3:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_5
# %bb.4:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_5:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 1
	jmp	.LBB95_46
.LBB95_6:
	lea	r8d, [r14 - 65]
	cmp	r8d, 56
	ja	.LBB95_42
# %bb.7:
	lea	r9, [rip + .LJTI95_0]
	movsxd	r8, dword ptr [r9 + 4*r8]
	add	r8, r9
	jmp	r8
.LBB95_8:
	cmp	rdx, rdi
	jae	.LBB95_12
# %bb.9:
	cmp	byte ptr [rcx + rdx], 110
	jne	.LBB95_12
# %bb.10:
	add	rax, 2
	mov	qword ptr [rbx + 16], rax
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_12
# %bb.11:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.26]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_12:
	mov	rdi, rbx
	mov	esi, r14d
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint
.LBB95_13:
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_14:
	cmp	qword ptr [rbx], 0
	je	.LBB95_46
# %bb.15:
	dec	dword ptr [rbx + 24]
	jmp	.LBB95_46
.LBB95_16:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.LBB95_91
# %bb.17:
	mov	rsi, qword ptr [rsp + 16]
	call	_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint
	test	al, 1
	je	.LBB95_42
# %bb.18:
	test	rdx, rdx
	je	.LBB95_98
# %bb.19:
	cmp	rdx, 1
	jne	.LBB95_42
# %bb.20:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_14
# %bb.21:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.72]
	mov	edx, 4
	jmp	.LBB95_90
.LBB95_22:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_14
# %bb.23:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.70]
	jmp	.LBB95_89
.LBB95_24:
	mov	r15d, esi
	test	sil, sil
	jne	.LBB95_27
# %bb.25:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_27
# %bb.26:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.73]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_27:
	mov	rdi, rbx
	mov	esi, 1
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
# %bb.28:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.LBB95_35
# %bb.29:
	mov	rcx, qword ptr [rbx + 16]
	cmp	rcx, qword ptr [rbx + 8]
	jae	.LBB95_33
# %bb.30:
	movzx	eax, byte ptr [rax + rcx]
	inc	rcx
	mov	qword ptr [rbx + 16], rcx
	cmp	eax, 83
	je	.LBB95_106
# %bb.31:
	cmp	eax, 84
	je	.LBB95_100
# %bb.32:
	cmp	eax, 85
	je	.LBB95_86
.LBB95_33:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_45
# %bb.34:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	jmp	.LBB95_44
.LBB95_35:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_46
# %bb.36:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
	add	rsp, 24
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB95_38:
	.cfi_def_cfa_offset 64
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser11hex_nibbles
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.LBB95_91
# %bb.39:
	mov	rsi, qword ptr [rsp + 16]
	call	_RNvMs1_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_10HexNibbles14try_parse_uint
	mov	rcx, rdx
	shr	rcx, 32
	sete	cl
	and	cl, al
	mov	eax, edx
	xor	eax, 55296
	add	eax, -1114112
	cmp	eax, -1112064
	mov	esi, 1114112
	cmovae	esi, edx
	cmp	cl, 1
	jne	.LBB95_42
# %bb.40:
	cmp	esi, 1114112
	je	.LBB95_42
# %bb.41:
	mov	rdi, qword ptr [rbx + 32]
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer26print_quoted_escaped_charsINtNtNtNtCsfQL5qMWGko6_4core4iter7sources4once4OncecEEB8_
	jmp	.LBB95_13
.LBB95_42:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_45
# %bb.43:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
.LBB95_44:
	test	al, al
	jne	.LBB95_47
.LBB95_45:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
.LBB95_46:
	xor	ebp, ebp
.LBB95_47:
	mov	eax, ebp
	add	rsp, 24
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB95_48:
	.cfi_def_cfa_offset 64
	mov	r15d, esi
	test	sil, sil
	jne	.LBB95_51
# %bb.49:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_51
# %bb.50:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.73]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_51:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_53
# %bb.52:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.49]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_53:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts0_0EB8_
	mov	bpl, 1
	test	rax, rax
	jne	.LBB95_47
# %bb.54:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_86
# %bb.55:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.50]
	jmp	.LBB95_105
.LBB95_56:
	movzx	esi, sil
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNCNvB2_11print_consts4_0EB8_
	jmp	.LBB95_13
.LBB95_57:
	cmp	rdx, rdi
	jae	.LBB95_60
# %bb.58:
	cmp	byte ptr [rcx + rdx], 101
	jne	.LBB95_60
# %bb.59:
	add	rax, 2
	mov	qword ptr [rbx + 16], rax
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal
	jmp	.LBB95_13
.LBB95_60:
	mov	r15d, esi
	test	sil, sil
	jne	.LBB95_63
# %bb.61:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_63
# %bb.62:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.73]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_63:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_65
# %bb.64:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.60]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_65:
	cmp	r14d, 82
	je	.LBB95_68
# %bb.66:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_68
# %bb.67:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.62]
	mov	edx, 4
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_68:
	mov	rdi, rbx
	mov	esi, 1
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	jmp	.LBB95_84
.LBB95_69:
	mov	r15d, esi
	test	sil, sil
	jne	.LBB95_72
# %bb.70:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_72
# %bb.71:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.73]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_72:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_74
# %bb.73:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.66]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_74:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts1_0EB8_
	mov	bpl, 1
	test	al, 1
	jne	.LBB95_47
# %bb.75:
	cmp	rdx, 1
	jne	.LBB95_103
# %bb.76:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_86
# %bb.77:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.67]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB95_47
	jmp	.LBB95_103
.LBB95_78:
	mov	r15d, esi
	test	sil, sil
	jne	.LBB95_81
# %bb.79:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_81
# %bb.80:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.73]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_81:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_83
# %bb.82:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.63]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_83:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer23print_const_str_literal
.LBB95_84:
	mov	bpl, 1
.LBB95_85:
	test	al, al
	jne	.LBB95_47
.LBB95_86:
	test	r15b, r15b
	jne	.LBB95_14
# %bb.87:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_14
# %bb.88:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.33]
.LBB95_89:
	mov	edx, 1
.LBB95_90:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	jmp	.LBB95_13
.LBB95_91:
	movzx	r14d, byte ptr [rsp + 16]
	mov	rdi, qword ptr [rbx + 32]
	test	r14b, r14b
	je	.LBB95_94
# %bb.92:
	test	rdi, rdi
	je	.LBB95_97
# %bb.93:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	jmp	.LBB95_96
.LBB95_94:
	test	rdi, rdi
	je	.LBB95_97
# %bb.95:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
.LBB95_96:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB95_47
.LBB95_97:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], r14b
	jmp	.LBB95_46
.LBB95_98:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_14
# %bb.99:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.71]
	mov	edx, 5
	jmp	.LBB95_90
.LBB95_100:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_102
# %bb.101:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.66]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB95_47
.LBB95_102:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts0_0EB8_
	test	rax, rax
	jne	.LBB95_47
.LBB95_103:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_86
# %bb.104:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.28]
.LBB95_105:
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	jmp	.LBB95_85
.LBB95_106:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_108
# %bb.107:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.74]
	mov	edx, 3
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB95_47
.LBB95_108:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNCNvB2_11print_consts3_0EB8_
	test	rax, rax
	jne	.LBB95_47
# %bb.109:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB95_86
# %bb.110:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.75]
	mov	edx, 2
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	jmp	.LBB95_85
.Lfunc_end95:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const, .Lfunc_end95-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	.cfi_endproc
	.section	.rodata._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const,"a",@progbits
	.p2align	2, 0x0
.LJTI95_0:
	.long	.LBB95_48-.LJTI95_0
	.long	.LBB95_56-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_60-.LJTI95_0
	.long	.LBB95_57-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_69-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_24-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_8-.LJTI95_0
	.long	.LBB95_16-.LJTI95_0
	.long	.LBB95_38-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_78-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_12-.LJTI95_0
	.long	.LBB95_8-.LJTI95_0
	.long	.LBB95_12-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_8-.LJTI95_0
	.long	.LBB95_12-.LJTI95_0
	.long	.LBB95_8-.LJTI95_0
	.long	.LBB95_12-.LJTI95_0
	.long	.LBB95_22-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_8-.LJTI95_0
	.long	.LBB95_12-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_42-.LJTI95_0
	.long	.LBB95_8-.LJTI95_0
	.long	.LBB95_12-.LJTI95_0
                                        # -- End function
