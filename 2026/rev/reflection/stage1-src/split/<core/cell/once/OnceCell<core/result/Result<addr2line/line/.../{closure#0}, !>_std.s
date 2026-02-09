	.section	.text.unlikely._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std
	.type	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std,@function
_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std: # @_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception32
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
	sub	rsp, 696
	.cfi_def_cfa_offset 752
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 552], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 544], rsi      # 8-byte Spill
	mov	qword ptr [rsp + 688], rdi      # 8-byte Spill
	mov	r12d, dword ptr [rcx + 256]
	movups	xmm0, xmmword ptr [rcx + 216]
	movaps	xmmword ptr [rsp + 560], xmm0   # 16-byte Spill
	mov	rax, qword ptr [rcx + 232]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	movzx	eax, byte ptr [rcx + 265]
	mov	byte ptr [rsp + 56], al         # 1-byte Spill
	mov	r15, qword ptr [rcx + 184]
	mov	rax, qword ptr [rcx + 192]
	mov	qword ptr [rsp + 520], rax      # 8-byte Spill
	mov	r14, qword ptr [rcx + 96]
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r13, qword ptr [rcx + 104]
	lea	rbx, [4*r13]
	test	r13, r13
	mov	qword ptr [rsp + 24], r15       # 8-byte Spill
	je	.LBB170_3
# %bb.1:
	mov	rdi, rbx
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB170_352
# %bb.2:
	mov	rbp, rax
	jmp	.LBB170_4
.LBB170_3:
	mov	ebp, 2
.LBB170_4:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r14, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r15, qword ptr [r14 + 128]
	test	r15, r15
	mov	qword ptr [rsp + 8], r13        # 8-byte Spill
	mov	qword ptr [rsp + 48], rbp       # 8-byte Spill
	mov	qword ptr [rsp + 40], r15       # 8-byte Spill
	je	.LBB170_19
# %bb.5:
	mov	rbx, qword ptr [r14 + 120]
	lea	rax, [8*r15]
	lea	r14, [rax + 2*rax]
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	mov	qword ptr [rsp], rax            # 8-byte Spill
	test	rax, rax
	je	.LBB170_353
# %bb.6:
	xor	eax, eax
	lea	rcx, [rip + .LJTI170_0]
	mov	rdx, r15
                                        # implicit-def: $r9b
                                        # implicit-def: $rsi
                                        # implicit-def: $r11d
                                        # implicit-def: $r10w
	jmp	.LBB170_9
	.p2align	4
.LBB170_7:                              #   in Loop: Header=BB170_9 Depth=1
	movzx	r8d, byte ptr [rbx + rax + 8]
.LBB170_8:                              #   in Loop: Header=BB170_9 Depth=1
	dec	rdx
	movzx	r15d, r9b
	shl	r15d, 8
	movzx	r8d, r8b
	or	r8, r15
	mov	r15d, r10d
	shl	r15d, 16
	or	r15, r8
	mov	r8, r11
	shl	r8, 32
	or	r8, r15
	mov	r15, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [r15 + rax], rdi
	mov	qword ptr [r15 + rax + 8], r8
	mov	qword ptr [r15 + rax + 16], rsi
	add	rax, 24
	test	rdx, rdx
	je	.LBB170_21
.LBB170_9:                              # =>This Inner Loop Header: Depth=1
	cmp	r14, rax
	je	.LBB170_21
# %bb.10:                               #   in Loop: Header=BB170_9 Depth=1
	mov	rdi, qword ptr [rbx + rax]
	movsxd	r8, dword ptr [rcx + 4*rdi]
	add	r8, rcx
	jmp	r8
.LBB170_11:                             #   in Loop: Header=BB170_9 Depth=1
	mov	r8, qword ptr [rbx + rax + 8]
.LBB170_12:                             #   in Loop: Header=BB170_9 Depth=1
	mov	r9d, r8d
	shr	r9d, 8
	mov	r10d, r8d
	shr	r10d, 16
	mov	r11, r8
	shr	r11, 32
	jmp	.LBB170_8
.LBB170_14:                             #   in Loop: Header=BB170_9 Depth=1
	mov	r8, qword ptr [rbx + rax + 8]
	mov	rsi, qword ptr [rbx + rax + 16]
	jmp	.LBB170_12
.LBB170_15:                             #   in Loop: Header=BB170_9 Depth=1
	movzx	r8d, word ptr [rbx + rax + 8]
	mov	r9d, r8d
	shr	r9d, 8
	jmp	.LBB170_8
.LBB170_18:                             #   in Loop: Header=BB170_9 Depth=1
	mov	r8d, dword ptr [rbx + rax + 8]
	mov	r9d, r8d
	shr	r9d, 8
	mov	r10d, r8d
	shr	r10d, 16
	jmp	.LBB170_8
.LBB170_21:
	mov	r14, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB170_22
.LBB170_19:
	mov	eax, 8
	mov	qword ptr [rsp], rax            # 8-byte Spill
.LBB170_22:
	mov	r15, qword ptr [r14 + 144]
	mov	rax, qword ptr [r14 + 152]
	lea	rbx, [4*rax]
	mov	qword ptr [rsp + 496], rax      # 8-byte Spill
	test	rax, rax
	je	.LBB170_25
# %bb.23:
	mov	rdi, rbx
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB170_355
# %bb.24:
	mov	rdi, rax
	jmp	.LBB170_26
.LBB170_25:
	mov	edi, 2
.LBB170_26:
	mov	qword ptr [rsp + 488], rdi      # 8-byte Spill
	mov	rsi, r15
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rax, qword ptr [r14 + 176]
	test	rax, rax
	mov	dword ptr [rsp + 512], r12d     # 4-byte Spill
	mov	qword ptr [rsp + 504], rax      # 8-byte Spill
	je	.LBB170_32
# %bb.27:
	mov	r14, qword ptr [r14 + 168]
	mov	rbp, rax
	imul	rbx, rax, 88
	mov	rdi, rbx
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB170_357
# %bb.28:
	mov	r15, rax
	xor	r13d, r13d
	lea	r12, [rsp + 136]
	.p2align	4
.LBB170_29:                             # =>This Inner Loop Header: Depth=1
	cmp	rbx, r13
	je	.LBB170_31
# %bb.30:                               #   in Loop: Header=BB170_29 Depth=1
	lea	rsi, [r14 + r13]
	mov	rdi, r12
	call	_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 216]
	mov	qword ptr [r15 + r13 + 80], rax
	movups	xmm0, xmmword ptr [rsp + 200]
	movups	xmmword ptr [r15 + r13 + 64], xmm0
	movups	xmm0, xmmword ptr [rsp + 136]
	movups	xmm1, xmmword ptr [rsp + 152]
	movups	xmm2, xmmword ptr [rsp + 168]
	movups	xmm3, xmmword ptr [rsp + 184]
	movups	xmmword ptr [r15 + r13 + 48], xmm3
	movups	xmmword ptr [r15 + r13 + 32], xmm2
	movups	xmmword ptr [r15 + r13 + 16], xmm1
	movups	xmmword ptr [r15 + r13], xmm0
	add	r13, 88
	dec	rbp
	jne	.LBB170_29
.LBB170_31:
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r14, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB170_33
.LBB170_32:
	mov	r15d, 8
.LBB170_33:
	mov	r12, qword ptr [r14 + 200]
	mov	rbx, qword ptr [r14 + 208]
	mov	rdi, qword ptr [r14 + 240]
	mov	r10, qword ptr [r14 + 248]
	mov	edx, 46
	cmp	dword ptr [r14], 46
	je	.LBB170_35
# %bb.34:
	mov	rbp, rdi
	lea	rdi, [rsp + 136]
	mov	rsi, r14
	mov	r13, r10
	call	_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std
	mov	r10, r13
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 136]
	movups	xmm0, xmmword ptr [rsp + 144]
	movaps	xmmword ptr [rsp + 576], xmm0
	movups	xmm0, xmmword ptr [rsp + 160]
	movaps	xmmword ptr [rsp + 592], xmm0
	movups	xmm0, xmmword ptr [rsp + 176]
	movaps	xmmword ptr [rsp + 608], xmm0
	movups	xmm0, xmmword ptr [rsp + 192]
	movaps	xmmword ptr [rsp + 624], xmm0
	movups	xmm0, xmmword ptr [rsp + 208]
	movaps	xmmword ptr [rsp + 640], xmm0
.LBB170_35:
	movzx	eax, byte ptr [r14 + 260]
	mov	ecx, dword ptr [r14 + 261]
	movaps	xmm0, xmmword ptr [rsp + 640]
	movups	xmmword ptr [rsp + 208], xmm0
	movaps	xmm0, xmmword ptr [rsp + 576]
	movaps	xmm1, xmmword ptr [rsp + 592]
	movaps	xmm2, xmmword ptr [rsp + 608]
	movaps	xmm3, xmmword ptr [rsp + 624]
	movups	xmmword ptr [rsp + 192], xmm3
	movups	xmmword ptr [rsp + 176], xmm2
	movups	xmmword ptr [rsp + 160], xmm1
	movups	xmmword ptr [rsp + 144], xmm0
	mov	qword ptr [rsp + 136], rdx
	mov	qword ptr [rsp + 224], r13
	mov	qword ptr [rsp + 232], rbp
	mov	qword ptr [rsp + 240], r13
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [rsp + 248], rdx
	mov	rsi, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rsp + 256], rsi
	mov	qword ptr [rsp + 88], 0
	mov	qword ptr [rsp + 96], 8
	mov	qword ptr [rsp + 104], 0
	mov	qword ptr [rsp + 112], 0
	mov	qword ptr [rsp + 120], 8
	mov	qword ptr [rsp + 128], 0
	mov	qword ptr [rsp + 264], rdx
	mov	rdx, qword ptr [rsp + 496]      # 8-byte Reload
	mov	qword ptr [rsp + 272], rdx
	mov	rsi, qword ptr [rsp + 488]      # 8-byte Reload
	mov	qword ptr [rsp + 280], rsi
	mov	qword ptr [rsp + 288], rdx
	lea	r13, [rsp + 296]
	mov	rdx, qword ptr [rsp + 504]      # 8-byte Reload
	mov	qword ptr [rsp + 296], rdx
	mov	qword ptr [rsp + 304], r15
	mov	qword ptr [rsp + 312], rdx
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rsp + 320], rdx
	mov	rdx, qword ptr [rsp + 520]      # 8-byte Reload
	mov	qword ptr [rsp + 328], rdx
	mov	qword ptr [rsp + 336], r12
	mov	qword ptr [rsp + 344], rbx
	movaps	xmm0, xmmword ptr [rsp + 560]   # 16-byte Reload
	movups	xmmword ptr [rsp + 352], xmm0
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rsp + 368], rdx
	mov	qword ptr [rsp + 376], rdi
	mov	qword ptr [rsp + 384], r10
	mov	edx, dword ptr [rsp + 512]      # 4-byte Reload
	mov	dword ptr [rsp + 392], edx
	mov	byte ptr [rsp + 396], al
	mov	dword ptr [rsp + 397], ecx
	movzx	ecx, byte ptr [rsp + 56]        # 1-byte Folded Reload
	mov	byte ptr [rsp + 401], cl
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 408], xmm0
	mov	qword ptr [rsp + 424], 1
	mov	qword ptr [rsp + 432], 1
	movups	xmmword ptr [rsp + 449], xmm0
	movups	xmmword ptr [rsp + 440], xmm0
	mov	byte ptr [rsp + 465], al
	mov	dword ptr [rsp + 466], 0
	mov	qword ptr [rsp + 472], r12
	mov	qword ptr [rsp + 480], rbx
	mov	eax, 8
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.31]
	mov	qword ptr [rsp + 560], rax      # 8-byte Spill
	mov	qword ptr [rsp + 40], 0         # 8-byte Folded Spill
	xor	eax, eax
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
.LBB170_36:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB170_40 Depth 2
                                        #       Child Loop BB170_69 Depth 3
                                        #       Child Loop BB170_75 Depth 3
                                        #       Child Loop BB170_88 Depth 3
                                        #       Child Loop BB170_82 Depth 3
                                        #       Child Loop BB170_95 Depth 3
                                        #       Child Loop BB170_166 Depth 3
                                        #         Child Loop BB170_168 Depth 4
                                        #       Child Loop BB170_110 Depth 3
                                        #       Child Loop BB170_47 Depth 3
                                        #       Child Loop BB170_121 Depth 3
                                        #       Child Loop BB170_117 Depth 3
                                        #       Child Loop BB170_187 Depth 3
                                        #       Child Loop BB170_205 Depth 3
                                        #       Child Loop BB170_223 Depth 3
	test	al, 1
	je	.LBB170_38
# %bb.37:                               #   in Loop: Header=BB170_36 Depth=1
	movzx	eax, byte ptr [rsp + 396]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 112], xmm0
	mov	qword ptr [rsp + 424], 1
	mov	qword ptr [rsp + 432], 1
	mov	byte ptr [rsp + 464], 0
	movups	xmmword ptr [r13 + 144], xmm0
	mov	byte ptr [rsp + 465], al
	mov	byte ptr [rsp + 467], 0
.LBB170_38:                             #   in Loop: Header=BB170_36 Depth=1
	mov	qword ptr [rsp + 456], 0
	mov	byte ptr [rsp + 466], 0
	mov	word ptr [rsp + 468], 0
	mov	r9, qword ptr [rsp + 480]
	test	r9, r9
	je	.LBB170_270
# %bb.39:                               #   in Loop: Header=BB170_36 Depth=1
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	xor	edi, edi
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $al
                                        # kill: killed $al
                                        # implicit-def: $bl
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $bp
                                        # implicit-def: $eax
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
                                        # implicit-def: $r12b
                                        # implicit-def: $al
	mov	dword ptr [rsp + 8], eax        # 4-byte Spill
.LBB170_40:                             #   Parent Loop BB170_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB170_69 Depth 3
                                        #       Child Loop BB170_75 Depth 3
                                        #       Child Loop BB170_88 Depth 3
                                        #       Child Loop BB170_82 Depth 3
                                        #       Child Loop BB170_95 Depth 3
                                        #       Child Loop BB170_166 Depth 3
                                        #         Child Loop BB170_168 Depth 4
                                        #       Child Loop BB170_110 Depth 3
                                        #       Child Loop BB170_47 Depth 3
                                        #       Child Loop BB170_121 Depth 3
                                        #       Child Loop BB170_117 Depth 3
                                        #       Child Loop BB170_187 Depth 3
                                        #       Child Loop BB170_205 Depth 3
                                        #       Child Loop BB170_223 Depth 3
	mov	r10, qword ptr [rsp + 472]
	lea	rsi, [r9 - 1]
	lea	r11, [r10 + 1]
	mov	qword ptr [rsp + 472], r11
	mov	qword ptr [rsp + 480], rsi
	movzx	r8d, byte ptr [r10]
	test	r8d, r8d
	je	.LBB170_45
# %bb.41:                               #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 46
	mov	al, 1
	cmp	r8b, byte ptr [rsp + 401]
	jae	.LBB170_51
# %bb.42:                               #   in Loop: Header=BB170_40 Depth=2
	mov	ecx, r8d
	dec	ecx
	cmp	ecx, 11
	ja	.LBB170_104
# %bb.43:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rdx, [rip + .LJTI170_1]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB170_44:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 47
	jmp	.LBB170_52
	.p2align	4
.LBB170_45:                             #   in Loop: Header=BB170_40 Depth=2
	test	rsi, rsi
	je	.LBB170_247
# %bb.46:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rsi, [r9 - 2]
	xor	edx, edx
	xor	r14d, r14d
	xor	ecx, ecx
	.p2align	4
.LBB170_47:                             #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	eax, byte ptr [r11]
	mov	r8d, 6
	cmp	ecx, 63
	jne	.LBB170_49
# %bb.48:                               #   in Loop: Header=BB170_47 Depth=3
	cmp	al, 1
	ja	.LBB170_248
.LBB170_49:                             #   in Loop: Header=BB170_47 Depth=3
	movzx	r15d, al
	mov	r13d, r15d
	and	r13d, 127
	shl	r13, cl
	lea	rax, [r11 + 1]
	or	r14, r13
	test	r15b, r15b
	jns	.LBB170_62
# %bb.50:                               #   in Loop: Header=BB170_47 Depth=3
	add	ecx, 7
	mov	r11, rax
	add	rsi, -1
	jb	.LBB170_47
	jmp	.LBB170_246
.LBB170_62:                             #   in Loop: Header=BB170_40 Depth=2
	sub	rsi, r14
	jb	.LBB170_313
# %bb.63:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rcx, [rax + r14]
	mov	qword ptr [rsp + 472], rcx
	mov	qword ptr [rsp + 480], rsi
	test	r14, r14
	je	.LBB170_313
# %bb.64:                               #   in Loop: Header=BB170_40 Depth=2
	lea	r10, [r14 - 1]
	lea	r9, [r11 + 2]
	movzx	ecx, byte ptr [r11 + 1]
	mov	al, 1
	lea	edx, [rcx - 1]
	cmp	edx, 3
	ja	.LBB170_129
# %bb.65:                               #   in Loop: Header=BB170_40 Depth=2
	lea	r15, [rip + .LJTI170_2]
	movsxd	rcx, dword ptr [r15 + 4*rdx]
	add	rcx, r15
	jmp	rcx
.LBB170_66:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 62
	jmp	.LBB170_52
.LBB170_67:                             #   in Loop: Header=BB170_40 Depth=2
	test	rsi, rsi
	je	.LBB170_247
# %bb.68:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rsi, [r9 - 2]
	lea	rdx, [r10 + 2]
	xor	r12d, r12d
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 512]      # 8-byte Reload
	.p2align	4
.LBB170_69:                             #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r8d, byte ptr [rdx - 1]
	cmp	ecx, 63
	jne	.LBB170_71
# %bb.70:                               #   in Loop: Header=BB170_69 Depth=3
	cmp	r8b, 1
	ja	.LBB170_311
.LBB170_71:                             #   in Loop: Header=BB170_69 Depth=3
	movzx	r8d, r8b
	mov	r11d, r8d
	and	r11d, 127
	shl	r11, cl
	or	r12, r11
	test	r8b, r8b
	jns	.LBB170_160
# %bb.72:                               #   in Loop: Header=BB170_69 Depth=3
	add	ecx, 7
	inc	rdx
	add	rsi, -1
	jb	.LBB170_69
	jmp	.LBB170_246
.LBB170_73:                             #   in Loop: Header=BB170_40 Depth=2
	test	rsi, rsi
	je	.LBB170_247
# %bb.74:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rsi, [r9 - 2]
	lea	r8, [r10 + 2]
	xor	edx, edx
	xor	r12d, r12d
	xor	ecx, ecx
	mov	r15, qword ptr [rsp + 504]      # 8-byte Reload
	.p2align	4
.LBB170_75:                             #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r11d, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB170_77
# %bb.76:                               #   in Loop: Header=BB170_75 Depth=3
	cmp	r11b, 1
	ja	.LBB170_274
.LBB170_77:                             #   in Loop: Header=BB170_75 Depth=3
	movzx	r11d, r11b
	mov	r14d, r11d
	and	r14d, 127
	shl	r14, cl
	or	r12, r14
	test	r11b, r11b
	jns	.LBB170_161
# %bb.78:                               #   in Loop: Header=BB170_75 Depth=3
	add	ecx, 7
	inc	r8
	add	rsi, -1
	jb	.LBB170_75
	jmp	.LBB170_246
.LBB170_79:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 56
	jmp	.LBB170_52
.LBB170_80:                             #   in Loop: Header=BB170_40 Depth=2
	dec	r9
	xor	edx, edx
	xor	ecx, ecx
	xor	r12d, r12d
	mov	r14, qword ptr [rsp + 488]      # 8-byte Reload
	jmp	.LBB170_82
	.p2align	4
.LBB170_81:                             #   in Loop: Header=BB170_82 Depth=3
	mov	r11d, r8d
	and	r11d, 127
	shl	r11, cl
	or	r12, r11
	add	ecx, 7
	inc	rdx
	test	r8b, r8b
	jns	.LBB170_159
.LBB170_82:                             #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	r9, rdx
	je	.LBB170_282
# %bb.83:                               #   in Loop: Header=BB170_82 Depth=3
	dec	rsi
	lea	r8, [r10 + rdx]
	add	r8, 2
	mov	qword ptr [rsp + 472], r8
	mov	qword ptr [rsp + 480], rsi
	movzx	r8d, byte ptr [r10 + rdx + 1]
	cmp	ecx, 63
	jne	.LBB170_81
# %bb.84:                               #   in Loop: Header=BB170_82 Depth=3
	cmp	r8d, 127
	je	.LBB170_81
# %bb.85:                               #   in Loop: Header=BB170_82 Depth=3
	test	r8d, r8d
	je	.LBB170_81
	jmp	.LBB170_319
.LBB170_86:                             #   in Loop: Header=BB170_40 Depth=2
	test	rsi, rsi
	je	.LBB170_247
# %bb.87:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rsi, [r9 - 2]
	lea	r8, [r10 + 2]
	xor	edx, edx
	xor	r12d, r12d
	xor	ecx, ecx
	mov	r15, qword ptr [rsp + 680]      # 8-byte Reload
	.p2align	4
.LBB170_88:                             #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r11d, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB170_90
# %bb.89:                               #   in Loop: Header=BB170_88 Depth=3
	cmp	r11b, 1
	ja	.LBB170_274
.LBB170_90:                             #   in Loop: Header=BB170_88 Depth=3
	movzx	r11d, r11b
	mov	r14d, r11d
	and	r14d, 127
	shl	r14, cl
	or	r12, r14
	test	r11b, r11b
	jns	.LBB170_162
# %bb.91:                               #   in Loop: Header=BB170_88 Depth=3
	add	ecx, 7
	inc	r8
	add	rsi, -1
	jb	.LBB170_88
	jmp	.LBB170_246
.LBB170_92:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 54
	jmp	.LBB170_52
.LBB170_93:                             #   in Loop: Header=BB170_40 Depth=2
	test	rsi, rsi
	je	.LBB170_247
# %bb.94:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rsi, [r9 - 2]
	lea	r8, [r10 + 2]
	xor	edx, edx
	xor	r12d, r12d
	xor	ecx, ecx
	mov	r15, qword ptr [rsp + 672]      # 8-byte Reload
	.p2align	4
.LBB170_95:                             #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r11d, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB170_97
# %bb.96:                               #   in Loop: Header=BB170_95 Depth=3
	cmp	r11b, 1
	ja	.LBB170_274
.LBB170_97:                             #   in Loop: Header=BB170_95 Depth=3
	movzx	r11d, r11b
	mov	r14d, r11d
	and	r14d, 127
	shl	r14, cl
	or	r12, r14
	test	r11b, r11b
	jns	.LBB170_163
# %bb.98:                               #   in Loop: Header=BB170_95 Depth=3
	add	ecx, 7
	inc	r8
	add	rsi, -1
	jb	.LBB170_95
	jmp	.LBB170_246
.LBB170_99:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 52
	jmp	.LBB170_52
.LBB170_100:                            #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 53
	jmp	.LBB170_52
.LBB170_101:                            #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 57
	jmp	.LBB170_52
.LBB170_102:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	rsi, 1
	jbe	.LBB170_343
# %bb.103:                              #   in Loop: Header=BB170_40 Depth=2
	add	r9, -3
	lea	rcx, [r10 + 3]
	mov	qword ptr [rsp + 472], rcx
	mov	qword ptr [rsp + 480], r9
	movzx	r12d, word ptr [r10 + 1]
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	r15d, 55
	mov	rsi, r9
	jmp	.LBB170_52
.LBB170_104:                            #   in Loop: Header=BB170_40 Depth=2
	mov	rcx, qword ptr [rsp + 320]
	mov	rdx, qword ptr [rsp + 328]
	lea	r14d, [r8 - 1]
	movzx	r14d, r14b
	cmp	rdx, r14
	mov	r15, qword ptr [rsp + 664]      # 8-byte Reload
	jb	.LBB170_344
# %bb.105:                              #   in Loop: Header=BB170_40 Depth=2
	add	rcx, r14
	cmp	rdx, r14
	je	.LBB170_345
# %bb.106:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	r14d, byte ptr [rcx]
	test	r14d, r14d
	je	.LBB170_164
# %bb.107:                              #   in Loop: Header=BB170_40 Depth=2
	cmp	r14d, 1
	jne	.LBB170_165
# %bb.108:                              #   in Loop: Header=BB170_40 Depth=2
	test	rsi, rsi
	je	.LBB170_247
# %bb.109:                              #   in Loop: Header=BB170_40 Depth=2
	lea	rsi, [r9 - 2]
	lea	r11, [r10 + 2]
	xor	edx, edx
	xor	r12d, r12d
	xor	ecx, ecx
.LBB170_110:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	ebx, byte ptr [r11 - 1]
	cmp	ecx, 63
	jne	.LBB170_112
# %bb.111:                              #   in Loop: Header=BB170_110 Depth=3
	cmp	bl, 1
	ja	.LBB170_274
.LBB170_112:                            #   in Loop: Header=BB170_110 Depth=3
	movzx	ebx, bl
	mov	r14d, ebx
	and	r14d, 127
	shl	r14, cl
	or	r12, r14
	test	bl, bl
	jns	.LBB170_202
# %bb.113:                              #   in Loop: Header=BB170_110 Depth=3
	add	ecx, 7
	inc	r11
	add	rsi, -1
	jb	.LBB170_110
	jmp	.LBB170_246
.LBB170_114:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	word ptr [rsp + 394], 5
	jae	.LBB170_158
# %bb.115:                              #   in Loop: Header=BB170_40 Depth=2
	test	r10, r10
	je	.LBB170_315
# %bb.116:                              #   in Loop: Header=BB170_40 Depth=2
	lea	rax, [r14 - 3]
	add	r14, -4
	xor	ebx, ebx
	mov	rcx, r9
	.p2align	4
.LBB170_117:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmp	byte ptr [rcx], 0
	je	.LBB170_185
# %bb.118:                              #   in Loop: Header=BB170_117 Depth=3
	inc	rcx
	inc	rbx
	dec	rax
	dec	r14
	cmp	r10, rbx
	jne	.LBB170_117
	jmp	.LBB170_315
.LBB170_119:                            #   in Loop: Header=BB170_40 Depth=2
	test	r10, r10
	je	.LBB170_315
# %bb.120:                              #   in Loop: Header=BB170_40 Depth=2
	xor	edx, edx
	xor	r12d, r12d
	xor	ecx, ecx
	mov	r11, r10
	mov	r14, r9
	.p2align	4
.LBB170_121:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	ebp, byte ptr [r14]
	cmp	ecx, 63
	jne	.LBB170_123
# %bb.122:                              #   in Loop: Header=BB170_121 Depth=3
	cmp	bpl, 1
	ja	.LBB170_312
.LBB170_123:                            #   in Loop: Header=BB170_121 Depth=3
	movzx	r15d, bpl
	mov	r13d, r15d
	and	r13d, 127
	shl	r13, cl
	or	r12, r13
	test	r15b, r15b
	jns	.LBB170_177
# %bb.124:                              #   in Loop: Header=BB170_121 Depth=3
	dec	r11
	inc	r14
	add	ecx, 7
	test	r11, r11
	jne	.LBB170_121
	jmp	.LBB170_314
.LBB170_125:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	r14d, byte ptr [rsp + 392]
	xor	edx, edx
	mov	r8d, 25
	xor	ebp, ebp
	mov	ecx, r14d
	dec	ecx
	cmp	ecx, 7
	ja	.LBB170_249
# %bb.126:                              #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, r14d
	lea	r14, [rip + .LJTI170_3]
	movsxd	rcx, dword ptr [r14 + 4*rcx]
	add	rcx, r14
	mov	r14d, r15d
	jmp	rcx
.LBB170_127:                            #   in Loop: Header=BB170_40 Depth=2
	test	r10, r10
	je	.LBB170_315
# %bb.128:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	r12d, byte ptr [r9]
	jmp	.LBB170_184
.LBB170_129:                            #   in Loop: Header=BB170_40 Depth=2
	mov	edx, r9d
	shr	edx, 8
	mov	dword ptr [rsp + 8], edx        # 4-byte Spill
	mov	ebp, r9d
	shr	ebp, 16
	mov	rdx, r9
	shr	rdx, 32
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	mov	rdx, r10
	shr	rdx, 8
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	mov	r15d, 66
	mov	r12d, r9d
	mov	ebx, r10d
                                        # kill: def $cl killed $cl killed $rcx
	mov	byte ptr [rsp + 24], cl         # 1-byte Spill
	jmp	.LBB170_52
.LBB170_158:                            #   in Loop: Header=BB170_40 Depth=2
	mov	ecx, r9d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r9d
	shr	ebp, 16
	mov	rcx, r9
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	rcx, r10
	shr	rcx, 8
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	r15d, 66
	mov	byte ptr [rsp + 24], 3          # 1-byte Folded Spill
	mov	r12d, r9d
	mov	ebx, r10d
	jmp	.LBB170_52
.LBB170_159:                            #   in Loop: Header=BB170_40 Depth=2
	mov	rdx, -1
	shl	rdx, cl
	cmp	r8b, 64
	mov	r8d, 0
	cmovb	rdx, r8
	cmp	ecx, 64
	cmovge	rdx, r8
	or	r12, rdx
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 49
	mov	qword ptr [rsp + 488], r12      # 8-byte Spill
	jmp	.LBB170_52
.LBB170_160:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 472], rdx
	mov	qword ptr [rsp + 480], rsi
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 58
	mov	qword ptr [rsp + 512], r12      # 8-byte Spill
	jmp	.LBB170_52
.LBB170_161:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 472], r8
	mov	qword ptr [rsp + 480], rsi
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 51
	mov	qword ptr [rsp + 504], r12      # 8-byte Spill
	jmp	.LBB170_52
.LBB170_162:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 472], r8
	mov	qword ptr [rsp + 480], rsi
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 50
	mov	qword ptr [rsp + 680], r12      # 8-byte Spill
	jmp	.LBB170_52
.LBB170_163:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 472], r8
	mov	qword ptr [rsp + 480], rsi
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 48
	mov	qword ptr [rsp + 672], r12      # 8-byte Spill
	jmp	.LBB170_52
.LBB170_164:                            #   in Loop: Header=BB170_40 Depth=2
	mov	r15d, 59
	.p2align	4
.LBB170_51:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r12d, r8d
.LBB170_52:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r14d, dword ptr [rsp + 16]      # 4-byte Reload
	movzx	ecx, bp
	shl	r14, 16
	or	r14, rcx
	movaps	xmm0, xmmword ptr [rsp + 576]
	movaps	xmmword ptr [rsp + 64], xmm0
	test	al, al
	je	.LBB170_57
# %bb.53:                               #   in Loop: Header=BB170_40 Depth=2
	lea	rax, [r15 - 46]
	lea	rcx, [rip + .LJTI170_4]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB170_54:                             #   in Loop: Header=BB170_40 Depth=2
	movzx	ecx, byte ptr [rsp + 400]
	test	cl, cl
	je	.LBB170_359
# %bb.55:                               #   in Loop: Header=BB170_40 Depth=2
	mov	eax, r12d
	sub	al, byte ptr [rsp + 401]
	movzx	eax, al
	div	cl
	movzx	ecx, ah
	movsx	rdx, byte ptr [rsp + 399]
	add	rcx, rdx
	js	.LBB170_193
# %bb.56:                               #   in Loop: Header=BB170_40 Depth=2
	add	rcx, qword ptr [rsp + 432]
	mov	qword ptr [rsp + 432], rcx
	cmp	byte ptr [rsp + 464], 0
	je	.LBB170_194
	jmp	.LBB170_217
	.p2align	4
.LBB170_57:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r13, qword ptr [rsp + 312]
	cmp	r13, qword ptr [rsp + 296]
	jne	.LBB170_59
# %bb.58:                               #   in Loop: Header=BB170_40 Depth=2
.Ltmp819:
	lea	rdi, [rsp + 296]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4line9FileEntryINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp820:
.LBB170_59:                             #   in Loop: Header=BB170_40 Depth=2
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	shl	rax, 8
	movzx	ecx, bl
	or	rcx, rax
	mov	rax, qword ptr [rsp + 304]
	imul	rdx, r13, 88
	mov	qword ptr [rax + rdx], r15
	movzx	esi, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	esi, 8
	movzx	edi, r12b
	or	rdi, rsi
	shl	r14, 16
	or	r14, rdi
	mov	qword ptr [rax + rdx + 8], r14
	mov	qword ptr [rax + rdx + 16], rcx
	movzx	ecx, byte ptr [rsp + 24]        # 1-byte Folded Reload
	mov	byte ptr [rax + rdx + 24], cl
	mov	byte ptr [rax + rdx + 31], 0
	mov	word ptr [rax + rdx + 29], 0
	mov	dword ptr [rax + rdx + 25], 0
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	qword ptr [rax + rdx + 48], rcx
	mov	rcx, qword ptr [rsp + 520]      # 8-byte Reload
	mov	qword ptr [rax + rdx + 56], rcx
	mov	rcx, qword ptr [rsp + 496]      # 8-byte Reload
	mov	qword ptr [rax + rdx + 64], rcx
	movaps	xmm0, xmmword ptr [rsp + 64]
	movups	xmmword ptr [rax + rdx + 72], xmm0
	inc	r13
	mov	qword ptr [rsp + 312], r13
	mov	rsi, qword ptr [rsp + 480]
.LBB170_60:                             #   in Loop: Header=BB170_40 Depth=2
	xor	edi, edi
.LBB170_61:                             #   in Loop: Header=BB170_40 Depth=2
	mov	r9, rsi
	test	rsi, rsi
	jne	.LBB170_40
	jmp	.LBB170_270
.LBB170_130:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, r12b
	or	rcx, rax
	shl	r14, 16
	or	r14, rcx
	mov	qword ptr [rsp + 448], r14
	jmp	.LBB170_60
.LBB170_131:                            #   in Loop: Header=BB170_40 Depth=2
	mov	byte ptr [rsp + 468], 1
	jmp	.LBB170_60
.LBB170_132:                            #   in Loop: Header=BB170_40 Depth=2
	mov	byte ptr [rsp + 466], 1
	jmp	.LBB170_60
.LBB170_133:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	ecx, byte ptr [rsp + 400]
	test	cl, cl
	je	.LBB170_362
# %bb.134:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 401]
	not	al
	movzx	eax, al
	div	cl
	cmp	byte ptr [rsp + 464], 0
	jne	.LBB170_60
# %bb.135:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, al
	movzx	r8d, byte ptr [rsp + 397]
	movzx	ecx, byte ptr [rsp + 398]
	cmp	ecx, 1
	je	.LBB170_199
# %bb.136:                              #   in Loop: Header=BB170_40 Depth=2
	test	ecx, ecx
	je	.LBB170_360
# %bb.137:                              #   in Loop: Header=BB170_40 Depth=2
	add	rax, qword ptr [rsp + 416]
	mov	rdx, rax
	shr	rdx, 32
	je	.LBB170_210
# %bb.138:                              #   in Loop: Header=BB170_40 Depth=2
	xor	edx, edx
	div	rcx
	mov	qword ptr [rsp + 416], rdx
	imul	r8, rax
	add	r8, qword ptr [rsp + 408]
	jae	.LBB170_211
	jmp	.LBB170_342
.LBB170_139:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, r12b
	or	rcx, rax
	shl	r14, 16
	or	r14, rcx
	mov	qword ptr [rsp + 440], r14
	jmp	.LBB170_60
.LBB170_140:                            #   in Loop: Header=BB170_40 Depth=2
	mov	byte ptr [rsp + 469], 1
	jmp	.LBB170_60
.LBB170_141:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	ecx, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	ecx, 8
	movzx	eax, r12b
	or	rax, rcx
	shl	r14, 16
	or	rax, r14
	test	r14, r14
	js	.LBB170_191
# %bb.142:                              #   in Loop: Header=BB170_40 Depth=2
	add	qword ptr [rsp + 432], rax
	jmp	.LBB170_60
.LBB170_143:                            #   in Loop: Header=BB170_40 Depth=2
	mov	byte ptr [rsp + 467], 1
	jmp	.LBB170_217
.LBB170_144:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, r12b
	or	rcx, rax
	shl	r14, 16
	or	r14, rcx
	mov	qword ptr [rsp + 456], r14
	jmp	.LBB170_60
.LBB170_145:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	byte ptr [rsp + 464], 0
	jne	.LBB170_60
# %bb.146:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	r8d, r12b
	or	r8, rax
	add	r8, qword ptr [rsp + 408]
	jb	.LBB170_342
# %bb.147:                              #   in Loop: Header=BB170_40 Depth=2
	xor	ecx, ecx
	sub	cl, byte ptr [rsp + 392]
	shl	cl, 3
	mov	rax, -1
                                        # kill: def $cl killed $cl killed $rcx
	shr	rax, cl
	cmp	r8, rax
	ja	.LBB170_342
# %bb.148:                              #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 408], r8
	mov	qword ptr [rsp + 416], 0
	jmp	.LBB170_60
.LBB170_149:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	byte ptr [rsp + 464], 0
	jne	.LBB170_60
# %bb.150:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, r12b
	or	rcx, rax
	shl	r14, 16
	or	r14, rcx
	movzx	r8d, byte ptr [rsp + 397]
	movzx	ecx, byte ptr [rsp + 398]
	cmp	ecx, 1
	je	.LBB170_198
# %bb.151:                              #   in Loop: Header=BB170_40 Depth=2
	test	ecx, ecx
	je	.LBB170_360
# %bb.152:                              #   in Loop: Header=BB170_40 Depth=2
	add	r14, qword ptr [rsp + 416]
	mov	rax, r14
	shr	rax, 32
	je	.LBB170_209
# %bb.153:                              #   in Loop: Header=BB170_40 Depth=2
	mov	rax, r14
	xor	edx, edx
	div	rcx
	mov	qword ptr [rsp + 416], rdx
	mov	r14, rax
	imul	r8, r14
	add	r8, qword ptr [rsp + 408]
	jae	.LBB170_211
	jmp	.LBB170_342
.LBB170_154:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, r12b
	or	rcx, rax
	shl	r14, 16
	or	r14, rcx
	cmp	r14, qword ptr [rsp + 408]
	jae	.LBB170_175
# %bb.155:                              #   in Loop: Header=BB170_40 Depth=2
	mov	byte ptr [rsp + 464], 1
	jmp	.LBB170_60
.LBB170_156:                            #   in Loop: Header=BB170_40 Depth=2
	xor	byte ptr [rsp + 465], 1
	jmp	.LBB170_60
.LBB170_157:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 8]         # 1-byte Folded Reload
	shl	eax, 8
	movzx	ecx, r12b
	or	rcx, rax
	shl	r14, 16
	or	r14, rcx
	mov	qword ptr [rsp + 424], r14
	jmp	.LBB170_60
.LBB170_165:                            #   in Loop: Header=BB170_40 Depth=2
	mov	ecx, 1
	mov	r10, r11
	mov	r15, rsi
.LBB170_166:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB170_168 Depth 4
	test	r15, r15
	je	.LBB170_318
# %bb.167:                              #   in Loop: Header=BB170_166 Depth=3
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	lea	r12, [r15 - 1]
	mov	qword ptr [rsp + 24], r10       # 8-byte Spill
	lea	rbx, [r10 + 1]
	xor	edx, edx
	xor	r9d, r9d
	xor	ecx, ecx
	.p2align	4
.LBB170_168:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        #       Parent Loop BB170_166 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzx	r13d, byte ptr [rbx - 1]
	cmp	ecx, 63
	jne	.LBB170_170
# %bb.169:                              #   in Loop: Header=BB170_168 Depth=4
	cmp	r13b, 1
	ja	.LBB170_316
.LBB170_170:                            #   in Loop: Header=BB170_168 Depth=4
	movzx	r10d, r13b
	mov	r13d, r10d
	and	r13d, 127
	shl	r13, cl
	or	r9, r13
	test	r10b, r10b
	jns	.LBB170_172
# %bb.171:                              #   in Loop: Header=BB170_168 Depth=4
	add	ecx, 7
	inc	rbx
	add	r12, -1
	jb	.LBB170_168
	jmp	.LBB170_317
.LBB170_172:                            #   in Loop: Header=BB170_166 Depth=3
	mov	qword ptr [rsp + 472], rbx
	mov	qword ptr [rsp + 480], r12
	mov	r10, rbx
	mov	r15, r12
	mov	qword ptr [rsp + 536], r9       # 8-byte Spill
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	cmp	rcx, r14
	lea	rcx, [rcx + 1]
	jne	.LBB170_166
# %bb.173:                              #   in Loop: Header=BB170_40 Depth=2
	sub	rbx, r11
	cmp	rsi, rbx
	jb	.LBB170_350
# %bb.174:                              #   in Loop: Header=BB170_40 Depth=2
	mov	ecx, r11d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r11d
	shr	ebp, 16
	mov	rcx, r11
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	rcx, rbx
	shr	rcx, 8
	mov	qword ptr [rsp + 32], rcx       # 8-byte Spill
	mov	r15d, 61
	mov	rsi, r12
	mov	r12d, r11d
	mov	byte ptr [rsp + 24], r8b        # 1-byte Spill
	mov	qword ptr [rsp + 536], r9       # 8-byte Spill
	jmp	.LBB170_52
.LBB170_175:                            #   in Loop: Header=BB170_40 Depth=2
	xor	ecx, ecx
	sub	cl, byte ptr [rsp + 392]
	shl	cl, 3
	mov	rax, -2
	shl	rax, cl
                                        # kill: def $cl killed $cl killed $rcx
	shr	rax, cl
	cmp	r14, rax
	setae	byte ptr [rsp + 464]
	jae	.LBB170_60
# %bb.176:                              #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 408], r14
	mov	qword ptr [rsp + 416], 0
	jmp	.LBB170_60
.LBB170_177:                            #   in Loop: Header=BB170_40 Depth=2
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 65
	mov	qword ptr [rsp + 656], r12      # 8-byte Spill
	jmp	.LBB170_52
.LBB170_178:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	r10, 1
	jbe	.LBB170_315
# %bb.179:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	r12d, word ptr [r9]
	jmp	.LBB170_184
.LBB170_180:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	r10, 7
	jbe	.LBB170_315
# %bb.181:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	ecx, byte ptr [r11 + 9]
	movzx	edx, word ptr [r11 + 6]
	movzx	r8d, byte ptr [r11 + 8]
	shl	r8d, 16
	or	r8d, edx
	mov	r12d, dword ptr [r11 + 2]
	shl	r8, 40
	shl	r12, 8
	or	r12, r8
	shrd	r12, rcx, 8
	jmp	.LBB170_184
.LBB170_182:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	r10, 3
	jbe	.LBB170_315
# %bb.183:                              #   in Loop: Header=BB170_40 Depth=2
	mov	r12d, dword ptr [r9]
.LBB170_184:                            #   in Loop: Header=BB170_40 Depth=2
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 63
	mov	qword ptr [rsp], r12            # 8-byte Spill
                                        # kill: def $r12b killed $r12b killed $r12 def $r12
	jmp	.LBB170_52
.LBB170_185:                            #   in Loop: Header=BB170_40 Depth=2
	mov	rcx, rbx
	not	rcx
	lea	r12, [r9 + rbx]
	inc	r12
	add	r10, rcx
	je	.LBB170_341
# %bb.186:                              #   in Loop: Header=BB170_40 Depth=2
	xor	edx, edx
	xor	ebp, ebp
	xor	ecx, ecx
	mov	r15, r12
.LBB170_187:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r11d, byte ptr [r15]
	cmp	ecx, 63
	jne	.LBB170_189
# %bb.188:                              #   in Loop: Header=BB170_187 Depth=3
	cmp	r11b, 1
	ja	.LBB170_248
.LBB170_189:                            #   in Loop: Header=BB170_187 Depth=3
	movzx	r13d, r11b
	mov	qword ptr [rsp + 48], rbp       # 8-byte Spill
	mov	ebp, r13d
	and	ebp, 127
	shl	rbp, cl
	lea	r11, [r15 + 1]
	or	qword ptr [rsp + 48], rbp       # 8-byte Folded Spill
	mov	rbp, qword ptr [rsp + 48]       # 8-byte Reload
	test	r13b, r13b
	jns	.LBB170_203
# %bb.190:                              #   in Loop: Header=BB170_187 Depth=3
	add	ecx, 7
	dec	r14
	mov	r15, r11
	add	rax, -1
	jb	.LBB170_187
	jmp	.LBB170_340
.LBB170_191:                            #   in Loop: Header=BB170_40 Depth=2
	mov	rdx, rax
	neg	rdx
	mov	rcx, qword ptr [rsp + 432]
	cmp	rcx, rdx
	jae	.LBB170_201
# %bb.192:                              #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 432], 0
	jmp	.LBB170_60
.LBB170_193:                            #   in Loop: Header=BB170_40 Depth=2
	mov	rdx, qword ptr [rsp + 432]
	lea	r8, [rdx + rcx]
	neg	rcx
	cmp	rdx, rcx
	mov	ecx, 0
	cmovae	rcx, r8
	mov	qword ptr [rsp + 432], rcx
	cmp	byte ptr [rsp + 464], 0
	jne	.LBB170_217
.LBB170_194:                            #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, al
	movzx	r8d, byte ptr [rsp + 397]
	movzx	ecx, byte ptr [rsp + 398]
	cmp	ecx, 1
	je	.LBB170_200
# %bb.195:                              #   in Loop: Header=BB170_40 Depth=2
	test	ecx, ecx
	je	.LBB170_360
# %bb.196:                              #   in Loop: Header=BB170_40 Depth=2
	add	rax, qword ptr [rsp + 416]
	mov	rdx, rax
	shr	rdx, 32
	je	.LBB170_213
# %bb.197:                              #   in Loop: Header=BB170_40 Depth=2
	xor	edx, edx
	div	rcx
	mov	qword ptr [rsp + 416], rdx
	jmp	.LBB170_214
.LBB170_198:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 416], 0
	imul	r8, r14
	add	r8, qword ptr [rsp + 408]
	jae	.LBB170_211
	jmp	.LBB170_342
.LBB170_199:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 416], 0
	imul	r8, rax
	add	r8, qword ptr [rsp + 408]
	jae	.LBB170_211
	jmp	.LBB170_342
.LBB170_200:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 416], 0
	jmp	.LBB170_214
.LBB170_201:                            #   in Loop: Header=BB170_40 Depth=2
	add	rcx, rax
	mov	qword ptr [rsp + 432], rcx
	jmp	.LBB170_60
.LBB170_202:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 472], r11
	mov	qword ptr [rsp + 480], rsi
	mov	ecx, r12d
	shr	ecx, 8
	mov	dword ptr [rsp + 8], ecx        # 4-byte Spill
	mov	ebp, r12d
	shr	ebp, 16
	mov	rcx, r12
	shr	rcx, 32
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15d, 60
	mov	qword ptr [rsp + 664], r12      # 8-byte Spill
	mov	ebx, r8d
	jmp	.LBB170_52
.LBB170_203:                            #   in Loop: Header=BB170_40 Depth=2
	test	rax, rax
	je	.LBB170_247
# %bb.204:                              #   in Loop: Header=BB170_40 Depth=2
	inc	rax
	xor	edx, edx
	xor	ebp, ebp
	xor	ecx, ecx
.LBB170_205:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	r10d, byte ptr [r11]
	cmp	ecx, 63
	jne	.LBB170_207
# %bb.206:                              #   in Loop: Header=BB170_205 Depth=3
	cmp	r10b, 1
	ja	.LBB170_248
.LBB170_207:                            #   in Loop: Header=BB170_205 Depth=3
	movzx	r12d, r10b
	mov	r13d, r12d
	and	r13d, 127
	shl	r13, cl
	lea	r10, [r11 + 1]
	or	rbp, r13
	test	r12b, r12b
	jns	.LBB170_221
# %bb.208:                              #   in Loop: Header=BB170_205 Depth=3
	add	ecx, 7
	mov	r11, r10
	add	r14, -1
	jb	.LBB170_205
	jmp	.LBB170_346
.LBB170_209:                            #   in Loop: Header=BB170_40 Depth=2
	mov	eax, r14d
	xor	edx, edx
	div	ecx
                                        # kill: def $edx killed $edx def $rdx
	mov	qword ptr [rsp + 416], rdx
	mov	r14d, eax
	imul	r8, r14
	add	r8, qword ptr [rsp + 408]
	jae	.LBB170_211
	jmp	.LBB170_342
.LBB170_210:                            #   in Loop: Header=BB170_40 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	xor	edx, edx
	div	ecx
                                        # kill: def $edx killed $edx def $rdx
	mov	qword ptr [rsp + 416], rdx
                                        # kill: def $eax killed $eax def $rax
	imul	r8, rax
	add	r8, qword ptr [rsp + 408]
	jb	.LBB170_342
.LBB170_211:                            #   in Loop: Header=BB170_40 Depth=2
	xor	ecx, ecx
	sub	cl, byte ptr [rsp + 392]
	shl	cl, 3
	mov	rax, -1
                                        # kill: def $cl killed $cl killed $rcx
	shr	rax, cl
	cmp	r8, rax
	ja	.LBB170_342
# %bb.212:                              #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 408], r8
	jmp	.LBB170_60
.LBB170_213:                            #   in Loop: Header=BB170_40 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	xor	edx, edx
	div	ecx
                                        # kill: def $edx killed $edx def $rdx
	mov	qword ptr [rsp + 416], rdx
                                        # kill: def $eax killed $eax def $rax
.LBB170_214:                            #   in Loop: Header=BB170_40 Depth=2
	imul	r8, rax
	add	r8, qword ptr [rsp + 408]
	jb	.LBB170_342
# %bb.215:                              #   in Loop: Header=BB170_40 Depth=2
	xor	ecx, ecx
	sub	cl, byte ptr [rsp + 392]
	shl	cl, 3
	mov	rax, -1
                                        # kill: def $cl killed $cl killed $rcx
	shr	rax, cl
	cmp	r8, rax
	ja	.LBB170_342
# %bb.216:                              #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 408], r8
.LBB170_217:                            #   in Loop: Header=BB170_40 Depth=2
	cmp	byte ptr [rsp + 464], 0
	je	.LBB170_228
# %bb.218:                              #   in Loop: Header=BB170_40 Depth=2
	cmp	byte ptr [rsp + 467], 0
	je	.LBB170_220
# %bb.219:                              #   in Loop: Header=BB170_40 Depth=2
	movzx	eax, byte ptr [rsp + 396]
	lea	rcx, [rsp + 296]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + 112], xmm0
	mov	qword ptr [rsp + 424], 1
	mov	qword ptr [rsp + 432], 1
	movups	xmmword ptr [rcx + 153], xmm0
	movups	xmmword ptr [rcx + 144], xmm0
	mov	byte ptr [rsp + 465], al
	mov	dword ptr [rsp + 466], 0
	mov	edi, 256
	jmp	.LBB170_61
.LBB170_220:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 456], 0
	mov	byte ptr [rsp + 466], 0
	mov	word ptr [rsp + 468], 0
	mov	edi, 256
	jmp	.LBB170_61
.LBB170_221:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 520], rbp      # 8-byte Spill
	test	r14, r14
	je	.LBB170_318
# %bb.222:                              #   in Loop: Header=BB170_40 Depth=2
	lea	rax, [r14 + 1]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	xor	edx, edx
	xor	r15d, r15d
	xor	eax, eax
	xor	ecx, ecx
.LBB170_223:                            #   Parent Loop BB170_36 Depth=1
                                        #     Parent Loop BB170_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzx	ebp, byte ptr [r10]
	cmp	ecx, 63
	jne	.LBB170_225
# %bb.224:                              #   in Loop: Header=BB170_223 Depth=3
	cmp	bpl, 1
	ja	.LBB170_248
.LBB170_225:                            #   in Loop: Header=BB170_223 Depth=3
	movzx	r12d, bpl
	mov	r13d, r12d
	and	r13d, 127
	shl	r13, cl
	or	rax, r13
	test	r12b, r12b
	jns	.LBB170_227
# %bb.226:                              #   in Loop: Header=BB170_223 Depth=3
	inc	r10
	add	ecx, 7
	inc	r15
	cmp	r14, r15
	jne	.LBB170_223
	jmp	.LBB170_347
.LBB170_227:                            #   in Loop: Header=BB170_40 Depth=2
	mov	qword ptr [rsp + 496], rax      # 8-byte Spill
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 576], xmm0
	mov	eax, r9d
	shr	eax, 8
	mov	dword ptr [rsp + 8], eax        # 4-byte Spill
	mov	ebp, r9d
	shr	ebp, 16
	mov	rax, r9
	shr	rax, 32
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	rax, rbx
	shr	rax, 8
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	r15d, 31
	mov	byte ptr [rsp + 24], 46         # 1-byte Folded Spill
	xor	eax, eax
	mov	r12d, r9d
	jmp	.LBB170_52
.LBB170_228:                            #   in Loop: Header=BB170_36 Depth=1
	cmp	byte ptr [rsp + 467], 0
	mov	r13, qword ptr [rsp + 40]       # 8-byte Reload
	je	.LBB170_232
# %bb.229:                              #   in Loop: Header=BB170_36 Depth=1
	test	r13, r13
	je	.LBB170_240
# %bb.230:                              #   in Loop: Header=BB170_36 Depth=1
	mov	rax, qword ptr [rsp + 112]
	mov	rbp, qword ptr [rsp + 120]
	mov	rbx, qword ptr [rbp]
	mov	r15, qword ptr [rsp + 408]
	mov	qword ptr [rsp + 112], 0
	mov	qword ptr [rsp + 120], 8
	mov	qword ptr [rsp + 128], 0
	cmp	rax, r13
	mov	rcx, r13
	lea	r13, [rsp + 296]
	jbe	.LBB170_242
# %bb.231:                              #   in Loop: Header=BB170_36 Depth=1
	shl	rax, 3
	lea	rsi, [rax + 2*rax]
	lea	rax, [8*rcx]
	lea	r12, [rax + 2*rax]
	mov	rdi, rbp
	mov	rdx, r12
	call	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	mov	r14, rax
	test	rax, rax
	jne	.LBB170_243
	jmp	.LBB170_365
.LBB170_232:                            #   in Loop: Header=BB170_36 Depth=1
	mov	r15, qword ptr [rsp + 408]
	mov	r14, qword ptr [rsp + 424]
	mov	ebp, dword ptr [rsp + 432]
	mov	ebx, dword ptr [rsp + 440]
	lea	r12, [2*r13]
	add	r12, r13
	test	r13, r13
	je	.LBB170_236
# %bb.233:                              #   in Loop: Header=BB170_36 Depth=1
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	lea	rax, [rax + 8*r12]
	add	rax, -24
	test	rax, rax
	je	.LBB170_236
# %bb.234:                              #   in Loop: Header=BB170_36 Depth=1
	cmp	qword ptr [rax], r15
	jne	.LBB170_236
# %bb.235:                              #   in Loop: Header=BB170_36 Depth=1
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	lea	rax, [rax + 8*r12]
	mov	qword ptr [rax - 16], r14
	mov	dword ptr [rax - 8], ebp
	mov	dword ptr [rax - 4], ebx
	jmp	.LBB170_241
.LBB170_236:                            #   in Loop: Header=BB170_36 Depth=1
	cmp	r13, qword ptr [rsp + 112]
	jne	.LBB170_239
# %bb.237:                              #   in Loop: Header=BB170_36 Depth=1
.Ltmp824:
	lea	rdi, [rsp + 112]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp825:
# %bb.238:                              #   in Loop: Header=BB170_36 Depth=1
	mov	rax, qword ptr [rsp + 120]
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
.LBB170_239:                            #   in Loop: Header=BB170_36 Depth=1
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [rax + 8*r12], r15
	mov	qword ptr [rax + 8*r12 + 8], r14
	mov	dword ptr [rax + 8*r12 + 16], ebp
	mov	dword ptr [rax + 8*r12 + 20], ebx
	inc	r13
	mov	qword ptr [rsp + 40], r13       # 8-byte Spill
	mov	qword ptr [rsp + 128], r13
	jmp	.LBB170_241
.LBB170_240:                            #   in Loop: Header=BB170_36 Depth=1
	mov	qword ptr [rsp + 40], 0         # 8-byte Folded Spill
.LBB170_241:                            #   in Loop: Header=BB170_36 Depth=1
	lea	r13, [rsp + 296]
	movzx	eax, byte ptr [rsp + 467]
	jmp	.LBB170_36
.LBB170_242:                            #   in Loop: Header=BB170_36 Depth=1
	mov	r14, rbp
.LBB170_243:                            #   in Loop: Header=BB170_36 Depth=1
	mov	r12, qword ptr [rsp + 104]
	cmp	r12, qword ptr [rsp + 88]
	jne	.LBB170_245
# %bb.244:                              #   in Loop: Header=BB170_36 Depth=1
.Ltmp827:
	lea	rdi, [rsp + 88]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp828:
.LBB170_245:                            #   in Loop: Header=BB170_36 Depth=1
	mov	rax, qword ptr [rsp + 96]
	mov	rcx, r12
	shl	rcx, 5
	mov	qword ptr [rax + rcx], r14
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [rax + rcx + 8], rdx
	mov	qword ptr [rax + rcx + 16], rbx
	mov	qword ptr [rax + rcx + 24], r15
	inc	r12
	mov	qword ptr [rsp + 104], r12
	mov	eax, 8
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	mov	qword ptr [rsp + 40], 0         # 8-byte Folded Spill
	movzx	eax, byte ptr [rsp + 467]
	jmp	.LBB170_36
.LBB170_246:
	add	r10, r9
	mov	qword ptr [rsp + 472], r10
	mov	qword ptr [rsp + 480], 0
	mov	r11, r10
.LBB170_247:
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], r11            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_248:
	xor	r14d, r14d
	xor	ebp, ebp
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB170_249:
	movzx	eax, r14b
	shl	eax, 8
	or	rax, r8
	shl	rdx, 32
	shl	ebp, 16
	or	rbp, rdx
	or	rbp, rax
	mov	qword ptr [rsp + 472], 1
	mov	qword ptr [rsp + 480], 0
.LBB170_250:
	cmp	qword ptr [rsp + 224], 0
	je	.LBB170_252
# %bb.251:
	mov	rdi, qword ptr [rsp + 232]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_252:
	cmp	qword ptr [rsp + 248], 0
	je	.LBB170_254
# %bb.253:
	mov	rdi, qword ptr [rsp + 256]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_254:
	cmp	qword ptr [rsp + 272], 0
	je	.LBB170_256
# %bb.255:
	mov	rdi, qword ptr [rsp + 280]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_256:
	cmp	qword ptr [rsp + 296], 0
	je	.LBB170_258
# %bb.257:
	mov	rdi, qword ptr [rsp + 304]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_258:
	cmp	qword ptr [rsp + 112], 0
	je	.LBB170_260
# %bb.259:
	mov	rdi, qword ptr [rsp + 120]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_260:
	mov	rbx, qword ptr [rsp + 96]
	mov	r14, qword ptr [rsp + 104]
	test	r14, r14
	je	.LBB170_265
# %bb.261:
	lea	r15, [rbx + 8]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_263
	.p2align	4
.LBB170_262:                            #   in Loop: Header=BB170_263 Depth=1
	add	r15, 32
	dec	r14
	je	.LBB170_265
.LBB170_263:                            # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r15], 0
	je	.LBB170_262
# %bb.264:                              #   in Loop: Header=BB170_263 Depth=1
	mov	rdi, qword ptr [r15 - 8]
	call	r12
	jmp	.LBB170_262
.LBB170_265:
	cmp	qword ptr [rsp + 88], 0
	je	.LBB170_267
# %bb.266:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_267:
	xor	r14d, r14d
                                        # implicit-def: $r15
.LBB170_268:
	mov	rcx, qword ptr [rsp + 688]      # 8-byte Reload
	cmp	dword ptr [rcx], 1
	je	.LBB170_351
# %bb.269:
	mov	qword ptr [rcx], 1
	lea	rax, [rcx + 8]
	mov	qword ptr [rcx + 8], r14
	mov	qword ptr [rcx + 16], rbp
	mov	rdx, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rcx + 24], rdx
	mov	qword ptr [rcx + 32], r15
	add	rsp, 696
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
.LBB170_270:
	.cfi_def_cfa_offset 752
	mov	rsi, qword ptr [rsp + 104]
	cmp	rsi, 2
	jae	.LBB170_348
.LBB170_271:
	mov	qword ptr [rsp + 64], 0
	mov	qword ptr [rsp + 72], 8
	mov	qword ptr [rsp + 80], 0
	cmp	word ptr [rsp + 394], 5
	jae	.LBB170_275
# %bb.272:
	cmp	dword ptr [rsp + 136], 46
	je	.LBB170_280
# %bb.273:
	lea	rcx, [rsp + 136]
	jmp	.LBB170_277
.LBB170_274:
	mov	r8d, 6
	xor	r14d, r14d
	xor	ebp, ebp
	mov	qword ptr [rsp], r15            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_275:
	cmp	qword ptr [rsp + 312], 0
	je	.LBB170_280
# %bb.276:
	mov	rcx, qword ptr [rsp + 304]
.LBB170_277:
.Ltmp838:
	lea	rdi, [rsp + 576]
	lea	r8, [rsp + 136]
	mov	rsi, qword ptr [rsp + 544]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 552]      # 8-byte Reload
	call	_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Ltmp839:
# %bb.278:
	mov	r15, qword ptr [rsp + 576]
	mov	r14, qword ptr [rsp + 584]
	mov	r12, qword ptr [rsp + 592]
	mov	ebx, 8
	movabs	rax, -9223372036854775808
	cmp	r15, rax
	jne	.LBB170_283
# %bb.279:
	mov	qword ptr [rsp], r12            # 8-byte Spill
	jmp	.LBB170_303
.LBB170_280:
.Ltmp844:
	lea	rdi, [rsp + 64]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp845:
# %bb.281:
	mov	r14d, 1
	xor	r15d, r15d
	xor	r12d, r12d
	jmp	.LBB170_284
.LBB170_282:
	lea	rax, [r10 + rdx]
	inc	rax
	mov	qword ptr [rsp], rax            # 8-byte Spill
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	jmp	.LBB170_249
.LBB170_283:
.Ltmp841:
	lea	rdi, [rsp + 64]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp842:
.LBB170_284:
	mov	r13, qword ptr [rsp + 72]
	mov	qword ptr [r13], r15
	mov	qword ptr [r13 + 8], r14
	mov	qword ptr [r13 + 16], r12
	mov	qword ptr [rsp + 80], 1
	mov	ebp, 1
	mov	ebx, 40
	xor	r12d, r12d
	jmp	.LBB170_286
	.p2align	4
.LBB170_285:                            #   in Loop: Header=BB170_286 Depth=1
	mov	qword ptr [r13 + rbx - 16], r15
	mov	qword ptr [r13 + rbx - 8], r14
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [r13 + rbx], rax
	inc	rbp
	mov	qword ptr [rsp + 80], rbp
	add	r12, 88
	add	rbx, 24
.LBB170_286:                            # =>This Inner Loop Header: Depth=1
	cmp	word ptr [rsp + 394], 5
	jae	.LBB170_290
# %bb.287:                              #   in Loop: Header=BB170_286 Depth=1
	test	rbp, rbp
	je	.LBB170_292
# %bb.288:                              #   in Loop: Header=BB170_286 Depth=1
	lea	rax, [rbp - 1]
	cmp	rax, qword ptr [rsp + 312]
	jae	.LBB170_306
# %bb.289:                              #   in Loop: Header=BB170_286 Depth=1
	mov	rcx, qword ptr [rsp + 304]
	add	rcx, r12
	jmp	.LBB170_293
	.p2align	4
.LBB170_290:                            #   in Loop: Header=BB170_286 Depth=1
	cmp	rbp, qword ptr [rsp + 312]
	jae	.LBB170_306
# %bb.291:                              #   in Loop: Header=BB170_286 Depth=1
	imul	rcx, rbp, 88
	add	rcx, qword ptr [rsp + 304]
	jmp	.LBB170_293
.LBB170_292:                            #   in Loop: Header=BB170_286 Depth=1
	cmp	dword ptr [rsp + 136], 46
	lea	rcx, [rsp + 136]
	je	.LBB170_321
	.p2align	4
.LBB170_293:                            #   in Loop: Header=BB170_286 Depth=1
.Ltmp850:
	lea	rdi, [rsp + 576]
	mov	rsi, qword ptr [rsp + 544]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 552]      # 8-byte Reload
	lea	r8, [rsp + 136]
	call	_RINvNtCsfwdNdOnv07X_9addr2line4line11render_fileINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Ltmp851:
# %bb.294:                              #   in Loop: Header=BB170_286 Depth=1
	mov	r15, qword ptr [rsp + 576]
	mov	r14, qword ptr [rsp + 584]
	mov	rax, qword ptr [rsp + 592]
	mov	qword ptr [rsp], rax            # 8-byte Spill
	movabs	rax, -9223372036854775808
	cmp	r15, rax
	je	.LBB170_298
# %bb.295:                              #   in Loop: Header=BB170_286 Depth=1
	cmp	rbp, qword ptr [rsp + 64]
	jne	.LBB170_285
# %bb.296:                              #   in Loop: Header=BB170_286 Depth=1
.Ltmp853:
	lea	rdi, [rsp + 64]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp854:
# %bb.297:                              #   in Loop: Header=BB170_286 Depth=1
	mov	r13, qword ptr [rsp + 72]
	jmp	.LBB170_285
.LBB170_298:
	mov	rbx, qword ptr [rsp + 72]
	test	rbp, rbp
	je	.LBB170_303
# %bb.299:
	lea	r15, [rbx + 8]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_301
	.p2align	4
.LBB170_300:                            #   in Loop: Header=BB170_301 Depth=1
	add	r15, 24
	dec	rbp
	je	.LBB170_303
.LBB170_301:                            # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r15 - 8], 0
	je	.LBB170_300
# %bb.302:                              #   in Loop: Header=BB170_301 Depth=1
	mov	rdi, qword ptr [r15]
	call	r12
	jmp	.LBB170_300
.LBB170_303:
	cmp	qword ptr [rsp + 64], 0
	je	.LBB170_305
# %bb.304:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_305:
	mov	rbp, r14
	jmp	.LBB170_250
.LBB170_306:
	mov	rax, qword ptr [rsp + 64]
	mov	r14, qword ptr [rsp + 72]
	cmp	rax, rbp
	jbe	.LBB170_324
# %bb.307:
	test	rbp, rbp
	je	.LBB170_322
# %bb.308:
	shl	rax, 3
	lea	rsi, [rax + 2*rax]
	lea	rax, [8*rbp]
	lea	rbx, [rax + 2*rax]
	mov	rdi, r14
	mov	rdx, rbx
	call	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	mov	r14, rax
	test	rax, rax
	jne	.LBB170_324
# %bb.309:
.Ltmp847:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp848:
# %bb.310:
.LBB170_311:
	mov	qword ptr [rsp + 472], rdx
	mov	qword ptr [rsp + 480], rsi
	mov	r8d, 6
	jmp	.LBB170_320
.LBB170_312:
	xor	r14d, r14d
	xor	ebp, ebp
	mov	rax, qword ptr [rsp + 656]      # 8-byte Reload
	mov	qword ptr [rsp], rax            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_313:
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], rax            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_314:
	add	r9, r10
.LBB170_315:
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], r9             # 8-byte Spill
	jmp	.LBB170_249
.LBB170_316:
	mov	r8d, 6
	xor	r14d, r14d
	xor	ebp, ebp
	mov	rax, qword ptr [rsp + 536]      # 8-byte Reload
	mov	qword ptr [rsp], rax            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_317:
	mov	r10, qword ptr [rsp + 24]       # 8-byte Reload
	add	r10, r15
	mov	qword ptr [rsp + 472], r10
	mov	qword ptr [rsp + 480], 0
.LBB170_318:
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], r10            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_319:
	mov	r8d, 7
.LBB170_320:
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], r14            # 8-byte Spill
	xor	r14d, r14d
	jmp	.LBB170_249
.LBB170_321:
	mov	r14, qword ptr [rsp + 72]
	cmp	qword ptr [rsp + 64], 0
	je	.LBB170_323
.LBB170_322:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	r14d, 8
.LBB170_323:
	xor	ebp, ebp
.LBB170_324:
	mov	rsi, qword ptr [rsp + 88]
	mov	rax, qword ptr [rsp + 96]
	mov	qword ptr [rsp], rax            # 8-byte Spill
	mov	r15, qword ptr [rsp + 104]
	cmp	rsi, r15
	jbe	.LBB170_330
# %bb.325:
	test	r15, r15
	je	.LBB170_329
# %bb.326:
	shl	rsi, 5
	mov	rbx, r15
	shl	rbx, 5
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	mov	rdx, rbx
	call	_RNvCsL6e0J8m5bd_7___rustc14___rust_realloc
	mov	qword ptr [rsp], rax            # 8-byte Spill
	test	rax, rax
	jne	.LBB170_330
# %bb.327:
.Ltmp856:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp857:
# %bb.328:
.LBB170_329:
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	mov	eax, 8
	mov	qword ptr [rsp], rax            # 8-byte Spill
.LBB170_330:
	cmp	qword ptr [rsp + 224], 0
	je	.LBB170_332
# %bb.331:
	mov	rdi, qword ptr [rsp + 232]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_332:
	cmp	qword ptr [rsp + 248], 0
	je	.LBB170_334
# %bb.333:
	mov	rdi, qword ptr [rsp + 256]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_334:
	cmp	qword ptr [rsp + 272], 0
	je	.LBB170_336
# %bb.335:
	mov	rdi, qword ptr [rsp + 280]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_336:
	cmp	qword ptr [rsp + 296], 0
	je	.LBB170_338
# %bb.337:
	mov	rdi, qword ptr [rsp + 304]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_338:
	cmp	qword ptr [rsp + 112], 0
	je	.LBB170_268
# %bb.339:
	mov	rdi, qword ptr [rsp + 120]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_268
.LBB170_340:
	add	r12, r10
.LBB170_341:
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], r12            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_342:
	lea	rax, [rsp + 136]
	and	rax, -65536
	and	edi, 65280
	lea	rbp, [rax + rdi]
	add	rbp, 52
	mov	qword ptr [rsp], r8             # 8-byte Spill
	jmp	.LBB170_250
.LBB170_343:
	mov	word ptr [rsp + 528], 0
	mov	dword ptr [rsp + 530], 0
	movzx	ebp, word ptr [rsp + 529]
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	mov	qword ptr [rsp], r11            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_344:
	mov	r8d, 19
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	mov	qword ptr [rsp], rcx            # 8-byte Spill
	mov	r14d, dword ptr [rsp + 8]       # 4-byte Reload
	jmp	.LBB170_249
.LBB170_345:
	xor	r14d, r14d
	mov	r8d, 19
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp], rcx            # 8-byte Spill
	jmp	.LBB170_249
.LBB170_346:
	add	r15, rax
	mov	r11, r15
	jmp	.LBB170_247
.LBB170_347:
	add	r11, qword ptr [rsp + 16]       # 8-byte Folded Reload
	mov	r10, r11
	jmp	.LBB170_318
.LBB170_348:
	mov	rdi, qword ptr [rsp + 96]
	cmp	rsi, 21
	jae	.LBB170_364
# %bb.349:
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSB1m_11sort_by_keyyNCINvMs_B1o_NtB1o_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3z_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
	jmp	.LBB170_271
.LBB170_350:
	mov	r8d, 19
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	mov	qword ptr [rsp], r11            # 8-byte Spill
	mov	r14d, dword ptr [rsp + 8]       # 4-byte Reload
	jmp	.LBB170_249
.LBB170_351:
	add	rcx, 8
	mov	qword ptr [rsp + 136], rcx
	mov	qword ptr [rsp + 144], r14
	mov	qword ptr [rsp + 152], rbp
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rsp + 160], rax
	mov	qword ptr [rsp + 168], r15
	lea	rdi, [rsp + 136]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.0]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.2]
	mov	esi, 29
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB170_352:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB170_353:
.Ltmp810:
	mov	rdi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp811:
# %bb.354:
.LBB170_355:
.Ltmp813:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp814:
# %bb.356:
.LBB170_357:
.Ltmp816:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp817:
# %bb.358:
.LBB170_359:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.29]
	mov	qword ptr [rsp + 560], rax      # 8-byte Spill
.LBB170_360:
.Ltmp833:
	mov	rdi, qword ptr [rsp + 560]      # 8-byte Reload
	call	_RNvNtNtCsfQL5qMWGko6_4core9panicking11panic_const23panic_const_rem_by_zero
.Ltmp834:
# %bb.361:
.LBB170_362:
.Ltmp822:
	call	_RNvNtNtCsfQL5qMWGko6_4core9panicking11panic_const23panic_const_div_by_zero
.Ltmp823:
# %bb.363:
.LBB170_364:
.Ltmp835:
	call	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Ltmp836:
	jmp	.LBB170_271
.LBB170_365:
.Ltmp830:
	mov	rdi, r12
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp831:
# %bb.366:
.LBB170_367:
.Ltmp832:
	mov	rbx, rax
	mov	rdi, rbp
	jmp	.LBB170_369
.LBB170_368:
.Ltmp829:
	mov	rbx, rax
	mov	rdi, r14
.LBB170_369:
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_394
.LBB170_370:
.Ltmp826:
	jmp	.LBB170_378
.LBB170_371:
.Ltmp849:
	jmp	.LBB170_392
.LBB170_372:
.Ltmp858:
	mov	rbx, rax
	lea	rdi, [rsp + 88]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceEECs3bNtqN8jaZB_3std
	mov	rdi, r14
	mov	rsi, rbp
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
	xor	ebp, ebp
	jmp	.LBB170_395
.LBB170_373:
.Ltmp843:
	jmp	.LBB170_380
.LBB170_374:
.Ltmp846:
	jmp	.LBB170_392
.LBB170_375:
.Ltmp840:
	jmp	.LBB170_392
.LBB170_376:
.Ltmp837:
	jmp	.LBB170_378
.LBB170_377:
.Ltmp821:
.LBB170_378:
	mov	rbx, rax
	jmp	.LBB170_394
.LBB170_379:
.Ltmp855:
.LBB170_380:
	mov	rbx, rax
	test	r15, r15
	je	.LBB170_393
# %bb.381:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_393
.LBB170_382:
.Ltmp818:
	mov	rbx, rax
	cmp	qword ptr [rsp + 496], 0        # 8-byte Folded Reload
	je	.LBB170_385
# %bb.383:
	mov	rdi, qword ptr [rsp + 488]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_385
.LBB170_384:
.Ltmp815:
	mov	rbx, rax
.LBB170_385:
	cmp	qword ptr [rsp + 40], 0         # 8-byte Folded Reload
	je	.LBB170_388
# %bb.386:
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB170_388
.LBB170_387:
.Ltmp812:
	mov	rbx, rax
.LBB170_388:
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	je	.LBB170_390
# %bb.389:
	mov	rdi, qword ptr [rsp + 48]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_390:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB170_391:
.Ltmp852:
.LBB170_392:
	mov	rbx, rax
.LBB170_393:
	lea	rdi, [rsp + 64]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtBL_6string6StringEECs3bNtqN8jaZB_3std
.LBB170_394:
	mov	bpl, 1
.LBB170_395:
	lea	rdi, [rsp + 136]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read4line8LineRowsINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEINtBJ_21IncompleteLineProgramB1q_jEjEECs3bNtqN8jaZB_3std
	cmp	qword ptr [rsp + 112], 0
	je	.LBB170_397
# %bb.396:
	mov	rdi, qword ptr [rsp + 120]
	call	qword ptr [rip + free@GOTPCREL]
.LBB170_397:
	test	bpl, bpl
	je	.LBB170_390
# %bb.398:
	lea	rdi, [rsp + 88]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceEECs3bNtqN8jaZB_3std
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end170:
	.size	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std, .Lfunc_end170-_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata.unlikely._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI170_0:
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_14-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_15-.LJTI170_0
	.long	.LBB170_18-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_14-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_14-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_15-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_7-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
	.long	.LBB170_11-.LJTI170_0
.LJTI170_1:
	.long	.LBB170_44-.LJTI170_1
	.long	.LBB170_93-.LJTI170_1
	.long	.LBB170_80-.LJTI170_1
	.long	.LBB170_86-.LJTI170_1
	.long	.LBB170_73-.LJTI170_1
	.long	.LBB170_99-.LJTI170_1
	.long	.LBB170_100-.LJTI170_1
	.long	.LBB170_92-.LJTI170_1
	.long	.LBB170_102-.LJTI170_1
	.long	.LBB170_79-.LJTI170_1
	.long	.LBB170_101-.LJTI170_1
	.long	.LBB170_67-.LJTI170_1
.LJTI170_2:
	.long	.LBB170_66-.LJTI170_2
	.long	.LBB170_125-.LJTI170_2
	.long	.LBB170_114-.LJTI170_2
	.long	.LBB170_119-.LJTI170_2
.LJTI170_3:
	.long	.LBB170_127-.LJTI170_3
	.long	.LBB170_178-.LJTI170_3
	.long	.LBB170_249-.LJTI170_3
	.long	.LBB170_182-.LJTI170_3
	.long	.LBB170_249-.LJTI170_3
	.long	.LBB170_249-.LJTI170_3
	.long	.LBB170_249-.LJTI170_3
	.long	.LBB170_180-.LJTI170_3
.LJTI170_4:
	.long	.LBB170_54-.LJTI170_4
	.long	.LBB170_217-.LJTI170_4
	.long	.LBB170_149-.LJTI170_4
	.long	.LBB170_141-.LJTI170_4
	.long	.LBB170_157-.LJTI170_4
	.long	.LBB170_139-.LJTI170_4
	.long	.LBB170_156-.LJTI170_4
	.long	.LBB170_132-.LJTI170_4
	.long	.LBB170_133-.LJTI170_4
	.long	.LBB170_145-.LJTI170_4
	.long	.LBB170_131-.LJTI170_4
	.long	.LBB170_140-.LJTI170_4
	.long	.LBB170_130-.LJTI170_4
	.long	.LBB170_60-.LJTI170_4
	.long	.LBB170_60-.LJTI170_4
	.long	.LBB170_60-.LJTI170_4
	.long	.LBB170_143-.LJTI170_4
	.long	.LBB170_154-.LJTI170_4
	.long	.LBB170_57-.LJTI170_4
	.long	.LBB170_144-.LJTI170_4
	.long	.LBB170_60-.LJTI170_4
	.section	.gcc_except_table._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table170:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Lfunc_begin32-.Lfunc_begin32  # >> Call Site 1 <<
	.uleb128 .Ltmp819-.Lfunc_begin32        #   Call between .Lfunc_begin32 and .Ltmp819
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp819-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Ltmp820-.Ltmp819              #   Call between .Ltmp819 and .Ltmp820
	.uleb128 .Ltmp821-.Lfunc_begin32        #     jumps to .Ltmp821
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp824-.Lfunc_begin32        # >> Call Site 3 <<
	.uleb128 .Ltmp825-.Ltmp824              #   Call between .Ltmp824 and .Ltmp825
	.uleb128 .Ltmp826-.Lfunc_begin32        #     jumps to .Ltmp826
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp827-.Lfunc_begin32        # >> Call Site 4 <<
	.uleb128 .Ltmp828-.Ltmp827              #   Call between .Ltmp827 and .Ltmp828
	.uleb128 .Ltmp829-.Lfunc_begin32        #     jumps to .Ltmp829
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp828-.Lfunc_begin32        # >> Call Site 5 <<
	.uleb128 .Ltmp838-.Ltmp828              #   Call between .Ltmp828 and .Ltmp838
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin32        # >> Call Site 6 <<
	.uleb128 .Ltmp839-.Ltmp838              #   Call between .Ltmp838 and .Ltmp839
	.uleb128 .Ltmp840-.Lfunc_begin32        #     jumps to .Ltmp840
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp844-.Lfunc_begin32        # >> Call Site 7 <<
	.uleb128 .Ltmp845-.Ltmp844              #   Call between .Ltmp844 and .Ltmp845
	.uleb128 .Ltmp846-.Lfunc_begin32        #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp841-.Lfunc_begin32        # >> Call Site 8 <<
	.uleb128 .Ltmp842-.Ltmp841              #   Call between .Ltmp841 and .Ltmp842
	.uleb128 .Ltmp843-.Lfunc_begin32        #     jumps to .Ltmp843
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp850-.Lfunc_begin32        # >> Call Site 9 <<
	.uleb128 .Ltmp851-.Ltmp850              #   Call between .Ltmp850 and .Ltmp851
	.uleb128 .Ltmp852-.Lfunc_begin32        #     jumps to .Ltmp852
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp853-.Lfunc_begin32        # >> Call Site 10 <<
	.uleb128 .Ltmp854-.Ltmp853              #   Call between .Ltmp853 and .Ltmp854
	.uleb128 .Ltmp855-.Lfunc_begin32        #     jumps to .Ltmp855
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp854-.Lfunc_begin32        # >> Call Site 11 <<
	.uleb128 .Ltmp847-.Ltmp854              #   Call between .Ltmp854 and .Ltmp847
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin32        # >> Call Site 12 <<
	.uleb128 .Ltmp848-.Ltmp847              #   Call between .Ltmp847 and .Ltmp848
	.uleb128 .Ltmp849-.Lfunc_begin32        #     jumps to .Ltmp849
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp856-.Lfunc_begin32        # >> Call Site 13 <<
	.uleb128 .Ltmp857-.Ltmp856              #   Call between .Ltmp856 and .Ltmp857
	.uleb128 .Ltmp858-.Lfunc_begin32        #     jumps to .Ltmp858
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin32        # >> Call Site 14 <<
	.uleb128 .Ltmp810-.Ltmp857              #   Call between .Ltmp857 and .Ltmp810
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp810-.Lfunc_begin32        # >> Call Site 15 <<
	.uleb128 .Ltmp811-.Ltmp810              #   Call between .Ltmp810 and .Ltmp811
	.uleb128 .Ltmp812-.Lfunc_begin32        #     jumps to .Ltmp812
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp813-.Lfunc_begin32        # >> Call Site 16 <<
	.uleb128 .Ltmp814-.Ltmp813              #   Call between .Ltmp813 and .Ltmp814
	.uleb128 .Ltmp815-.Lfunc_begin32        #     jumps to .Ltmp815
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp816-.Lfunc_begin32        # >> Call Site 17 <<
	.uleb128 .Ltmp817-.Ltmp816              #   Call between .Ltmp816 and .Ltmp817
	.uleb128 .Ltmp818-.Lfunc_begin32        #     jumps to .Ltmp818
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp833-.Lfunc_begin32        # >> Call Site 18 <<
	.uleb128 .Ltmp836-.Ltmp833              #   Call between .Ltmp833 and .Ltmp836
	.uleb128 .Ltmp837-.Lfunc_begin32        #     jumps to .Ltmp837
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp830-.Lfunc_begin32        # >> Call Site 19 <<
	.uleb128 .Ltmp831-.Ltmp830              #   Call between .Ltmp830 and .Ltmp831
	.uleb128 .Ltmp832-.Lfunc_begin32        #     jumps to .Ltmp832
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp831-.Lfunc_begin32        # >> Call Site 20 <<
	.uleb128 .Lfunc_end170-.Ltmp831         #   Call between .Ltmp831 and .Lfunc_end170
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
                                        # -- End function
