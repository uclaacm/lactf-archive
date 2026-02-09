	.section	.text._RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle
	.type	_RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle,@function
_RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle: # @_RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle
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
	sub	rsp, 168
	.cfi_def_cfa_offset 224
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r12, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 128], rdi      # 8-byte Spill
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.34]
	lea	rdi, [rsp + 24]
	mov	r8d, 6
	call	_RNvMsu_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcher3new
	cmp	byte ptr [rsp + 24], 0
	je	.LBB176_18
# %bb.1:
	mov	qword ptr [rsp + 8], r14        # 8-byte Spill
	mov	r11, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 96]
	mov	rax, qword ptr [rsp + 120]
	lea	r9, [rax - 1]
	mov	rsi, qword ptr [rsp + 104]
	mov	r10, qword ptr [rsp + 112]
	cmp	r11, -1
	je	.LBB176_23
# %bb.2:
	mov	rcx, qword ptr [rsp + 64]
	lea	rdi, [rcx + r9]
	cmp	rdi, rsi
	jae	.LBB176_39
# %bb.3:
	mov	r15, qword ptr [rsp + 56]
	mov	r14, qword ptr [rsp + 32]
	mov	r8, qword ptr [rsp + 48]
	mov	rbx, rax
	mov	qword ptr [rsp + 16], r8        # 8-byte Spill
	sub	rbx, r8
	mov	qword ptr [rsp + 136], rbx      # 8-byte Spill
	jmp	.LBB176_4
.LBB176_18:
	lea	r15, [rsp + 144]
	lea	r13, [rsp + 24]
	.p2align	4
.LBB176_19:                             # =>This Inner Loop Header: Depth=1
	mov	rdi, r15
	mov	rsi, r13
	call	_RNvXsv_NtNtCsfQL5qMWGko6_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next
	mov	rax, qword ptr [rsp + 144]
	cmp	rax, 1
	je	.LBB176_19
# %bb.20:
	test	rax, rax
	jne	.LBB176_22
# %bb.21:
	mov	rcx, qword ptr [rsp + 152]
	jmp	.LBB176_63
	.p2align	4
.LBB176_10:                             #   in Loop: Header=BB176_4 Depth=1
	add	rcx, rax
.LBB176_11:                             #   in Loop: Header=BB176_4 Depth=1
	xor	r11d, r11d
	lea	rdi, [rcx + r9]
	cmp	rdi, rsi
	jae	.LBB176_39
.LBB176_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB176_6 Depth 2
                                        #     Child Loop BB176_13 Depth 2
	movzx	edi, byte ptr [rdx + rdi]
	bt	r15, rdi
	jae	.LBB176_10
# %bb.5:                                #   in Loop: Header=BB176_4 Depth=1
	cmp	r11, r14
	mov	r13, r14
	cmova	r13, r11
	lea	r8, [rdx + rcx]
	mov	rdi, r13
	.p2align	4
.LBB176_6:                              #   Parent Loop BB176_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rdi, rax
	jae	.LBB176_12
# %bb.7:                                #   in Loop: Header=BB176_6 Depth=2
	mov	rbp, rdi
	add	rdi, rcx
	cmp	rdi, rsi
	jae	.LBB176_176
# %bb.8:                                #   in Loop: Header=BB176_6 Depth=2
	lea	rdi, [rbp + 1]
	movzx	ebx, byte ptr [r10 + rbp]
	cmp	bl, byte ptr [r8 + rbp]
	je	.LBB176_6
# %bb.9:                                #   in Loop: Header=BB176_4 Depth=1
	sub	rcx, r14
	add	rcx, rbp
	inc	rcx
	jmp	.LBB176_11
	.p2align	4
.LBB176_12:                             #   in Loop: Header=BB176_4 Depth=1
	mov	rdi, r14
	.p2align	4
.LBB176_13:                             #   Parent Loop BB176_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r11, rdi
	jae	.LBB176_62
# %bb.14:                               #   in Loop: Header=BB176_13 Depth=2
	dec	rdi
	cmp	rdi, rax
	jae	.LBB176_174
# %bb.15:                               #   in Loop: Header=BB176_13 Depth=2
	lea	r8, [rdi + rcx]
	cmp	r8, rsi
	jae	.LBB176_177
# %bb.16:                               #   in Loop: Header=BB176_13 Depth=2
	movzx	ebp, byte ptr [r10 + rdi]
	cmp	bpl, byte ptr [rdx + r8]
	je	.LBB176_13
# %bb.17:                               #   in Loop: Header=BB176_4 Depth=1
	add	rcx, qword ptr [rsp + 16]       # 8-byte Folded Reload
	mov	r11, qword ptr [rsp + 136]      # 8-byte Reload
	lea	rdi, [rcx + r9]
	cmp	rdi, rsi
	jb	.LBB176_4
	jmp	.LBB176_39
.LBB176_22:
	mov	qword ptr [rsp + 8], r14        # 8-byte Spill
	jmp	.LBB176_39
.LBB176_23:
	mov	rcx, qword ptr [rsp + 64]
	lea	r8, [rcx + r9]
	cmp	r8, rsi
	jae	.LBB176_39
# %bb.24:
	mov	r14, qword ptr [rsp + 56]
	mov	r15, qword ptr [rsp + 32]
	mov	rdi, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 16], rdi       # 8-byte Spill
	lea	rdi, [r15 - 1]
	lea	r13, [r10 + r15]
	dec	r13
	jmp	.LBB176_27
.LBB176_25:                             #   in Loop: Header=BB176_27 Depth=1
	add	rcx, rax
.LBB176_26:                             #   in Loop: Header=BB176_27 Depth=1
	lea	r8, [rcx + r9]
	cmp	r8, rsi
	jae	.LBB176_39
.LBB176_27:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB176_29 Depth 2
                                        #     Child Loop BB176_35 Depth 2
	movzx	r8d, byte ptr [rdx + r8]
	bt	r14, r8
	jae	.LBB176_25
# %bb.28:                               #   in Loop: Header=BB176_27 Depth=1
	lea	r8, [rdx + rcx]
	mov	rbp, r15
	.p2align	4
.LBB176_29:                             #   Parent Loop BB176_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rbp, rax
	jae	.LBB176_33
# %bb.30:                               #   in Loop: Header=BB176_29 Depth=2
	mov	r11, rbp
	lea	rbx, [rcx + rbp]
	cmp	rbx, rsi
	jae	.LBB176_178
# %bb.31:                               #   in Loop: Header=BB176_29 Depth=2
	lea	rbp, [r11 + 1]
	movzx	ebx, byte ptr [r10 + r11]
	cmp	bl, byte ptr [r8 + r11]
	je	.LBB176_29
# %bb.32:                               #   in Loop: Header=BB176_27 Depth=1
	sub	rcx, r15
	add	rcx, r11
	inc	rcx
	jmp	.LBB176_26
.LBB176_33:                             #   in Loop: Header=BB176_27 Depth=1
	cmp	rdi, rax
	jae	.LBB176_173
# %bb.34:                               #   in Loop: Header=BB176_27 Depth=1
	lea	r8, [rdi + rcx]
	mov	rbp, r13
	mov	r11, r15
	.p2align	4
.LBB176_35:                             #   Parent Loop BB176_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub	r11, 1
	jb	.LBB176_62
# %bb.36:                               #   in Loop: Header=BB176_35 Depth=2
	cmp	r8, rsi
	jae	.LBB176_177
# %bb.37:                               #   in Loop: Header=BB176_35 Depth=2
	movzx	ebx, byte ptr [rbp]
	dec	rbp
	cmp	bl, byte ptr [rdx + r8]
	lea	r8, [r8 - 1]
	je	.LBB176_35
# %bb.38:                               #   in Loop: Header=BB176_27 Depth=1
	add	rcx, qword ptr [rsp + 16]       # 8-byte Folded Reload
	jmp	.LBB176_26
.LBB176_39:
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
.LBB176_40:
	cmp	r12, 3
	jae	.LBB176_44
# %bb.41:
	mov	ebp, 2
	cmp	r12, 2
	jne	.LBB176_172
# %bb.42:
	cmp	word ptr [r14], 20058
	jne	.LBB176_104
# %bb.43:
	mov	r13, -2
	mov	r15d, 2
	mov	esi, 2
	jmp	.LBB176_56
.LBB176_44:
	movzx	eax, word ptr [r14]
	xor	eax, 23135
	movzx	ecx, byte ptr [r14 + 2]
	xor	ecx, 78
	or	cx, ax
	je	.LBB176_49
# %bb.45:
	cmp	word ptr [r14], 20058
	je	.LBB176_52
# %bb.46:
	mov	r15d, 3
	cmp	r12, 3
	je	.LBB176_98
# %bb.47:
	cmp	dword ptr [r14], 1314545503
	je	.LBB176_89
# %bb.48:
	mov	r15, r12
	jmp	.LBB176_98
.LBB176_62:
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
.LBB176_63:
	mov	rdx, rcx
	add	rdx, 6
	je	.LBB176_68
# %bb.64:
	cmp	rdx, r12
	jae	.LBB176_67
# %bb.65:
	cmp	byte ptr [r14 + rdx], -65
	jg	.LBB176_68
.LBB176_66:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.36]
	mov	rdi, r14
	mov	rsi, r12
	mov	rcx, r12
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_49:
	mov	r13, -3
	mov	esi, 3
	cmp	r12, 3
	jne	.LBB176_54
# %bb.50:
	mov	r15d, 3
	jmp	.LBB176_56
.LBB176_67:
	jne	.LBB176_66
.LBB176_68:
	add	rdx, r14
	lea	rax, [r14 + r12]
	jmp	.LBB176_71
	.p2align	4
.LBB176_69:                             #   in Loop: Header=BB176_71 Depth=1
	inc	rdx
.LBB176_70:                             #   in Loop: Header=BB176_71 Depth=1
	lea	edi, [rsi - 58]
	cmp	edi, -10
	setb	dil
	add	esi, -71
	cmp	esi, -7
	setb	sil
	test	sil, dil
	jne	.LBB176_40
.LBB176_71:                             # =>This Inner Loop Header: Depth=1
	cmp	rdx, rax
	je	.LBB176_79
# %bb.72:                               #   in Loop: Header=BB176_71 Depth=1
	movzx	esi, byte ptr [rdx]
	test	sil, sil
	jns	.LBB176_69
# %bb.73:                               #   in Loop: Header=BB176_71 Depth=1
	mov	edi, esi
	and	edi, 31
	movzx	r9d, byte ptr [rdx + 1]
	and	r9d, 63
	cmp	sil, -33
	jbe	.LBB176_77
# %bb.74:                               #   in Loop: Header=BB176_71 Depth=1
	movzx	r8d, byte ptr [rdx + 2]
	shl	r9d, 6
	and	r8d, 63
	or	r8d, r9d
	cmp	sil, -16
	jb	.LBB176_78
# %bb.75:                               #   in Loop: Header=BB176_71 Depth=1
	movzx	esi, byte ptr [rdx + 3]
	and	edi, 7
	shl	edi, 18
	shl	r8d, 6
	and	esi, 63
	or	esi, r8d
	or	esi, edi
	cmp	esi, 1114112
	je	.LBB176_79
# %bb.76:                               #   in Loop: Header=BB176_71 Depth=1
	add	rdx, 4
	jmp	.LBB176_70
.LBB176_77:                             #   in Loop: Header=BB176_71 Depth=1
	add	rdx, 2
	shl	edi, 6
	or	edi, r9d
	mov	esi, edi
	jmp	.LBB176_70
.LBB176_78:                             #   in Loop: Header=BB176_71 Depth=1
	add	rdx, 3
	shl	edi, 12
	or	r8d, edi
	mov	esi, r8d
	jmp	.LBB176_70
.LBB176_79:
	test	rcx, rcx
	je	.LBB176_83
# %bb.80:
	cmp	rcx, r12
	jae	.LBB176_84
# %bb.81:
	cmp	byte ptr [r14 + rcx], -65
	jle	.LBB176_85
# %bb.82:
	mov	r12, rcx
	jmp	.LBB176_40
.LBB176_52:
	cmp	byte ptr [r14 + 2], -65
	jle	.LBB176_181
# %bb.53:
	mov	esi, 2
	mov	r13, -2
	jmp	.LBB176_55
.LBB176_83:
	mov	ebp, 2
	jmp	.LBB176_172
.LBB176_54:
	cmp	byte ptr [r14 + 3], -65
	jle	.LBB176_182
.LBB176_55:
	mov	r15, r12
.LBB176_56:
	add	r13, r15
	add	rsi, r14
	lea	rcx, [rsi + r13]
	xor	eax, eax
	.p2align	4
.LBB176_57:                             # =>This Inner Loop Header: Depth=1
	cmp	r13, rax
	je	.LBB176_59
# %bb.58:                               #   in Loop: Header=BB176_57 Depth=1
	cmp	byte ptr [rsi + rax], 0
	lea	rax, [rax + 1]
	jns	.LBB176_57
	jmp	.LBB176_97
.LBB176_59:
	test	r13, r13
	je	.LBB176_97
# %bb.60:
	movzx	edx, byte ptr [rsi]
	test	dl, dl
	js	.LBB176_86
# %bb.61:
	lea	rdi, [rsi + 1]
	jmp	.LBB176_95
.LBB176_84:
	je	.LBB176_40
.LBB176_85:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.37]
	mov	rdi, r14
	mov	rsi, r12
	xor	edx, edx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_86:
	mov	eax, edx
	and	eax, 31
	movzx	r9d, byte ptr [rsi + 1]
	and	r9d, 63
	cmp	dl, -33
	jbe	.LBB176_92
# %bb.87:
	movzx	r8d, byte ptr [rsi + 2]
	shl	r9d, 6
	and	r8d, 63
	or	r8d, r9d
	cmp	dl, -16
	jb	.LBB176_94
# %bb.88:
	lea	rdi, [rsi + 4]
	movzx	edx, byte ptr [rsi + 3]
	and	eax, 7
	shl	eax, 18
	shl	r8d, 6
	and	edx, 63
	or	edx, r8d
	or	edx, eax
	jmp	.LBB176_95
.LBB176_89:
	mov	r13, -4
	mov	esi, 4
	cmp	r12, 5
	jb	.LBB176_93
# %bb.90:
	cmp	byte ptr [r14 + 4], -65
	jg	.LBB176_55
# %bb.184:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.115]
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r12
	mov	rcx, r12
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_92:
	lea	rdi, [rsi + 2]
	shl	eax, 6
	or	eax, r9d
	mov	edx, eax
	jmp	.LBB176_95
.LBB176_93:
	mov	r15d, 4
	jmp	.LBB176_56
.LBB176_94:
	lea	rdi, [rsi + 3]
	shl	eax, 12
	or	r8d, eax
	mov	edx, r8d
.LBB176_95:
	cmp	edx, 69
	je	.LBB176_123
# %bb.96:
	cmp	edx, 1114112
	jne	.LBB176_127
.LBB176_97:
	cmp	r15, 3
	jb	.LBB176_104
.LBB176_98:
	cmp	word ptr [r14], 21087
	je	.LBB176_107
# %bb.99:
	cmp	byte ptr [r14], 82
	je	.LBB176_105
# %bb.100:
	mov	ebp, 2
	cmp	r15, 3
	je	.LBB176_172
# %bb.101:
	movzx	eax, word ptr [r14]
	xor	eax, 24415
	movzx	ecx, byte ptr [r14 + 2]
	xor	ecx, 82
	or	cx, ax
	jne	.LBB176_172
# %bb.102:
	movzx	eax, byte ptr [r14 + 3]
	cmp	al, -65
	jle	.LBB176_183
# %bb.103:
	lea	r13, [r14 + 3]
	mov	r12, -3
	add	al, -65
	mov	ebp, 2
	cmp	al, 25
	jbe	.LBB176_109
	jmp	.LBB176_172
.LBB176_104:
	mov	r15d, 2
	cmp	byte ptr [r14], 82
	mov	ebp, 2
	jne	.LBB176_172
.LBB176_105:
	movzx	eax, byte ptr [r14 + 1]
	cmp	al, -65
	jle	.LBB176_179
# %bb.106:
	lea	r13, [r14 + 1]
	mov	r12, -1
	add	al, -65
	mov	ebp, 2
	cmp	al, 25
	jbe	.LBB176_109
	jmp	.LBB176_172
.LBB176_107:
	movzx	eax, byte ptr [r14 + 2]
	cmp	al, -65
	jle	.LBB176_180
# %bb.108:
	lea	r13, [r14 + 2]
	mov	r12, -2
	add	al, -65
	mov	ebp, 2
	cmp	al, 25
	ja	.LBB176_172
.LBB176_109:
	add	r12, r15
	xor	eax, eax
	.p2align	4
.LBB176_110:                            # =>This Inner Loop Header: Depth=1
	cmp	r12, rax
	je	.LBB176_112
# %bb.111:                              #   in Loop: Header=BB176_110 Depth=1
	cmp	byte ptr [r13 + rax], 0
	lea	rax, [rax + 1]
	jns	.LBB176_110
	jmp	.LBB176_172
.LBB176_112:
	mov	qword ptr [rsp + 24], r13
	mov	qword ptr [rsp + 32], r12
	mov	qword ptr [rsp + 40], 0
	mov	dword ptr [rsp + 48], 0
	mov	qword ptr [rsp + 56], 0
	mov	dword ptr [rsp + 64], 0
	lea	rdi, [rsp + 24]
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
	test	al, al
	jne	.LBB176_175
# %bb.113:
	mov	rdi, qword ptr [rsp + 24]
	test	rdi, rdi
	je	.LBB176_172
# %bb.114:
	movzx	eax, byte ptr [rsp + 32]
	movzx	ecx, byte ptr [rsp + 39]
	shl	ecx, 16
	movzx	edx, word ptr [rsp + 37]
	or	edx, ecx
	shl	rdx, 32
	mov	ecx, dword ptr [rsp + 33]
	or	rcx, rdx
	mov	rdx, qword ptr [rsp + 40]
	shl	rcx, 8
	or	rcx, rax
	cmp	rdx, rcx
	jae	.LBB176_119
# %bb.115:
	movzx	eax, byte ptr [rdi + rdx]
	add	al, -65
	cmp	al, 26
	jae	.LBB176_119
# %bb.116:
	movsd	xmm0, qword ptr [rsp + 48]      # xmm0 = mem[0],zero
	mov	qword ptr [rsp + 24], rdi
	mov	qword ptr [rsp + 32], rcx
	mov	qword ptr [rsp + 40], rdx
	movlps	qword ptr [rsp + 48], xmm0
	mov	qword ptr [rsp + 56], 0
	mov	dword ptr [rsp + 64], 0
	lea	rdi, [rsp + 24]
	xor	esi, esi
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
	test	al, al
	jne	.LBB176_175
# %bb.117:
	mov	rdi, qword ptr [rsp + 24]
	test	rdi, rdi
	je	.LBB176_172
# %bb.118:
	mov	rcx, qword ptr [rsp + 32]
	mov	rdx, qword ptr [rsp + 40]
.LBB176_119:
	test	rdx, rdx
	je	.LBB176_155
# %bb.120:
	cmp	rcx, rdx
	jbe	.LBB176_154
# %bb.121:
	cmp	byte ptr [rdi + rdx], -65
	jg	.LBB176_155
.LBB176_122:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.109]
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_123:
	xor	r12d, r12d
.LBB176_124:
	sub	rcx, rdi
	test	rcx, rcx
	jne	.LBB176_156
.LBB176_125:
	xor	ecx, ecx
.LBB176_126:
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	mov	qword ptr [rax + 8], rsi
	mov	qword ptr [rax + 16], r13
	mov	qword ptr [rax + 24], r12
	mov	qword ptr [rax + 32], r14
	mov	qword ptr [rax + 40], r15
	mov	qword ptr [rax + 48], rdi
	mov	qword ptr [rax + 56], rcx
	mov	ebp, 1
	jmp	.LBB176_172
.LBB176_127:
	xor	r12d, r12d
	mov	r8d, 10
.LBB176_128:                            # =>This Loop Header: Depth=1
                                        #     Child Loop BB176_132 Depth 2
                                        #     Child Loop BB176_146 Depth 2
	lea	eax, [rdx - 48]
	cmp	eax, 9
	ja	.LBB176_97
# %bb.129:                              #   in Loop: Header=BB176_128 Depth=1
	xor	eax, eax
	jmp	.LBB176_132
	.p2align	4
.LBB176_130:                            #   in Loop: Header=BB176_132 Depth=2
	inc	rdi
.LBB176_131:                            #   in Loop: Header=BB176_132 Depth=2
	cmp	edx, 1114112
	je	.LBB176_97
.LBB176_132:                            #   Parent Loop BB176_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r9d, [rdx - 48]
	cmp	r9d, 10
	jae	.LBB176_142
# %bb.133:                              #   in Loop: Header=BB176_132 Depth=2
	mul	r8
	mov	rdx, rax
	mov	eax, r9d
	seto	r9b
	add	rax, rdx
	setb	dl
	test	r9b, r9b
	jne	.LBB176_97
# %bb.134:                              #   in Loop: Header=BB176_132 Depth=2
	test	dl, dl
	jne	.LBB176_97
# %bb.135:                              #   in Loop: Header=BB176_132 Depth=2
	cmp	rdi, rcx
	je	.LBB176_97
# %bb.136:                              #   in Loop: Header=BB176_132 Depth=2
	movzx	edx, byte ptr [rdi]
	test	dl, dl
	jns	.LBB176_130
# %bb.137:                              #   in Loop: Header=BB176_132 Depth=2
	mov	r9d, edx
	and	r9d, 31
	movzx	r11d, byte ptr [rdi + 1]
	and	r11d, 63
	cmp	dl, -33
	jbe	.LBB176_140
# %bb.138:                              #   in Loop: Header=BB176_132 Depth=2
	movzx	r10d, byte ptr [rdi + 2]
	shl	r11d, 6
	and	r10d, 63
	or	r10d, r11d
	cmp	dl, -16
	jb	.LBB176_141
# %bb.139:                              #   in Loop: Header=BB176_132 Depth=2
	movzx	edx, byte ptr [rdi + 3]
	add	rdi, 4
	and	r9d, 7
	shl	r9d, 18
	shl	r10d, 6
	and	edx, 63
	or	edx, r10d
	or	edx, r9d
	jmp	.LBB176_131
.LBB176_140:                            #   in Loop: Header=BB176_132 Depth=2
	add	rdi, 2
	shl	r9d, 6
	or	r9d, r11d
	mov	edx, r9d
	jmp	.LBB176_131
.LBB176_141:                            #   in Loop: Header=BB176_132 Depth=2
	add	rdi, 3
	shl	r9d, 12
	or	r10d, r9d
	mov	edx, r10d
	jmp	.LBB176_131
.LBB176_142:                            #   in Loop: Header=BB176_128 Depth=1
	test	rax, rax
	jne	.LBB176_146
.LBB176_143:                            #   in Loop: Header=BB176_128 Depth=1
	inc	r12
	cmp	edx, 69
	jne	.LBB176_128
	jmp	.LBB176_124
.LBB176_144:                            #   in Loop: Header=BB176_146 Depth=2
	inc	rdi
.LBB176_145:                            #   in Loop: Header=BB176_146 Depth=2
	dec	rax
	je	.LBB176_143
.LBB176_146:                            #   Parent Loop BB176_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rdi, rcx
	je	.LBB176_97
# %bb.147:                              #   in Loop: Header=BB176_146 Depth=2
	movzx	edx, byte ptr [rdi]
	test	dl, dl
	jns	.LBB176_144
# %bb.148:                              #   in Loop: Header=BB176_146 Depth=2
	mov	r9d, edx
	and	r9d, 31
	movzx	r11d, byte ptr [rdi + 1]
	and	r11d, 63
	cmp	dl, -33
	jbe	.LBB176_152
# %bb.149:                              #   in Loop: Header=BB176_146 Depth=2
	movzx	r10d, byte ptr [rdi + 2]
	shl	r11d, 6
	and	r10d, 63
	or	r10d, r11d
	cmp	dl, -16
	jb	.LBB176_153
# %bb.150:                              #   in Loop: Header=BB176_146 Depth=2
	movzx	edx, byte ptr [rdi + 3]
	and	r9d, 7
	shl	r9d, 18
	shl	r10d, 6
	and	edx, 63
	or	edx, r10d
	or	edx, r9d
	cmp	edx, 1114112
	je	.LBB176_97
# %bb.151:                              #   in Loop: Header=BB176_146 Depth=2
	add	rdi, 4
	jmp	.LBB176_145
.LBB176_152:                            #   in Loop: Header=BB176_146 Depth=2
	add	rdi, 2
	shl	r9d, 6
	or	r9d, r11d
	mov	edx, r9d
	jmp	.LBB176_145
.LBB176_153:                            #   in Loop: Header=BB176_146 Depth=2
	add	rdi, 3
	shl	r9d, 12
	or	r10d, r9d
	mov	edx, r10d
	jmp	.LBB176_145
.LBB176_154:
	jne	.LBB176_122
.LBB176_155:
	add	rdi, rdx
	sub	rcx, rdx
	xor	esi, esi
	test	rcx, rcx
	je	.LBB176_125
.LBB176_156:
	mov	ebp, 2
	cmp	byte ptr [rdi], 46
	jne	.LBB176_172
# %bb.157:
	lea	rax, [rdi + rcx]
	mov	r9b, 46
	movabs	rdx, 541165879423
	mov	r8, rdi
	test	r9b, r9b
	jns	.LBB176_158
	.p2align	4
.LBB176_159:
	mov	rbx, r14
	mov	r10d, r9d
	and	r10b, 31
	movzx	r10d, r10b
	movzx	r14d, byte ptr [r8 + 1]
	and	r14d, 63
	cmp	r9b, -33
	jbe	.LBB176_163
# %bb.160:
	movzx	r11d, byte ptr [r8 + 2]
	shl	r14d, 6
	and	r11d, 63
	or	r11d, r14d
	cmp	r9b, -16
	jb	.LBB176_164
# %bb.161:
	movzx	r9d, byte ptr [r8 + 3]
	and	r10d, 7
	shl	r10d, 18
	shl	r11d, 6
	and	r9d, 63
	or	r9d, r11d
	or	r9d, r10d
	cmp	r9d, 1114112
	mov	r14, rbx
	je	.LBB176_126
# %bb.162:
	add	r8, 4
	jmp	.LBB176_166
.LBB176_163:
	add	r8, 2
	shl	r10d, 6
	or	r10d, r14d
	mov	r9d, r10d
	jmp	.LBB176_165
.LBB176_164:
	add	r8, 3
	shl	r10d, 12
	or	r11d, r10d
	mov	r9d, r11d
.LBB176_165:
	mov	r14, rbx
	jmp	.LBB176_166
	.p2align	4
.LBB176_158:
	inc	r8
	movzx	r9d, r9b
.LBB176_166:
	mov	r10d, r9d
	and	r10d, 2097119
	add	r10d, -65
	cmp	r10d, 26
	setb	r10b
	lea	r11d, [r9 - 48]
	cmp	r11d, 10
	setb	r11b
	lea	ebx, [r9 - 33]
	cmp	ebx, 15
	setb	bl
	or	bl, r11b
	or	bl, r10b
	jne	.LBB176_169
# %bb.167:
	lea	r10d, [r9 - 58]
	cmp	r10d, 38
	ja	.LBB176_171
# %bb.168:
	bt	rdx, r10
	jae	.LBB176_171
.LBB176_169:
	cmp	r8, rax
	je	.LBB176_126
# %bb.170:
	movzx	r9d, byte ptr [r8]
	test	r9b, r9b
	jns	.LBB176_158
	jmp	.LBB176_159
.LBB176_171:
	add	r9d, -127
	cmp	r9d, -4
	jae	.LBB176_169
.LBB176_172:
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	mov	qword ptr [rax], rbp
	add	rsp, 168
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
.LBB176_173:
	.cfi_def_cfa_offset 224
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
	je	.LBB176_63
.LBB176_174:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.42]
	mov	rsi, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB176_175:
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.3]
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.42]
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.108]
	lea	rdx, [rsp + 144]
	mov	esi, 61
	call	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
.LBB176_176:
	add	r13, rcx
	cmp	rsi, r13
	cmova	r13, rsi
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.44]
	mov	rdi, r13
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB176_177:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.43]
	mov	rdi, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB176_178:
	add	rcx, r15
	cmp	rsi, rcx
	cmova	rcx, rsi
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.44]
	mov	rdi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB176_179:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.106]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r15
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_180:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.107]
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r15
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_181:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.116]
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, r12
	mov	rcx, r12
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_182:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.117]
	mov	edx, 3
	mov	rdi, r14
	mov	rsi, r12
	mov	rcx, r12
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB176_183:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.105]
	mov	edx, 3
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r15
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end176:
	.size	_RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle, .Lfunc_end176-_RNvCsbho2wNjk0G0_14rustc_demangle12try_demangle
	.cfi_endproc
                                        # -- End function
