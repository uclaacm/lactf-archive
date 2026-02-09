	.section	.text.unlikely._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std
	.type	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std,@function
_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std: # @_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std
.Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception38
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
	sub	rsp, 472
	.cfi_def_cfa_offset 528
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 168], 0
	mov	qword ptr [rsp + 176], 8
	mov	qword ptr [rsp + 184], 0
	mov	qword ptr [rsp + 40], 0
	mov	qword ptr [rsp + 48], 8
	mov	qword ptr [rsp + 56], 0
	mov	rax, qword ptr [rdx + 368]
	add	rax, 16
	mov	rcx, qword ptr [rdx + 40]
	mov	rsi, qword ptr [rdx + 48]
	mov	qword ptr [rsp + 312], rcx
	mov	qword ptr [rsp + 320], rsi
	mov	qword ptr [rsp + 328], rdx
	mov	qword ptr [rsp + 336], rax
	mov	qword ptr [rsp + 344], 0
	test	rsi, rsi
	je	.LBB204_135
# %bb.1:
	mov	eax, dword ptr [rdx + 72]
	mov	rcx, qword ptr [rdx + 440]
	mov	rdi, qword ptr [r14 + 232]
	mov	qword ptr [rsp + 464], rdi      # 8-byte Spill
	sub	rdi, rcx
	mov	qword ptr [rsp + 448], rdi      # 8-byte Spill
	mov	edi, eax
	and	edi, 65280
	mov	dword ptr [rsp + 308], edi      # 4-byte Spill
	mov	edi, eax
	shr	edi, 16
	mov	dword ptr [rsp + 304], edi      # 4-byte Spill
	xor	r13d, r13d
	xor	r8d, r8d
	cmp	eax, 327680
	mov	r9d, 0
	cmovb	r9, rcx
	mov	rdi, qword ptr [r14 + 224]
	setae	r8b
	cmp	byte ptr [r14 + 272], 0
	cmove	r9, r13
	mov	qword ptr [rsp + 456], r9       # 8-byte Spill
	mov	r9, qword ptr [rdx + 424]
	mov	r10, qword ptr [r14 + 24]
	mov	qword ptr [rsp + 280], r10      # 8-byte Spill
	sub	r10, r9
	mov	qword ptr [rsp + 24], r10       # 8-byte Spill
	mov	dword ptr [rsp + 300], r8d      # 4-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	shl	r8d, 4
	mov	rdx, qword ptr [rdx + 408]
	mov	qword ptr [rsp + 416], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 392], rcx      # 8-byte Spill
	mov	qword ptr [rsp + 408], rdi      # 8-byte Spill
	add	rcx, rdi
	mov	qword ptr [rsp + 376], rcx      # 8-byte Spill
	movzx	ecx, ah
	mov	qword ptr [rsp + 440], rcx      # 8-byte Spill
	mov	rcx, qword ptr [r14 + 16]
	mov	qword ptr [rsp + 272], rcx      # 8-byte Spill
	mov	qword ptr [rsp + 288], r9       # 8-byte Spill
	lea	rcx, [rcx + r9]
	mov	qword ptr [rsp + 160], rcx      # 8-byte Spill
	mov	dword ptr [rsp + 36], eax       # 4-byte Spill
	movzx	eax, al
	mov	qword ptr [rsp + 384], rax      # 8-byte Spill
	mov	qword ptr [rsp + 432], r8       # 8-byte Spill
	lea	rax, [r8 + 8]
	mov	qword ptr [rsp + 424], rax      # 8-byte Spill
	mov	eax, 8
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	xor	r12d, r12d
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB204_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB204_3 Depth 2
                                        #     Child Loop BB204_17 Depth 2
                                        #       Child Loop BB204_18 Depth 3
                                        #     Child Loop BB204_32 Depth 2
                                        #     Child Loop BB204_92 Depth 2
	mov	rdx, qword ptr [rsp + 312]
	mov	rax, qword ptr [rsp + 328]
	xor	ecx, ecx
	cmp	byte ptr [rax + 73], 8
	sete	cl
	mov	rdi, qword ptr [rax + 48]
	mov	r8, qword ptr [rax + 56]
	add	r8, rdx
	lea	r15, [r8 + 8*rcx]
	add	rdi, qword ptr [rax + 40]
	sub	r15, rdi
	add	r15, 4
	lea	rdi, [rsi - 1]
	lea	r8, [rdx + 1]
	xor	ebp, ebp
	xor	ecx, ecx
	.p2align	4
.LBB204_3:                              #   Parent Loop BB204_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r9d, byte ptr [r8 - 1]
	cmp	ecx, 63
	jne	.LBB204_5
# %bb.4:                                #   in Loop: Header=BB204_3 Depth=2
	cmp	r9b, 1
	ja	.LBB204_117
.LBB204_5:                              #   in Loop: Header=BB204_3 Depth=2
	movzx	r9d, r9b
	mov	r10d, r9d
	and	r10d, 127
	shl	r10, cl
	or	rbp, r10
	test	r9b, r9b
	jns	.LBB204_7
# %bb.6:                                #   in Loop: Header=BB204_3 Depth=2
	add	ecx, 7
	inc	r8
	add	rdi, -1
	jb	.LBB204_3
	jmp	.LBB204_118
	.p2align	4
.LBB204_7:                              #   in Loop: Header=BB204_2 Depth=1
	mov	qword ptr [rsp + 312], r8
	mov	qword ptr [rsp + 320], rdi
	test	rbp, rbp
	je	.LBB204_14
# %bb.8:                                #   in Loop: Header=BB204_2 Depth=1
	mov	rcx, qword ptr [rsp + 336]
	lea	rdx, [rbp - 1]
	cmp	rdx, qword ptr [rcx + 16]
	jae	.LBB204_15
# %bb.9:                                #   in Loop: Header=BB204_2 Depth=1
	imul	rdx, rdx, 112
	add	rdx, qword ptr [rcx + 8]
	cmp	byte ptr [rdx + 106], 1
	jne	.LBB204_11
.LBB204_10:                             #   in Loop: Header=BB204_2 Depth=1
	inc	qword ptr [rsp + 344]
.LBB204_11:                             #   in Loop: Header=BB204_2 Depth=1
	cmp	word ptr [rdx + 104], 46
	mov	qword ptr [rsp + 88], r13       # 8-byte Spill
	jne	.LBB204_24
# %bb.12:                               #   in Loop: Header=BB204_2 Depth=1
	cmp	dword ptr [rdx], 1
	jne	.LBB204_27
# %bb.13:                               #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rdx + 16]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	r8, qword ptr [rdx + 24]
	mov	r13, qword ptr [rsp + 152]      # 8-byte Reload
	test	r8, r8
	jne	.LBB204_29
	jmp	.LBB204_87
.LBB204_14:                             #   in Loop: Header=BB204_2 Depth=1
	dec	qword ptr [rsp + 344]
	jmp	.LBB204_88
.LBB204_15:                             #   in Loop: Header=BB204_2 Depth=1
	mov	rdx, qword ptr [rcx + 24]
	mov	sil, 18
	mov	qword ptr [rsp + 8], rsi        # 8-byte Spill
	test	rdx, rdx
	je	.LBB204_161
# %bb.16:                               #   in Loop: Header=BB204_2 Depth=1
	mov	rcx, qword ptr [rcx + 32]
.LBB204_17:                             #   Parent Loop BB204_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB204_18 Depth 3
	movzx	edi, word ptr [rdx + 1330]
	mov	r8d, edi
	shl	r8d, 3
	mov	rsi, -1
	.p2align	4
.LBB204_18:                             #   Parent Loop BB204_2 Depth=1
                                        #     Parent Loop BB204_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	test	r8, r8
	je	.LBB204_21
# %bb.19:                               #   in Loop: Header=BB204_18 Depth=3
	cmp	rbp, qword ptr [rdx + 8*rsi + 1248]
	seta	r9b
	sbb	r9b, 0
	inc	rsi
	add	r8, -8
	cmp	r9b, 1
	je	.LBB204_18
# %bb.20:                               #   in Loop: Header=BB204_17 Depth=2
	movzx	edi, r9b
	test	edi, edi
	jne	.LBB204_22
	jmp	.LBB204_26
.LBB204_21:                             #   in Loop: Header=BB204_17 Depth=2
	mov	rsi, rdi
.LBB204_22:                             #   in Loop: Header=BB204_17 Depth=2
	sub	rcx, 1
	jb	.LBB204_161
# %bb.23:                               #   in Loop: Header=BB204_17 Depth=2
	mov	rdx, qword ptr [rdx + 8*rsi + 1336]
	jmp	.LBB204_17
.LBB204_24:                             #   in Loop: Header=BB204_2 Depth=1
	cmp	dword ptr [rdx], 1
	jne	.LBB204_84
# %bb.25:                               #   in Loop: Header=BB204_2 Depth=1
	mov	rcx, qword ptr [rdx + 16]
	mov	r8, qword ptr [rdx + 24]
	jmp	.LBB204_86
.LBB204_26:                             #   in Loop: Header=BB204_2 Depth=1
	imul	rcx, rsi, 112
	add	rdx, rcx
	cmp	byte ptr [rdx + 106], 1
	je	.LBB204_10
	jmp	.LBB204_11
.LBB204_27:                             #   in Loop: Header=BB204_2 Depth=1
	mov	r8, qword ptr [rdx + 8]
	cmp	r8, 6
	mov	r13, qword ptr [rsp + 152]      # 8-byte Reload
	jae	.LBB204_175
# %bb.28:                               #   in Loop: Header=BB204_2 Depth=1
	add	rdx, 16
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	test	r8, r8
	je	.LBB204_87
.LBB204_29:                             #   in Loop: Header=BB204_2 Depth=1
	mov	qword ptr [rsp + 352], r14      # 8-byte Spill
	shl	r8, 4
	xor	ebp, ebp
	mov	qword ptr [rsp + 80], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 72], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 360], 0        # 8-byte Folded Spill
	mov	dword ptr [rsp + 16], 0         # 4-byte Folded Spill
	jmp	.LBB204_32
.LBB204_61:                             #   in Loop: Header=BB204_32 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 104]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	.p2align	4
.LBB204_30:                             #   in Loop: Header=BB204_32 Depth=2
	mov	r8, r14
.LBB204_31:                             #   in Loop: Header=BB204_32 Depth=2
	add	rbp, 16
	cmp	r8, rbp
	je	.LBB204_89
.LBB204_32:                             #   Parent Loop BB204_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r14, r8
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmm0, xmmword ptr [rax + rbp]
	movaps	xmmword ptr [rsp + 96], xmm0
	mov	rax, qword ptr [rsp + 328]
	mov	edx, dword ptr [rax + 72]
	lea	rdi, [rsp + 192]
	lea	rsi, [rsp + 312]
	lea	rcx, [rsp + 96]
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 192], 46
	je	.LBB204_133
# %bb.33:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	eax, word ptr [rsp + 216]
	cmp	eax, 85
	je	.LBB204_53
# %bb.34:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	eax, 18
	je	.LBB204_44
# %bb.35:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	eax, 17
	jne	.LBB204_30
# %bb.36:                               #   in Loop: Header=BB204_32 Depth=2
	lea	rdi, [rsp + 96]
	lea	rsi, [rsp + 192]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 96]
	test	rax, rax
	je	.LBB204_61
# %bb.37:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	eax, 12
	jne	.LBB204_30
# %bb.38:                               #   in Loop: Header=BB204_32 Depth=2
	mov	rax, qword ptr [rsp + 280]      # 8-byte Reload
	cmp	rax, qword ptr [rsp + 288]      # 8-byte Folded Reload
	jb	.LBB204_149
# %bb.39:                               #   in Loop: Header=BB204_32 Depth=2
	mov	rcx, qword ptr [rsp + 104]
	mov	rax, qword ptr [rsp + 384]      # 8-byte Reload
	imul	rcx, rax
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	sub	rdx, rcx
	jb	.LBB204_155
# %bb.40:                               #   in Loop: Header=BB204_32 Depth=2
	lea	esi, [rax - 1]
	cmp	esi, 7
	ja	.LBB204_162
# %bb.41:                               #   in Loop: Header=BB204_32 Depth=2
	mov	r8, r14
	mov	rax, qword ptr [rsp + 160]      # 8-byte Reload
	add	rax, rcx
	lea	rdi, [rip + .LJTI204_1]
	movsxd	rsi, dword ptr [rdi + 4*rsi]
	add	rsi, rdi
	jmp	rsi
.LBB204_42:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	qword ptr [rsp + 24], rcx       # 8-byte Folded Reload
	je	.LBB204_150
# %bb.43:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	eax, byte ptr [rax]
	jmp	.LBB204_76
.LBB204_44:                             #   in Loop: Header=BB204_32 Depth=2
	lea	rdi, [rsp + 96]
	lea	rsi, [rsp + 192]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 96]
	test	rax, rax
	je	.LBB204_65
# %bb.45:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	eax, 7
	mov	r8, r14
	je	.LBB204_64
# %bb.46:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	eax, 12
	jne	.LBB204_31
# %bb.47:                               #   in Loop: Header=BB204_32 Depth=2
	mov	rax, qword ptr [rsp + 280]      # 8-byte Reload
	cmp	rax, qword ptr [rsp + 288]      # 8-byte Folded Reload
	jb	.LBB204_149
# %bb.48:                               #   in Loop: Header=BB204_32 Depth=2
	mov	rcx, qword ptr [rsp + 104]
	mov	rax, qword ptr [rsp + 384]      # 8-byte Reload
	imul	rcx, rax
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	sub	rdx, rcx
	jb	.LBB204_155
# %bb.49:                               #   in Loop: Header=BB204_32 Depth=2
	lea	esi, [rax - 1]
	cmp	esi, 7
	ja	.LBB204_163
# %bb.50:                               #   in Loop: Header=BB204_32 Depth=2
	mov	rax, qword ptr [rsp + 160]      # 8-byte Reload
	add	rax, rcx
	lea	rdi, [rip + .LJTI204_0]
	movsxd	rsi, dword ptr [rdi + 4*rsi]
	add	rsi, rdi
	jmp	rsi
.LBB204_51:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	qword ptr [rsp + 24], rcx       # 8-byte Folded Reload
	je	.LBB204_150
# %bb.52:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	r13d, byte ptr [rax]
	jmp	.LBB204_83
.LBB204_53:                             #   in Loop: Header=BB204_32 Depth=2
	lea	rdi, [rsp + 96]
	lea	rsi, [rsp + 192]
	call	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	mov	rcx, qword ptr [rsp + 96]
	mov	rax, qword ptr [rsp + 104]
	cmp	rcx, 22
	je	.LBB204_60
# %bb.54:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	ecx, 24
	mov	r8, r14
	jne	.LBB204_62
# %bb.55:                               #   in Loop: Header=BB204_32 Depth=2
	mov	rcx, qword ptr [rsp + 464]      # 8-byte Reload
	cmp	rcx, qword ptr [rsp + 392]      # 8-byte Folded Reload
	jb	.LBB204_152
# %bb.56:                               #   in Loop: Header=BB204_32 Depth=2
	imul	rax, qword ptr [rsp + 440]      # 8-byte Folded Reload
	mov	rcx, qword ptr [rsp + 448]      # 8-byte Reload
	sub	rcx, rax
	jb	.LBB204_153
# %bb.57:                               #   in Loop: Header=BB204_32 Depth=2
	add	rax, qword ptr [rsp + 376]      # 8-byte Folded Reload
	cmp	dword ptr [rsp + 308], 2048     # 4-byte Folded Reload
	jne	.LBB204_66
# %bb.58:                               #   in Loop: Header=BB204_32 Depth=2
	cmp	rcx, 7
	jbe	.LBB204_159
# %bb.59:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	jmp	.LBB204_68
.LBB204_60:                             #   in Loop: Header=BB204_32 Depth=2
	add	rax, qword ptr [rsp + 456]      # 8-byte Folded Reload
	mov	cl, 1
	mov	dword ptr [rsp + 16], ecx       # 4-byte Spill
	mov	r8, r14
	jmp	.LBB204_69
.LBB204_62:                             #   in Loop: Header=BB204_32 Depth=2
	mov	dword ptr [rsp + 16], 0         # 4-byte Folded Spill
	mov	rax, qword ptr [rsp + 368]      # 8-byte Reload
	jmp	.LBB204_69
.LBB204_64:                             #   in Loop: Header=BB204_32 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 360], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 104]
	mov	qword ptr [rsp + 400], rax      # 8-byte Spill
	jmp	.LBB204_31
.LBB204_65:                             #   in Loop: Header=BB204_32 Depth=2
	mov	al, 1
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	mov	r13, qword ptr [rsp + 104]
	jmp	.LBB204_30
.LBB204_66:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rcx, 3
	jbe	.LBB204_159
# %bb.67:                               #   in Loop: Header=BB204_32 Depth=2
	mov	eax, dword ptr [rax]
.LBB204_68:                             #   in Loop: Header=BB204_32 Depth=2
	add	rax, qword ptr [rsp + 392]      # 8-byte Folded Reload
	mov	cl, 1
	mov	dword ptr [rsp + 16], ecx       # 4-byte Spill
.LBB204_69:                             #   in Loop: Header=BB204_32 Depth=2
	mov	qword ptr [rsp + 368], rax      # 8-byte Spill
	jmp	.LBB204_31
.LBB204_70:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rdx, 1
	jbe	.LBB204_150
# %bb.71:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	eax, word ptr [rax]
	jmp	.LBB204_76
.LBB204_72:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rdx, 7
	jbe	.LBB204_150
# %bb.73:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	eax, dword ptr [rax]
	shl	rsi, 40
	shl	rax, 8
	or	rax, rsi
	shrd	rax, rcx, 8
	jmp	.LBB204_76
.LBB204_74:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rdx, 3
	jbe	.LBB204_150
# %bb.75:                               #   in Loop: Header=BB204_32 Depth=2
	mov	eax, dword ptr [rax]
.LBB204_76:                             #   in Loop: Header=BB204_32 Depth=2
	mov	cl, 1
	mov	qword ptr [rsp + 80], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	jmp	.LBB204_31
.LBB204_77:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rdx, 1
	jbe	.LBB204_150
# %bb.78:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	r13d, word ptr [rax]
	jmp	.LBB204_83
.LBB204_79:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rdx, 7
	jbe	.LBB204_150
# %bb.80:                               #   in Loop: Header=BB204_32 Depth=2
	movzx	ecx, byte ptr [rax + 7]
	movzx	edx, word ptr [rax + 4]
	movzx	esi, byte ptr [rax + 6]
	shl	esi, 16
	or	esi, edx
	mov	r13d, dword ptr [rax]
	shl	rsi, 40
	shl	r13, 8
	or	r13, rsi
	shrd	r13, rcx, 8
	jmp	.LBB204_83
.LBB204_81:                             #   in Loop: Header=BB204_32 Depth=2
	cmp	rdx, 3
	jbe	.LBB204_150
# %bb.82:                               #   in Loop: Header=BB204_32 Depth=2
	mov	r13d, dword ptr [rax]
.LBB204_83:                             #   in Loop: Header=BB204_32 Depth=2
	mov	cl, 1
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 136], r13      # 8-byte Spill
	jmp	.LBB204_31
.LBB204_84:                             #   in Loop: Header=BB204_2 Depth=1
	mov	r8, qword ptr [rdx + 8]
	cmp	r8, 5
	ja	.LBB204_175
# %bb.85:                               #   in Loop: Header=BB204_2 Depth=1
	add	rdx, 16
	mov	rcx, rdx
.LBB204_86:                             #   in Loop: Header=BB204_2 Depth=1
	mov	edx, dword ptr [rax + 72]
	lea	rdi, [rsp + 192]
	lea	rsi, [rsp + 312]
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4unit15skip_attributesINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	movzx	eax, byte ptr [rsp + 192]
	cmp	al, 82
	jne	.LBB204_151
.LBB204_87:                             #   in Loop: Header=BB204_2 Depth=1
	mov	r13, qword ptr [rsp + 88]       # 8-byte Reload
.LBB204_88:                             #   in Loop: Header=BB204_2 Depth=1
	mov	rsi, qword ptr [rsp + 320]
	test	rsi, rsi
	jne	.LBB204_2
	jmp	.LBB204_134
.LBB204_89:                             #   in Loop: Header=BB204_2 Depth=1
	mov	qword ptr [rsp + 152], r13      # 8-byte Spill
	test	byte ptr [rsp + 16], 1          # 1-byte Folded Reload
	mov	r13, qword ptr [rsp + 88]       # 8-byte Reload
	je	.LBB204_99
# %bb.90:                               #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rsp + 424]      # 8-byte Reload
	mov	r14, qword ptr [rsp + 352]      # 8-byte Reload
	mov	rax, qword ptr [r14 + rax + 208]
	mov	rcx, qword ptr [rsp + 432]      # 8-byte Reload
	mov	rbp, qword ptr [r14 + rcx + 208]
	mov	rcx, qword ptr [rsp + 368]      # 8-byte Reload
	sub	rax, rcx
	jb	.LBB204_160
# %bb.91:                               #   in Loop: Header=BB204_2 Depth=1
	add	rbp, rcx
	mov	rcx, qword ptr [rsp + 272]      # 8-byte Reload
	mov	qword ptr [rsp + 192], rcx
	mov	rcx, qword ptr [rsp + 280]      # 8-byte Reload
	mov	qword ptr [rsp + 200], rcx
	mov	rcx, qword ptr [rsp + 416]      # 8-byte Reload
	mov	qword ptr [rsp + 208], rcx
	mov	rcx, qword ptr [rsp + 288]      # 8-byte Reload
	mov	qword ptr [rsp + 216], rcx
	mov	qword ptr [rsp + 224], rbp
	mov	qword ptr [rsp + 232], rax
	mov	eax, dword ptr [rsp + 36]       # 4-byte Reload
	mov	word ptr [rsp + 240], ax
	mov	eax, dword ptr [rsp + 304]      # 4-byte Reload
	mov	word ptr [rsp + 242], ax
	mov	eax, dword ptr [rsp + 300]      # 4-byte Reload
	mov	byte ptr [rsp + 244], al
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
.LBB204_92:                             #   Parent Loop BB204_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rdi, [rsp + 96]
	lea	rsi, [rsp + 192]
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read8rnglistsINtB5_11RngListIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 96]
	mov	rcx, qword ptr [rsp + 104]
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	mov	rbp, qword ptr [rsp + 112]
	cmp	rax, 2
	je	.LBB204_110
# %bb.93:                               #   in Loop: Header=BB204_92 Depth=2
	test	al, 1
	je	.LBB204_111
# %bb.94:                               #   in Loop: Header=BB204_92 Depth=2
	cmp	qword ptr [rsp + 8], rbp        # 8-byte Folded Reload
	jae	.LBB204_92
# %bb.95:                               #   in Loop: Header=BB204_92 Depth=2
	cmp	r13, qword ptr [rsp + 40]
	jne	.LBB204_98
# %bb.96:                               #   in Loop: Header=BB204_92 Depth=2
.Ltmp900:
	lea	rdi, [rsp + 40]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp901:
# %bb.97:                               #   in Loop: Header=BB204_92 Depth=2
	mov	rax, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
.LBB204_98:                             #   in Loop: Header=BB204_92 Depth=2
	lea	rax, [2*r13]
	add	rax, r13
	mov	rcx, qword ptr [rsp + 128]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rcx + 8*rax], rdx
	mov	qword ptr [rcx + 8*rax + 8], rbp
	mov	qword ptr [rcx + 8*rax + 16], r12
	inc	r13
	mov	qword ptr [rsp + 56], r13
	mov	al, 1
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB204_92
.LBB204_99:                             #   in Loop: Header=BB204_2 Depth=1
	mov	rcx, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	and	al, cl
	test	al, 1
	mov	rax, qword ptr [rsp + 400]      # 8-byte Reload
	mov	r14, qword ptr [rsp + 352]      # 8-byte Reload
	je	.LBB204_104
# %bb.100:                              #   in Loop: Header=BB204_2 Depth=1
	mov	rbp, qword ptr [rsp + 64]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 152]      # 8-byte Reload
	cmp	rbp, rcx
	jae	.LBB204_88
# %bb.101:                              #   in Loop: Header=BB204_2 Depth=1
	mov	rax, r13
	mov	r13, rbx
	mov	rbx, rcx
	cmp	rax, qword ptr [rsp + 40]
	jne	.LBB204_109
# %bb.102:                              #   in Loop: Header=BB204_2 Depth=1
.Ltmp897:
	lea	rdi, [rsp + 40]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp898:
# %bb.103:                              #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	mov	rbx, qword ptr [rsp + 152]      # 8-byte Reload
	jmp	.LBB204_109
.LBB204_104:                            #   in Loop: Header=BB204_2 Depth=1
	and	cl, byte ptr [rsp + 360]        # 1-byte Folded Reload
	test	cl, 1
	je	.LBB204_88
# %bb.105:                              #   in Loop: Header=BB204_2 Depth=1
	mov	r13, rbx
	mov	rbp, qword ptr [rsp + 64]       # 8-byte Reload
	lea	rbx, [rax + rbp]
	cmp	rbp, rbx
	jae	.LBB204_116
# %bb.106:                              #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	cmp	rax, qword ptr [rsp + 40]
	jne	.LBB204_109
# %bb.107:                              #   in Loop: Header=BB204_2 Depth=1
.Ltmp895:
	lea	rdi, [rsp + 40]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp896:
# %bb.108:                              #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
.LBB204_109:                            #   in Loop: Header=BB204_2 Depth=1
	mov	rcx, qword ptr [rsp + 88]       # 8-byte Reload
	lea	rax, [rcx + 2*rcx]
	mov	rdx, qword ptr [rsp + 128]      # 8-byte Reload
	mov	qword ptr [rdx + 8*rax], rbp
	mov	qword ptr [rdx + 8*rax + 8], rbx
	mov	qword ptr [rdx + 8*rax + 16], r12
	inc	rcx
	mov	qword ptr [rsp + 56], rcx
	mov	rbx, r13
	mov	r13, rcx
	jmp	.LBB204_113
.LBB204_110:                            #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	ecx, eax
	shr	ecx, 8
	cmp	al, 82
	je	.LBB204_112
	jmp	.LBB204_174
.LBB204_111:                            #   in Loop: Header=BB204_2 Depth=1
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
.LBB204_112:                            #   in Loop: Header=BB204_2 Depth=1
	test	cl, 1
	je	.LBB204_88
.LBB204_113:                            #   in Loop: Header=BB204_2 Depth=1
	mov	qword ptr [rsp + 256], r15
	mov	qword ptr [rsp + 192], 0
	cmp	r12, qword ptr [rsp + 168]
	jne	.LBB204_115
# %bb.114:                              #   in Loop: Header=BB204_2 Depth=1
.Ltmp903:
	lea	rdi, [rsp + 168]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1J_9endianity12LittleEndianEEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp904:
.LBB204_115:                            #   in Loop: Header=BB204_2 Depth=1
	mov	rax, qword ptr [rsp + 176]
	lea	rcx, [r12 + 8*r12]
	mov	rdx, qword ptr [rsp + 256]
	mov	qword ptr [rax + 8*rcx + 64], rdx
	movups	xmm0, xmmword ptr [rsp + 192]
	movups	xmm1, xmmword ptr [rsp + 208]
	movups	xmm2, xmmword ptr [rsp + 224]
	movups	xmm3, xmmword ptr [rsp + 240]
	movups	xmmword ptr [rax + 8*rcx + 48], xmm3
	movups	xmmword ptr [rax + 8*rcx + 32], xmm2
	movups	xmmword ptr [rax + 8*rcx + 16], xmm1
	movups	xmmword ptr [rax + 8*rcx], xmm0
	inc	r12
	mov	qword ptr [rsp + 184], r12
	jmp	.LBB204_88
.LBB204_116:                            #   in Loop: Header=BB204_2 Depth=1
	mov	rbx, r13
	jmp	.LBB204_87
.LBB204_117:
	xor	r15d, r15d
	mov	al, 6
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
                                        # implicit-def: $rbp
	jmp	.LBB204_119
.LBB204_118:
	add	rdx, rsi
	mov	al, 19
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	xor	r15d, r15d
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	mov	rbp, rdx
.LBB204_119:
	mov	qword ptr [rsp + 24], rbx       # 8-byte Spill
	cmp	qword ptr [rsp + 40], 0
	je	.LBB204_121
# %bb.120:
	mov	rdi, qword ptr [rsp + 48]
	call	qword ptr [rip + free@GOTPCREL]
.LBB204_121:
	mov	r14, qword ptr [rsp + 176]
	test	r12, r12
	je	.LBB204_130
# %bb.122:
	lea	rbx, [r14 + 32]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB204_124
	.p2align	4
.LBB204_123:                            #   in Loop: Header=BB204_124 Depth=1
	add	rbx, 72
	dec	r12
	je	.LBB204_130
.LBB204_124:                            # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbx - 32], 0
	je	.LBB204_123
# %bb.125:                              #   in Loop: Header=BB204_124 Depth=1
	mov	rdi, qword ptr [rbx - 24]
	test	rdi, rdi
	je	.LBB204_123
# %bb.126:                              #   in Loop: Header=BB204_124 Depth=1
	cmp	qword ptr [rbx - 16], 0
	je	.LBB204_128
# %bb.127:                              #   in Loop: Header=BB204_124 Depth=1
	call	r13
.LBB204_128:                            #   in Loop: Header=BB204_124 Depth=1
	cmp	qword ptr [rbx], 0
	je	.LBB204_123
# %bb.129:                              #   in Loop: Header=BB204_124 Depth=1
	mov	rdi, qword ptr [rbx - 8]
	call	r13
	jmp	.LBB204_123
.LBB204_130:
	cmp	qword ptr [rsp + 168], 0
	je	.LBB204_132
# %bb.131:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB204_132:
	xor	r14d, r14d
                                        # implicit-def: $r12
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB204_147
.LBB204_133:
	mov	r15, qword ptr [rsp + 200]
	mov	rbp, qword ptr [rsp + 208]
	mov	eax, r15d
	shr	eax, 8
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	qword ptr [rsp + 8], r15        # 8-byte Spill
	shr	r15, 16
	jmp	.LBB204_119
.LBB204_134:
	cmp	r13, 2
	jae	.LBB204_164
.LBB204_135:
	mov	r13, rbx
	mov	r14, qword ptr [rsp + 176]
	mov	rbx, qword ptr [rsp + 184]
	cmp	qword ptr [rsp + 168], rbx
	jbe	.LBB204_138
# %bb.136:
	test	rbx, rbx
	je	.LBB204_143
# %bb.137:
	lea	rax, [8*rbx]
	lea	r15, [rax + 8*rax]
	mov	rdi, r14
	mov	rsi, r15
	call	qword ptr [rip + realloc@GOTPCREL]
	mov	r14, rax
	test	rax, rax
	je	.LBB204_178
.LBB204_138:
	mov	r15, qword ptr [rsp + 48]
	mov	r12, qword ptr [rsp + 56]
	cmp	qword ptr [rsp + 40], r12
	jbe	.LBB204_144
.LBB204_139:
	test	r12, r12
	je	.LBB204_145
# %bb.140:
	lea	rax, [8*r12]
	lea	rsi, [rax + 2*rax]
	mov	rdi, r15
	mov	qword ptr [rsp + 8], rsi        # 8-byte Spill
	call	qword ptr [rip + realloc@GOTPCREL]
	mov	rbp, rax
	test	rax, rax
	jne	.LBB204_146
# %bb.141:
.Ltmp912:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp913:
# %bb.142:
.LBB204_143:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	r14d, 8
	mov	r15, qword ptr [rsp + 48]
	mov	r12, qword ptr [rsp + 56]
	cmp	qword ptr [rsp + 40], r12
	ja	.LBB204_139
.LBB204_144:
	mov	rbp, r15
	jmp	.LBB204_146
.LBB204_145:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	mov	ebp, 8
.LBB204_146:
	mov	eax, ebx
	shr	eax, 8
	mov	r15, rbx
	shr	r15, 16
.LBB204_147:
	shl	r15, 16
	movzx	eax, al
	shl	eax, 8
	or	rax, r15
	movzx	ecx, bl
	or	rcx, rax
	cmp	dword ptr [r13], 1
	je	.LBB204_177
# %bb.148:
	mov	qword ptr [r13], 1
	lea	rax, [r13 + 8]
	mov	qword ptr [r13 + 8], r14
	mov	qword ptr [r13 + 16], rcx
	mov	qword ptr [r13 + 24], rbp
	mov	qword ptr [r13 + 32], r12
	add	rsp, 472
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
.LBB204_149:
	.cfi_def_cfa_offset 528
	mov	rbp, qword ptr [rsp + 272]      # 8-byte Reload
	jmp	.LBB204_156
.LBB204_155:
	mov	rbp, qword ptr [rsp + 160]      # 8-byte Reload
.LBB204_156:
	mov	cl, 19
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
                                        # implicit-def: $cl
	jmp	.LBB204_157
.LBB204_150:
	mov	cl, 19
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	xor	ecx, ecx
	mov	rbp, rax
.LBB204_157:
	xor	r15d, r15d
	mov	eax, ecx
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB204_119
.LBB204_151:
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	movzx	eax, byte ptr [rsp + 199]
	shl	eax, 16
	movzx	r15d, word ptr [rsp + 197]
	or	r15d, eax
	shl	r15, 32
	mov	eax, dword ptr [rsp + 193]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	or	r15, rax
	shr	r15, 8
	mov	rbp, qword ptr [rsp + 200]
	jmp	.LBB204_119
.LBB204_152:
	mov	rbp, qword ptr [rsp + 408]      # 8-byte Reload
	jmp	.LBB204_160
.LBB204_153:
	mov	rbp, qword ptr [rsp + 376]      # 8-byte Reload
	jmp	.LBB204_160
.LBB204_159:
	mov	rbp, rax
.LBB204_160:
	mov	al, 19
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
.LBB204_161:
	xor	r15d, r15d
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	jmp	.LBB204_119
.LBB204_162:
	mov	al, 25
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	ecx, dword ptr [rsp + 36]       # 4-byte Reload
	mov	rbp, qword ptr [rsp + 144]      # 8-byte Reload
	jmp	.LBB204_157
.LBB204_163:
	mov	al, 25
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	ecx, dword ptr [rsp + 36]       # 4-byte Reload
	mov	rbp, qword ptr [rsp + 136]      # 8-byte Reload
	jmp	.LBB204_157
.LBB204_164:
	mov	rdi, qword ptr [rsp + 48]
	cmp	r13, 21
	jae	.LBB204_180
# %bb.165:
	lea	rax, [2*r13]
	add	rax, r13
	lea	rax, [rdi + 8*rax]
	lea	rsi, [rdi + 24]
	mov	ecx, 24
	mov	r8, rdi
	jmp	.LBB204_169
.LBB204_166:                            #   in Loop: Header=BB204_169 Depth=1
	mov	r8, rdi
.LBB204_167:                            #   in Loop: Header=BB204_169 Depth=1
	mov	qword ptr [r8], rsi
	movaps	xmm0, xmmword ptr [rsp + 192]
	movups	xmmword ptr [r8 + 8], xmm0
.LBB204_168:                            #   in Loop: Header=BB204_169 Depth=1
	lea	rsi, [rdx + 24]
	add	rcx, 24
	mov	r8, rdx
	cmp	rsi, rax
	je	.LBB204_135
.LBB204_169:                            # =>This Loop Header: Depth=1
                                        #     Child Loop BB204_171 Depth 2
	mov	rdx, rsi
	mov	rsi, qword ptr [r8 + 24]
	cmp	rsi, qword ptr [r8]
	jae	.LBB204_168
# %bb.170:                              #   in Loop: Header=BB204_169 Depth=1
	movups	xmm0, xmmword ptr [r8 + 32]
	movaps	xmmword ptr [rsp + 192], xmm0
	mov	r9, rcx
.LBB204_171:                            #   Parent Loop BB204_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r8, qword ptr [rdi + r9 - 8]
	mov	qword ptr [rdi + r9 + 16], r8
	movups	xmm0, xmmword ptr [rdi + r9 - 24]
	movups	xmmword ptr [rdi + r9], xmm0
	cmp	r9, 24
	je	.LBB204_166
# %bb.172:                              #   in Loop: Header=BB204_171 Depth=2
	lea	r8, [r9 - 24]
	cmp	rsi, qword ptr [rdi + r9 - 48]
	mov	r9, r8
	jb	.LBB204_171
# %bb.173:                              #   in Loop: Header=BB204_169 Depth=1
	add	r8, rdi
	jmp	.LBB204_167
.LBB204_174:
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	r15, rax
	shr	r15, 16
	jmp	.LBB204_119
.LBB204_175:
.Ltmp892:
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	mov	rsi, r8
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp893:
# %bb.176:
.LBB204_177:
	add	r13, 8
	mov	qword ptr [rsp + 192], r13
	mov	qword ptr [rsp + 200], r14
	mov	qword ptr [rsp + 208], rcx
	mov	qword ptr [rsp + 216], rbp
	mov	qword ptr [rsp + 224], r12
	lea	rdi, [rsp + 192]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.0]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.2]
	mov	esi, 29
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB204_178:
.Ltmp909:
	mov	rdi, r15
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp910:
# %bb.179:
.LBB204_180:
.Ltmp906:
	mov	rsi, r13
	call	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Ltmp907:
	jmp	.LBB204_135
.LBB204_181:
.Ltmp908:
	jmp	.LBB204_189
.LBB204_182:
.Ltmp899:
	jmp	.LBB204_189
.LBB204_183:
.Ltmp902:
	jmp	.LBB204_189
.LBB204_184:
.Ltmp905:
	mov	r12, rax
	lea	rdi, [rsp + 192]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	jmp	.LBB204_190
.LBB204_185:
.Ltmp914:
	mov	r12, rax
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r14
	mov	rsi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxSINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2d_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
.LBB204_186:
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.LBB204_187:
.Ltmp911:
	mov	r12, rax
	lea	rdi, [rsp + 168]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2a_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	xor	ebx, ebx
	jmp	.LBB204_191
.LBB204_188:
.Ltmp894:
.LBB204_189:
	mov	r12, rax
.LBB204_190:
	mov	bl, 1
.LBB204_191:
	cmp	qword ptr [rsp + 40], 0
	je	.LBB204_193
# %bb.192:
	mov	rdi, qword ptr [rsp + 48]
	call	qword ptr [rip + free@GOTPCREL]
.LBB204_193:
	test	bl, bl
	je	.LBB204_186
# %bb.194:
	lea	rdi, [rsp + 168]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2a_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end204:
	.size	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std, .Lfunc_end204-_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata.unlikely._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI204_0:
	.long	.LBB204_51-.LJTI204_0
	.long	.LBB204_77-.LJTI204_0
	.long	.LBB204_163-.LJTI204_0
	.long	.LBB204_81-.LJTI204_0
	.long	.LBB204_163-.LJTI204_0
	.long	.LBB204_163-.LJTI204_0
	.long	.LBB204_163-.LJTI204_0
	.long	.LBB204_79-.LJTI204_0
.LJTI204_1:
	.long	.LBB204_42-.LJTI204_1
	.long	.LBB204_70-.LJTI204_1
	.long	.LBB204_162-.LJTI204_1
	.long	.LBB204_74-.LJTI204_1
	.long	.LBB204_162-.LJTI204_1
	.long	.LBB204_162-.LJTI204_1
	.long	.LBB204_162-.LJTI204_1
	.long	.LBB204_72-.LJTI204_1
	.section	.gcc_except_table._RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table204:
.Lexception38:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Ltmp900-.Lfunc_begin38        # >> Call Site 1 <<
	.uleb128 .Ltmp901-.Ltmp900              #   Call between .Ltmp900 and .Ltmp901
	.uleb128 .Ltmp902-.Lfunc_begin38        #     jumps to .Ltmp902
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp897-.Lfunc_begin38        # >> Call Site 2 <<
	.uleb128 .Ltmp896-.Ltmp897              #   Call between .Ltmp897 and .Ltmp896
	.uleb128 .Ltmp899-.Lfunc_begin38        #     jumps to .Ltmp899
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp903-.Lfunc_begin38        # >> Call Site 3 <<
	.uleb128 .Ltmp904-.Ltmp903              #   Call between .Ltmp903 and .Ltmp904
	.uleb128 .Ltmp905-.Lfunc_begin38        #     jumps to .Ltmp905
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp904-.Lfunc_begin38        # >> Call Site 4 <<
	.uleb128 .Ltmp912-.Ltmp904              #   Call between .Ltmp904 and .Ltmp912
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin38        # >> Call Site 5 <<
	.uleb128 .Ltmp913-.Ltmp912              #   Call between .Ltmp912 and .Ltmp913
	.uleb128 .Ltmp914-.Lfunc_begin38        #     jumps to .Ltmp914
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp892-.Lfunc_begin38        # >> Call Site 6 <<
	.uleb128 .Ltmp893-.Ltmp892              #   Call between .Ltmp892 and .Ltmp893
	.uleb128 .Ltmp894-.Lfunc_begin38        #     jumps to .Ltmp894
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp893-.Lfunc_begin38        # >> Call Site 7 <<
	.uleb128 .Ltmp909-.Ltmp893              #   Call between .Ltmp893 and .Ltmp909
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp909-.Lfunc_begin38        # >> Call Site 8 <<
	.uleb128 .Ltmp910-.Ltmp909              #   Call between .Ltmp909 and .Ltmp910
	.uleb128 .Ltmp911-.Lfunc_begin38        #     jumps to .Ltmp911
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp906-.Lfunc_begin38        # >> Call Site 9 <<
	.uleb128 .Ltmp907-.Ltmp906              #   Call between .Ltmp906 and .Ltmp907
	.uleb128 .Ltmp908-.Lfunc_begin38        #     jumps to .Ltmp908
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp907-.Lfunc_begin38        # >> Call Site 10 <<
	.uleb128 .Lfunc_end204-.Ltmp907         #   Call between .Ltmp907 and .Lfunc_end204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end38:
	.p2align	2, 0x0
                                        # -- End function
