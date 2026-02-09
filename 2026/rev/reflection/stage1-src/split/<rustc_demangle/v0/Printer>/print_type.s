	.section	.text._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	.type	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type,@function
_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type: # @_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	test	rax, rax
	je	.LBB92_6
# %bb.1:
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 16]
	cmp	rsi, rdx
	jae	.LBB92_9
# %bb.2:
	movzx	r14d, byte ptr [rax + rsi]
	lea	rcx, [rsi + 1]
	mov	qword ptr [rbx + 16], rcx
	lea	edi, [r14 - 97]
	cmp	dil, 25
	ja	.LBB92_12
# %bb.3:
	movzx	r8d, dil
	mov	edi, 62716863
	bt	edi, r8d
	jae	.LBB92_12
# %bb.4:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_87
# %bb.5:
	shl	r8d, 3
	lea	rax, [rip + .Lswitch.table._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint.131]
	mov	rsi, qword ptr [r8 + rax]
	lea	rax, [rip + .Lswitch.table._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer16print_const_uint]
	mov	rdx, qword ptr [r8 + rax]
	jmp	.LBB92_8
.LBB92_6:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_87
# %bb.7:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.2]
	mov	edx, 1
.LBB92_8:
	add	rsp, 16
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB92_9:
	.cfi_def_cfa_offset 48
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_11
# %bb.10:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_11:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 0
	jmp	.LBB92_87
.LBB92_12:
	mov	edi, dword ptr [rbx + 24]
	inc	edi
	mov	dword ptr [rbx + 24], edi
	cmp	edi, 500
	jbe	.LBB92_16
# %bb.13:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_15
# %bb.14:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_15:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], 1
.LBB92_87:
	xor	ebp, ebp
.LBB92_88:
	mov	eax, ebp
	add	rsp, 16
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB92_16:
	.cfi_def_cfa_offset 48
	lea	edi, [r14 - 65]
	cmp	edi, 22
	ja	.LBB92_66
# %bb.17:
	lea	r8, [rip + .LJTI92_0]
	movsxd	rdi, dword ptr [r8 + 4*rdi]
	add	rdi, r8
	jmp	rdi
.LBB92_18:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_20
# %bb.19:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.49]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_20:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
# %bb.21:
	cmp	r14d, 65
	jne	.LBB92_25
# %bb.22:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_24
# %bb.23:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.65]
	mov	edx, 2
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB92_88
.LBB92_24:
	mov	rdi, rbx
	mov	esi, 1
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer11print_const
	test	al, al
	jne	.LBB92_88
.LBB92_25:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_85
# %bb.26:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.50]
	jmp	.LBB92_48
.LBB92_27:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_67
# %bb.28:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.63]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
# %bb.29:
	mov	rdi, qword ptr [rbx + 32]
	jmp	.LBB92_68
.LBB92_30:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_34
# %bb.31:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.60]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
# %bb.32:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.LBB92_77
# %bb.33:
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 16]
.LBB92_34:
	cmp	rcx, rdx
	jae	.LBB92_77
# %bb.35:
	cmp	byte ptr [rax + rcx], 76
	jne	.LBB92_77
# %bb.36:
	inc	rcx
	mov	qword ptr [rbx + 16], rcx
	mov	rdi, rsp
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62
	cmp	byte ptr [rsp], 0
	je	.LBB92_73
.LBB92_37:
	movzx	r14d, byte ptr [rsp + 1]
	mov	rdi, qword ptr [rbx + 32]
	test	r14b, r14b
	je	.LBB92_89
# %bb.38:
	test	rdi, rdi
	je	.LBB92_92
# %bb.39:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.1]
	mov	edx, 25
	jmp	.LBB92_91
.LBB92_40:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_42
# %bb.41:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.66]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_42:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer14print_sep_listNvB2_10print_typeEB8_
	mov	bpl, 1
	test	al, 1
	jne	.LBB92_88
# %bb.43:
	cmp	rdx, 1
	jne	.LBB92_46
# %bb.44:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_85
# %bb.45:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.67]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB92_88
.LBB92_46:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_85
# %bb.47:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.28]
.LBB92_48:
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	jmp	.LBB92_84
.LBB92_49:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
# %bb.50:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_52
# %bb.51:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.69]
	mov	edx, 4
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB92_88
.LBB92_52:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer9print_pat
	jmp	.LBB92_84
.LBB92_53:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer13print_backrefNvB2_10print_typeEB8_
	jmp	.LBB92_83
.LBB92_54:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_type0EB8_
	jmp	.LBB92_83
.LBB92_55:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_57
# %bb.56:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.68]
	mov	edx, 4
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_57:
	mov	rdi, rbx
	call	_RINvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB6_7Printer9in_binderNCNvB2_10print_types_0EB8_
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
# %bb.58:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.LBB92_71
# %bb.59:
	mov	rax, qword ptr [rbx + 16]
	cmp	rax, qword ptr [rbx + 8]
	jae	.LBB92_71
# %bb.60:
	cmp	byte ptr [rcx + rax], 76
	jne	.LBB92_71
# %bb.61:
	inc	rax
	mov	qword ptr [rbx + 16], rax
	mov	rdi, rsp
	mov	rsi, rbx
	call	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser10integer_62
	cmp	byte ptr [rsp], 0
	jne	.LBB92_37
# %bb.62:
	mov	r14, qword ptr [rsp + 8]
	test	r14, r14
	je	.LBB92_85
# %bb.63:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_65
# %bb.64:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.30]
	mov	edx, 3
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB92_88
.LBB92_65:
	mov	rdi, rbx
	mov	rsi, r14
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	jmp	.LBB92_84
.LBB92_66:
	mov	qword ptr [rbx + 16], rsi
	mov	rdi, rbx
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
	jmp	.LBB92_83
.LBB92_67:
	xor	edi, edi
.LBB92_68:
	cmp	r14d, 80
	jne	.LBB92_79
# %bb.69:
	test	rdi, rdi
	je	.LBB92_82
# %bb.70:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.64]
	mov	edx, 6
	jmp	.LBB92_81
.LBB92_71:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_11
# %bb.72:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB92_11
	jmp	.LBB92_88
.LBB92_73:
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	je	.LBB92_77
# %bb.74:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer25print_lifetime_from_index
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
# %bb.75:
	mov	rdi, qword ptr [rbx + 32]
	test	rdi, rdi
	je	.LBB92_77
# %bb.76:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.61]
	mov	edx, 1
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	jne	.LBB92_88
.LBB92_77:
	cmp	r14d, 82
	je	.LBB92_82
# %bb.78:
	mov	rdi, qword ptr [rbx + 32]
.LBB92_79:
	test	rdi, rdi
	je	.LBB92_82
# %bb.80:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.62]
	mov	edx, 4
.LBB92_81:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_82:
	mov	rdi, rbx
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
.LBB92_83:
	mov	bpl, 1
.LBB92_84:
	test	al, al
	jne	.LBB92_88
.LBB92_85:
	cmp	qword ptr [rbx], 0
	je	.LBB92_87
# %bb.86:
	dec	dword ptr [rbx + 24]
	jmp	.LBB92_87
.LBB92_89:
	test	rdi, rdi
	je	.LBB92_92
# %bb.90:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.0]
	mov	edx, 16
.LBB92_91:
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	mov	bpl, 1
	test	al, al
	jne	.LBB92_88
.LBB92_92:
	mov	qword ptr [rbx], 0
	mov	byte ptr [rbx + 8], r14b
	jmp	.LBB92_87
.Lfunc_end92:
	.size	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type, .Lfunc_end92-_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type
	.cfi_endproc
	.section	.rodata._RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_type,"a",@progbits
	.p2align	2, 0x0
.LJTI92_0:
	.long	.LBB92_18-.LJTI92_0
	.long	.LBB92_53-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_55-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_54-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_27-.LJTI92_0
	.long	.LBB92_27-.LJTI92_0
	.long	.LBB92_30-.LJTI92_0
	.long	.LBB92_30-.LJTI92_0
	.long	.LBB92_18-.LJTI92_0
	.long	.LBB92_40-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_66-.LJTI92_0
	.long	.LBB92_49-.LJTI92_0
                                        # -- End function
