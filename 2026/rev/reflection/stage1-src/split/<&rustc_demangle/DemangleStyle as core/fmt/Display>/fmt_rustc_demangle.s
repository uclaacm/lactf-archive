	.section	.text._RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_
	.type	_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_,@function
_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_: # @_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_
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
	sub	rsp, 104
	.cfi_def_cfa_offset 160
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rax, qword ptr [rdi]
	mov	r14, qword ptr [rax]
	test	r14, r14
	je	.LBB55_173
# %bb.1:
	mov	qword ptr [rsp], rsi            # 8-byte Spill
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	mov	r13, qword ptr [rax + 16]
	xor	r12d, r12d
	mov	qword ptr [rsp + 72], r13       # 8-byte Spill
	jmp	.LBB55_3
	.p2align	4
.LBB55_2:                               #   in Loop: Header=BB55_3 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rsi, r15
	mov	rdx, r13
	call	qword ptr [rax + 24]
	test	al, al
	mov	r13, qword ptr [rsp + 72]       # 8-byte Reload
	mov	r12, qword ptr [rsp + 16]       # 8-byte Reload
	jne	.LBB55_178
.LBB55_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_31 Depth 2
                                        #     Child Loop BB55_24 Depth 2
                                        #     Child Loop BB55_45 Depth 2
                                        #     Child Loop BB55_62 Depth 2
                                        #       Child Loop BB55_121 Depth 3
                                        #       Child Loop BB55_142 Depth 3
                                        #       Child Loop BB55_139 Depth 3
                                        #       Child Loop BB55_68 Depth 3
	mov	rsi, r12
	lea	rdi, [r12 + 1]
	cmp	r12, r13
	cmovb	r12, rdi
	jae	.LBB55_174
# %bb.4:                                #   in Loop: Header=BB55_3 Depth=1
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	mov	r15, qword ptr [rsp]            # 8-byte Reload
	je	.LBB55_189
# %bb.5:                                #   in Loop: Header=BB55_3 Depth=1
	movzx	r9d, byte ptr [r14]
	movzx	r10d, r9b
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rax, [rcx - 1]
	xor	edx, edx
	mov	r8d, r9d
	test	r8b, r8b
	jns	.LBB55_6
	jmp	.LBB55_7
	.p2align	4
.LBB55_15:                              #   in Loop: Header=BB55_3 Depth=1
	shl	r11d, 12
	or	ebp, r11d
	mov	ebx, ebp
	lea	rbp, [r14 + rdx]
	add	ebx, -48
	cmp	ebx, 10
	jb	.LBB55_12
	jmp	.LBB55_16
	.p2align	4
.LBB55_6:                               #   in Loop: Header=BB55_3 Depth=1
	movzx	ebx, r8b
	lea	rbp, [r14 + rdx]
	add	ebx, -48
	cmp	ebx, 10
	jae	.LBB55_16
.LBB55_12:                              #   in Loop: Header=BB55_3 Depth=1
	cmp	rax, rdx
	je	.LBB55_189
# %bb.13:                               #   in Loop: Header=BB55_3 Depth=1
	movzx	r8d, byte ptr [r14 + rdx + 1]
	cmp	r8b, -65
	jle	.LBB55_190
# %bb.14:                               #   in Loop: Header=BB55_3 Depth=1
	dec	rcx
	inc	rdx
	test	r8b, r8b
	jns	.LBB55_6
.LBB55_7:                               #   in Loop: Header=BB55_3 Depth=1
	mov	r11d, r8d
	and	r11b, 31
	movzx	r11d, r11b
	movzx	ebx, byte ptr [r14 + rdx + 1]
	and	ebx, 63
	cmp	r8b, -33
	jbe	.LBB55_10
# %bb.8:                                #   in Loop: Header=BB55_3 Depth=1
	movzx	ebp, byte ptr [r14 + rdx + 2]
	shl	ebx, 6
	and	ebp, 63
	or	ebp, ebx
	cmp	r8b, -16
	jb	.LBB55_15
# %bb.9:                                #   in Loop: Header=BB55_3 Depth=1
	movzx	ebx, byte ptr [r14 + rdx + 3]
	and	r11d, 7
	shl	r11d, 18
	shl	ebp, 6
	and	ebx, 63
	or	ebx, ebp
	or	ebx, r11d
	cmp	ebx, 1114112
	jne	.LBB55_11
	jmp	.LBB55_189
	.p2align	4
.LBB55_10:                              #   in Loop: Header=BB55_3 Depth=1
	shl	r11d, 6
	or	r11d, ebx
	mov	ebx, r11d
	.p2align	4
.LBB55_11:                              #   in Loop: Header=BB55_3 Depth=1
	lea	rbp, [r14 + rdx]
	add	ebx, -48
	cmp	ebx, 10
	jb	.LBB55_12
.LBB55_16:                              #   in Loop: Header=BB55_3 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	sub	rax, rcx
	je	.LBB55_193
# %bb.17:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	byte ptr [r14 + rax], -65
	jle	.LBB55_194
# %bb.18:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	rax, 1
	jne	.LBB55_21
# %bb.19:                               #   in Loop: Header=BB55_3 Depth=1
	mov	r11b, 1
	cmp	r10d, 43
	je	.LBB55_192
# %bb.20:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	r10d, 45
	je	.LBB55_192
.LBB55_21:                              #   in Loop: Header=BB55_3 Depth=1
	xor	r10d, r10d
	cmp	r9b, 43
	sete	r10b
	sub	rax, r10
	add	r14, r10
	mov	r9, r10
	neg	r9
	cmp	rax, 17
	jae	.LBB55_30
# %bb.22:                               #   in Loop: Header=BB55_3 Depth=1
	test	rax, rax
	je	.LBB55_35
# %bb.23:                               #   in Loop: Header=BB55_3 Depth=1
	add	r9, rdx
	xor	edx, edx
	xor	eax, eax
	.p2align	4
.LBB55_24:                              #   Parent Loop BB55_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r10d, byte ptr [r14 + rdx]
	add	r10d, -48
	cmp	r10d, 9
	ja	.LBB55_191
# %bb.25:                               #   in Loop: Header=BB55_24 Depth=2
	lea	rax, [rax + 4*rax]
	mov	r10d, r10d
	lea	rax, [r10 + 2*rax]
	inc	rdx
	cmp	r9, rdx
	jne	.LBB55_24
.LBB55_26:                              #   in Loop: Header=BB55_3 Depth=1
	test	rax, rax
	je	.LBB55_35
# %bb.27:                               #   in Loop: Header=BB55_3 Depth=1
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	jbe	.LBB55_36
# %bb.28:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	byte ptr [rbp + rax], -65
	jle	.LBB55_196
# %bb.29:                               #   in Loop: Header=BB55_3 Depth=1
	lea	r14, [rax + rbp]
	mov	rcx, rax
	cmp	rdi, r13
	je	.LBB55_38
	jmp	.LBB55_53
	.p2align	4
.LBB55_30:                              #   in Loop: Header=BB55_3 Depth=1
	add	r9, rdx
	xor	r10d, r10d
	xor	eax, eax
	.p2align	4
.LBB55_31:                              #   Parent Loop BB55_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r9, r10
	je	.LBB55_26
# %bb.32:                               #   in Loop: Header=BB55_31 Depth=2
	movzx	r11d, byte ptr [r14 + r10]
	add	r11d, -48
	cmp	r11d, 9
	ja	.LBB55_191
# %bb.33:                               #   in Loop: Header=BB55_31 Depth=2
	mov	edx, 10
	mul	rdx
	mov	rdx, rax
	mov	eax, r11d
	seto	bl
	add	rax, rdx
	setb	dl
	mov	r11b, 2
	test	bl, bl
	jne	.LBB55_192
# %bb.34:                               #   in Loop: Header=BB55_31 Depth=2
	inc	r10
	test	dl, dl
	je	.LBB55_31
	jmp	.LBB55_192
	.p2align	4
.LBB55_35:                              #   in Loop: Header=BB55_3 Depth=1
	mov	qword ptr [rsp + 16], r12       # 8-byte Spill
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	mov	r14, rbp
	test	rsi, rsi
	jne	.LBB55_54
	jmp	.LBB55_55
	.p2align	4
.LBB55_36:                              #   in Loop: Header=BB55_3 Depth=1
	jne	.LBB55_196
# %bb.37:                               #   in Loop: Header=BB55_3 Depth=1
	lea	r14, [rcx + rbp]
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	cmp	rdi, r13
	jne	.LBB55_53
.LBB55_38:                              #   in Loop: Header=BB55_3 Depth=1
	mov	eax, dword ptr [r15 + 16]
	mov	edx, 8388608
	and	eax, edx
	je	.LBB55_53
# %bb.39:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	r8b, 104
	jne	.LBB55_53
# %bb.40:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	rcx, 1
	je	.LBB55_42
# %bb.41:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	byte ptr [rbp + 1], -64
	jl	.LBB55_205
.LBB55_42:                              #   in Loop: Header=BB55_3 Depth=1
	lea	rax, [rbp + 1]
	lea	rdx, [rcx + rbp]
	jmp	.LBB55_45
	.p2align	4
.LBB55_43:                              #   in Loop: Header=BB55_45 Depth=2
	inc	rax
.LBB55_44:                              #   in Loop: Header=BB55_45 Depth=2
	lea	r8d, [rdi - 65]
	and	r8d, -34
	add	r8d, 10
	lea	r9d, [rdi - 48]
	cmp	edi, 58
	cmovae	r9d, r8d
	cmp	r9d, 15
	ja	.LBB55_53
.LBB55_45:                              #   Parent Loop BB55_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rax, rdx
	je	.LBB55_174
# %bb.46:                               #   in Loop: Header=BB55_45 Depth=2
	movzx	edi, byte ptr [rax]
	test	dil, dil
	jns	.LBB55_43
# %bb.47:                               #   in Loop: Header=BB55_45 Depth=2
	mov	r8d, edi
	and	r8d, 31
	movzx	r10d, byte ptr [rax + 1]
	and	r10d, 63
	cmp	dil, -33
	jbe	.LBB55_51
# %bb.48:                               #   in Loop: Header=BB55_45 Depth=2
	movzx	r9d, byte ptr [rax + 2]
	shl	r10d, 6
	and	r9d, 63
	or	r9d, r10d
	cmp	dil, -16
	jb	.LBB55_52
# %bb.49:                               #   in Loop: Header=BB55_45 Depth=2
	movzx	edi, byte ptr [rax + 3]
	and	r8d, 7
	shl	r8d, 18
	shl	r9d, 6
	and	edi, 63
	or	edi, r9d
	or	edi, r8d
	cmp	edi, 1114112
	je	.LBB55_174
# %bb.50:                               #   in Loop: Header=BB55_45 Depth=2
	add	rax, 4
	jmp	.LBB55_44
.LBB55_51:                              #   in Loop: Header=BB55_45 Depth=2
	add	rax, 2
	shl	r8d, 6
	or	r8d, r10d
	mov	edi, r8d
	jmp	.LBB55_44
.LBB55_52:                              #   in Loop: Header=BB55_45 Depth=2
	add	rax, 3
	shl	r8d, 12
	or	r9d, r8d
	mov	edi, r9d
	jmp	.LBB55_44
	.p2align	4
.LBB55_53:                              #   in Loop: Header=BB55_3 Depth=1
	mov	qword ptr [rsp + 16], r12       # 8-byte Spill
	mov	r12, rcx
	test	rsi, rsi
	je	.LBB55_55
.LBB55_54:                              #   in Loop: Header=BB55_3 Depth=1
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	mov	edx, 2
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.51]
	call	qword ptr [rax + 24]
	test	al, al
	jne	.LBB55_178
.LBB55_55:                              #   in Loop: Header=BB55_3 Depth=1
	cmp	r12, 1
	jbe	.LBB55_62
# %bb.56:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	word ptr [rbp], 9311
	jne	.LBB55_62
# %bb.57:                               #   in Loop: Header=BB55_3 Depth=1
	cmp	byte ptr [rbp + 1], -64
	jl	.LBB55_202
# %bb.58:                               #   in Loop: Header=BB55_3 Depth=1
	inc	rbp
	dec	r12
	jmp	.LBB55_62
.LBB55_59:                              #   in Loop: Header=BB55_62 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rsi, r15
	xor	edx, edx
	call	qword ptr [rax + 24]
	mov	ebx, 0
	test	al, al
	jne	.LBB55_178
.LBB55_60:                              #   in Loop: Header=BB55_62 Depth=2
	sub	r13, rbx
	add	r15, rbx
.LBB55_61:                              #   in Loop: Header=BB55_62 Depth=2
	mov	rbp, r15
	mov	r12, r13
.LBB55_62:                              #   Parent Loop BB55_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_121 Depth 3
                                        #       Child Loop BB55_142 Depth 3
                                        #       Child Loop BB55_139 Depth 3
                                        #       Child Loop BB55_68 Depth 3
	mov	r13, r12
	mov	r15, rbp
	test	r12, r12
	je	.LBB55_67
# %bb.63:                               #   in Loop: Header=BB55_62 Depth=2
	movzx	eax, byte ptr [r15]
	cmp	eax, 36
	je	.LBB55_82
# %bb.64:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	eax, 46
	jne	.LBB55_67
# %bb.65:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	r13, 1
	jne	.LBB55_93
# %bb.66:                               #   in Loop: Header=BB55_62 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	edx, 1
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.142]
	call	qword ptr [rax + 24]
	test	al, al
	je	.LBB55_157
	jmp	.LBB55_178
	.p2align	4
.LBB55_67:                              #   in Loop: Header=BB55_62 Depth=2
	lea	rax, [r15 + r13]
	xor	edi, edi
	mov	rcx, r15
	jmp	.LBB55_68
	.p2align	4
.LBB55_70:                              #   in Loop: Header=BB55_68 Depth=3
	lea	rsi, [rcx + 1]
	cmp	edx, 36
	je	.LBB55_77
.LBB55_76:                              #   in Loop: Header=BB55_68 Depth=3
	mov	rdi, rbx
	sub	rdi, rcx
	add	rdi, rsi
	mov	rcx, rsi
	cmp	edx, 46
	je	.LBB55_77
.LBB55_68:                              #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	rcx, rax
	je	.LBB55_2
# %bb.69:                               #   in Loop: Header=BB55_68 Depth=3
	mov	rbx, rdi
	movzx	edx, byte ptr [rcx]
	test	dl, dl
	jns	.LBB55_70
# %bb.71:                               #   in Loop: Header=BB55_68 Depth=3
	mov	edi, edx
	and	edi, 31
	movzx	r9d, byte ptr [rcx + 1]
	and	r9d, 63
	cmp	dl, -33
	jbe	.LBB55_74
# %bb.72:                               #   in Loop: Header=BB55_68 Depth=3
	movzx	r8d, byte ptr [rcx + 2]
	shl	r9d, 6
	and	r8d, 63
	or	r8d, r9d
	cmp	dl, -16
	jb	.LBB55_75
# %bb.73:                               #   in Loop: Header=BB55_68 Depth=3
	lea	rsi, [rcx + 4]
	movzx	edx, byte ptr [rcx + 3]
	and	edi, 7
	shl	edi, 18
	shl	r8d, 6
	and	edx, 63
	or	edx, r8d
	or	edx, edi
	cmp	edx, 36
	jne	.LBB55_76
	jmp	.LBB55_77
.LBB55_74:                              #   in Loop: Header=BB55_68 Depth=3
	lea	rsi, [rcx + 2]
	shl	edi, 6
	or	edi, r9d
	mov	edx, edi
	cmp	edx, 36
	jne	.LBB55_76
	jmp	.LBB55_77
.LBB55_75:                              #   in Loop: Header=BB55_68 Depth=3
	lea	rsi, [rcx + 3]
	shl	edi, 12
	or	r8d, edi
	mov	edx, r8d
	cmp	edx, 36
	jne	.LBB55_76
	.p2align	4
.LBB55_77:                              #   in Loop: Header=BB55_62 Depth=2
	test	rbx, rbx
	je	.LBB55_59
# %bb.78:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	rbx, r13
	jae	.LBB55_91
# %bb.79:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + rbx], -65
	jle	.LBB55_176
# %bb.80:                               #   in Loop: Header=BB55_62 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	qword ptr [rax + 24]
	test	al, al
	jne	.LBB55_178
# %bb.81:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + rbx], -64
	jge	.LBB55_60
	jmp	.LBB55_198
	.p2align	4
.LBB55_82:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	r13, 1
	je	.LBB55_84
# %bb.83:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + 1], -65
	jle	.LBB55_199
.LBB55_84:                              #   in Loop: Header=BB55_62 Depth=2
	lea	rax, [r13 - 1]
	lea	rbx, [r15 + 1]
	mov	qword ptr [rsp + 24], rbx
	mov	qword ptr [rsp + 32], rax
	mov	qword ptr [rsp + 40], 0
	mov	qword ptr [rsp + 48], rax
	mov	byte ptr [rsp + 64], 1
	movabs	rax, 154618822692
	mov	qword ptr [rsp + 56], rax
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 24]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
	cmp	byte ptr [rsp + 80], 0
	je	.LBB55_2
# %bb.85:                               #   in Loop: Header=BB55_62 Depth=2
	mov	rcx, qword ptr [rsp + 88]
	cmp	rcx, -1
	je	.LBB55_188
# %bb.86:                               #   in Loop: Header=BB55_62 Depth=2
	lea	rax, [rcx + 1]
	cmp	r13, 1
	je	.LBB55_88
# %bb.87:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [rbx], -65
	jle	.LBB55_195
.LBB55_88:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	rax, r13
	jae	.LBB55_98
# %bb.89:                               #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + rax], -64
	jl	.LBB55_195
# %bb.90:                               #   in Loop: Header=BB55_62 Depth=2
	lea	rdx, [rcx + 2]
	jmp	.LBB55_100
.LBB55_91:                              #   in Loop: Header=BB55_62 Depth=2
	jne	.LBB55_176
# %bb.92:                               #   in Loop: Header=BB55_62 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rsi, r15
	mov	rdx, r13
	call	qword ptr [rax + 24]
	mov	rbx, r13
	test	al, al
	je	.LBB55_60
	jmp	.LBB55_178
.LBB55_93:                              #   in Loop: Header=BB55_62 Depth=2
	movzx	eax, byte ptr [r15 + 1]
	cmp	al, -65
	jle	.LBB55_200
# %bb.94:                               #   in Loop: Header=BB55_62 Depth=2
	test	al, al
	jns	.LBB55_150
# %bb.95:                               #   in Loop: Header=BB55_62 Depth=2
	mov	ecx, eax
	and	ecx, 31
	movzx	esi, byte ptr [r15 + 2]
	and	esi, 63
	cmp	al, -33
	jbe	.LBB55_146
# %bb.96:                               #   in Loop: Header=BB55_62 Depth=2
	movzx	edx, byte ptr [r15 + 3]
	shl	esi, 6
	and	edx, 63
	or	edx, esi
	cmp	al, -16
	jb	.LBB55_149
# %bb.97:                               #   in Loop: Header=BB55_62 Depth=2
	movzx	eax, byte ptr [r15 + 4]
	and	ecx, 7
	shl	ecx, 18
	shl	edx, 6
	and	eax, 63
	or	eax, edx
	or	eax, ecx
	jmp	.LBB55_150
.LBB55_98:                              #   in Loop: Header=BB55_62 Depth=2
	jne	.LBB55_195
# %bb.99:                               #   in Loop: Header=BB55_62 Depth=2
	mov	rdx, rcx
	mov	rbp, r15
	mov	r12, r13
	add	rdx, 2
	je	.LBB55_107
.LBB55_100:                             #   in Loop: Header=BB55_62 Depth=2
	cmp	rdx, r13
	jae	.LBB55_103
# %bb.101:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + rdx], -64
	jl	.LBB55_197
# %bb.102:                              #   in Loop: Header=BB55_62 Depth=2
	mov	rbp, rdx
	jmp	.LBB55_104
.LBB55_103:                             #   in Loop: Header=BB55_62 Depth=2
	mov	rbp, r13
	jne	.LBB55_197
.LBB55_104:                             #   in Loop: Header=BB55_62 Depth=2
	mov	r12, r13
	sub	r12, rbp
	add	rbp, r15
	cmp	rcx, 1
	je	.LBB55_116
# %bb.105:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	rcx, 2
	je	.LBB55_109
# %bb.106:                              #   in Loop: Header=BB55_62 Depth=2
	test	rcx, rcx
	je	.LBB55_2
.LBB55_107:                             #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + 1], 117
	jne	.LBB55_2
# %bb.108:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + 2], -64
	jge	.LBB55_118
	jmp	.LBB55_201
.LBB55_109:                             #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 20563
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.132]
	je	.LBB55_129
# %bb.110:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 20546
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.63]
	je	.LBB55_129
# %bb.111:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 18002
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.60]
	je	.LBB55_129
# %bb.112:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 21580
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.57]
	je	.LBB55_129
# %bb.113:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 21575
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.59]
	je	.LBB55_129
# %bb.114:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 20556
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.66]
	je	.LBB55_129
# %bb.115:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	word ptr [rbx], 20562
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.28]
	jne	.LBB55_107
	jmp	.LBB55_129
.LBB55_116:                             #   in Loop: Header=BB55_62 Depth=2
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.67]
	cmp	eax, 67
	je	.LBB55_129
# %bb.117:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	eax, 117
	jne	.LBB55_2
.LBB55_118:                             #   in Loop: Header=BB55_62 Depth=2
	lea	rax, [rcx - 1]
	lea	rdx, [r15 + 2]
	add	rbx, rcx
	mov	rdi, rdx
	jmp	.LBB55_121
	.p2align	4
.LBB55_119:                             #   in Loop: Header=BB55_121 Depth=3
	inc	rdi
.LBB55_120:                             #   in Loop: Header=BB55_121 Depth=3
	lea	r9d, [r8 - 58]
	cmp	r9d, -10
	setb	r9b
	add	r8d, -103
	cmp	r8d, -6
	setb	r8b
	and	r8b, r9b
	cmp	r8b, 1
	je	.LBB55_131
.LBB55_121:                             #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	esi, esi
	cmp	rdi, rbx
	je	.LBB55_130
# %bb.122:                              #   in Loop: Header=BB55_121 Depth=3
	movzx	r8d, byte ptr [rdi]
	test	r8b, r8b
	jns	.LBB55_119
# %bb.123:                              #   in Loop: Header=BB55_121 Depth=3
	mov	r9d, r8d
	and	r9d, 31
	movzx	r11d, byte ptr [rdi + 1]
	and	r11d, 63
	cmp	r8b, -33
	jbe	.LBB55_127
# %bb.124:                              #   in Loop: Header=BB55_121 Depth=3
	movzx	r10d, byte ptr [rdi + 2]
	shl	r11d, 6
	and	r10d, 63
	or	r10d, r11d
	cmp	r8b, -16
	jb	.LBB55_128
# %bb.125:                              #   in Loop: Header=BB55_121 Depth=3
	movzx	r8d, byte ptr [rdi + 3]
	and	r9d, 7
	shl	r9d, 18
	shl	r10d, 6
	and	r8d, 63
	or	r8d, r10d
	or	r8d, r9d
	cmp	r8d, 1114112
	je	.LBB55_130
# %bb.126:                              #   in Loop: Header=BB55_121 Depth=3
	add	rdi, 4
	jmp	.LBB55_120
.LBB55_127:                             #   in Loop: Header=BB55_121 Depth=3
	add	rdi, 2
	shl	r9d, 6
	or	r9d, r11d
	mov	r8d, r9d
	jmp	.LBB55_120
.LBB55_128:                             #   in Loop: Header=BB55_121 Depth=3
	add	rdi, 3
	shl	r9d, 12
	or	r10d, r9d
	mov	r8d, r10d
	jmp	.LBB55_120
.LBB55_129:                             #   in Loop: Header=BB55_62 Depth=2
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	edx, 1
	call	qword ptr [rax + 24]
	test	al, al
	je	.LBB55_62
	jmp	.LBB55_178
.LBB55_130:                             #   in Loop: Header=BB55_62 Depth=2
	xor	edi, edi
	mov	r8b, 1
	cmp	rcx, 1
	jne	.LBB55_132
	jmp	.LBB55_159
.LBB55_131:                             #   in Loop: Header=BB55_62 Depth=2
	mov	dil, 1
	mov	r8b, 1
	cmp	rcx, 1
	je	.LBB55_159
.LBB55_132:                             #   in Loop: Header=BB55_62 Depth=2
	cmp	rcx, 2
	jne	.LBB55_135
# %bb.133:                              #   in Loop: Header=BB55_62 Depth=2
	movzx	ecx, byte ptr [rdx]
	cmp	ecx, 43
	je	.LBB55_159
# %bb.134:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	ecx, 45
	je	.LBB55_159
	jmp	.LBB55_136
.LBB55_135:                             #   in Loop: Header=BB55_62 Depth=2
	movzx	ecx, byte ptr [rdx]
.LBB55_136:                             #   in Loop: Header=BB55_62 Depth=2
	xor	esi, esi
	cmp	cl, 43
	sete	sil
	sub	rax, rsi
	add	rdx, rsi
	cmp	rax, 9
	jae	.LBB55_141
# %bb.137:                              #   in Loop: Header=BB55_62 Depth=2
	test	rax, rax
	je	.LBB55_148
# %bb.138:                              #   in Loop: Header=BB55_62 Depth=2
	xor	ecx, ecx
	xor	esi, esi
	.p2align	4
.LBB55_139:                             #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r10d, byte ptr [rdx + rcx]
	lea	r11d, [r10 - 65]
	and	r11d, -33
	add	r11d, 10
	lea	r9d, [r10 - 48]
	cmp	r10d, 58
	cmovae	r9d, r11d
	cmp	r9d, 15
	ja	.LBB55_158
# %bb.140:                              #   in Loop: Header=BB55_139 Depth=3
	shl	esi, 4
	or	esi, r9d
	inc	rcx
	cmp	rax, rcx
	jne	.LBB55_139
	jmp	.LBB55_145
.LBB55_141:                             #   in Loop: Header=BB55_62 Depth=2
	xor	ecx, ecx
	xor	r9d, r9d
	.p2align	4
.LBB55_142:                             #   Parent Loop BB55_3 Depth=1
                                        #     Parent Loop BB55_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	r9d, 268435455
	ja	.LBB55_158
# %bb.143:                              #   in Loop: Header=BB55_142 Depth=3
	movzx	r10d, byte ptr [rdx + rcx]
	lea	r11d, [r10 - 65]
	and	r11d, -33
	add	r11d, 10
	lea	esi, [r10 - 48]
	cmp	r10d, 58
	cmovae	esi, r11d
	cmp	esi, 16
	jae	.LBB55_158
# %bb.144:                              #   in Loop: Header=BB55_142 Depth=3
	shl	r9d, 4
	or	esi, r9d
	inc	rcx
	mov	r9d, esi
	cmp	rax, rcx
	jne	.LBB55_142
.LBB55_145:                             #   in Loop: Header=BB55_62 Depth=2
	xor	r8d, r8d
	jmp	.LBB55_159
.LBB55_146:                             #   in Loop: Header=BB55_62 Depth=2
	shl	ecx, 6
	or	ecx, esi
	mov	eax, ecx
	jmp	.LBB55_150
.LBB55_148:                             #   in Loop: Header=BB55_62 Depth=2
	xor	r8d, r8d
.LBB55_158:                             #   in Loop: Header=BB55_62 Depth=2
	xor	esi, esi
.LBB55_159:                             #   in Loop: Header=BB55_62 Depth=2
	mov	eax, esi
	xor	eax, 55296
	add	eax, -1114112
	cmp	eax, -1112064
	mov	eax, 1114112
	cmovb	esi, eax
	test	r8b, 1
	cmovne	esi, eax
	cmp	esi, 1114112
	sete	al
	or	dil, al
	jne	.LBB55_2
# %bb.160:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	esi, 32
	jb	.LBB55_2
# %bb.161:                              #   in Loop: Header=BB55_62 Depth=2
	lea	eax, [rsi - 127]
	cmp	eax, 33
	jb	.LBB55_2
# %bb.162:                              #   in Loop: Header=BB55_62 Depth=2
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	test	byte ptr [rdi + 19], 24
	je	.LBB55_165
# %bb.163:                              #   in Loop: Header=BB55_62 Depth=2
	mov	dword ptr [rsp + 24], 0
	cmp	esi, 128
	jae	.LBB55_166
# %bb.164:                              #   in Loop: Header=BB55_62 Depth=2
	mov	byte ptr [rsp + 24], sil
	mov	edx, 1
	lea	rsi, [rsp + 24]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB55_62
	jmp	.LBB55_178
.LBB55_165:                             #   in Loop: Header=BB55_62 Depth=2
	mov	rax, rdi
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [rax + 8]
                                        # kill: def $esi killed $esi killed $rsi
	call	qword ptr [rax + 32]
	test	al, al
	je	.LBB55_62
	jmp	.LBB55_178
.LBB55_166:                             #   in Loop: Header=BB55_62 Depth=2
	mov	eax, esi
	and	al, 63
	or	al, -128
	mov	ecx, esi
	shr	ecx, 6
	cmp	esi, 2048
	jae	.LBB55_168
# %bb.167:                              #   in Loop: Header=BB55_62 Depth=2
	or	cl, -64
	mov	byte ptr [rsp + 24], cl
	mov	byte ptr [rsp + 25], al
	mov	edx, 2
	lea	rsi, [rsp + 24]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB55_62
	jmp	.LBB55_178
.LBB55_168:                             #   in Loop: Header=BB55_62 Depth=2
	and	cl, 63
	or	cl, -128
	mov	edx, esi
	shr	edx, 12
	cmp	esi, 65535
	ja	.LBB55_170
# %bb.169:                              #   in Loop: Header=BB55_62 Depth=2
	or	dl, -32
	mov	byte ptr [rsp + 24], dl
	mov	byte ptr [rsp + 25], cl
	mov	byte ptr [rsp + 26], al
	mov	edx, 3
	lea	rsi, [rsp + 24]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB55_62
	jmp	.LBB55_178
.LBB55_149:                             #   in Loop: Header=BB55_62 Depth=2
	shl	ecx, 12
	or	edx, ecx
	mov	eax, edx
.LBB55_150:                             #   in Loop: Header=BB55_62 Depth=2
	mov	rcx, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 24]
	cmp	eax, 46
	jne	.LBB55_155
# %bb.151:                              #   in Loop: Header=BB55_62 Depth=2
	mov	edx, 2
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.51]
	call	rcx
	test	al, al
	jne	.LBB55_178
# %bb.152:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	r13, 3
	jb	.LBB55_154
# %bb.153:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + 2], -64
	jl	.LBB55_206
.LBB55_154:                             #   in Loop: Header=BB55_62 Depth=2
	add	r13, -2
	add	r15, 2
	jmp	.LBB55_61
.LBB55_155:                             #   in Loop: Header=BB55_62 Depth=2
	mov	edx, 1
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.142]
	call	rcx
	test	al, al
	jne	.LBB55_178
# %bb.156:                              #   in Loop: Header=BB55_62 Depth=2
	cmp	byte ptr [r15 + 1], -64
	jl	.LBB55_203
.LBB55_157:                             #   in Loop: Header=BB55_62 Depth=2
	dec	r13
	inc	r15
	jmp	.LBB55_61
.LBB55_170:                             #   in Loop: Header=BB55_62 Depth=2
	and	dl, 63
	or	dl, -128
	shr	esi, 18
	or	sil, -16
	mov	byte ptr [rsp + 24], sil
	mov	byte ptr [rsp + 25], dl
	mov	byte ptr [rsp + 26], cl
	mov	byte ptr [rsp + 27], al
	mov	edx, 4
	lea	rsi, [rsp + 24]
	call	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad
	test	al, al
	je	.LBB55_62
.LBB55_178:
	mov	al, 1
	jmp	.LBB55_175
.LBB55_173:
	movups	xmm0, xmmword ptr [rax + 8]
	movups	xmmword ptr [rsp + 24], xmm0
	mov	qword ptr [rsp + 40], 0
	mov	dword ptr [rsp + 48], 0
	mov	qword ptr [rsp + 56], rsi
	mov	dword ptr [rsp + 64], 0
	lea	rdi, [rsp + 24]
	mov	esi, 1
	call	_RNvMs4_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_7Printer10print_path
                                        # kill: def $al killed $al def $eax
	jmp	.LBB55_175
.LBB55_174:
	xor	eax, eax
.LBB55_175:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 104
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
.LBB55_176:
	.cfi_def_cfa_offset 160
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.126]
	mov	rdi, r15
	mov	rsi, r13
	xor	edx, edx
	mov	rcx, rbx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_188:
	call	_RNvNtNtCsfQL5qMWGko6_4core3str6traits23str_index_overflow_fail
.LBB55_189:
	lea	rdi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.118]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB55_190:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.119]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_191:
	mov	r11b, 1
.LBB55_192:
	mov	byte ptr [rsp + 24], r11b
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.156]
	lea	rcx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.40]
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.121]
	lea	rdx, [rsp + 24]
	mov	esi, 43
	call	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
.LBB55_193:
	xor	r11d, r11d
	jmp	.LBB55_192
.LBB55_194:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.120]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	xor	edx, edx
	mov	rcx, rax
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_195:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.129]
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, r13
	mov	rcx, rax
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_196:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.122]
	mov	rdi, rbp
	mov	rsi, rcx
	mov	rdx, rax
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_197:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.130]
	mov	rdi, r15
	mov	rsi, r13
	mov	rcx, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_198:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.127]
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_199:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.128]
	jmp	.LBB55_204
.LBB55_200:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.140]
	jmp	.LBB55_204
.LBB55_201:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.139]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_202:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.125]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r12
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_203:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.143]
.LBB55_204:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, r13
	mov	rcx, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_205:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.111]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rcx
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.LBB55_206:
	lea	r8, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.141]
	mov	edx, 2
	mov	rdi, r15
	mov	rsi, r13
	mov	rcx, r13
	call	_RNvNtCsfQL5qMWGko6_4core3str16slice_error_fail
.Lfunc_end55:
	.size	_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_, .Lfunc_end55-_RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtCsbho2wNjk0G0_14rustc_demangle13DemangleStyleNtB6_7Display3fmtBy_
	.cfi_endproc
                                        # -- End function
