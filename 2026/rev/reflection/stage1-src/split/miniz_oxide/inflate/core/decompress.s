	.section	.text._RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress,"ax",@progbits
	.p2align	4
	.type	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress,@function
_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress: # @_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress
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
	sub	rsp, 152
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r10, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp + 144], rdi      # 8-byte Spill
	movzx	esi, byte ptr [rsi + 10500]
	mov	rax, qword ptr [r15 + 10432]
	mov	ecx, dword ptr [r15 + 10440]
	movzx	edx, byte ptr [r15 + 10480]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], ecx
	mov	rax, qword ptr [r15 + 10460]
	mov	qword ptr [rsp + 12], rax
	mov	byte ptr [rsp + 20], dl
	lea	rax, [r15 + 10112]
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	lea	rax, [r15 + 10400]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	lea	rax, [r15 + 10481]
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	lea	rax, [r15 + 10256]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	lea	rax, [r15 + 10368]
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	xor	r11d, r11d
	mov	qword ptr [rsp + 56], rbx       # 8-byte Spill
	mov	qword ptr [rsp + 136], r14      # 8-byte Spill
	mov	qword ptr [rsp + 40], r8        # 8-byte Spill
	mov	qword ptr [rsp + 32], r9        # 8-byte Spill
	.p2align	4
.LBB250_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB250_171 Depth 2
                                        #     Child Loop BB250_57 Depth 2
                                        #     Child Loop BB250_297 Depth 2
                                        #     Child Loop BB250_319 Depth 2
                                        #     Child Loop BB250_208 Depth 2
                                        #     Child Loop BB250_61 Depth 2
                                        #     Child Loop BB250_71 Depth 2
                                        #       Child Loop BB250_79 Depth 3
                                        #       Child Loop BB250_88 Depth 3
                                        #     Child Loop BB250_263 Depth 2
                                        #       Child Loop BB250_268 Depth 3
                                        #       Child Loop BB250_277 Depth 3
                                        #       Child Loop BB250_248 Depth 3
                                        #     Child Loop BB250_308 Depth 2
                                        #     Child Loop BB250_325 Depth 2
                                        #     Child Loop BB250_333 Depth 2
                                        #     Child Loop BB250_65 Depth 2
                                        #     Child Loop BB250_16 Depth 2
                                        #       Child Loop BB250_41 Depth 3
                                        #       Child Loop BB250_52 Depth 3
                                        #       Child Loop BB250_33 Depth 3
                                        #     Child Loop BB250_6 Depth 2
                                        #     Child Loop BB250_161 Depth 2
                                        #       Child Loop BB250_162 Depth 3
	mov	r12d, esi
	cmp	sil, 24
	ja	.LBB250_353
# %bb.2:                                #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, r12b
	lea	rcx, [rip + .LJTI250_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB250_3:                              #   in Loop: Header=BB250_1 Depth=1
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 13], 0
	movdqa	xmm0, xmmword ptr [rip + .LCPI250_4] # xmm0 = [0,0,1,1]
	movdqu	xmmword ptr [r15 + 10444], xmm0
	mov	sil, 1
	jmp	.LBB250_1
	.p2align	4
.LBB250_6:                              #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	edi, dword ptr [rsp + 16]
	movzx	eax, word ptr [r15 + 10476]
	cmp	edi, eax
	jae	.LBB250_4
# %bb.7:                                #   in Loop: Header=BB250_6 Depth=2
	mov	ecx, dword ptr [rsp + 8]
	cmp	rcx, 3
	jae	.LBB250_10
# %bb.8:                                #   in Loop: Header=BB250_6 Depth=2
	test	rbx, rbx
	je	.LBB250_347
# %bb.9:                                #   in Loop: Header=BB250_6 Depth=2
	dec	rbx
	movzx	edx, byte ptr [r14]
	shl	rdx, cl
	inc	r14
	or	rdx, qword ptr [rsp]
	or	ecx, 8
	jmp	.LBB250_11
	.p2align	4
.LBB250_4:                              #   in Loop: Header=BB250_6 Depth=2
	mov	ebp, r12d
	mov	r12, r11
	mov	word ptr [r15 + 10476], 19
	mov	rsi, rsp
	mov	rdi, r15
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree
                                        # kill: def $al killed $al def $eax
	cmp	al, 3
	je	.LBB250_344
# %bb.5:                                #   in Loop: Header=BB250_6 Depth=2
	mov	esi, edx
	mov	r11, r12
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r12d, ebp
	test	al, al
	je	.LBB250_6
	jmp	.LBB250_14
	.p2align	4
.LBB250_10:                             #   in Loop: Header=BB250_6 Depth=2
	mov	rdx, qword ptr [rsp]
.LBB250_11:                             #   in Loop: Header=BB250_6 Depth=2
	mov	rax, rdx
	shr	rax, 3
	mov	qword ptr [rsp], rax
	add	ecx, -3
	mov	dword ptr [rsp + 8], ecx
	cmp	edi, 18
	ja	.LBB250_408
# %bb.12:                               #   in Loop: Header=BB250_6 Depth=2
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.4]
	movzx	eax, byte ptr [rdi + rax]
	cmp	rax, 19
	jae	.LBB250_409
# %bb.13:                               #   in Loop: Header=BB250_6 Depth=2
	and	dl, 7
	mov	rcx, qword ptr [rsp + 80]       # 8-byte Reload
	mov	byte ptr [rcx + rax], dl
	inc	edi
	mov	dword ptr [rsp + 16], edi
	xor	eax, eax
                                        # implicit-def: $sil
	test	al, al
	je	.LBB250_6
.LBB250_14:                             #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, al
	cmp	eax, 1
	je	.LBB250_1
	jmp	.LBB250_355
	.p2align	4
.LBB250_16:                             #   Parent Loop BB250_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB250_41 Depth 3
                                        #       Child Loop BB250_52 Depth 3
                                        #       Child Loop BB250_33 Depth 3
	mov	eax, dword ptr [rsp + 16]
	movzx	edx, word ptr [r15 + 10472]
	movzx	ecx, word ptr [r15 + 10474]
	add	ecx, edx
	cmp	eax, ecx
	jae	.LBB250_22
# %bb.17:                               #   in Loop: Header=BB250_16 Depth=2
	mov	ecx, dword ptr [rsp + 8]
	cmp	rcx, 15
	jae	.LBB250_27
# %bb.18:                               #   in Loop: Header=BB250_16 Depth=2
	cmp	rbx, 1
	ja	.LBB250_28
# %bb.19:                               #   in Loop: Header=BB250_16 Depth=2
	mov	r8, qword ptr [rsp]
	mov	edx, r8d
	and	edx, 1023
	movsx	edi, word ptr [r15 + 2*rdx + 6912]
	test	edi, edi
	js	.LBB250_39
# %bb.20:                               #   in Loop: Header=BB250_16 Depth=2
	mov	edx, edi
	shr	edx, 9
	movzx	esi, di
	cmp	esi, 512
	setae	sil
	cmp	ecx, edx
	setae	dl
	test	sil, dl
	je	.LBB250_44
.LBB250_21:                             #   in Loop: Header=BB250_16 Depth=2
	mov	r9d, ecx
	mov	rdx, r8
	jmp	.LBB250_30
	.p2align	4
.LBB250_22:                             #   in Loop: Header=BB250_16 Depth=2
	cmp	eax, ecx
	jne	.LBB250_288
# %bb.23:                               #   in Loop: Header=BB250_16 Depth=2
	cmp	edx, 289
	jae	.LBB250_393
# %bb.24:                               #   in Loop: Header=BB250_16 Depth=2
	mov	rbp, r11
	mov	rdi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rsi, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	movzx	esi, word ptr [r15 + 10472]
	movzx	edx, word ptr [r15 + 10474]
	lea	eax, [rdx + rsi]
	and	esi, 511
	and	eax, 511
	cmp	ax, si
	jb	.LBB250_396
# %bb.25:                               #   in Loop: Header=BB250_16 Depth=2
	and	edx, 31
	sub	rax, rsi
	cmp	rax, rdx
	jne	.LBB250_397
# %bb.26:                               #   in Loop: Header=BB250_16 Depth=2
	add	rsi, r15
	mov	rdi, qword ptr [rsp + 64]       # 8-byte Reload
	call	qword ptr [rip + memcpy@GOTPCREL]
	dec	byte ptr [r15 + 10479]
	mov	rsi, rsp
	mov	rdi, r15
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree
                                        # kill: def $al killed $al def $eax
	cmp	al, 3
	je	.LBB250_346
# %bb.15:                               #   in Loop: Header=BB250_16 Depth=2
	mov	esi, edx
	mov	r11, rbp
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	test	al, al
	je	.LBB250_16
	jmp	.LBB250_14
	.p2align	4
.LBB250_27:                             #   in Loop: Header=BB250_16 Depth=2
	mov	rdx, qword ptr [rsp]
	jmp	.LBB250_29
.LBB250_28:                             #   in Loop: Header=BB250_16 Depth=2
	movzx	edx, word ptr [r14]
	add	rbx, -2
	add	r14, 2
	shl	rdx, cl
	or	rdx, qword ptr [rsp]
	or	ecx, 16
.LBB250_29:                             #   in Loop: Header=BB250_16 Depth=2
	mov	r9d, ecx
.LBB250_30:                             #   in Loop: Header=BB250_16 Depth=2
	mov	ecx, edx
	and	ecx, 1023
	movsx	edi, word ptr [r15 + 2*rcx + 6912]
	test	edi, edi
	js	.LBB250_32
# %bb.31:                               #   in Loop: Header=BB250_16 Depth=2
	mov	ecx, edi
	shr	ecx, 9
	and	edi, 511
	jmp	.LBB250_37
.LBB250_32:                             #   in Loop: Header=BB250_16 Depth=2
	mov	cl, 10
	.p2align	4
.LBB250_33:                             #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	not	edi
	movzx	esi, cl
	bt	rdx, rsi
	adc	edi, 0
	cmp	edi, 576
	jae	.LBB250_35
# %bb.34:                               #   in Loop: Header=BB250_33 Depth=3
	mov	esi, edi
	movsx	edi, word ptr [r15 + 2*rsi + 8960]
	inc	cl
	test	edi, edi
	js	.LBB250_33
	jmp	.LBB250_36
.LBB250_35:                             #   in Loop: Header=BB250_16 Depth=2
	inc	cl
	mov	edi, 32767
.LBB250_36:                             #   in Loop: Header=BB250_16 Depth=2
	movzx	ecx, cl
.LBB250_37:                             #   in Loop: Header=BB250_16 Depth=2
	shr	rdx, cl
	mov	qword ptr [rsp], rdx
	sub	r9d, ecx
	mov	dword ptr [rsp + 8], r9d
	mov	dword ptr [rsp + 12], edi
	cmp	edi, 16
	jae	.LBB250_289
# %bb.38:                               #   in Loop: Header=BB250_16 Depth=2
	mov	ecx, eax
	and	ecx, 511
	mov	byte ptr [r15 + rcx], dil
	inc	eax
	mov	dword ptr [rsp + 16], eax
	xor	eax, eax
                                        # implicit-def: $sil
	test	al, al
	je	.LBB250_16
	jmp	.LBB250_14
.LBB250_39:                             #   in Loop: Header=BB250_16 Depth=2
	cmp	ecx, 11
	jb	.LBB250_44
# %bb.40:                               #   in Loop: Header=BB250_16 Depth=2
	mov	edx, 11
	.p2align	4
.LBB250_41:                             #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lea	esi, [rdx - 1]
	not	edi
	bt	r8, rsi
	adc	edi, 0
	cmp	edi, 575
	ja	.LBB250_407
# %bb.42:                               #   in Loop: Header=BB250_41 Depth=3
	movsx	edi, word ptr [r15 + 2*rdi + 8960]
	test	edi, edi
	jns	.LBB250_21
# %bb.43:                               #   in Loop: Header=BB250_41 Depth=3
	inc	edx
	cmp	ecx, edx
	jae	.LBB250_41
.LBB250_44:                             #   in Loop: Header=BB250_16 Depth=2
	mov	sil, -4
	test	rbx, rbx
	je	.LBB250_350
# %bb.45:                               #   in Loop: Header=BB250_16 Depth=2
	movzx	edx, byte ptr [r14]
	shl	rdx, cl
	inc	r14
	or	rdx, r8
	mov	qword ptr [rsp], rdx
	mov	r9, rcx
	add	r9, 8
	mov	dword ptr [rsp + 8], r9d
	cmp	ecx, 6
	jbe	.LBB250_47
.LBB250_46:                             #   in Loop: Header=BB250_16 Depth=2
	xor	ebx, ebx
	jmp	.LBB250_30
.LBB250_47:                             #   in Loop: Header=BB250_16 Depth=2
	mov	edi, edx
	and	edi, 1023
	movsx	edi, word ptr [r15 + 2*rdi + 6912]
	test	edi, edi
	js	.LBB250_50
# %bb.48:                               #   in Loop: Header=BB250_16 Depth=2
	movzx	ecx, di
	xor	ebx, ebx
	cmp	ecx, 512
	jb	.LBB250_365
# %bb.49:                               #   in Loop: Header=BB250_16 Depth=2
	shr	edi, 9
	cmp	r9, rdi
	jae	.LBB250_30
	jmp	.LBB250_365
.LBB250_50:                             #   in Loop: Header=BB250_16 Depth=2
	cmp	ecx, 3
	jb	.LBB250_350
# %bb.51:                               #   in Loop: Header=BB250_16 Depth=2
	mov	ecx, 11
	.p2align	4
.LBB250_52:                             #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lea	r8d, [rcx - 1]
	not	edi
	bt	rdx, r8
	adc	edi, 0
	cmp	edi, 575
	ja	.LBB250_407
# %bb.53:                               #   in Loop: Header=BB250_52 Depth=3
	movsx	edi, word ptr [r15 + 2*rdi + 8960]
	test	edi, edi
	jns	.LBB250_46
# %bb.54:                               #   in Loop: Header=BB250_52 Depth=3
	inc	ecx
	xor	r8d, r8d
	cmp	ecx, r9d
	jbe	.LBB250_52
	jmp	.LBB250_351
.LBB250_56:                             #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [rsp + 20]
	mov	edx, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp]
	cmp	edx, eax
	jae	.LBB250_59
	.p2align	4
.LBB250_57:                             #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub	rbx, 1
	jb	.LBB250_341
# %bb.58:                               #   in Loop: Header=BB250_57 Depth=2
	movzx	edi, byte ptr [r14]
	inc	r14
	mov	ecx, edx
	shl	rdi, cl
	or	rsi, rdi
	mov	qword ptr [rsp], rsi
	add	edx, 8
	mov	dword ptr [rsp + 8], edx
	cmp	edx, eax
	jb	.LBB250_57
.LBB250_59:                             #   in Loop: Header=BB250_1 Depth=1
	mov	rdi, -1
	mov	ecx, eax
	shl	rdi, cl
	not	edi
	and	edi, esi
	shr	rsi, cl
	mov	qword ptr [rsp], rsi
	sub	edx, eax
	mov	dword ptr [rsp + 8], edx
	add	dword ptr [rsp + 12], edi
	mov	sil, 22
	jmp	.LBB250_1
.LBB250_60:                             #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [rsp + 20]
	mov	edx, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp]
	cmp	edx, eax
	jae	.LBB250_63
	.p2align	4
.LBB250_61:                             #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub	rbx, 1
	jb	.LBB250_343
# %bb.62:                               #   in Loop: Header=BB250_61 Depth=2
	movzx	edi, byte ptr [r14]
	inc	r14
	mov	ecx, edx
	shl	rdi, cl
	or	rsi, rdi
	mov	qword ptr [rsp], rsi
	add	edx, 8
	mov	dword ptr [rsp + 8], edx
	cmp	edx, eax
	jb	.LBB250_61
.LBB250_63:                             #   in Loop: Header=BB250_1 Depth=1
	mov	rdi, -1
	mov	ecx, eax
	shl	rdi, cl
	not	edi
	and	edi, esi
	shr	rsi, cl
	mov	qword ptr [rsp], rsi
	sub	edx, eax
	mov	dword ptr [rsp + 8], edx
	add	dword ptr [rsp + 16], edi
	mov	sil, 15
	jmp	.LBB250_1
.LBB250_64:                             #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [rsp + 20]
	mov	edx, dword ptr [rsp + 8]
	mov	r12, qword ptr [rsp]
	cmp	edx, eax
	jae	.LBB250_67
	.p2align	4
.LBB250_65:                             #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub	rbx, 1
	jb	.LBB250_342
# %bb.66:                               #   in Loop: Header=BB250_65 Depth=2
	movzx	esi, byte ptr [r14]
	inc	r14
	mov	ecx, edx
	shl	rsi, cl
	or	r12, rsi
	mov	qword ptr [rsp], r12
	add	edx, 8
	mov	dword ptr [rsp + 8], edx
	cmp	edx, eax
	jb	.LBB250_65
.LBB250_67:                             #   in Loop: Header=BB250_1 Depth=1
	mov	rsi, -1
	mov	ecx, eax
	shl	rsi, cl
	mov	rdi, r12
	shr	rdi, cl
	mov	qword ptr [rsp], rdi
	sub	edx, eax
	mov	dword ptr [rsp + 8], edx
	mov	qword ptr [rsp + 88], 3
	mov	qword ptr [rsp + 96], 3
	mov	qword ptr [rsp + 104], 11
	mov	ecx, dword ptr [rsp + 12]
	mov	r13d, dword ptr [rsp + 16]
	cmp	ecx, 16
	jne	.LBB250_200
# %bb.68:                               #   in Loop: Header=BB250_1 Depth=1
	lea	eax, [r13 - 1]
	and	eax, 511
	movzx	eax, byte ptr [r15 + rax]
	jmp	.LBB250_201
.LBB250_69:                             #   in Loop: Header=BB250_1 Depth=1
	mov	eax, dword ptr [rsp + 8]
	mov	ecx, eax
	and	cl, 7
	shr	qword ptr [rsp], cl
	and	eax, -8
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 16], 0
	mov	sil, 5
	jmp	.LBB250_1
.LBB250_70:                             #   in Loop: Header=BB250_1 Depth=1
	mov	byte ptr [rsp + 24], r12b       # 1-byte Spill
	mov	ebp, dword ptr [rsp + 8]
	mov	r12, qword ptr [rsp]
	mov	r8d, dword ptr [rsp + 12]
	movzx	r9d, byte ptr [rsp + 20]
	cmp	rbx, 4
	jb	.LBB250_97
	.p2align	4
.LBB250_71:                             #   Parent Loop BB250_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB250_79 Depth 3
                                        #       Child Loop BB250_88 Depth 3
	mov	rax, r10
	sub	rax, r11
	cmp	rax, 2
	jb	.LBB250_97
# %bb.72:                               #   in Loop: Header=BB250_71 Depth=2
	cmp	rax, 259
	jb	.LBB250_74
# %bb.73:                               #   in Loop: Header=BB250_71 Depth=2
	cmp	rbx, 13
	ja	.LBB250_263
.LBB250_74:                             #   in Loop: Header=BB250_71 Depth=2
	cmp	ebp, 30
	jae	.LBB250_76
# %bb.75:                               #   in Loop: Header=BB250_71 Depth=2
	mov	eax, dword ptr [r14]
	mov	ecx, ebp
	shl	rax, cl
	add	rbx, -4
	add	r14, 4
	or	r12, rax
	or	ebp, 32
.LBB250_76:                             #   in Loop: Header=BB250_71 Depth=2
	mov	eax, r12d
	and	eax, 1023
	movsx	eax, word ptr [r15 + 2*rax + 512]
	test	eax, eax
	js	.LBB250_78
# %bb.77:                               #   in Loop: Header=BB250_71 Depth=2
	mov	ecx, eax
	shr	ecx, 9
	jmp	.LBB250_84
	.p2align	4
.LBB250_78:                             #   in Loop: Header=BB250_71 Depth=2
	mov	cl, 10
	.p2align	4
.LBB250_79:                             #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	not	eax
	movzx	edx, cl
	bt	r12, rdx
	adc	eax, 0
	cmp	eax, 576
	jae	.LBB250_82
# %bb.80:                               #   in Loop: Header=BB250_79 Depth=3
	mov	eax, eax
	movsx	eax, word ptr [r15 + 2*rax + 2560]
	inc	cl
	test	eax, eax
	js	.LBB250_79
	jmp	.LBB250_83
.LBB250_82:                             #   in Loop: Header=BB250_71 Depth=2
	inc	cl
	mov	eax, 32767
.LBB250_83:                             #   in Loop: Header=BB250_71 Depth=2
	movzx	ecx, cl
.LBB250_84:                             #   in Loop: Header=BB250_71 Depth=2
	mov	dword ptr [rsp + 16], eax
	shr	r12, cl
	mov	qword ptr [rsp], r12
	sub	ebp, ecx
	mov	dword ptr [rsp + 8], ebp
	mov	sil, 21
	test	eax, 256
	jne	.LBB250_1
# %bb.85:                               #   in Loop: Header=BB250_71 Depth=2
	mov	ecx, r12d
	and	ecx, 1023
	movsx	edx, word ptr [r15 + 2*rcx + 512]
	test	edx, edx
	js	.LBB250_87
# %bb.86:                               #   in Loop: Header=BB250_71 Depth=2
	mov	ecx, edx
	shr	ecx, 9
	jmp	.LBB250_93
	.p2align	4
.LBB250_87:                             #   in Loop: Header=BB250_71 Depth=2
	mov	cl, 10
	.p2align	4
.LBB250_88:                             #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	not	edx
	movzx	edi, cl
	bt	r12, rdi
	adc	edx, 0
	cmp	edx, 576
	jae	.LBB250_91
# %bb.89:                               #   in Loop: Header=BB250_88 Depth=3
	mov	edx, edx
	movsx	edx, word ptr [r15 + 2*rdx + 2560]
	inc	cl
	test	edx, edx
	js	.LBB250_88
	jmp	.LBB250_92
.LBB250_91:                             #   in Loop: Header=BB250_71 Depth=2
	inc	cl
	mov	edx, 32767
.LBB250_92:                             #   in Loop: Header=BB250_71 Depth=2
	movzx	ecx, cl
.LBB250_93:                             #   in Loop: Header=BB250_71 Depth=2
	shr	r12, cl
	mov	qword ptr [rsp], r12
	sub	ebp, ecx
	mov	dword ptr [rsp + 8], ebp
	cmp	r10, r11
	jbe	.LBB250_405
# %bb.94:                               #   in Loop: Header=BB250_71 Depth=2
	mov	byte ptr [r13 + r11], al
	lea	rdi, [r11 + 1]
	test	edx, 256
	jne	.LBB250_213
# %bb.95:                               #   in Loop: Header=BB250_71 Depth=2
	cmp	rdi, r10
	jae	.LBB250_406
# %bb.96:                               #   in Loop: Header=BB250_71 Depth=2
	mov	byte ptr [r13 + r11 + 1], dl
	add	r11, 2
	cmp	rbx, 4
	jae	.LBB250_71
.LBB250_97:                             #   in Loop: Header=BB250_1 Depth=1
	cmp	ebp, 14
	ja	.LBB250_102
# %bb.98:                               #   in Loop: Header=BB250_1 Depth=1
	cmp	rbx, 1
	ja	.LBB250_294
# %bb.99:                               #   in Loop: Header=BB250_1 Depth=1
	mov	eax, r12d
	and	eax, 1023
	movsx	edi, word ptr [r15 + 2*rax + 512]
	test	edi, edi
	js	.LBB250_306
# %bb.100:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, di
	cmp	eax, 512
	jb	.LBB250_311
# %bb.101:                              #   in Loop: Header=BB250_1 Depth=1
	shr	edi, 9
	cmp	ebp, edi
	jb	.LBB250_311
.LBB250_102:                            #   in Loop: Header=BB250_1 Depth=1
	mov	eax, ebp
	mov	rdx, r12
	jmp	.LBB250_330
.LBB250_103:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.104:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [r14]
	mov	dword ptr [r15 + 10448], eax
	mov	esi, dword ptr [r15 + 10444]
	mov	edx, esi
	shr	edx, 4
	add	edx, 8
	and	edx, 48
	mov	ecx, esi
	and	ecx, 15
	xor	ecx, 8
	shl	esi, 8
	or	esi, eax
	imul	rdi, rsi, 138547333
	shr	rdi, 32
	mov	r8d, esi
	sub	r8d, edi
	shr	r8d
	add	r8d, edi
	shr	r8d, 4
	mov	edi, r8d
	shl	edi, 5
	sub	r8d, edi
	add	r8d, esi
	and	eax, 32
	or	eax, edx
	or	eax, r8d
	inc	r14
	dec	rbx
	or	eax, ecx
	mov	eax, 29
	mov	esi, 3
	cmovne	esi, eax
	jmp	.LBB250_1
.LBB250_105:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, dword ptr [rsp + 8]
	cmp	rcx, 15
	jae	.LBB250_195
# %bb.106:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	rbx, 1
	ja	.LBB250_203
# %bb.107:                              #   in Loop: Header=BB250_1 Depth=1
	mov	r8, qword ptr [rsp]
	mov	eax, r8d
	and	eax, 1023
	movsx	edi, word ptr [r15 + 2*rax + 3712]
	test	edi, edi
	js	.LBB250_295
# %bb.108:                              #   in Loop: Header=BB250_1 Depth=1
	mov	eax, edi
	shr	eax, 9
	movzx	edx, di
	cmp	edx, 512
	setae	dl
	cmp	ecx, eax
	setae	al
	test	dl, al
	je	.LBB250_300
.LBB250_109:                            #   in Loop: Header=BB250_1 Depth=1
	mov	edx, ecx
	mov	rax, r8
	jmp	.LBB250_205
.LBB250_110:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, dword ptr [rsp + 8]
	cmp	rcx, 3
	jae	.LBB250_196
# %bb.111:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.112:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	eax, byte ptr [r14]
	shl	rax, cl
	inc	r14
	or	rax, qword ptr [rsp]
	or	ecx, 8
	mov	rdx, rax
	shr	rdx, 3
	mov	qword ptr [rsp], rdx
	add	ecx, -3
	mov	dword ptr [rsp + 8], ecx
	mov	ecx, eax
	and	cl, 1
	mov	byte ptr [r15 + 10478], cl
	shr	al
	and	al, 3
	mov	byte ptr [r15 + 10479], al
	mov	sil, 25
	movzx	eax, al
	lea	rcx, [rip + .LJTI250_1]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB250_113:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.114:                              #   in Loop: Header=BB250_1 Depth=1
	mov	rbp, r10
	sub	rbp, r11
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	r13d, dword ptr [rsp + 16]
	cmp	r13, rbp
	cmovb	rbp, r13
	mov	r12, rbp
	add	r12, r11
	jb	.LBB250_398
# %bb.115:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	r12, r10
	ja	.LBB250_398
# %bb.116:                              #   in Loop: Header=BB250_1 Depth=1
	mov	qword ptr [rsp + 24], r15       # 8-byte Spill
	mov	r15, qword ptr [rsp + 40]       # 8-byte Reload
	add	r11, r15
	mov	rdi, r11
	mov	rsi, r14
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	sub	rbx, rbp
	add	r14, rbp
	sub	r13d, ebp
	mov	dword ptr [rsp + 16], r13d
	mov	r13, r15
	mov	r15, qword ptr [rsp + 24]       # 8-byte Reload
	mov	sil, 6
	mov	r11, r12
	jmp	.LBB250_1
.LBB250_117:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.118:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	eax, byte ptr [r14]
	inc	r14
	mov	dword ptr [r15 + 10444], eax
	mov	sil, 2
	jmp	.LBB250_1
.LBB250_119:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, dword ptr [rsp + 8]
	cmp	rcx, 8
	jae	.LBB250_198
# %bb.120:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.121:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	eax, byte ptr [r14]
	shl	rax, cl
	inc	r14
	or	rax, qword ptr [rsp]
	or	ecx, 8
	jmp	.LBB250_199
.LBB250_122:                            #   in Loop: Header=BB250_1 Depth=1
	mov	sil, 3
	cmp	byte ptr [r15 + 10478], 0
	je	.LBB250_1
# %bb.123:                              #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, dword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp]
	mov	eax, ecx
	and	eax, -8
	mov	r8, qword ptr [rsp + 56]        # 8-byte Reload
	mov	r14, r8
	sub	r14, rbx
	mov	esi, ecx
	shr	esi, 3
	cmp	r14d, esi
	cmovb	esi, r14d
	lea	edi, [8*rsi]
	sub	eax, edi
	mov	dword ptr [rsp + 8], eax
	sub	r14, rsi
	mov	rbx, r8
	sub	rbx, r14
	jb	.LBB250_403
# %bb.124:                              #   in Loop: Header=BB250_1 Depth=1
	and	cl, 7
                                        # kill: def $cl killed $cl killed $rcx
	shr	rdx, cl
	and	al, 56
	mov	rsi, -1
	mov	ecx, eax
	shl	rsi, cl
	not	rsi
	and	rsi, rdx
	mov	qword ptr [rsp], rsi
	add	r14, qword ptr [rsp + 136]      # 8-byte Folded Reload
	mov	dword ptr [rsp + 16], 0
	mov	sil, 23
	jmp	.LBB250_1
.LBB250_125:                            #   in Loop: Header=BB250_1 Depth=1
	mov	eax, dword ptr [rsp + 16]
	mov	r8d, dword ptr [rsp + 8]
	cmp	rax, 4
	jae	.LBB250_222
# %bb.126:                              #   in Loop: Header=BB250_1 Depth=1
	test	r8d, r8d
	je	.LBB250_214
# %bb.127:                              #   in Loop: Header=BB250_1 Depth=1
	mov	rdx, qword ptr [rsp]
	cmp	r8d, 7
	ja	.LBB250_130
# %bb.128:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.129:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	esi, byte ptr [r14]
	mov	ecx, r8d
	shl	rsi, cl
	dec	rbx
	inc	r14
	or	rdx, rsi
	or	r8d, 8
.LBB250_130:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rsi, rdx
	shr	rsi, 8
	mov	qword ptr [rsp], rsi
	add	r8d, -8
	mov	dword ptr [rsp + 8], r8d
	mov	byte ptr [r15 + rax + 10468], dl
	lea	rdx, [rax + 1]
	mov	dword ptr [rsp + 16], edx
	cmp	eax, 3
	je	.LBB250_222
# %bb.131:                              #   in Loop: Header=BB250_1 Depth=1
	test	r8d, r8d
	je	.LBB250_216
# %bb.132:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	r8d, 7
	ja	.LBB250_135
# %bb.133:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.134:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	edi, byte ptr [r14]
	mov	ecx, r8d
	shl	rdi, cl
	dec	rbx
	inc	r14
	or	rsi, rdi
	or	r8d, 8
.LBB250_135:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rdi, rsi
	shr	rdi, 8
	mov	qword ptr [rsp], rdi
	add	r8d, -8
	mov	dword ptr [rsp + 8], r8d
	mov	byte ptr [r15 + rdx + 10468], sil
	lea	rdx, [rax + 2]
	mov	dword ptr [rsp + 16], edx
	cmp	eax, 2
	jae	.LBB250_222
# %bb.136:                              #   in Loop: Header=BB250_1 Depth=1
	test	r8d, r8d
	je	.LBB250_218
# %bb.137:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	r8d, 7
	ja	.LBB250_140
# %bb.138:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.139:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	esi, byte ptr [r14]
	mov	ecx, r8d
	shl	rsi, cl
	dec	rbx
	inc	r14
	or	rdi, rsi
	or	r8d, 8
.LBB250_140:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rsi, rdi
	shr	rsi, 8
	mov	qword ptr [rsp], rsi
	add	r8d, -8
	mov	dword ptr [rsp + 8], r8d
	mov	byte ptr [r15 + rdx + 10468], dil
	lea	rdx, [rax + 3]
	mov	dword ptr [rsp + 16], edx
	test	rax, rax
	jne	.LBB250_222
# %bb.141:                              #   in Loop: Header=BB250_1 Depth=1
	test	r8d, r8d
	je	.LBB250_220
# %bb.142:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	r8d, 7
	ja	.LBB250_145
# %bb.143:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.144:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [r14]
	mov	ecx, r8d
	shl	rax, cl
	dec	rbx
	inc	r14
	or	rsi, rax
	or	r8d, 8
.LBB250_145:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rax, rsi
	shr	rax, 8
	mov	qword ptr [rsp], rax
	add	r8d, -8
	mov	dword ptr [rsp + 8], r8d
	mov	byte ptr [r15 + rdx + 10468], sil
	jmp	.LBB250_222
.LBB250_146:                            #   in Loop: Header=BB250_1 Depth=1
	mov	eax, dword ptr [rsp + 16]
	mov	ecx, eax
	and	ecx, 511
	mov	dword ptr [rsp + 16], ecx
	mov	sil, 20
	cmp	ecx, 256
	je	.LBB250_1
# %bb.147:                              #   in Loop: Header=BB250_1 Depth=1
	mov	sil, 33
	cmp	ecx, 285
	ja	.LBB250_1
# %bb.148:                              #   in Loop: Header=BB250_1 Depth=1
	dec	eax
	and	eax, 31
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.18]
	movzx	ecx, byte ptr [rax + rcx]
	mov	byte ptr [rsp + 20], cl
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.19]
	movzx	eax, word ptr [rdx + 2*rax]
	mov	dword ptr [rsp + 16], eax
	test	cl, cl
	sete	sil
	or	sil, 14
	jmp	.LBB250_1
.LBB250_149:                            #   in Loop: Header=BB250_1 Depth=1
	mov	eax, dword ptr [rsp + 16]
	mov	sil, 21
	cmp	eax, 255
	ja	.LBB250_1
# %bb.150:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	r10, r11
	je	.LBB250_349
# %bb.151:                              #   in Loop: Header=BB250_1 Depth=1
	jbe	.LBB250_405
# %bb.152:                              #   in Loop: Header=BB250_1 Depth=1
	mov	byte ptr [r13 + r11], al
	inc	r11
	mov	sil, 12
	jmp	.LBB250_1
.LBB250_153:                            #   in Loop: Header=BB250_1 Depth=1
	xor	eax, eax
	cmp	r10, r11
	setne	al
	cmp	dword ptr [rsp + 16], 0
	lea	eax, [rax + 4*rax + 2]
	mov	esi, 20
	cmovne	esi, eax
	je	.LBB250_1
# %bb.154:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	r10, r11
	jne	.LBB250_1
	jmp	.LBB250_354
.LBB250_155:                            #   in Loop: Header=BB250_1 Depth=1
	cmp	r10, r11
	je	.LBB250_349
# %bb.156:                              #   in Loop: Header=BB250_1 Depth=1
	jbe	.LBB250_405
# %bb.157:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [rsp + 12]
	mov	byte ptr [r13 + r11], al
	inc	r11
	cmp	dword ptr [rsp + 8], 0
	mov	eax, 6
	mov	esi, 17
	cmove	esi, eax
	dec	dword ptr [rsp + 16]
	cmove	esi, eax
	jmp	.LBB250_1
.LBB250_158:                            #   in Loop: Header=BB250_1 Depth=1
	mov	esi, dword ptr [rsp + 16]
	mov	eax, dword ptr [rsp + 8]
	mov	r8, qword ptr [rsp]
	cmp	esi, 4
	mov	edi, 3
	cmovae	edi, esi
	cmp	rsi, rdi
	je	.LBB250_293
.LBB250_161:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB250_162 Depth 3
	movabs	rcx, 21474836485
	mov	qword ptr [rsp + 88], rcx
	mov	dword ptr [rsp + 96], 4
	mov	edx, dword ptr [rsp + 4*rsi + 88]
	cmp	eax, edx
	jae	.LBB250_159
	.p2align	4
.LBB250_162:                            #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub	rbx, 1
	jb	.LBB250_339
# %bb.163:                              #   in Loop: Header=BB250_162 Depth=3
	movzx	r9d, byte ptr [r14]
	inc	r14
	mov	ecx, eax
	shl	r9, cl
	or	r8, r9
	mov	qword ptr [rsp], r8
	add	eax, 8
	mov	dword ptr [rsp + 8], eax
	cmp	eax, edx
	jb	.LBB250_162
.LBB250_159:                            #   in Loop: Header=BB250_161 Depth=2
	mov	r9, r8
	mov	ecx, edx
	shr	r9, cl
	mov	qword ptr [rsp], r9
	sub	eax, edx
	mov	dword ptr [rsp + 8], eax
	mov	r10, -1
	shl	r10, cl
	not	r10d
	and	r8d, r10d
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.3]
	add	r8w, word ptr [rcx + 2*rsi]
	mov	word ptr [r15 + 2*rsi + 10472], r8w
	inc	rsi
	mov	dword ptr [rsp + 16], esi
	mov	r8, r9
	cmp	rsi, rdi
	jne	.LBB250_161
.LBB250_293:                            #   in Loop: Header=BB250_1 Depth=1
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [rax + 15], 0
	mov	dword ptr [rsp + 16], 0
	cmp	word ptr [r15 + 10474], 31
	mov	esi, 9
	mov	eax, 27
	cmovae	esi, eax
	cmp	word ptr [r15 + 10472], 287
	cmovae	esi, eax
	jmp	.LBB250_1
.LBB250_164:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, dword ptr [rsp + 12]
	mov	sil, 30
	cmp	r10, rcx
	jb	.LBB250_1
# %bb.165:                              #   in Loop: Header=BB250_1 Depth=1
	mov	rax, r11
	sub	rax, rcx
	jb	.LBB250_1
# %bb.166:                              #   in Loop: Header=BB250_1 Depth=1
	mov	r8d, dword ptr [rsp + 16]
	lea	r12, [r11 + r8]
	cmp	r12, r10
	ja	.LBB250_169
# %bb.167:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	rax, r11
	jb	.LBB250_292
# %bb.168:                              #   in Loop: Header=BB250_1 Depth=1
	mov	rax, rcx
	neg	rax
	cmp	rax, r8
	jae	.LBB250_292
.LBB250_169:                            #   in Loop: Header=BB250_1 Depth=1
	test	r8, r8
	mov	eax, 12
	mov	esi, 19
	cmove	esi, eax
	jmp	.LBB250_1
.LBB250_170:                            #   in Loop: Header=BB250_1 Depth=1
	mov	qword ptr [rsp + 24], r15       # 8-byte Spill
	mov	r13d, dword ptr [rsp + 12]
	mov	ebp, dword ptr [rsp + 16]
	.p2align	4
.LBB250_171:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r12, r10
	sub	r12, r11
	je	.LBB250_340
# %bb.172:                              #   in Loop: Header=BB250_171 Depth=2
	mov	rdx, r11
	sub	rdx, r13
	mov	eax, ebp
	cmp	rax, r12
	cmovb	r12, rax
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rsi, r10
	mov	rcx, r11
	mov	r8, r12
	mov	r15, r11
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r11, r15
	add	r11, r12
	mov	sil, 12
	sub	ebp, r12d
	mov	dword ptr [rsp + 16], ebp
	jne	.LBB250_171
# %bb.173:                              #   in Loop: Header=BB250_1 Depth=1
	mov	r15, qword ptr [rsp + 24]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB250_1
.LBB250_174:                            #   in Loop: Header=BB250_1 Depth=1
	mov	eax, dword ptr [rsp + 16]
	mov	sil, 24
	cmp	eax, 4
	jae	.LBB250_1
# %bb.175:                              #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, dword ptr [rsp + 8]
	mov	edi, dword ptr [r15 + 10452]
	test	ecx, ecx
	je	.LBB250_225
# %bb.176:                              #   in Loop: Header=BB250_1 Depth=1
	mov	rdx, qword ptr [rsp]
	cmp	ecx, 7
	ja	.LBB250_179
# %bb.177:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.178:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	r8d, byte ptr [r14]
	shl	r8, cl
	dec	rbx
	inc	r14
	or	rdx, r8
	or	ecx, 8
.LBB250_179:                            #   in Loop: Header=BB250_1 Depth=1
	mov	r8, rdx
	shr	r8, 8
	mov	qword ptr [rsp], r8
	add	ecx, -8
	mov	dword ptr [rsp + 8], ecx
	shl	edi, 8
	movzx	edx, dl
	or	edx, edi
	mov	dword ptr [r15 + 10452], edx
	lea	edi, [rax + 1]
	mov	dword ptr [rsp + 16], edi
	cmp	eax, 3
	je	.LBB250_1
# %bb.180:                              #   in Loop: Header=BB250_1 Depth=1
	test	ecx, ecx
	je	.LBB250_227
# %bb.181:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	ecx, 7
	ja	.LBB250_184
# %bb.182:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.183:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	edi, byte ptr [r14]
	shl	rdi, cl
	dec	rbx
	inc	r14
	or	r8, rdi
	or	ecx, 8
.LBB250_184:                            #   in Loop: Header=BB250_1 Depth=1
	mov	r9, r8
	shr	r9, 8
	mov	qword ptr [rsp], r9
	add	ecx, -8
	mov	dword ptr [rsp + 8], ecx
	shl	edx, 8
	movzx	edi, r8b
	or	edi, edx
	mov	dword ptr [r15 + 10452], edi
	lea	edx, [rax + 2]
	mov	dword ptr [rsp + 16], edx
	cmp	eax, 2
	jae	.LBB250_1
# %bb.185:                              #   in Loop: Header=BB250_1 Depth=1
	test	ecx, ecx
	je	.LBB250_229
# %bb.186:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	ecx, 7
	ja	.LBB250_189
# %bb.187:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.188:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	edx, byte ptr [r14]
	shl	rdx, cl
	dec	rbx
	inc	r14
	or	r9, rdx
	or	ecx, 8
.LBB250_189:                            #   in Loop: Header=BB250_1 Depth=1
	mov	r8, r9
	shr	r8, 8
	mov	qword ptr [rsp], r8
	add	ecx, -8
	mov	dword ptr [rsp + 8], ecx
	shl	edi, 8
	movzx	edx, r9b
	or	edx, edi
	mov	dword ptr [r15 + 10452], edx
	lea	edi, [rax + 3]
	mov	dword ptr [rsp + 16], edi
	test	eax, eax
	jne	.LBB250_1
# %bb.190:                              #   in Loop: Header=BB250_1 Depth=1
	test	ecx, ecx
	je	.LBB250_231
# %bb.191:                              #   in Loop: Header=BB250_1 Depth=1
	cmp	ecx, 7
	ja	.LBB250_194
# %bb.192:                              #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.193:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [r14]
	shl	rax, cl
	dec	rbx
	inc	r14
	or	r8, rax
	or	ecx, 8
.LBB250_194:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rax, r8
	shr	rax, 8
	mov	qword ptr [rsp], rax
	add	ecx, -8
	mov	dword ptr [rsp + 8], ecx
	shl	edx, 8
	movzx	eax, r8b
	or	eax, edx
	jmp	.LBB250_233
.LBB250_195:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rax, qword ptr [rsp]
	jmp	.LBB250_204
.LBB250_196:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rax, qword ptr [rsp]
	mov	rdx, rax
	shr	rdx, 3
	mov	qword ptr [rsp], rdx
	add	ecx, -3
	mov	dword ptr [rsp + 8], ecx
	mov	ecx, eax
	and	cl, 1
	mov	byte ptr [r15 + 10478], cl
	shr	al
	and	al, 3
	mov	byte ptr [r15 + 10479], al
	mov	sil, 25
	movzx	eax, al
	lea	rcx, [rip + .LJTI250_1]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB250_197:                            #   in Loop: Header=BB250_1 Depth=1
	mov	sil, 4
	jmp	.LBB250_1
.LBB250_198:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rax, qword ptr [rsp]
.LBB250_199:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rdx, rax
	shr	rdx, 8
	mov	qword ptr [rsp], rdx
	add	ecx, -8
	mov	dword ptr [rsp + 8], ecx
	movzx	eax, al
	mov	dword ptr [rsp + 12], eax
	mov	sil, 18
	jmp	.LBB250_1
.LBB250_200:                            #   in Loop: Header=BB250_1 Depth=1
	xor	eax, eax
.LBB250_201:                            #   in Loop: Header=BB250_1 Depth=1
	not	rsi
	and	r12, rsi
	and	ecx, 2
	add	r12, qword ptr [rsp + 8*rcx + 88]
	lea	esi, [r12 + r13]
	mov	edi, r13d
	and	edi, 511
	and	esi, 511
	mov	rdx, rsi
	sub	rdx, rdi
	jb	.LBB250_402
# %bb.202:                              #   in Loop: Header=BB250_1 Depth=1
	mov	rbp, r11
	add	rdi, r15
	movzx	esi, al
	call	qword ptr [rip + memset@GOTPCREL]
	add	r12d, r13d
	mov	dword ptr [rsp + 16], r12d
	mov	sil, 10
	mov	r11, rbp
	mov	r13, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB250_1
.LBB250_203:                            #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, word ptr [r14]
	add	rbx, -2
	add	r14, 2
	shl	rax, cl
	or	rax, qword ptr [rsp]
	or	ecx, 16
.LBB250_204:                            #   in Loop: Header=BB250_1 Depth=1
	mov	edx, ecx
.LBB250_205:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, eax
	and	ecx, 1023
	movsx	edi, word ptr [r15 + 2*rcx + 3712]
	test	edi, edi
	js	.LBB250_207
# %bb.206:                              #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, edi
	shr	ecx, 9
	and	edi, 511
	jmp	.LBB250_236
.LBB250_207:                            #   in Loop: Header=BB250_1 Depth=1
	mov	cl, 10
	.p2align	4
.LBB250_208:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	not	edi
	movzx	esi, cl
	bt	rax, rsi
	adc	edi, 0
	cmp	edi, 576
	jae	.LBB250_234
# %bb.209:                              #   in Loop: Header=BB250_208 Depth=2
	mov	esi, edi
	movsx	edi, word ptr [r15 + 2*rsi + 5760]
	inc	cl
	test	edi, edi
	js	.LBB250_208
	jmp	.LBB250_235
.LBB250_210:                            #   in Loop: Header=BB250_1 Depth=1
	mov	dword ptr [rsp + 16], 0
	mov	sil, 8
	jmp	.LBB250_1
.LBB250_211:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ebp, r12d
	mov	r12, r11
	mov	dword ptr [r15 + 10472], 2097440
	movaps	xmm0, xmmword ptr [rip + .LCPI250_0] # xmm0 = [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8]
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	movups	xmmword ptr [rax + 128], xmm0
	movups	xmmword ptr [rax + 112], xmm0
	movups	xmmword ptr [rax + 96], xmm0
	movups	xmmword ptr [rax + 80], xmm0
	movups	xmmword ptr [rax + 64], xmm0
	movups	xmmword ptr [rax + 48], xmm0
	movups	xmmword ptr [rax + 32], xmm0
	movups	xmmword ptr [rax + 16], xmm0
	movups	xmmword ptr [rax], xmm0
	movaps	xmm0, xmmword ptr [rip + .LCPI250_1] # xmm0 = [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	movups	xmmword ptr [rax + 96], xmm0
	movups	xmmword ptr [rax + 80], xmm0
	movups	xmmword ptr [rax + 64], xmm0
	movups	xmmword ptr [rax + 48], xmm0
	movups	xmmword ptr [rax + 32], xmm0
	movups	xmmword ptr [rax + 16], xmm0
	movups	xmmword ptr [rax], xmm0
	movabs	rax, 506381209866536711
	mov	rcx, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [rcx + 16], rax
	movaps	xmm0, xmmword ptr [rip + .LCPI250_2] # xmm0 = [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7]
	movups	xmmword ptr [rcx], xmm0
	movabs	rax, 578721382704613384
	mov	qword ptr [r15 + 10392], rax
	movdqa	xmm0, xmmword ptr [rip + .LCPI250_3] # xmm0 = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
	mov	rax, qword ptr [rsp + 64]       # 8-byte Reload
	movdqu	xmmword ptr [rax + 16], xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	rsi, rsp
	mov	rdi, r15
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree
	mov	esi, edx
	cmp	al, 1
	jne	.LBB250_358
# %bb.212:                              #   in Loop: Header=BB250_1 Depth=1
	mov	r11, r12
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB250_1
.LBB250_213:                            #   in Loop: Header=BB250_1 Depth=1
	mov	dword ptr [rsp + 16], edx
	mov	r11, rdi
	jmp	.LBB250_1
.LBB250_214:                            #   in Loop: Header=BB250_1 Depth=1
	xor	r8d, r8d
	test	rbx, rbx
	je	.LBB250_360
# %bb.215:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	ecx, byte ptr [r14]
	inc	r14
	mov	byte ptr [r15 + rax + 10468], cl
	lea	edx, [rax + 1]
	mov	dword ptr [rsp + 16], edx
	cmp	eax, 3
	je	.LBB250_222
.LBB250_216:                            #   in Loop: Header=BB250_1 Depth=1
	xor	r8d, r8d
	test	rbx, rbx
	je	.LBB250_360
# %bb.217:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	ecx, byte ptr [r14]
	inc	r14
	mov	edx, edx
	mov	byte ptr [r15 + rdx + 10468], cl
	lea	edx, [rax + 2]
	mov	dword ptr [rsp + 16], edx
	cmp	eax, 2
	jae	.LBB250_222
.LBB250_218:                            #   in Loop: Header=BB250_1 Depth=1
	xor	r8d, r8d
	test	rbx, rbx
	je	.LBB250_360
# %bb.219:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	ecx, byte ptr [r14]
	inc	r14
	mov	edx, edx
	mov	byte ptr [r15 + rdx + 10468], cl
	lea	edx, [rax + 3]
	mov	dword ptr [rsp + 16], edx
	test	rax, rax
	jne	.LBB250_222
.LBB250_220:                            #   in Loop: Header=BB250_1 Depth=1
	xor	r8d, r8d
	test	rbx, rbx
	je	.LBB250_360
# %bb.221:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	eax, byte ptr [r14]
	inc	r14
	mov	ecx, edx
	mov	byte ptr [r15 + rcx + 10468], al
.LBB250_222:                            #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, word ptr [r15 + 10468]
	movzx	ecx, word ptr [r15 + 10470]
	xor	cx, ax
	mov	dword ptr [rsp + 16], eax
	mov	sil, 31
	cmp	cx, -1
	jne	.LBB250_1
# %bb.223:                              #   in Loop: Header=BB250_1 Depth=1
	mov	sil, 20
	test	ax, ax
	je	.LBB250_1
# %bb.224:                              #   in Loop: Header=BB250_1 Depth=1
	test	r8d, r8d
	mov	eax, 6
	mov	esi, 17
	cmove	esi, eax
	jmp	.LBB250_1
.LBB250_225:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.226:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	ecx, byte ptr [r14]
	inc	r14
	shl	edi, 8
	or	edi, ecx
	mov	dword ptr [r15 + 10452], edi
	lea	ecx, [rax + 1]
	mov	dword ptr [rsp + 16], ecx
	mov	edx, edi
	cmp	eax, 3
	je	.LBB250_1
.LBB250_227:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.228:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	ecx, byte ptr [r14]
	inc	r14
	shl	edx, 8
	or	edx, ecx
	mov	dword ptr [r15 + 10452], edx
	lea	ecx, [rax + 2]
	mov	dword ptr [rsp + 16], ecx
	mov	edi, edx
	cmp	eax, 2
	jae	.LBB250_1
.LBB250_229:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.230:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	ecx, byte ptr [r14]
	inc	r14
	shl	edi, 8
	or	edi, ecx
	mov	dword ptr [r15 + 10452], edi
	lea	ecx, [rax + 3]
	mov	dword ptr [rsp + 16], ecx
	mov	edx, edi
	test	eax, eax
	jne	.LBB250_1
.LBB250_231:                            #   in Loop: Header=BB250_1 Depth=1
	test	rbx, rbx
	je	.LBB250_345
# %bb.232:                              #   in Loop: Header=BB250_1 Depth=1
	dec	rbx
	movzx	eax, byte ptr [r14]
	inc	r14
	shl	edx, 8
	or	edx, eax
	mov	eax, edx
.LBB250_233:                            #   in Loop: Header=BB250_1 Depth=1
	mov	dword ptr [r15 + 10452], eax
	mov	dword ptr [rsp + 16], 4
	jmp	.LBB250_1
.LBB250_234:                            #   in Loop: Header=BB250_1 Depth=1
	inc	cl
	mov	edi, 32767
.LBB250_235:                            #   in Loop: Header=BB250_1 Depth=1
	movzx	ecx, cl
.LBB250_236:                            #   in Loop: Header=BB250_1 Depth=1
	shr	rax, cl
	mov	qword ptr [rsp], rax
	sub	edx, ecx
	mov	dword ptr [rsp + 8], edx
	mov	sil, 34
	cmp	edi, 29
	ja	.LBB250_1
# %bb.237:                              #   in Loop: Header=BB250_1 Depth=1
	mov	eax, edi
	mov	ecx, edi
	shr	cl
	xor	edx, edx
	sub	cl, 1
	movzx	ecx, cl
	cmovb	ecx, edx
	mov	byte ptr [rsp + 20], cl
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.8]
	movzx	eax, word ptr [rcx + 2*rax]
	mov	dword ptr [rsp + 12], eax
	cmp	edi, 4
	mov	eax, 22
	mov	esi, 16
	cmovb	esi, eax
	jmp	.LBB250_1
.LBB250_238:                            #   in Loop: Header=BB250_263 Depth=2
	mov	r11, rdi
	mov	r13d, eax
.LBB250_239:                            #   in Loop: Header=BB250_263 Depth=2
	mov	eax, r13d
	and	eax, 511
	cmp	eax, 256
	je	.LBB250_328
# %bb.240:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	eax, 285
	ja	.LBB250_362
# %bb.241:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	ebp, 29
	ja	.LBB250_243
# %bb.242:                              #   in Loop: Header=BB250_263 Depth=2
	mov	eax, dword ptr [r14]
	mov	ecx, ebp
	shl	rax, cl
	add	rbx, -4
	add	r14, 4
	or	r12, rax
	or	ebp, 32
.LBB250_243:                            #   in Loop: Header=BB250_263 Depth=2
	dec	r13d
	and	r13d, 31
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.18]
	movzx	r9d, byte ptr [r13 + rax]
	lea	rax, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.19]
	movzx	r13d, word ptr [rax + 2*r13]
	test	r9b, r9b
	je	.LBB250_245
# %bb.244:                              #   in Loop: Header=BB250_263 Depth=2
	movzx	ecx, r9b
	mov	rax, -1
	shl	rax, cl
	not	eax
	and	eax, r12d
	shr	r12, cl
	sub	ebp, ecx
	add	eax, r13d
	mov	r13d, eax
.LBB250_245:                            #   in Loop: Header=BB250_263 Depth=2
	mov	eax, r12d
	and	eax, 1023
	movsx	eax, word ptr [r15 + 2*rax + 3712]
	test	eax, eax
	js	.LBB250_247
# %bb.246:                              #   in Loop: Header=BB250_263 Depth=2
	mov	ecx, eax
	shr	ecx, 9
	jmp	.LBB250_253
.LBB250_247:                            #   in Loop: Header=BB250_263 Depth=2
	mov	cl, 10
	.p2align	4
.LBB250_248:                            #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	not	eax
	movzx	edx, cl
	bt	r12, rdx
	adc	eax, 0
	cmp	eax, 576
	jae	.LBB250_251
# %bb.249:                              #   in Loop: Header=BB250_248 Depth=3
	mov	eax, eax
	movsx	eax, word ptr [r15 + 2*rax + 5760]
	inc	cl
	test	eax, eax
	js	.LBB250_248
	jmp	.LBB250_252
.LBB250_251:                            #   in Loop: Header=BB250_263 Depth=2
	inc	cl
	mov	eax, 32767
.LBB250_252:                            #   in Loop: Header=BB250_263 Depth=2
	movzx	ecx, cl
.LBB250_253:                            #   in Loop: Header=BB250_263 Depth=2
	shr	r12, cl
	mov	edx, eax
	and	edx, 511
	sub	ebp, ecx
	cmp	edx, 29
	ja	.LBB250_363
# %bb.254:                              #   in Loop: Header=BB250_263 Depth=2
	mov	ecx, eax
	shr	cl
	xor	esi, esi
	sub	cl, 1
	movzx	r9d, cl
	cmovb	r9d, esi
	mov	ecx, edx
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.8]
	movzx	r8d, word ptr [rdx + 2*rcx]
	cmp	al, 4
	jb	.LBB250_259
# %bb.255:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	ebp, 30
	jae	.LBB250_258
# %bb.256:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	rbx, 3
	jbe	.LBB250_404
# %bb.257:                              #   in Loop: Header=BB250_263 Depth=2
	mov	eax, dword ptr [r14]
	mov	ecx, ebp
	shl	rax, cl
	add	rbx, -4
	add	r14, 4
	or	r12, rax
	or	ebp, 32
.LBB250_258:                            #   in Loop: Header=BB250_263 Depth=2
	mov	rax, -1
	mov	ecx, r9d
	shl	rax, cl
	not	eax
	and	eax, r12d
	shr	r12, cl
	movzx	ecx, r9b
	sub	ebp, ecx
	add	eax, r8d
	mov	r8d, eax
.LBB250_259:                            #   in Loop: Header=BB250_263 Depth=2
	mov	ecx, r8d
	mov	dl, 30
	cmp	r10, rcx
	jb	.LBB250_368
# %bb.260:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	r11, rcx
	jb	.LBB250_368
# %bb.261:                              #   in Loop: Header=BB250_263 Depth=2
	mov	dword ptr [rsp + 48], r9d       # 4-byte Spill
	mov	dword ptr [rsp + 52], r8d       # 4-byte Spill
	mov	r8d, r13d
	mov	qword ptr [rsp + 112], r8       # 8-byte Spill
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rsi, r10
	mov	rdx, r11
	mov	qword ptr [rsp + 24], r11       # 8-byte Spill
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r11, qword ptr [rsp + 24]       # 8-byte Reload
	add	r11, qword ptr [rsp + 112]      # 8-byte Folded Reload
	mov	rax, r10
	sub	rax, r11
	mov	sil, 12
	cmp	rax, 259
	jb	.LBB250_338
# %bb.262:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	rbx, 13
	mov	r8d, dword ptr [rsp + 52]       # 4-byte Reload
	mov	r9d, dword ptr [rsp + 48]       # 4-byte Reload
	jbe	.LBB250_287
	.p2align	4
.LBB250_263:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB250_268 Depth 3
                                        #       Child Loop BB250_277 Depth 3
                                        #       Child Loop BB250_248 Depth 3
	cmp	ebp, 29
	ja	.LBB250_265
# %bb.264:                              #   in Loop: Header=BB250_263 Depth=2
	mov	eax, dword ptr [r14]
	mov	ecx, ebp
	shl	rax, cl
	add	rbx, -4
	add	r14, 4
	or	r12, rax
	or	ebp, 32
.LBB250_265:                            #   in Loop: Header=BB250_263 Depth=2
	mov	eax, r12d
	and	eax, 1023
	movsx	r13d, word ptr [r15 + 2*rax + 512]
	test	r13d, r13d
	js	.LBB250_267
# %bb.266:                              #   in Loop: Header=BB250_263 Depth=2
	mov	ecx, r13d
	shr	ecx, 9
	shr	r12, cl
	sub	ebp, ecx
	test	r13d, 256
	je	.LBB250_274
	jmp	.LBB250_239
	.p2align	4
.LBB250_267:                            #   in Loop: Header=BB250_263 Depth=2
	mov	al, 10
	.p2align	4
.LBB250_268:                            #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	not	r13d
	movzx	ecx, al
	bt	r12, rcx
	adc	r13d, 0
	cmp	r13d, 576
	jae	.LBB250_271
# %bb.269:                              #   in Loop: Header=BB250_268 Depth=3
	mov	ecx, r13d
	movsx	r13d, word ptr [r15 + 2*rcx + 2560]
	inc	al
	test	r13d, r13d
	js	.LBB250_268
	jmp	.LBB250_272
.LBB250_271:                            #   in Loop: Header=BB250_263 Depth=2
	inc	al
	mov	r13d, 32767
.LBB250_272:                            #   in Loop: Header=BB250_263 Depth=2
	movzx	ecx, al
	shr	r12, cl
	sub	ebp, ecx
	test	r13d, 256
	jne	.LBB250_239
.LBB250_274:                            #   in Loop: Header=BB250_263 Depth=2
	mov	eax, r12d
	and	eax, 1023
	movsx	eax, word ptr [r15 + 2*rax + 512]
	test	eax, eax
	js	.LBB250_276
# %bb.275:                              #   in Loop: Header=BB250_263 Depth=2
	mov	ecx, eax
	shr	ecx, 9
	shr	r12, cl
	cmp	r11, r10
	jb	.LBB250_283
	jmp	.LBB250_405
	.p2align	4
.LBB250_276:                            #   in Loop: Header=BB250_263 Depth=2
	mov	cl, 10
	.p2align	4
.LBB250_277:                            #   Parent Loop BB250_1 Depth=1
                                        #     Parent Loop BB250_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	not	eax
	movzx	edx, cl
	bt	r12, rdx
	adc	eax, 0
	cmp	eax, 576
	jae	.LBB250_280
# %bb.278:                              #   in Loop: Header=BB250_277 Depth=3
	mov	eax, eax
	movsx	eax, word ptr [r15 + 2*rax + 2560]
	inc	cl
	test	eax, eax
	js	.LBB250_277
	jmp	.LBB250_281
.LBB250_280:                            #   in Loop: Header=BB250_263 Depth=2
	inc	cl
	mov	eax, 32767
.LBB250_281:                            #   in Loop: Header=BB250_263 Depth=2
	movzx	ecx, cl
	shr	r12, cl
	cmp	r11, r10
	jae	.LBB250_405
.LBB250_283:                            #   in Loop: Header=BB250_263 Depth=2
	sub	ebp, ecx
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	byte ptr [rcx + r11], r13b
	lea	rdi, [r11 + 1]
	test	eax, 256
	jne	.LBB250_238
# %bb.284:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	rdi, r10
	jae	.LBB250_406
# %bb.285:                              #   in Loop: Header=BB250_263 Depth=2
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	byte ptr [rcx + r11 + 1], al
	add	r11, 2
	mov	rax, r10
	sub	rax, r11
	mov	sil, 12
	cmp	rax, 259
	jb	.LBB250_287
# %bb.286:                              #   in Loop: Header=BB250_263 Depth=2
	cmp	rbx, 14
	jae	.LBB250_263
.LBB250_287:                            #   in Loop: Header=BB250_1 Depth=1
	mov	qword ptr [rsp], r12
	mov	dword ptr [rsp + 8], ebp
	mov	dword ptr [rsp + 12], r8d
	mov	dword ptr [rsp + 16], r13d
	mov	byte ptr [rsp + 20], r9b
	mov	r13, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB250_1
.LBB250_288:                            #   in Loop: Header=BB250_1 Depth=1
	mov	sil, 26
	jmp	.LBB250_1
.LBB250_289:                            #   in Loop: Header=BB250_1 Depth=1
	test	rax, rax
	jne	.LBB250_291
# %bb.290:                              #   in Loop: Header=BB250_1 Depth=1
	mov	sil, 32
	cmp	edi, 16
	je	.LBB250_1
.LBB250_291:                            #   in Loop: Header=BB250_1 Depth=1
	mov	dword ptr [rsp + 88], 459522
	and	edi, 3
	movzx	eax, byte ptr [rsp + rdi + 88]
	mov	byte ptr [rsp + 20], al
	mov	sil, 11
	jmp	.LBB250_1
.LBB250_292:                            #   in Loop: Header=BB250_1 Depth=1
	mov	rdi, r13
	mov	rsi, r10
	mov	rdx, r11
	call	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	mov	sil, 12
	mov	r11, r12
	jmp	.LBB250_1
.LBB250_294:                            #   in Loop: Header=BB250_1 Depth=1
	movzx	edx, word ptr [r14]
	add	rbx, -2
	mov	ecx, ebp
	shl	rdx, cl
	add	r14, 2
	or	rdx, r12
	or	ebp, 16
	mov	eax, ebp
	jmp	.LBB250_330
.LBB250_295:                            #   in Loop: Header=BB250_1 Depth=1
	cmp	ecx, 11
	jb	.LBB250_300
# %bb.296:                              #   in Loop: Header=BB250_1 Depth=1
	mov	eax, 11
	.p2align	4
.LBB250_297:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	edx, [rax - 1]
	not	edi
	bt	r8, rdx
	adc	edi, 0
	cmp	edi, 575
	ja	.LBB250_407
# %bb.298:                              #   in Loop: Header=BB250_297 Depth=2
	movsx	edi, word ptr [r15 + 2*rdi + 5760]
	test	edi, edi
	jns	.LBB250_109
# %bb.299:                              #   in Loop: Header=BB250_297 Depth=2
	inc	eax
	cmp	ecx, eax
	jae	.LBB250_297
.LBB250_300:                            #   in Loop: Header=BB250_1 Depth=1
	mov	sil, -4
	test	rbx, rbx
	je	.LBB250_348
# %bb.301:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	eax, byte ptr [r14]
	shl	rax, cl
	inc	r14
	or	rax, r8
	mov	qword ptr [rsp], rax
	mov	rdx, rcx
	add	rdx, 8
	mov	dword ptr [rsp + 8], edx
	cmp	ecx, 6
	jbe	.LBB250_303
.LBB250_302:                            #   in Loop: Header=BB250_1 Depth=1
	xor	ebx, ebx
	jmp	.LBB250_205
.LBB250_303:                            #   in Loop: Header=BB250_1 Depth=1
	mov	edi, eax
	and	edi, 1023
	movsx	edi, word ptr [r15 + 2*rdi + 3712]
	test	edi, edi
	js	.LBB250_317
# %bb.304:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	ecx, di
	xor	ebx, ebx
	cmp	ecx, 512
	jb	.LBB250_400
# %bb.305:                              #   in Loop: Header=BB250_1 Depth=1
	shr	edi, 9
	cmp	rdx, rdi
	jae	.LBB250_205
	jmp	.LBB250_400
.LBB250_306:                            #   in Loop: Header=BB250_1 Depth=1
	cmp	ebp, 11
	jb	.LBB250_311
# %bb.307:                              #   in Loop: Header=BB250_1 Depth=1
	mov	eax, 11
.LBB250_308:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	ecx, [rax - 1]
	not	edi
	bt	r12, rcx
	adc	edi, 0
	cmp	edi, 575
	ja	.LBB250_407
# %bb.309:                              #   in Loop: Header=BB250_308 Depth=2
	movsx	edi, word ptr [r15 + 2*rdi + 2560]
	test	edi, edi
	jns	.LBB250_102
# %bb.310:                              #   in Loop: Header=BB250_308 Depth=2
	inc	eax
	cmp	ebp, eax
	jae	.LBB250_308
.LBB250_311:                            #   in Loop: Header=BB250_1 Depth=1
	mov	sil, -4
	test	rbx, rbx
	je	.LBB250_394
# %bb.312:                              #   in Loop: Header=BB250_1 Depth=1
	mov	eax, ebp
	movzx	edx, byte ptr [r14]
	inc	r14
	mov	ecx, eax
	shl	rdx, cl
	or	rdx, r12
	mov	qword ptr [rsp], rdx
	add	rax, 8
	mov	dword ptr [rsp + 8], eax
	cmp	ebp, 6
	jbe	.LBB250_314
.LBB250_329:                            #   in Loop: Header=BB250_1 Depth=1
	xor	ebx, ebx
	jmp	.LBB250_330
.LBB250_314:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, edx
	and	ecx, 1023
	movsx	edi, word ptr [r15 + 2*rcx + 512]
	test	edi, edi
	js	.LBB250_323
# %bb.315:                              #   in Loop: Header=BB250_1 Depth=1
	movzx	ecx, di
	xor	ebx, ebx
	cmp	ecx, 512
	jb	.LBB250_401
# %bb.316:                              #   in Loop: Header=BB250_1 Depth=1
	shr	edi, 9
	cmp	rax, rdi
	jb	.LBB250_401
.LBB250_330:                            #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, edx
	and	ecx, 1023
	movsx	esi, word ptr [r15 + 2*rcx + 512]
	test	esi, esi
	js	.LBB250_332
# %bb.331:                              #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, esi
	shr	ecx, 9
	and	esi, 511
	jmp	.LBB250_337
.LBB250_332:                            #   in Loop: Header=BB250_1 Depth=1
	mov	cl, 10
	.p2align	4
.LBB250_333:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	not	esi
	movzx	edi, cl
	bt	rdx, rdi
	adc	esi, 0
	cmp	esi, 576
	jae	.LBB250_335
# %bb.334:                              #   in Loop: Header=BB250_333 Depth=2
	mov	esi, esi
	movsx	esi, word ptr [r15 + 2*rsi + 2560]
	inc	cl
	test	esi, esi
	js	.LBB250_333
	jmp	.LBB250_336
.LBB250_335:                            #   in Loop: Header=BB250_1 Depth=1
	inc	cl
	mov	esi, 32767
.LBB250_336:                            #   in Loop: Header=BB250_1 Depth=1
	movzx	ecx, cl
.LBB250_337:                            #   in Loop: Header=BB250_1 Depth=1
	shr	rdx, cl
	mov	qword ptr [rsp], rdx
	sub	eax, ecx
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 16], esi
	mov	sil, 13
	jmp	.LBB250_1
.LBB250_317:                            #   in Loop: Header=BB250_1 Depth=1
	cmp	ecx, 3
	jb	.LBB250_348
# %bb.318:                              #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, 11
.LBB250_319:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r8d, [rcx - 1]
	not	edi
	bt	rax, r8
	adc	edi, 0
	cmp	edi, 575
	ja	.LBB250_407
# %bb.320:                              #   in Loop: Header=BB250_319 Depth=2
	movsx	edi, word ptr [r15 + 2*rdi + 5760]
	test	edi, edi
	jns	.LBB250_302
# %bb.321:                              #   in Loop: Header=BB250_319 Depth=2
	inc	ecx
	mov	r12b, 15
	xor	r8d, r8d
	cmp	ecx, edx
	jbe	.LBB250_319
	jmp	.LBB250_361
.LBB250_323:                            #   in Loop: Header=BB250_1 Depth=1
	cmp	ebp, 3
	jb	.LBB250_394
# %bb.324:                              #   in Loop: Header=BB250_1 Depth=1
	mov	ecx, 11
.LBB250_325:                            #   Parent Loop BB250_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r8d, [rcx - 1]
	not	edi
	bt	rdx, r8
	adc	edi, 0
	cmp	edi, 575
	ja	.LBB250_407
# %bb.326:                              #   in Loop: Header=BB250_325 Depth=2
	movsx	edi, word ptr [r15 + 2*rdi + 2560]
	test	edi, edi
	jns	.LBB250_329
# %bb.327:                              #   in Loop: Header=BB250_325 Depth=2
	inc	ecx
	mov	r12b, 12
	xor	r8d, r8d
	cmp	ecx, eax
	jbe	.LBB250_325
	jmp	.LBB250_361
.LBB250_328:                            #   in Loop: Header=BB250_1 Depth=1
	mov	r13d, 256
	mov	sil, 20
	jmp	.LBB250_287
.LBB250_338:                            #   in Loop: Header=BB250_1 Depth=1
	mov	r8d, dword ptr [rsp + 52]       # 4-byte Reload
	mov	r9d, dword ptr [rsp + 48]       # 4-byte Reload
	jmp	.LBB250_287
.LBB250_339:
	xor	r8d, r8d
	mov	sil, -4
	mov	r12b, 8
	xor	ebx, ebx
	jmp	.LBB250_372
.LBB250_340:
	mov	r12b, 19
	mov	sil, 2
	xor	eax, eax
	mov	r11, r10
	mov	r15, qword ptr [rsp + 24]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB250_370
.LBB250_341:
	xor	r8d, r8d
	mov	sil, -4
	mov	r12b, 16
	xor	ebx, ebx
	jmp	.LBB250_372
.LBB250_342:
	xor	r8d, r8d
	mov	sil, -4
	mov	r12b, 11
	xor	ebx, ebx
	jmp	.LBB250_372
.LBB250_343:
	xor	r8d, r8d
	mov	sil, -4
	mov	r12b, 14
	xor	ebx, ebx
	jmp	.LBB250_372
.LBB250_344:
	xor	eax, eax
	mov	sil, -1
	mov	r11, r12
	mov	r12b, 9
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB250_370
.LBB250_345:
	mov	sil, -4
	jmp	.LBB250_348
.LBB250_346:
	xor	eax, eax
	mov	sil, -1
	mov	r11, rbp
	mov	r12b, 10
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB250_370
.LBB250_347:
	mov	sil, -4
	mov	r12b, 9
.LBB250_348:
	xor	r8d, r8d
	xor	ebx, ebx
	jmp	.LBB250_372
.LBB250_349:
	mov	sil, 2
	xor	eax, eax
	mov	r11, r10
	jmp	.LBB250_370
.LBB250_350:
	xor	r8d, r8d
.LBB250_351:
	xor	ebx, ebx
	mov	r12b, 10
	jmp	.LBB250_372
.LBB250_352:
	xor	eax, eax
	xor	esi, esi
	jmp	.LBB250_370
.LBB250_353:
	mov	sil, -1
	xor	eax, eax
	jmp	.LBB250_370
.LBB250_354:
	mov	r11, r10
.LBB250_355:
	cmp	sil, 1
	sete	al
	je	.LBB250_357
.LBB250_356:
	movzx	ecx, sil
	cmp	ecx, 252
	jne	.LBB250_370
.LBB250_357:
	xor	r8d, r8d
	cmp	sil, 1
	je	.LBB250_371
	jmp	.LBB250_372
.LBB250_358:
	movzx	eax, al
	cmp	eax, 2
	jne	.LBB250_364
# %bb.359:
	mov	r11, r12
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r12d, ebp
	cmp	sil, 1
	sete	al
	jne	.LBB250_356
	jmp	.LBB250_357
.LBB250_360:
	mov	sil, -4
.LBB250_361:
	xor	ebx, ebx
	jmp	.LBB250_372
.LBB250_362:
	mov	dl, 33
	jmp	.LBB250_369
.LBB250_363:
	mov	dl, 34
.LBB250_368:
	mov	eax, r13d
.LBB250_369:
	mov	qword ptr [rsp], r12
	mov	dword ptr [rsp + 8], ebp
	mov	dword ptr [rsp + 12], r8d
	mov	dword ptr [rsp + 16], eax
	mov	byte ptr [rsp + 20], r9b
	mov	sil, -1
	xor	eax, eax
	mov	r13, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r12d, edx
	jmp	.LBB250_370
.LBB250_364:
	mov	sil, -1
	xor	eax, eax
	mov	r11, r12
	mov	r10, qword ptr [rsp + 32]       # 8-byte Reload
	mov	r12d, ebp
.LBB250_370:
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	sub	ecx, ebx
	mov	edx, dword ptr [rsp + 8]
	mov	r8d, edx
	shr	r8d, 3
	cmp	ecx, r8d
	cmovb	r8d, ecx
	lea	ecx, [8*r8]
	sub	edx, ecx
	mov	dword ptr [rsp + 8], edx
	test	al, al
	je	.LBB250_372
.LBB250_371:
	cmp	r10, r11
	setne	al
	cmp	r12b, 23
	sete	cl
	or	cl, al
	mov	sil, 2
	sub	sil, cl
.LBB250_372:
	mov	ecx, dword ptr [rsp + 8]
	mov	rax, -1
	shl	rax, cl
	not	rax
	and	rax, qword ptr [rsp]
	mov	byte ptr [r15 + 10500], r12b
	mov	dword ptr [r15 + 10440], ecx
	mov	rcx, qword ptr [rsp + 12]
	mov	qword ptr [r15 + 10460], rcx
	movzx	ecx, byte ptr [rsp + 20]
	mov	byte ptr [r15 + 10480], cl
	mov	qword ptr [r15 + 10432], rax
	test	sil, sil
	js	.LBB250_392
# %bb.373:
	cmp	r11, r10
	ja	.LBB250_395
# %bb.374:
	mov	eax, dword ptr [r15 + 10456]
	movzx	r9d, ax
	mov	r10d, eax
	shr	r10d, 16
	movabs	rcx, 9223372036854775804
	and	rcx, r11
	mov	qword ptr [rsp + 24], r11       # 8-byte Spill
	mov	edi, r11d
	movabs	rdx, 3402281327715882719
	mov	rax, rcx
	mul	rdx
	and	edi, 3
	shr	rdx, 12
	imul	rdx, rdx, 22208
	mov	rax, rcx
	sub	rax, rdx
	pxor	xmm0, xmm0
	cmp	rdx, 22208
	jae	.LBB250_376
# %bb.375:
	pxor	xmm1, xmm1
	jmp	.LBB250_380
.LBB250_376:
	imul	r11d, r9d, 22208
	pxor	xmm2, xmm2
	movdqa	xmm3, xmmword ptr [rip + .LCPI250_5] # xmm3 = [2147975281,2147975281,2147975281,2147975281]
	movdqa	xmm4, xmmword ptr [rip + .LCPI250_6] # xmm4 = [65521,65521,65521,65521]
	mov	r14d, 2147975281
	mov	r12, r13
	mov	r13, rdx
	pxor	xmm1, xmm1
	.p2align	4
.LBB250_377:                            # =>This Loop Header: Depth=1
                                        #     Child Loop BB250_378 Depth 2
	mov	rbp, -22208
	.p2align	4
.LBB250_378:                            #   Parent Loop BB250_377 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	xmm5, dword ptr [r12 + rbp + 22208] # xmm5 = mem[0],zero,zero,zero
	punpcklbw	xmm5, xmm2              # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklwd	xmm5, xmm2              # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	paddd	xmm5, xmm0
	paddd	xmm1, xmm5
	movd	xmm0, dword ptr [r12 + rbp + 22212] # xmm0 = mem[0],zero,zero,zero
	punpcklbw	xmm0, xmm2              # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	xmm0, xmm2              # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	paddd	xmm0, xmm5
	paddd	xmm1, xmm0
	movd	xmm5, dword ptr [r12 + rbp + 22216] # xmm5 = mem[0],zero,zero,zero
	punpcklbw	xmm5, xmm2              # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklwd	xmm5, xmm2              # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	paddd	xmm5, xmm0
	paddd	xmm1, xmm5
	movd	xmm0, dword ptr [r12 + rbp + 22220] # xmm0 = mem[0],zero,zero,zero
	punpcklbw	xmm0, xmm2              # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	xmm0, xmm2              # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	paddd	xmm0, xmm5
	paddd	xmm1, xmm0
	add	rbp, 16
	jne	.LBB250_378
# %bb.379:                              #   in Loop: Header=BB250_377 Depth=1
	add	r13, -22208
	add	r10d, r11d
	movdqa	xmm5, xmm0
	pmuludq	xmm5, xmm3
	pshufd	xmm5, xmm5, 237                 # xmm5 = xmm5[1,3,2,3]
	pshufd	xmm6, xmm0, 245                 # xmm6 = xmm0[1,1,3,3]
	pmuludq	xmm6, xmm3
	pshufd	xmm6, xmm6, 237                 # xmm6 = xmm6[1,3,2,3]
	punpckldq	xmm5, xmm6              # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	psrld	xmm5, 15
	pshufd	xmm6, xmm5, 245                 # xmm6 = xmm5[1,1,3,3]
	pmuludq	xmm5, xmm4
	pshufd	xmm5, xmm5, 232                 # xmm5 = xmm5[0,2,2,3]
	pmuludq	xmm6, xmm4
	pshufd	xmm6, xmm6, 232                 # xmm6 = xmm6[0,2,2,3]
	punpckldq	xmm5, xmm6              # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	psubd	xmm0, xmm5
	movdqa	xmm5, xmm1
	pmuludq	xmm5, xmm3
	pshufd	xmm5, xmm5, 237                 # xmm5 = xmm5[1,3,2,3]
	pshufd	xmm6, xmm1, 245                 # xmm6 = xmm1[1,1,3,3]
	pmuludq	xmm6, xmm3
	pshufd	xmm6, xmm6, 237                 # xmm6 = xmm6[1,3,2,3]
	punpckldq	xmm5, xmm6              # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	psrld	xmm5, 15
	pshufd	xmm6, xmm5, 245                 # xmm6 = xmm5[1,1,3,3]
	pmuludq	xmm5, xmm4
	pshufd	xmm5, xmm5, 232                 # xmm5 = xmm5[0,2,2,3]
	pmuludq	xmm6, xmm4
	pshufd	xmm6, xmm6, 232                 # xmm6 = xmm6[0,2,2,3]
	punpckldq	xmm5, xmm6              # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	psubd	xmm1, xmm5
	mov	rbp, r10
	imul	rbp, r14
	shr	rbp, 47
	imul	ebp, ebp, 65521
	sub	r10d, ebp
	add	r12, 22208
	cmp	r13, 22208
	jae	.LBB250_377
.LBB250_380:
	test	rax, rax
	je	.LBB250_384
# %bb.381:
	pxor	xmm2, xmm2
	mov	r12, qword ptr [rsp + 40]       # 8-byte Reload
	.p2align	4
.LBB250_382:                            # =>This Inner Loop Header: Depth=1
	movd	xmm3, dword ptr [r12 + rdx]     # xmm3 = mem[0],zero,zero,zero
	punpcklbw	xmm3, xmm2              # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	xmm3, xmm2              # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	paddd	xmm0, xmm3
	paddd	xmm1, xmm0
	add	rdx, 4
	cmp	rcx, rdx
	jne	.LBB250_382
# %bb.383:
	movdqa	xmm2, xmmword ptr [rip + .LCPI250_5] # xmm2 = [2147975281,2147975281,2147975281,2147975281]
	movdqa	xmm3, xmm0
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 237                 # xmm3 = xmm3[1,3,2,3]
	pshufd	xmm4, xmm0, 245                 # xmm4 = xmm0[1,1,3,3]
	pmuludq	xmm4, xmm2
	pshufd	xmm4, xmm4, 237                 # xmm4 = xmm4[1,3,2,3]
	punpckldq	xmm3, xmm4              # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	psrld	xmm3, 15
	movdqa	xmm4, xmmword ptr [rip + .LCPI250_6] # xmm4 = [65521,65521,65521,65521]
	pshufd	xmm5, xmm3, 245                 # xmm5 = xmm3[1,1,3,3]
	pmuludq	xmm3, xmm4
	pshufd	xmm3, xmm3, 232                 # xmm3 = xmm3[0,2,2,3]
	pmuludq	xmm5, xmm4
	pshufd	xmm5, xmm5, 232                 # xmm5 = xmm5[0,2,2,3]
	punpckldq	xmm3, xmm5              # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	psubd	xmm0, xmm3
	movdqa	xmm3, xmm1
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 237                 # xmm3 = xmm3[1,3,2,3]
	pshufd	xmm5, xmm1, 245                 # xmm5 = xmm1[1,1,3,3]
	pmuludq	xmm5, xmm2
	pshufd	xmm2, xmm5, 237                 # xmm2 = xmm5[1,3,2,3]
	punpckldq	xmm3, xmm2              # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	psrld	xmm3, 15
	pshufd	xmm2, xmm3, 245                 # xmm2 = xmm3[1,1,3,3]
	pmuludq	xmm3, xmm4
	pshufd	xmm3, xmm3, 232                 # xmm3 = xmm3[0,2,2,3]
	pmuludq	xmm2, xmm4
	pshufd	xmm2, xmm2, 232                 # xmm2 = xmm2[0,2,2,3]
	punpckldq	xmm3, xmm2              # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	psubd	xmm1, xmm3
	jmp	.LBB250_385
.LBB250_384:
	mov	r12, qword ptr [rsp + 40]       # 8-byte Reload
.LBB250_385:
	pshufd	xmm2, xmm0, 255                 # xmm2 = xmm0[3,3,3,3]
	movd	edx, xmm2
	mov	r11d, 65521
	sub	r11d, edx
	lea	edx, [r11 + 2*r11]
	imul	eax, r9d
	add	r10d, eax
	mov	eax, 2147975281
	mov	r11, r10
	imul	r11, rax
	shr	r11, 47
	imul	r11d, r11d, 65521
	sub	r10d, r11d
	pshufd	xmm2, xmm1, 255                 # xmm2 = xmm1[3,3,3,3]
	paddd	xmm2, xmm1
	movd	r11d, xmm2
	pshufd	xmm2, xmm1, 170                 # xmm2 = xmm1[2,2,2,2]
	pshufd	xmm1, xmm1, 85                  # xmm1 = xmm1[1,1,1,1]
	paddd	xmm1, xmm2
	movd	r14d, xmm1
	lea	r10d, [r10 + 4*r14]
	add	r10d, edx
	pshufd	xmm1, xmm0, 238                 # xmm1 = xmm0[2,3,2,3]
	movd	edx, xmm1
	pshufd	xmm2, xmm0, 85                  # xmm2 = xmm0[1,1,1,1]
	movd	r14d, xmm2
	lea	edx, [r14 + 2*rdx]
	sub	r10d, edx
	lea	edx, [r10 + 4*r11]
	add	edx, 196563
	paddd	xmm0, xmm1
	pshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	paddd	xmm1, xmm0
	movd	r10d, xmm1
	add	r10d, r9d
	test	rdi, rdi
	je	.LBB250_389
# %bb.386:
	movzx	r9d, byte ptr [r12 + rcx]
	add	r10d, r9d
	add	edx, r10d
	cmp	edi, 1
	mov	r11, qword ptr [rsp + 24]       # 8-byte Reload
	je	.LBB250_390
# %bb.387:
	movzx	r9d, byte ptr [r12 + rcx + 1]
	add	r10d, r9d
	add	edx, r10d
	cmp	edi, 2
	je	.LBB250_390
# %bb.388:
	movzx	ecx, byte ptr [r12 + rcx + 2]
	add	r10d, ecx
	add	edx, r10d
	jmp	.LBB250_390
.LBB250_389:
	mov	r11, qword ptr [rsp + 24]       # 8-byte Reload
.LBB250_390:
	mov	ecx, r10d
	imul	rcx, rax
	shr	rcx, 47
	imul	ecx, ecx, 65521
	sub	r10d, ecx
	mov	ecx, edx
	imul	rcx, rax
	shr	rcx, 47
	imul	eax, ecx, 65521
	sub	edx, eax
	shl	edx, 16
	or	edx, r10d
	mov	dword ptr [r15 + 10456], edx
	test	sil, sil
	jne	.LBB250_392
# %bb.391:
	cmp	edx, dword ptr [r15 + 10452]
	sete	sil
	add	sil, sil
	add	sil, -2
.LBB250_392:
	add	r8, rbx
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	sub	rax, r8
	mov	rcx, qword ptr [rsp + 144]      # 8-byte Reload
	mov	byte ptr [rcx + 8], sil
	mov	qword ptr [rcx], rax
	mov	qword ptr [rcx + 16], r11
	add	rsp, 152
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
.LBB250_365:
	.cfi_def_cfa_offset 208
	xor	r8d, r8d
	mov	r12b, 10
	jmp	.LBB250_372
.LBB250_393:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.15]
	mov	rsi, rdx
	mov	edx, 288
	xor	edi, edi
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_394:
	xor	r8d, r8d
	xor	ebx, ebx
	movzx	r12d, byte ptr [rsp + 24]       # 1-byte Folded Reload
	jmp	.LBB250_372
.LBB250_395:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.20]
	xor	edi, edi
	mov	rsi, r11
	mov	rdx, r10
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_396:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.14]
	mov	edx, 512
	mov	rdi, rsi
	mov	rsi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_397:
	mov	rdi, rdx
	mov	rsi, rax
	call	_RNvNvNtCsfQL5qMWGko6_4core5slice20copy_from_slice_impl17len_mismatch_fail
.LBB250_400:
	xor	r8d, r8d
	jmp	.LBB250_372
.LBB250_398:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.11]
	mov	rdi, r11
	mov	rsi, r12
	mov	rdx, r10
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_401:
	xor	r8d, r8d
	movzx	r12d, byte ptr [rsp + 24]       # 1-byte Folded Reload
	jmp	.LBB250_372
.LBB250_402:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.7]
	mov	edx, 512
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_403:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.17]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rsi, rdx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_404:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.12]
	mov	esi, 4
	xor	edi, edi
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB250_405:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.16]
	mov	rdi, r11
	mov	rsi, r10
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB250_406:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.16]
	mov	rsi, r10
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB250_407:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.2]
	mov	esi, 576
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB250_408:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.5]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB250_409:
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.6]
	mov	esi, 19
	mov	rdi, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end250:
	.size	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress, .Lfunc_end250-_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress
	.cfi_endproc
	.section	.rodata._RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core10decompress,"a",@progbits
	.p2align	2, 0x0
.LJTI250_0:
	.long	.LBB250_3-.LJTI250_0
	.long	.LBB250_117-.LJTI250_0
	.long	.LBB250_103-.LJTI250_0
	.long	.LBB250_110-.LJTI250_0
	.long	.LBB250_69-.LJTI250_0
	.long	.LBB250_125-.LJTI250_0
	.long	.LBB250_153-.LJTI250_0
	.long	.LBB250_113-.LJTI250_0
	.long	.LBB250_158-.LJTI250_0
	.long	.LBB250_6-.LJTI250_0
	.long	.LBB250_16-.LJTI250_0
	.long	.LBB250_64-.LJTI250_0
	.long	.LBB250_70-.LJTI250_0
	.long	.LBB250_149-.LJTI250_0
	.long	.LBB250_60-.LJTI250_0
	.long	.LBB250_105-.LJTI250_0
	.long	.LBB250_56-.LJTI250_0
	.long	.LBB250_119-.LJTI250_0
	.long	.LBB250_155-.LJTI250_0
	.long	.LBB250_170-.LJTI250_0
	.long	.LBB250_122-.LJTI250_0
	.long	.LBB250_146-.LJTI250_0
	.long	.LBB250_164-.LJTI250_0
	.long	.LBB250_174-.LJTI250_0
	.long	.LBB250_352-.LJTI250_0
.LJTI250_1:
	.long	.LBB250_197-.LJTI250_1
	.long	.LBB250_211-.LJTI250_1
	.long	.LBB250_210-.LJTI250_1
	.long	.LBB250_1-.LJTI250_1
                                        # -- End function
