	.section	.text._RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug,"ax",@progbits
	.p2align	4
	.type	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug,@function
_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug: # @_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception18
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
	sub	rsp, 1528
	.cfi_def_cfa_offset 1584
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	rbx, qword ptr [rcx + 8]
	mov	rbp, qword ptr [rcx + 16]
.Ltmp404:
	lea	rdi, [rsp + 1016]
	mov	rsi, rbx
	mov	rdx, rbp
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
.Ltmp405:
# %bb.1:
	cmp	dword ptr [rsp + 1016], 1
	jne	.LBB144_13
# %bb.2:
	mov	qword ptr [rsp + 8], rbp        # 8-byte Spill
	mov	rsi, qword ptr [rsp + 1024]
	mov	rdx, qword ptr [rsp + 1032]
	mov	qword ptr [rsp + 80], 0
	mov	qword ptr [rsp + 88], 8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 96], xmm0
	mov	qword ptr [rsp + 112], 8
	mov	qword ptr [rsp + 120], 0
.Ltmp407:
	lea	rdi, [rsp + 480]
	mov	qword ptr [rsp + 56], rsi       # 8-byte Spill
	mov	qword ptr [rsp + 64], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 40], rbx       # 8-byte Spill
	mov	qword ptr [rsp + 48], r14       # 8-byte Spill
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
.Ltmp408:
# %bb.3:
	movabs	rbp, -9223372036854775808
	mov	rcx, qword ptr [rsp + 480]
	mov	rax, rcx
	neg	rax
	jno	.LBB144_15
# %bb.4:
	mov	qword ptr [r13], rbp
	mov	r15d, 8
.LBB144_5:
	cmp	qword ptr [rsp + 80], 0
	je	.LBB144_7
# %bb.6:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_7:
	mov	r15, qword ptr [rsp + 112]
	mov	rbx, qword ptr [rsp + 120]
	test	rbx, rbx
	je	.LBB144_10
# %bb.8:
	lea	r14, [r15 + 8]
	mov	r12, qword ptr [rip + munmap@GOTPCREL]
	.p2align	4
.LBB144_9:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [r14 - 8]
	mov	rsi, qword ptr [r14]
	call	r12
	add	r14, 16
	dec	rbx
	jne	.LBB144_9
.LBB144_10:
	cmp	qword ptr [rsp + 104], 0
	je	.LBB144_12
# %bb.11:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_12:
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 64]       # 8-byte Reload
	call	qword ptr [rip + munmap@GOTPCREL]
	mov	rbx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r14, qword ptr [rsp + 48]       # 8-byte Reload
	cmp	qword ptr [r14], 0
	jne	.LBB144_41
	jmp	.LBB144_42
.LBB144_13:
	movabs	rax, -9223372036854775808
	mov	qword ptr [r13], rax
	cmp	qword ptr [r14], 0
	je	.LBB144_42
# %bb.14:
	mov	rdi, rbx
	add	rsp, 1528
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
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB144_15:
	.cfi_def_cfa_offset 1584
	mov	qword ptr [rsp + 240], r12      # 8-byte Spill
	mov	qword ptr [rsp + 248], r15      # 8-byte Spill
	mov	qword ptr [rsp + 176], rcx      # 8-byte Spill
	mov	rax, qword ptr [rsp + 488]
	mov	qword ptr [rsp + 168], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 496]
	mov	qword ptr [rsp + 232], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 504]
	mov	qword ptr [rsp + 184], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 512]
	mov	qword ptr [rsp + 192], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 520]
	mov	qword ptr [rsp + 208], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 528]
	mov	rdx, qword ptr [rsp + 536]
	mov	rcx, qword ptr [rsp + 544]
	mov	qword ptr [rsp + 216], rcx      # 8-byte Spill
	mov	rcx, qword ptr [rsp + 552]
	mov	qword ptr [rsp + 224], rcx      # 8-byte Spill
	mov	r12, qword ptr [rsp + 560]
	movups	xmm0, xmmword ptr [rsp + 568]
	movaps	xmmword ptr [rsp + 864], xmm0
	movdqu	xmm0, xmmword ptr [rsp + 584]
	movdqa	xmmword ptr [rsp + 880], xmm0
	mov	qword ptr [rsp + 200], rax      # 8-byte Spill
	test	rax, rax
	sete	al
	mov	qword ptr [rsp + 72], rdx       # 8-byte Spill
	test	rdx, rdx
	sete	cl
	or	cl, al
	mov	r15, rbp
                                        # implicit-def: $rbx
	jne	.LBB144_32
# %bb.16:
	mov	qword ptr [rsp + 24], r13       # 8-byte Spill
	mov	rbp, qword ptr [rsp + 200]      # 8-byte Reload
	shl	rbp, 6
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	lea	r13, [rax + r12]
	mov	r14, qword ptr [rsp + 208]      # 8-byte Reload
	jmp	.LBB144_18
	.p2align	4
.LBB144_17:                             #   in Loop: Header=BB144_18 Depth=1
	add	r14, 64
	add	rbp, -64
	je	.LBB144_31
.LBB144_18:                             # =>This Inner Loop Header: Depth=1
	mov	r15d, dword ptr [r14]
	add	r15, qword ptr [rsp + 224]      # 8-byte Folded Reload
	setb	al
	mov	rbx, r12
	sub	rbx, r15
	setb	cl
	or	cl, al
	jne	.LBB144_17
# %bb.19:                               #   in Loop: Header=BB144_18 Depth=1
	cmp	r12, qword ptr [rsp + 216]      # 8-byte Folded Reload
	ja	.LBB144_17
# %bb.20:                               #   in Loop: Header=BB144_18 Depth=1
	add	r15, qword ptr [rsp + 72]       # 8-byte Folded Reload
	mov	rax, qword ptr [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw2FN]
.Ltmp409:
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, r13
	call	rax
.Ltmp410:
# %bb.21:                               #   in Loop: Header=BB144_18 Depth=1
	test	al, 1
	je	.LBB144_17
# %bb.22:                               #   in Loop: Header=BB144_18 Depth=1
	sub	rdx, r15
	cmp	rdx, 17
	jne	.LBB144_17
# %bb.23:                               #   in Loop: Header=BB144_18 Depth=1
	cmp	rbx, 17
	jb	.LBB144_17
# %bb.24:                               #   in Loop: Header=BB144_18 Depth=1
	movdqu	xmm0, xmmword ptr [r15]
	pcmpeqb	xmm0, xmmword ptr [rip + .LCPI144_0]
	movzx	eax, byte ptr [r15 + 16]
	movd	xmm1, eax
	pcmpeqb	xmm1, xmmword ptr [rip + .LCPI144_1]
	pand	xmm1, xmm0
	pmovmskb	eax, xmm1
	cmp	eax, 65535
	jne	.LBB144_17
# %bb.25:
	cmp	dword ptr [r14 + 4], 8
	movabs	rbp, -9223372036854775808
	mov	r15, rbp
                                        # implicit-def: $rbx
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	je	.LBB144_32
# %bb.26:
	mov	rdx, qword ptr [r14 + 32]
	test	rdx, rdx
	je	.LBB144_95
# %bb.27:
	mov	rsi, qword ptr [r14 + 24]
	mov	rax, qword ptr [rsp + 192]      # 8-byte Reload
	sub	rax, rsi
	setb	cl
	cmp	rdx, rax
	seta	al
	or	al, cl
	mov	r15, rbp
                                        # implicit-def: $rbx
	jne	.LBB144_32
# %bb.28:
	mov	r14, rdx
	add	rsi, qword ptr [rsp + 184]      # 8-byte Folded Reload
	mov	r15, rsi
	xor	ecx, ecx
.LBB144_29:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [r15 + rcx], 0
	je	.LBB144_43
# %bb.30:                               #   in Loop: Header=BB144_29 Depth=1
	inc	rcx
	cmp	r14, rcx
	jne	.LBB144_29
	jmp	.LBB144_95
.LBB144_31:
	movabs	rbp, -9223372036854775808
	mov	r15, rbp
                                        # implicit-def: $rbx
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
.LBB144_32:
.Ltmp450:
	lea	rdi, [rsp + 896]
	lea	rcx, [rsp + 80]
	mov	rsi, qword ptr [rsp + 240]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 248]      # 8-byte Reload
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package
.Ltmp451:
# %bb.33:
	mov	rax, qword ptr [rsp + 176]      # 8-byte Reload
	mov	qword ptr [rsp + 360], rax
	mov	rax, qword ptr [rsp + 168]      # 8-byte Reload
	mov	qword ptr [rsp + 368], rax
	mov	rax, qword ptr [rsp + 232]      # 8-byte Reload
	mov	qword ptr [rsp + 376], rax
	mov	rax, qword ptr [rsp + 184]      # 8-byte Reload
	mov	qword ptr [rsp + 384], rax
	mov	rax, qword ptr [rsp + 192]      # 8-byte Reload
	mov	qword ptr [rsp + 392], rax
	mov	rax, qword ptr [rsp + 208]      # 8-byte Reload
	mov	qword ptr [rsp + 400], rax
	mov	rax, qword ptr [rsp + 200]      # 8-byte Reload
	mov	qword ptr [rsp + 408], rax
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	mov	qword ptr [rsp + 416], rax
	mov	rax, qword ptr [rsp + 216]      # 8-byte Reload
	mov	qword ptr [rsp + 424], rax
	mov	rax, qword ptr [rsp + 224]      # 8-byte Reload
	mov	qword ptr [rsp + 432], rax
	mov	qword ptr [rsp + 440], r12
	movaps	xmm0, xmmword ptr [rsp + 864]
	movaps	xmm1, xmmword ptr [rsp + 880]
	movups	xmmword ptr [rsp + 448], xmm0
	movups	xmmword ptr [rsp + 464], xmm1
	mov	qword ptr [rsp + 480], r15
	mov	qword ptr [rsp + 488], rbx
	movaps	xmm0, xmmword ptr [rsp + 256]
	movdqa	xmm1, xmmword ptr [rsp + 272]
	movaps	xmm2, xmmword ptr [rsp + 288]
	movaps	xmm3, xmmword ptr [rsp + 304]
	movups	xmmword ptr [rsp + 496], xmm0
	movdqu	xmmword ptr [rsp + 512], xmm1
	movups	xmmword ptr [rsp + 528], xmm2
	movups	xmmword ptr [rsp + 544], xmm3
	movaps	xmm0, xmmword ptr [rsp + 320]
	movups	xmmword ptr [rsp + 560], xmm0
	movdqa	xmm0, xmmword ptr [rsp + 336]
	movdqu	xmmword ptr [rsp + 576], xmm0
	mov	rax, qword ptr [rsp + 352]
	mov	qword ptr [rsp + 592], rax
.Ltmp453:
	lea	rdi, [rsp + 1016]
	lea	rsi, [rsp + 80]
	lea	rdx, [rsp + 360]
	lea	rcx, [rsp + 480]
	lea	r8, [rsp + 896]
	mov	rbx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r14, qword ptr [rsp + 48]       # 8-byte Reload
	call	_RNvMs_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB4_7Context3new
.Ltmp454:
# %bb.34:
	cmp	qword ptr [rsp + 1016], rbp
	jne	.LBB144_40
# %bb.35:
	mov	r15, qword ptr [rsp + 88]
	mov	rbx, qword ptr [rsp + 96]
	mov	qword ptr [r13], rbp
	test	rbx, rbx
	je	.LBB144_5
# %bb.36:
	lea	r14, [r15 + 8]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB144_38
	.p2align	4
.LBB144_37:                             #   in Loop: Header=BB144_38 Depth=1
	add	r14, 24
	dec	rbx
	je	.LBB144_5
.LBB144_38:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r14 - 8], 0
	je	.LBB144_37
# %bb.39:                               #   in Loop: Header=BB144_38 Depth=1
	mov	rdi, qword ptr [r14]
	call	r12
	jmp	.LBB144_37
.LBB144_40:
	lea	rsi, [rsp + 1016]
	mov	edx, 512
	mov	rdi, r13
	call	qword ptr [rip + memcpy@GOTPCREL]
	movdqu	xmm0, xmmword ptr [rsp + 80]
	movdqu	xmm1, xmmword ptr [rsp + 96]
	movups	xmm2, xmmword ptr [rsp + 112]
	movups	xmmword ptr [r13 + 560], xmm2
	movdqu	xmmword ptr [r13 + 544], xmm1
	movdqu	xmmword ptr [r13 + 528], xmm0
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [r13 + 512], rax
	mov	rax, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [r13 + 520], rax
	cmp	qword ptr [r14], 0
	je	.LBB144_42
.LBB144_41:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_42:
	add	rsp, 1528
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
.LBB144_43:
	.cfi_def_cfa_offset 1584
	lea	rax, [rcx + 1]
	sub	r14, rax
	lea	rax, [r15 + rcx]
	inc	rax
	mov	qword ptr [rsp + 160], rax      # 8-byte Spill
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	test	rcx, rcx
	je	.LBB144_49
# %bb.44:
	mov	rdi, r15
	cmp	byte ptr [r15], 47
	jne	.LBB144_49
# %bb.45:
.Ltmp412:
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
.Ltmp413:
# %bb.46:
	test	al, al
	je	.LBB144_92
# %bb.47:
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rdi, rbx
	call	_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	test	rax, rax
	je	.LBB144_118
# %bb.48:
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, rbx
	mov	r15, rax
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [rsp + 128], rbx
	mov	qword ptr [rsp + 136], r15
	mov	qword ptr [rsp + 144], rbx
	jmp	.LBB144_94
.LBB144_49:
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	rbx, 383
	ja	.LBB144_113
# %bb.50:
	lea	rdi, [rsp + 480]
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	byte ptr [rsp + rbx + 480], 0
	inc	rbx
	lea	rdi, [rsp + 360]
	lea	rsi, [rsp + 480]
	mov	rdx, rbx
	call	_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
	cmp	dword ptr [rsp + 360], 1
	jne	.LBB144_52
# %bb.51:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	mov	qword ptr [rsp + 264], rax
	mov	qword ptr [rsp + 256], rbp
	jmp	.LBB144_53
.LBB144_52:
	mov	rsi, qword ptr [rsp + 368]
.Ltmp416:
	lea	rdi, [rsp + 256]
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize
.Ltmp417:
.LBB144_53:
	mov	rax, qword ptr [rsp + 256]
	cmp	rax, rbp
	jne	.LBB144_60
# %bb.54:
	mov	rax, qword ptr [rsp + 264]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB144_95
# %bb.55:
	lea	rbx, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r14, qword ptr [rax + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB144_57
# %bb.56:
.Ltmp447:
	mov	rdi, r15
	call	rax
.Ltmp448:
.LBB144_57:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB144_59
# %bb.58:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_59:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	movabs	rbp, -9223372036854775808
	mov	r15, rbp
                                        # implicit-def: $rbx
	jmp	.LBB144_32
.LBB144_60:
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rdx, qword ptr [rsp + 264]
	mov	rax, qword ptr [rsp + 272]
	test	rax, rax
	je	.LBB144_62
# %bb.61:
	cmp	byte ptr [rdx], 47
	sete	cl
	jmp	.LBB144_63
.LBB144_62:
	xor	ecx, ecx
.LBB144_63:
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 480], rdx
	mov	qword ptr [rsp + 488], rax
	mov	byte ptr [rsp + 496], 6
	mov	byte ptr [rsp + 538], cl
	mov	word ptr [rsp + 536], 513
.Ltmp420:
	lea	rdi, [rsp + 360]
	lea	rsi, [rsp + 480]
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp421:
# %bb.64:
	movzx	eax, byte ptr [rsp + 360]
	add	al, -7
	cmp	al, 2
	ja	.LBB144_69
# %bb.65:
.Ltmp422:
	lea	rdi, [rsp + 480]
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path
.Ltmp423:
# %bb.66:
	mov	r13, rax
	mov	rbx, rdx
	test	rdx, rdx
	je	.LBB144_70
# %bb.67:
	mov	rdi, rbx
	call	_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	test	rax, rax
	je	.LBB144_120
# %bb.68:
	mov	rbp, rax
	jmp	.LBB144_71
.LBB144_69:
	mov	qword ptr [rsp + 128], rbp
	jmp	.LBB144_86
.LBB144_70:
	mov	ebp, 1
.LBB144_71:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	xor	eax, eax
	mov	qword ptr [rsp + 480], rbx
	mov	qword ptr [rsp + 488], rbp
	mov	qword ptr [rsp + 496], rbx
	test	rbx, rbx
	je	.LBB144_74
# %bb.72:
	lea	rcx, [rbx + rbp]
	dec	rcx
	test	rcx, rcx
	je	.LBB144_74
# %bb.73:
	cmp	byte ptr [rcx], 47
	setne	al
.LBB144_74:
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	je	.LBB144_77
# %bb.75:
	cmp	byte ptr [r15], 47
	jne	.LBB144_77
# %bb.76:
	xor	r13d, r13d
	jmp	.LBB144_80
.LBB144_77:
	test	al, al
	je	.LBB144_81
# %bb.78:
.Ltmp427:
	lea	rdi, [rsp + 480]
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, rbx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp428:
# %bb.79:
	mov	rbp, qword ptr [rsp + 488]
	mov	r13, qword ptr [rsp + 496]
	mov	byte ptr [rbp + r13], 47
	inc	r13
	mov	rbx, qword ptr [rsp + 480]
.LBB144_80:
	mov	qword ptr [rsp + 496], r13
	jmp	.LBB144_82
.LBB144_81:
	mov	r13, rbx
.LBB144_82:
	sub	rbx, r13
	cmp	qword ptr [rsp + 16], rbx       # 8-byte Folded Reload
	ja	.LBB144_114
.LBB144_83:
	add	rbp, r13
	mov	rdi, rbp
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r13, rbx
	mov	qword ptr [rsp + 496], r13
	mov	r15, qword ptr [rsp + 488]
.Ltmp431:
	mov	rdi, r15
	mov	rsi, r13
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
.Ltmp432:
# %bb.84:
	test	al, al
	je	.LBB144_88
# %bb.85:
	mov	rax, qword ptr [rsp + 496]
	mov	qword ptr [rsp + 144], rax
	movdqu	xmm0, xmmword ptr [rsp + 480]
	movdqa	xmmword ptr [rsp + 128], xmm0
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	movabs	rbp, -9223372036854775808
.LBB144_86:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	test	rax, rax
	je	.LBB144_93
# %bb.87:
	mov	rdi, qword ptr [rsp + 32]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB144_93
.LBB144_88:
	cmp	qword ptr [rsp + 480], 0
	je	.LBB144_90
# %bb.89:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_90:
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	movabs	rbp, -9223372036854775808
	je	.LBB144_92
# %bb.91:
	mov	rdi, qword ptr [rsp + 32]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_92:
.Ltmp434:
	lea	rdi, [rsp + 128]
	mov	rsi, qword ptr [rsp + 160]      # 8-byte Reload
	mov	rdx, r14
	call	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id
.Ltmp435:
.LBB144_93:
	mov	rbx, qword ptr [rsp + 128]
.LBB144_94:
	mov	qword ptr [rsp + 16], rbx       # 8-byte Spill
	cmp	rbx, rbp
	jne	.LBB144_96
.LBB144_95:
	mov	r15, rbp
                                        # implicit-def: $rbx
	jmp	.LBB144_32
.LBB144_96:
	mov	qword ptr [rsp + 32], r14       # 8-byte Spill
	mov	rbx, qword ptr [rsp + 136]
	mov	rdx, qword ptr [rsp + 144]
.Ltmp437:
	lea	rdi, [rsp + 360]
	mov	rsi, rbx
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
.Ltmp438:
# %bb.97:
	cmp	dword ptr [rsp + 360], 1
	mov	r15, rbp
                                        # implicit-def: $rax
                                        # kill: killed $rax
	jne	.LBB144_109
# %bb.98:
	mov	r15, qword ptr [rsp + 368]
	mov	r13, qword ptr [rsp + 376]
	mov	r14, qword ptr [rsp + 120]
	cmp	r14, qword ptr [rsp + 104]
	jne	.LBB144_100
# %bb.99:
.Ltmp439:
	lea	rdi, [rsp + 104]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_
.Ltmp440:
.LBB144_100:
	mov	rax, qword ptr [rsp + 112]
	mov	rcx, r14
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	qword ptr [rax + rcx + 8], r13
	inc	r14
	mov	qword ptr [rsp + 120], r14
	je	.LBB144_116
# %bb.101:
.Ltmp442:
	lea	rdi, [rsp + 480]
	mov	rsi, r15
	mov	rdx, r13
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
.Ltmp443:
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	movabs	rbp, -9223372036854775808
# %bb.102:
	mov	r14, qword ptr [rsp + 480]
	mov	r15, rbp
                                        # implicit-def: $rax
                                        # kill: killed $rax
	cmp	r14, rbp
	je	.LBB144_109
# %bb.103:
	mov	rax, qword ptr [rsp + 488]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	lea	rdi, [rsp + 480]
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id
	test	rax, rax
	je	.LBB144_106
# %bb.104:
	cmp	rdx, qword ptr [rsp + 32]       # 8-byte Folded Reload
	jne	.LBB144_106
# %bb.105:
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 160]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
	je	.LBB144_112
.LBB144_106:
	test	r14, r14
	je	.LBB144_108
# %bb.107:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_108:
	movabs	rbp, -9223372036854775808
	mov	r15, rbp
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
.LBB144_109:
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	je	.LBB144_111
.LBB144_110:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_111:
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB144_32
.LBB144_112:
	lea	rax, [rsp + 496]
	mov	rcx, qword ptr [rax + 96]
	mov	qword ptr [rsp + 352], rcx
	movups	xmm0, xmmword ptr [rax + 80]
	movaps	xmmword ptr [rsp + 336], xmm0
	movups	xmm0, xmmword ptr [rax + 64]
	movaps	xmmword ptr [rsp + 320], xmm0
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmm1, xmmword ptr [rax + 16]
	movups	xmm2, xmmword ptr [rax + 32]
	movups	xmm3, xmmword ptr [rax + 48]
	movaps	xmmword ptr [rsp + 304], xmm3
	movaps	xmmword ptr [rsp + 288], xmm2
	movdqa	xmmword ptr [rsp + 272], xmm1
	movdqa	xmmword ptr [rsp + 256], xmm0
	mov	r15, r14
	mov	r13, qword ptr [rsp + 24]       # 8-byte Reload
	movabs	rbp, -9223372036854775808
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	jne	.LBB144_110
	jmp	.LBB144_111
.LBB144_113:
.Ltmp418:
	lea	rdi, [rsp + 256]
	mov	rsi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rdx, rbx
	call	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_
.Ltmp419:
	jmp	.LBB144_53
.LBB144_114:
.Ltmp429:
	lea	rdi, [rsp + 480]
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp430:
# %bb.115:
	mov	rbp, qword ptr [rsp + 488]
	mov	r13, qword ptr [rsp + 496]
	jmp	.LBB144_83
.LBB144_116:
.Ltmp444:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.174]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp445:
# %bb.117:
.LBB144_118:
.Ltmp414:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp415:
# %bb.119:
.LBB144_120:
.Ltmp424:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp425:
# %bb.121:
.LBB144_122:
.Ltmp449:
	mov	rbp, rax
	cmp	qword ptr [r14 + 8], 0
	je	.LBB144_134
# %bb.123:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB144_134
.LBB144_124:
.Ltmp441:
	mov	rbp, rax
	mov	rdi, r15
	mov	rsi, r13
	call	qword ptr [rip + munmap@GOTPCREL]
	jmp	.LBB144_132
.LBB144_125:
.Ltmp433:
	mov	rbp, rax
	cmp	qword ptr [rsp + 480], 0
	je	.LBB144_128
# %bb.126:
	mov	rdi, qword ptr [rsp + 488]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB144_128
.LBB144_127:
.Ltmp426:
	mov	rbp, rax
.LBB144_128:
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	je	.LBB144_139
# %bb.129:
	mov	rdi, qword ptr [rsp + 32]       # 8-byte Reload
	jmp	.LBB144_135
.LBB144_130:
.Ltmp436:
	jmp	.LBB144_138
.LBB144_131:
.Ltmp446:
	mov	rbp, rax
.LBB144_132:
	cmp	qword ptr [rsp + 16], 0         # 8-byte Folded Reload
	jne	.LBB144_134
	jmp	.LBB144_139
.LBB144_133:
.Ltmp452:
	mov	rbp, rax
	shl	r15
	test	r15, r15
	je	.LBB144_139
.LBB144_134:
	mov	rdi, rbx
.LBB144_135:
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB144_139
.LBB144_136:
.Ltmp455:
	mov	rbp, rax
	jmp	.LBB144_141
.LBB144_137:
.Ltmp411:
.LBB144_138:
	mov	rbp, rax
.LBB144_139:
	cmp	qword ptr [rsp + 176], 0        # 8-byte Folded Reload
	je	.LBB144_141
# %bb.140:
	mov	rdi, qword ptr [rsp + 168]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_141:
	lea	rdi, [rsp + 80]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 64]       # 8-byte Reload
	call	qword ptr [rip + munmap@GOTPCREL]
	jmp	.LBB144_143
.LBB144_142:
.Ltmp406:
	mov	qword ptr [rsp + 48], r14       # 8-byte Spill
	mov	qword ptr [rsp + 40], rbx       # 8-byte Spill
	mov	rbp, rax
.LBB144_143:
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	cmp	qword ptr [rax], 0
	je	.LBB144_145
# %bb.144:
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB144_145:
	mov	rdi, rbp
	call	_Unwind_Resume@PLT
.Lfunc_end144:
	.size	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug, .Lfunc_end144-_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug
	.cfi_endproc
	.section	.gcc_except_table._RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug,"a",@progbits
	.p2align	2, 0x0
GCC_except_table144:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp404-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp405-.Ltmp404              #   Call between .Ltmp404 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin18        #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp455-.Lfunc_begin18        #     jumps to .Ltmp455
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin18        #     jumps to .Ltmp411
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin18        # >> Call Site 5 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin18        #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin18        # >> Call Site 6 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin18        #     jumps to .Ltmp455
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp454-.Lfunc_begin18        # >> Call Site 7 <<
	.uleb128 .Ltmp412-.Ltmp454              #   Call between .Ltmp454 and .Ltmp412
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin18        # >> Call Site 8 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp436-.Lfunc_begin18        #     jumps to .Ltmp436
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin18        # >> Call Site 9 <<
	.uleb128 .Ltmp416-.Ltmp413              #   Call between .Ltmp413 and .Ltmp416
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin18        # >> Call Site 10 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp436-.Lfunc_begin18        #     jumps to .Ltmp436
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin18        # >> Call Site 11 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin18        #     jumps to .Ltmp449
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin18        # >> Call Site 12 <<
	.uleb128 .Ltmp423-.Ltmp420              #   Call between .Ltmp420 and .Ltmp423
	.uleb128 .Ltmp426-.Lfunc_begin18        #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin18        # >> Call Site 13 <<
	.uleb128 .Ltmp427-.Ltmp423              #   Call between .Ltmp423 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin18        # >> Call Site 14 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp433-.Lfunc_begin18        #     jumps to .Ltmp433
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin18        # >> Call Site 15 <<
	.uleb128 .Ltmp431-.Ltmp428              #   Call between .Ltmp428 and .Ltmp431
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin18        # >> Call Site 16 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin18        #     jumps to .Ltmp433
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin18        # >> Call Site 17 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp436-.Lfunc_begin18        #     jumps to .Ltmp436
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin18        # >> Call Site 18 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp446-.Lfunc_begin18        #     jumps to .Ltmp446
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp439-.Lfunc_begin18        # >> Call Site 19 <<
	.uleb128 .Ltmp440-.Ltmp439              #   Call between .Ltmp439 and .Ltmp440
	.uleb128 .Ltmp441-.Lfunc_begin18        #     jumps to .Ltmp441
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin18        # >> Call Site 20 <<
	.uleb128 .Ltmp443-.Ltmp442              #   Call between .Ltmp442 and .Ltmp443
	.uleb128 .Ltmp446-.Lfunc_begin18        #     jumps to .Ltmp446
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin18        # >> Call Site 21 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp436-.Lfunc_begin18        #     jumps to .Ltmp436
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin18        # >> Call Site 22 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp433-.Lfunc_begin18        #     jumps to .Ltmp433
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin18        # >> Call Site 23 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin18        #     jumps to .Ltmp446
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin18        # >> Call Site 24 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp436-.Lfunc_begin18        #     jumps to .Ltmp436
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin18        # >> Call Site 25 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin18        #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin18        # >> Call Site 26 <<
	.uleb128 .Lfunc_end144-.Ltmp425         #   Call between .Ltmp425 and .Lfunc_end144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
