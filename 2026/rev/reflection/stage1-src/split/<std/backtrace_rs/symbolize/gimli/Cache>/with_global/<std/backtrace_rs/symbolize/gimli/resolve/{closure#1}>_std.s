	.section	.text._RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_,"ax",@progbits
	.type	_RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_,@function # -- Begin function _RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_
_RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_: # @_RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception13
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
	sub	rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov	qword ptr [rsp], 0
	sub	rsp, 776
	.cfi_def_cfa_offset 4928
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 376], rsi      # 8-byte Spill
	mov	rbx, rdi
	movabs	rbp, -9223372036854775808
	xor	eax, eax
	cmp	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	qword ptr [rsp + 200], rdi      # 8-byte Spill
	jno	.LBB47_100
# %bb.1:
	and	qword ptr [rsp + 1032], 0
	mov	qword ptr [rsp + 1040], 8
	and	qword ptr [rsp + 1048], 0
	movabs	rax, 1881195675648
	mov	qword ptr [rsp + 720], rax
	and	dword ptr [rsp + 728], 0
	and	word ptr [rsp + 732], 0
	mov	byte ptr [rsp + 728], 1
	movabs	rax, 8318255633327877221
	lea	rsi, [rsp + 2512]
	mov	qword ptr [rsi + 7], rax
	movabs	rax, 7310238724270485551
	mov	qword ptr [rsi], rax
	mov	byte ptr [rsi + 15], 0
	lea	rbx, [rsp + 1312]
	push	16
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	mov	rdi, rbx
	call	_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
	cmp	dword ptr [rbx], 1
	jne	.LBB47_3
# %bb.2:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	jmp	.LBB47_6
.LBB47_3:
	mov	rsi, qword ptr [rsp + 1320]
.Ltmp125:
	lea	rdi, [rsp + 1904]
	lea	rdx, [rsp + 720]
	call	_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c
.Ltmp126:
# %bb.4:
	cmp	dword ptr [rsp + 1904], 1
	jne	.LBB47_12
# %bb.5:
	mov	rax, qword ptr [rsp + 1912]
.LBB47_6:
	mov	ecx, eax
	and	ecx, 3
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rbx
	.cfi_adjust_cfa_offset -8
	cmp	ecx, 1
	jne	.LBB47_78
# %bb.7:
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB47_9
# %bb.8:
.Ltmp163:
	mov	rdi, r15
	call	rax
.Ltmp164:
.LBB47_9:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB47_11
# %bb.10:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_11:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB47_78
.LBB47_12:
	mov	r13d, dword ptr [rsp + 1908]
	and	qword ptr [rsp + 720], 0
	mov	qword ptr [rsp + 728], 1
	and	qword ptr [rsp + 736], 0
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.376]
	lea	rbx, [rsp + 2512]
	mov	rdi, rbx
	mov	esi, r13d
	mov	ecx, 4096
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	mov	rax, qword ptr [rbx]
	cmp	rax, 3
	mov	dword ptr [rsp + 112], r13d     # 4-byte Spill
	jne	.LBB47_15
# %bb.13:
	lea	rsi, [rsp + 2512]
	mov	ecx, 144
	xor	eax, eax
	mov	rdi, rsi
	rep stosb es:[rdi], al
	mov	edi, r13d
	call	qword ptr [rip + fstat64@GOTPCREL]
	cmp	eax, -1
	je	.LBB47_23
# %bb.14:
	mov	r15, qword ptr [rsp + 2560]
	jmp	.LBB47_18
.LBB47_15:
	cmp	eax, 2
	jne	.LBB47_17
# %bb.16:
	mov	rax, qword ptr [rsp + 2520]
	jmp	.LBB47_24
.LBB47_17:
	mov	r15, qword ptr [rsp + 2592]
.LBB47_18:
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	mov	edi, r13d
	xor	esi, esi
	call	qword ptr [rip + lseek64@GOTPCREL]
	cmp	rax, -1
	je	.LBB47_22
# %bb.19:
	mov	rbx, rax
	xor	r14d, r14d
	mov	r12, r15
	sub	r12, rax
	cmovb	r12, r14
	ja	.LBB47_491
.LBB47_20:
	lea	rax, [r12 + 1024]
	mov	ecx, eax
	and	ecx, 8191
	sub	r12, rcx
	add	r12, 9216
	cmp	r12, rax
	mov	edx, 8192
	cmovae	rdx, r12
	test	rcx, rcx
	cmove	rdx, rax
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	cmp	r15, rbx
	jbe	.LBB47_36
.LBB47_21:
	xor	r13d, r13d
	mov	rsi, r14
	xor	ebx, ebx
	jmp	.LBB47_38
.LBB47_22:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB47_30
.LBB47_23:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
.LBB47_24:
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB47_30
# %bb.25:
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB47_27
# %bb.26:
.Ltmp128:
	mov	rdi, r15
	call	rax
.Ltmp129:
.LBB47_27:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB47_29
# %bb.28:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_29:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_30:
	mov	bl, 1
	mov	eax, 8192
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	xor	r14d, r14d
.LBB47_31:
.Ltmp131:
	lea	rsi, [rsp + 720]
	mov	edi, r13d
	call	_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_
.Ltmp132:
# %bb.32:
	mov	r13, rdx
	test	al, 1
	je	.LBB47_34
# %bb.33:
	mov	r12b, 1
	jmp	.LBB47_60
.LBB47_34:
	test	r13, r13
	je	.LBB47_59
# %bb.35:
	mov	rsi, qword ptr [rsp + 720]
	mov	r13, qword ptr [rsp + 736]
	jmp	.LBB47_38
.LBB47_36:
	xor	ebx, ebx
	cmp	r14, 32
	jb	.LBB47_31
# %bb.37:
	mov	rsi, r14
	xor	r13d, r13d
.LBB47_38:
	mov	rbp, qword ptr [rip + read@GOTPCREL]
	mov	r12, qword ptr [rip + __errno_location@GOTPCREL]
	mov	dword ptr [rsp + 80], 0         # 4-byte Folded Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	mov	qword ptr [rsp + 128], r14      # 8-byte Spill
	mov	qword ptr [rsp], rbx            # 8-byte Spill
.LBB47_39:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_47 Depth 2
	cmp	r13, rsi
	jne	.LBB47_45
# %bb.40:                               #   in Loop: Header=BB47_39 Depth=1
	cmp	rsi, r14
	jne	.LBB47_45
# %bb.41:                               #   in Loop: Header=BB47_39 Depth=1
.Ltmp134:
	mov	edi, dword ptr [rsp + 112]      # 4-byte Reload
	lea	rsi, [rsp + 720]
	call	_RINvNvNtCs3bNtqN8jaZB_3std2io19default_read_to_end16small_probe_readRNtNtB6_2fs4FileEB6_
.Ltmp135:
# %bb.42:                               #   in Loop: Header=BB47_39 Depth=1
	mov	r13, rdx
	test	al, 1
	jne	.LBB47_506
# %bb.43:                               #   in Loop: Header=BB47_39 Depth=1
	test	r13, r13
	mov	r13, qword ptr [rsp + 736]
	je	.LBB47_490
# %bb.44:                               #   in Loop: Header=BB47_39 Depth=1
	mov	rsi, qword ptr [rsp + 720]
.LBB47_45:                              #   in Loop: Header=BB47_39 Depth=1
	mov	rbx, qword ptr [rsp + 728]
	cmp	r13, rsi
	je	.LBB47_55
.LBB47_46:                              #   in Loop: Header=BB47_39 Depth=1
	add	rbx, r13
	mov	qword ptr [rsp + 144], rsi      # 8-byte Spill
	mov	r15, rsi
	sub	r15, r13
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	cmp	rax, r15
	cmovb	r15, rax
	movabs	r14, 9223372036854775807
	cmp	r15, r14
	cmovb	r14, r15
.LBB47_47:                              #   Parent Loop BB47_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	edi, dword ptr [rsp + 112]      # 4-byte Reload
	mov	rsi, rbx
	mov	rdx, r14
	call	rbp
	cmp	rax, -1
	jne	.LBB47_49
# %bb.48:                               #   in Loop: Header=BB47_47 Depth=2
	call	r12
	movsxd	rax, dword ptr [rax]
	cmp	rax, 4
	je	.LBB47_47
	jmp	.LBB47_57
.LBB47_49:                              #   in Loop: Header=BB47_39 Depth=1
	add	r13, rax
	mov	qword ptr [rsp + 736], r13
	test	rax, rax
	je	.LBB47_490
# %bb.50:                               #   in Loop: Header=BB47_39 Depth=1
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	rax, rdx
	cmova	rdx, rax
	mov	rcx, rdx
	sub	rcx, rax
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	mov	esi, dword ptr [rsp + 80]       # 4-byte Reload
	inc	esi
	cmp	rax, r15
	mov	ecx, 0
	cmovae	esi, ecx
	mov	dword ptr [rsp + 80], esi       # 4-byte Spill
	mov	rbx, qword ptr [rsp]            # 8-byte Reload
	test	bl, bl
	mov	r14, qword ptr [rsp + 128]      # 8-byte Reload
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	je	.LBB47_39
# %bb.51:                               #   in Loop: Header=BB47_39 Depth=1
	cmp	dword ptr [rsp + 80], 2         # 4-byte Folded Reload
	mov	r8, qword ptr [rsp + 16]        # 8-byte Reload
	mov	rcx, r8
	push	-1
	.cfi_adjust_cfa_offset 8
	pop	rdi
	.cfi_adjust_cfa_offset -8
	cmovge	rcx, rdi
	cmp	rdx, r15
	cmove	rcx, r8
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	cmp	rax, r15
	jne	.LBB47_39
# %bb.52:                               #   in Loop: Header=BB47_39 Depth=1
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	cmp	r15, rcx
	jb	.LBB47_39
# %bb.53:                               #   in Loop: Header=BB47_39 Depth=1
	lea	rax, [rcx + rcx]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	test	rcx, rcx
	jns	.LBB47_39
# %bb.54:                               #   in Loop: Header=BB47_39 Depth=1
	push	-1
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB47_39
.LBB47_55:                              #   in Loop: Header=BB47_39 Depth=1
	lea	rax, [rsi + 32]
	lea	r14, [rsi + rsi]
	cmp	rax, r14
	cmova	r14, rax
	lea	rdi, [rsp + 2512]
	mov	rdx, rbx
	mov	rcx, r14
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r8
	.cfi_adjust_cfa_offset -8
	mov	r9, r8
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 2512], 1
	je	.LBB47_505
# %bb.56:                               #   in Loop: Header=BB47_39 Depth=1
	mov	rbx, qword ptr [rsp + 2520]
	mov	qword ptr [rsp + 728], rbx
	mov	qword ptr [rsp + 720], r14
	mov	rsi, r14
	jmp	.LBB47_46
.LBB47_57:
	shl	rax, 32
	or	rax, 2
	mov	qword ptr [rsp + 736], r13
	mov	r12b, 1
	mov	r13, rax
.LBB47_58:
	movabs	rbp, -9223372036854775808
	jmp	.LBB47_60
.LBB47_59:
	xor	r13d, r13d
	xor	r12d, r12d
.LBB47_60:
	mov	r14, qword ptr [rsp + 728]
	mov	rbx, qword ptr [rsp + 736]
	lea	r15, [rsp + 2512]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	qword ptr [r15], 0
	je	.LBB47_62
# %bb.61:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.48]
	test	r12b, r12b
	cmove	r13, rax
	and	qword ptr [rsp + 736], 0
	jmp	.LBB47_63
.LBB47_62:
	mov	qword ptr [rsp + 736], rbx
	test	r12b, r12b
	je	.LBB47_165
.LBB47_63:
	mov	eax, r13d
	and	eax, 3
	cmp	eax, 1
	je	.LBB47_66
# %bb.64:
	xor	r12d, r12d
.LBB47_65:
	mov	ebx, dword ptr [rsp + 112]      # 4-byte Reload
	jmp	.LBB47_71
.LBB47_66:
	lea	r14, [r13 - 1]
	mov	r15, qword ptr [r13 - 1]
	mov	r12, qword ptr [r13 + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB47_68
# %bb.67:
.Ltmp160:
	mov	rdi, r15
	call	rax
.Ltmp161:
.LBB47_68:
	cmp	qword ptr [r12 + 8], 0
	mov	ebx, dword ptr [rsp + 112]      # 4-byte Reload
	je	.LBB47_70
# %bb.69:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_70:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	xor	r12d, r12d
.LBB47_71:
	cmp	qword ptr [rsp + 720], 0
	je	.LBB47_73
# %bb.72:
	mov	rdi, qword ptr [rsp + 728]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_73:
	mov	edi, ebx
	call	qword ptr [rip + close@GOTPCREL]
	mov	rbx, qword ptr [rsp + 1040]
	test	r12, r12
	je	.LBB47_78
# %bb.74:
	lea	r14, [rbx + 8]
	mov	r15, qword ptr [rip + free@GOTPCREL]
.LBB47_75:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r14 - 8], 0
	je	.LBB47_77
# %bb.76:                               #   in Loop: Header=BB47_75 Depth=1
	mov	rdi, qword ptr [r14]
	call	r15
.LBB47_77:                              #   in Loop: Header=BB47_75 Depth=1
	add	r14, 88
	dec	r12
	jne	.LBB47_75
.LBB47_78:
	cmp	qword ptr [rsp + 1032], 0
	je	.LBB47_80
# %bb.79:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_80:
	mov	r14, rbp
                                        # implicit-def: $r12
                                        # implicit-def: $r15
.LBB47_81:
	lea	rbx, [rsp + 2512]
	and	qword ptr [rbx], 0
	mov	qword ptr [rbx + 8], 8
	and	qword ptr [rbx + 16], 0
	mov	qword ptr [rbx + 24], r14
	mov	qword ptr [rbx + 32], r15
	mov	qword ptr [rbx + 40], r12
	lea	rdi, [rip + _RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback]
	mov	rsi, rbx
	call	qword ptr [rip + dl_iterate_phdr@GOTPCREL]
	movups	xmm0, xmmword ptr [rbx]
	movaps	xmmword ptr [rsp + 1312], xmm0
	mov	rax, qword ptr [rbx + 16]
	mov	qword ptr [rsp + 1328], rax
	mov	r14, qword ptr [rbx + 24]
	cmp	r14, rbp
	je	.LBB47_89
# %bb.82:
	mov	rbx, qword ptr [rsp + 2544]
	mov	r15, qword ptr [rsp + 2552]
	test	r15, r15
	je	.LBB47_87
# %bb.83:
	lea	r12, [rbx + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
.LBB47_84:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB47_86
# %bb.85:                               #   in Loop: Header=BB47_84 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
.LBB47_86:                              #   in Loop: Header=BB47_84 Depth=1
	add	r12, 88
	dec	r15
	jne	.LBB47_84
.LBB47_87:
	test	r14, r14
	je	.LBB47_89
# %bb.88:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_89:
	movaps	xmm0, xmmword ptr [rsp + 1312]
	movaps	xmmword ptr [rsp + 2512], xmm0
	mov	rax, qword ptr [rsp + 1328]
	mov	qword ptr [rsp + 2528], rax
	mov	r14, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	cmp	r14, rbp
	je	.LBB47_99
# %bb.90:
	mov	rbx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+8]
	mov	r15, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+16]
	test	r15, r15
	je	.LBB47_97
# %bb.91:
	lea	r12, [rbx + 32]
	mov	r13, qword ptr [rip + free@GOTPCREL]
.LBB47_92:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 32], 0
	je	.LBB47_94
# %bb.93:                               #   in Loop: Header=BB47_92 Depth=1
	mov	rdi, qword ptr [r12 - 24]
	call	r13
.LBB47_94:                              #   in Loop: Header=BB47_92 Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB47_96
# %bb.95:                               #   in Loop: Header=BB47_92 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
.LBB47_96:                              #   in Loop: Header=BB47_92 Depth=1
	add	r12, 56
	dec	r15
	jne	.LBB47_92
.LBB47_97:
	test	r14, r14
	je	.LBB47_99
# %bb.98:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_99:
	lea	rdi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	lea	rsi, [rsp + 2512]
	mov	ecx, 2360
	rep movsb es:[rdi], [rsi]
	and	qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+2360], 0
	mov	rbx, qword ptr [rsp + 200]      # 8-byte Reload
.LBB47_100:
	mov	rsi, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+16]
	test	rsi, rsi
	je	.LBB47_488
# %bb.101:
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r12
	.cfi_adjust_cfa_offset -8
	mov	rcx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+8]
	imul	rax, rsi, 56
	add	rax, rcx
	xor	r14d, r14d
	mov	rdx, rcx
.LBB47_102:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_103 Depth 2
	mov	r8, qword ptr [rdx + 32]
	mov	rdi, qword ptr [rdx + 40]
	mov	r13, qword ptr [rdx + 48]
	add	rdx, 56
	shl	rdi, 4
.LBB47_103:                             #   Parent Loop BB47_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	rdi, rdi
	je	.LBB47_106
# %bb.104:                              #   in Loop: Header=BB47_103 Depth=2
	mov	r9, r8
	add	r8, 16
	mov	r10, qword ptr [r9]
	add	r10, r13
	add	rdi, -16
	cmp	r10, rbx
	ja	.LBB47_103
# %bb.105:                              #   in Loop: Header=BB47_103 Depth=2
	add	r10, qword ptr [r9 + 8]
	cmp	r10, rbx
	jbe	.LBB47_103
	jmp	.LBB47_107
.LBB47_106:                             #   in Loop: Header=BB47_102 Depth=1
	inc	r14
	cmp	rdx, rax
	jne	.LBB47_102
	jmp	.LBB47_488
.LBB47_107:
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+2360]
	cmp	rax, 5
	jae	.LBB47_503
# %bb.108:
	test	rax, rax
	je	.LBB47_112
# %bb.109:
	imul	r8, rax, -584
	mov	r10d, 584
	xor	edx, edx
	lea	rdi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	mov	r9d, 584
.LBB47_110:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r9 + rdi - 560], r14
	je	.LBB47_137
# %bb.111:                              #   in Loop: Header=BB47_110 Depth=1
	inc	rdx
	lea	r11, [r8 + r9]
	add	r11, 584
	add	r9, r10
	cmp	r11, r10
	jne	.LBB47_110
.LBB47_112:
	cmp	r14, rsi
	jae	.LBB47_643
# %bb.113:
	imul	rax, r14, 56
	mov	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rcx + rax + 16]
	lea	rbx, [rsp + 2512]
	mov	rdi, rbx
	mov	rsi, r15
	mov	qword ptr [rsp + 16], rdx       # 8-byte Spill
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
	cmp	dword ptr [rbx], 1
	jne	.LBB47_488
# %bb.114:
	mov	qword ptr [rsp + 144], r15      # 8-byte Spill
	mov	qword ptr [rsp + 8], r14        # 8-byte Spill
	lea	rdi, [rsp + 2512]
	mov	rsi, qword ptr [rdi + 8]
	and	qword ptr [rsp + 320], 0
	mov	r15, qword ptr [rdi + 16]
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 328], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 336], xmm0
	mov	qword ptr [rsp + 352], rax
	and	qword ptr [rsp + 360], 0
.Ltmp166:
	mov	qword ptr [rsp + 40], rsi       # 8-byte Spill
	mov	rdx, r15
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
.Ltmp167:
# %bb.115:
	cmp	qword ptr [rsp + 2512], rbp
	je	.LBB47_135
# %bb.116:
	push	120
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	lea	rax, [rsp + 720]
	lea	rsi, [rsp + 2512]
	mov	rdi, rax
	rep movsb es:[rdi], [rsi]
	mov	rdi, rax
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id
	test	rax, rax
	mov	qword ptr [rsp], r15            # 8-byte Spill
	je	.LBB47_121
# %bb.117:
.Ltmp168:
	lea	rdi, [rsp + 1288]
	mov	rsi, rax
	call	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id
.Ltmp169:
# %bb.118:
	cmp	qword ptr [rsp + 1288], rbp
	je	.LBB47_121
# %bb.119:
.Ltmp170:
	lea	rdi, [rsp + 2512]
	lea	rcx, [rsp + 1288]
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug
.Ltmp171:
# %bb.120:
	mov	rbx, qword ptr [rsp + 2512]
	cmp	rbx, rbp
	jne	.LBB47_443
.LBB47_121:
	mov	qword ptr [rsp + 304], r13      # 8-byte Spill
	mov	r15, qword ptr [rsp + 768]
	test	r15, r15
	je	.LBB47_132
# %bb.122:
	mov	rax, qword ptr [rsp + 776]
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	test	rax, rax
	je	.LBB47_132
# %bb.123:
	mov	rbp, qword ptr [rsp + 760]
	shl	r15, 6
	mov	rbx, qword ptr [rsp + 792]
	mov	r12, qword ptr [rsp + 800]
	mov	rax, qword ptr [rsp + 784]
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	add	rax, r12
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
.LBB47_124:                             # =>This Inner Loop Header: Depth=1
	mov	r14d, dword ptr [rbp]
	add	r14, rbx
	setb	al
	mov	r13, r12
	sub	r13, r14
	setb	cl
	or	cl, al
	jne	.LBB47_131
# %bb.125:                              #   in Loop: Header=BB47_124 Depth=1
	cmp	r12, qword ptr [rsp + 112]      # 8-byte Folded Reload
	ja	.LBB47_131
# %bb.126:                              #   in Loop: Header=BB47_124 Depth=1
	add	r14, qword ptr [rsp + 80]       # 8-byte Folded Reload
	mov	rax, qword ptr [rip + _RNvNvNtNtNtCslQCDUggHFaK_6memchr4arch6x86_646memchr10memchr_raw2FN]
.Ltmp172:
	xor	edi, edi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 128]      # 8-byte Reload
	call	rax
.Ltmp173:
# %bb.127:                              #   in Loop: Header=BB47_124 Depth=1
	test	al, 1
	je	.LBB47_131
# %bb.128:                              #   in Loop: Header=BB47_124 Depth=1
	sub	rdx, r14
	cmp	rdx, 14
	jne	.LBB47_131
# %bb.129:                              #   in Loop: Header=BB47_124 Depth=1
	cmp	r13, 14
	jb	.LBB47_131
# %bb.130:                              #   in Loop: Header=BB47_124 Depth=1
	mov	rdi, r14
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.368]
	push	14
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
	je	.LBB47_493
.LBB47_131:                             #   in Loop: Header=BB47_124 Depth=1
	add	rbp, 64
	add	r15, -64
	jne	.LBB47_124
.LBB47_132:
.Ltmp237:
	lea	rdi, [rsp + 1904]
	lea	rcx, [rsp + 320]
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r15, qword ptr [rsp]            # 8-byte Reload
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package
.Ltmp238:
	movabs	rbp, -9223372036854775808
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r12
	.cfi_adjust_cfa_offset -8
	mov	r13, qword ptr [rsp + 304]      # 8-byte Reload
# %bb.133:
	lea	rcx, [rsp + 1312]
	mov	qword ptr [rcx], rbp
.Ltmp240:
	lea	rdi, [rsp + 2512]
	lea	rsi, [rsp + 320]
	lea	rdx, [rsp + 720]
	lea	r8, [rsp + 1904]
	call	_RNvMs_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB4_7Context3new
.Ltmp241:
# %bb.134:
	mov	rbx, qword ptr [rsp + 2512]
	cmp	rbx, rbp
	jne	.LBB47_140
.LBB47_135:
                                        # implicit-def: $r14
	mov	rbx, rbp
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
.LBB47_136:
	lea	rdi, [rsp + 320]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rsi, r15
	call	qword ptr [rip + munmap@GOTPCREL]
	mov	r15, r14
	cmp	rbx, rbp
	movdqa	xmm1, xmmword ptr [rsp + 608]   # 16-byte Reload
	movaps	xmm2, xmmword ptr [rsp + 992]   # 16-byte Reload
	movaps	xmm3, xmmword ptr [rsp + 976]   # 16-byte Reload
	movaps	xmm4, xmmword ptr [rsp + 960]   # 16-byte Reload
	movaps	xmm5, xmmword ptr [rsp + 944]   # 16-byte Reload
	movaps	xmm6, xmmword ptr [rsp + 592]   # 16-byte Reload
	movaps	xmm7, xmmword ptr [rsp + 928]   # 16-byte Reload
	movaps	xmm8, xmmword ptr [rsp + 912]   # 16-byte Reload
	movaps	xmm9, xmmword ptr [rsp + 896]   # 16-byte Reload
	movaps	xmm10, xmmword ptr [rsp + 880]  # 16-byte Reload
	movaps	xmm11, xmmword ptr [rsp + 864]  # 16-byte Reload
	movaps	xmm12, xmmword ptr [rsp + 576]  # 16-byte Reload
	movaps	xmm13, xmmword ptr [rsp + 560]  # 16-byte Reload
	movaps	xmm14, xmmword ptr [rsp + 544]  # 16-byte Reload
	movaps	xmm15, xmmword ptr [rsp + 528]  # 16-byte Reload
	jne	.LBB47_141
	jmp	.LBB47_488
.LBB47_137:
	cmp	rdx, rax
	jae	.LBB47_488
# %bb.138:
	imul	rax, rdx, 584
	lea	rsi, [rax + rdi]
	add	rsi, 24
	lea	r8, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+24]
	lea	rax, [rsp + 1312]
	mov	ecx, 584
	mov	rdi, rax
	rep movsb es:[rdi], [rsi]
	lea	rdx, [rsp + 2512]
.LBB47_139:                             # =>This Inner Loop Header: Depth=1
	lea	r10, [r8 + 584]
	mov	ecx, 584
	mov	rsi, r8
	mov	rdi, rdx
	rep movsb es:[rdi], [rsi]
	mov	ecx, 584
	mov	rdi, r8
	mov	rsi, rax
	rep movsb es:[rdi], [rsi]
	mov	ecx, 584
	mov	rdi, rax
	mov	rsi, rdx
	rep movsb es:[rdi], [rsi]
	mov	r8, r10
	add	r9, -584
	jne	.LBB47_139
	jmp	.LBB47_149
.LBB47_140:
	movdqu	xmm1, xmmword ptr [rsp + 2520]
	movups	xmm2, xmmword ptr [rsp + 2536]
	movups	xmm3, xmmword ptr [rsp + 2552]
	movups	xmm4, xmmword ptr [rsp + 2568]
	movups	xmm5, xmmword ptr [rsp + 2584]
	movups	xmm6, xmmword ptr [rsp + 2600]
	movups	xmm7, xmmword ptr [rsp + 2616]
	movups	xmm8, xmmword ptr [rsp + 2632]
	movups	xmm9, xmmword ptr [rsp + 2648]
	movups	xmm10, xmmword ptr [rsp + 2664]
	movups	xmm11, xmmword ptr [rsp + 2680]
	movups	xmm12, xmmword ptr [rsp + 2696]
	movups	xmm13, xmmword ptr [rsp + 2712]
	movups	xmm14, xmmword ptr [rsp + 2728]
	movsd	xmm15, qword ptr [rsp + 3016]   # xmm15 = mem[0],zero
	movups	xmm0, xmmword ptr [rsp + 320]
	movaps	xmmword ptr [rsp + 464], xmm0
	movups	xmm0, xmmword ptr [rsp + 336]
	movaps	xmmword ptr [rsp + 480], xmm0
	movups	xmm0, xmmword ptr [rsp + 352]
	movaps	xmmword ptr [rsp + 496], xmm0
	movsd	xmm0, qword ptr [rsp + 40]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movlhps	xmm15, xmm0                     # xmm15 = xmm15[0],xmm0[0]
	movaps	xmmword ptr [rsp + 208], xmm15  # 16-byte Spill
	movups	xmm15, xmmword ptr [rsp + 2744]
	movups	xmm0, xmmword ptr [rsp + 2760]
	movaps	xmmword ptr [rsp + 112], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2776]
	movaps	xmmword ptr [rsp + 624], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2792]
	movaps	xmmword ptr [rsp + 16], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2808]
	movaps	xmmword ptr [rsp + 80], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2824]
	movaps	xmmword ptr [rsp + 144], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2840]
	movaps	xmmword ptr [rsp + 128], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2856]
	movaps	xmmword ptr [rsp + 96], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2872]
	movaps	xmmword ptr [rsp + 176], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2888]
	movaps	xmmword ptr [rsp + 160], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2904]
	movaps	xmmword ptr [rsp + 272], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2920]
	movaps	xmmword ptr [rsp + 224], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2936]
	movaps	xmmword ptr [rsp + 240], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2952]
	movaps	xmmword ptr [rsp + 288], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2968]
	movaps	xmmword ptr [rsp + 672], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2984]
	movaps	xmmword ptr [rsp + 656], xmm0   # 16-byte Spill
	movdqu	xmm0, xmmword ptr [rsp + 3000]
	movdqa	xmmword ptr [rsp + 640], xmm0   # 16-byte Spill
.LBB47_141:
	movaps	xmm0, xmmword ptr [rsp + 496]
	movups	xmmword ptr [rsp + 2472], xmm0
	movaps	xmm0, xmmword ptr [rsp + 480]
	movups	xmmword ptr [rsp + 2456], xmm0
	movaps	xmm0, xmmword ptr [rsp + 464]
	movups	xmmword ptr [rsp + 2440], xmm0
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 1904], rax
	mov	qword ptr [rsp + 1912], rbx
	movdqu	xmmword ptr [rsp + 1920], xmm1
	movups	xmmword ptr [rsp + 1936], xmm2
	movups	xmmword ptr [rsp + 1952], xmm3
	movups	xmmword ptr [rsp + 1968], xmm4
	movups	xmmword ptr [rsp + 1984], xmm5
	movups	xmmword ptr [rsp + 2000], xmm6
	movups	xmmword ptr [rsp + 2016], xmm7
	movups	xmmword ptr [rsp + 2032], xmm8
	movups	xmmword ptr [rsp + 2048], xmm9
	movups	xmmword ptr [rsp + 2064], xmm10
	movups	xmmword ptr [rsp + 2080], xmm11
	movups	xmmword ptr [rsp + 2096], xmm12
	movups	xmmword ptr [rsp + 2112], xmm13
	movups	xmmword ptr [rsp + 2128], xmm14
	movups	xmmword ptr [rsp + 2144], xmm15
	movaps	xmm0, xmmword ptr [rsp + 112]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2160], xmm0
	movaps	xmm0, xmmword ptr [rsp + 624]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2176], xmm0
	movaps	xmm0, xmmword ptr [rsp + 16]    # 16-byte Reload
	movups	xmmword ptr [rsp + 2192], xmm0
	movaps	xmm0, xmmword ptr [rsp + 80]    # 16-byte Reload
	movups	xmmword ptr [rsp + 2208], xmm0
	movaps	xmm0, xmmword ptr [rsp + 144]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2224], xmm0
	movaps	xmm0, xmmword ptr [rsp + 128]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2240], xmm0
	movaps	xmm0, xmmword ptr [rsp + 96]    # 16-byte Reload
	movups	xmmword ptr [rsp + 2256], xmm0
	movaps	xmm0, xmmword ptr [rsp + 176]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2272], xmm0
	movaps	xmm0, xmmword ptr [rsp + 160]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2288], xmm0
	movaps	xmm0, xmmword ptr [rsp + 272]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2304], xmm0
	movaps	xmm0, xmmword ptr [rsp + 224]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2320], xmm0
	movaps	xmm0, xmmword ptr [rsp + 240]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2336], xmm0
	movaps	xmm0, xmmword ptr [rsp + 288]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2352], xmm0
	movaps	xmm0, xmmword ptr [rsp + 672]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2368], xmm0
	movaps	xmm0, xmmword ptr [rsp + 656]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2384], xmm0
	movaps	xmm0, xmmword ptr [rsp + 640]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2400], xmm0
	movaps	xmm0, xmmword ptr [rsp + 208]   # 16-byte Reload
	movups	xmmword ptr [rsp + 2416], xmm0
	mov	qword ptr [rsp + 2432], r15
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+2360]
	cmp	rax, 4
	jne	.LBB47_144
# %bb.142:
	mov	qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+2360], 3
.Ltmp243:
	lea	rdi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+1776]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_
.Ltmp244:
# %bb.143:
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+2360]
.LBB47_144:
	inc	rax
	lea	rdi, [rsp + 1312]
	lea	rsi, [rsp + 1904]
	mov	ecx, 584
	rep movsb es:[rdi], [rsi]
	cmp	rax, 5
	jae	.LBB47_512
# %bb.145:
	test	rax, rax
	je	.LBB47_148
# %bb.146:
	imul	r10, rax, 584
	xor	r11d, r11d
	lea	rbx, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	lea	rdx, [rsp + 2512]
	lea	r8, [rsp + 1312]
.LBB47_147:                             # =>This Inner Loop Header: Depth=1
	lea	r9, [r11 + rbx]
	add	r9, 24
	mov	ecx, 584
	mov	rdi, rdx
	mov	rsi, r9
	rep movsb es:[rdi], [rsi]
	mov	ecx, 584
	mov	rdi, r9
	mov	rsi, r8
	rep movsb es:[rdi], [rsi]
	mov	ecx, 584
	mov	rdi, r8
	mov	rsi, rdx
	rep movsb es:[rdi], [rsi]
	add	r11, 584
	cmp	r10, r11
	jne	.LBB47_147
.LBB47_148:
	mov	qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+2360], rax
	mov	rbx, qword ptr [rsp + 200]      # 8-byte Reload
.LBB47_149:
	sub	rbx, r13
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+496]
	mov	rdx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+504]
	mov	rdi, rdx
	mov	rcx, rdx
	test	rdx, rdx
	je	.LBB47_157
# %bb.150:
	cmp	rdx, 1
	jne	.LBB47_152
# %bb.151:
	xor	edi, edi
	jmp	.LBB47_154
.LBB47_152:
	xor	esi, esi
	mov	rcx, rdx
.LBB47_153:                             # =>This Inner Loop Header: Depth=1
	mov	r8, rcx
	shr	r8
	lea	rdi, [r8 + rsi]
	mov	r9, rdi
	shl	r9, 5
	cmp	qword ptr [rax + r9 + 8], rbx
	cmova	rdi, rsi
	sub	rcx, r8
	mov	rsi, rdi
	cmp	rcx, 1
	ja	.LBB47_153
.LBB47_154:
	mov	rcx, rdi
	shl	rcx, 5
	cmp	qword ptr [rax + rcx + 8], rbx
	jne	.LBB47_156
# %bb.155:
	mov	rcx, r12
	jmp	.LBB47_157
.LBB47_156:
	adc	rdi, 0
	xor	ecx, ecx
.LBB47_157:
	add	rdi, rcx
	cmp	rdi, rdx
	ja	.LBB47_513
# %bb.158:
	push	3
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 200], rbx      # 8-byte Spill
	je	.LBB47_279
# %bb.159:
	lea	r12, [rbx + 1]
	shl	rdx, 5
	lea	r15, [rax + rdx]
	shl	rdi, 5
	add	rax, rdi
	sub	rdx, rdi
.LBB47_160:                             # =>This Inner Loop Header: Depth=1
	lea	rbp, [rax + 32]
	cmp	r12, qword ptr [rax + 24]
	jbe	.LBB47_164
# %bb.161:                              #   in Loop: Header=BB47_160 Depth=1
	cmp	rbx, qword ptr [rax + 8]
	jae	.LBB47_163
# %bb.162:                              #   in Loop: Header=BB47_160 Depth=1
	cmp	r12, qword ptr [rax]
	ja	.LBB47_274
.LBB47_163:                             #   in Loop: Header=BB47_160 Depth=1
	mov	rax, rbp
	add	rdx, -32
	jne	.LBB47_160
	jmp	.LBB47_279
.LBB47_164:
	lea	rdx, [rsp + 2512]
	mov	r14b, 1
	xor	eax, eax
	jmp	.LBB47_276
.LBB47_165:
	lea	rsi, [rsp + 2528]
	and	qword ptr [rsi - 16], 0
	mov	qword ptr [rsi - 8], rbx
	mov	qword ptr [rsi], r14
	mov	qword ptr [rsi + 8], rbx
	and	qword ptr [rsi + 16], 0
	mov	qword ptr [rsi + 24], rbx
	movabs	rax, 42949672970
	mov	qword ptr [rsi + 32], rax
	mov	byte ptr [rsi + 40], 1
	and	word ptr [rsi + 48], 0
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 208], rax      # 8-byte Spill
	xor	r12d, r12d
	lea	rdi, [rsp + 1312]
.LBB47_166:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_222 Depth 2
                                        #     Child Loop BB47_219 Depth 2
                                        #     Child Loop BB47_237 Depth 2
                                        #     Child Loop BB47_234 Depth 2
                                        #     Child Loop BB47_255 Depth 2
                                        #     Child Loop BB47_252 Depth 2
	mov	r15, qword ptr [rsp + 2528]
.Ltmp137:
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp138:
# %bb.167:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	dword ptr [rsp + 1312], 1
	jne	.LBB47_169
# %bb.168:                              #   in Loop: Header=BB47_166 Depth=1
	mov	r13, qword ptr [rsp + 1328]
	mov	rax, qword ptr [rsp + 2512]
	mov	qword ptr [rsp + 2512], r13
	sub	r13, rax
	add	r15, rax
	jmp	.LBB47_172
.LBB47_169:                             #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 2577], 0
	jne	.LBB47_271
# %bb.170:                              #   in Loop: Header=BB47_166 Depth=1
	mov	byte ptr [rsp + 2577], 1
	mov	r15, qword ptr [rsp + 2512]
	mov	r13, qword ptr [rsp + 2520]
	sub	r13, r15
	setne	al
	or	al, byte ptr [rsp + 2576]
	cmp	al, 1
	jne	.LBB47_271
# %bb.171:                              #   in Loop: Header=BB47_166 Depth=1
	add	r15, qword ptr [rsp + 2528]
.LBB47_172:                             #   in Loop: Header=BB47_166 Depth=1
	test	r13, r13
	je	.LBB47_176
# %bb.173:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [r15 + r13 - 1], 10
	jne	.LBB47_179
# %bb.174:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, r13
	dec	rax
	je	.LBB47_177
# %bb.175:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [r15 + r13 - 2], 13
	lea	r13, [r13 - 2]
	mov	ecx, 0
	cmove	rcx, r15
	jmp	.LBB47_178
.LBB47_176:                             #   in Loop: Header=BB47_166 Depth=1
	xor	r13d, r13d
	jmp	.LBB47_179
.LBB47_177:                             #   in Loop: Header=BB47_166 Depth=1
	push	-1
	.cfi_adjust_cfa_offset 8
	pop	r13
	.cfi_adjust_cfa_offset -8
	xor	ecx, ecx
.LBB47_178:                             #   in Loop: Header=BB47_166 Depth=1
	test	rcx, rcx
	cmovne	r15, rcx
	cmove	r13, rax
.LBB47_179:                             #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, r15
	mov	rsi, r13
	call	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	mov	rbx, rax
	mov	qword ptr [rsp + 1312], rax
	mov	qword ptr [rsp + 1320], rdx
	and	qword ptr [rsp + 1328], 0
	mov	qword ptr [rsp + 80], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 1336], rdx
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 137438953504
	mov	qword ptr [rsp + 1344], rax
.Ltmp139:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp140:
# %bb.180:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 1904], 0
	je	.LBB47_183
# %bb.181:                              #   in Loop: Header=BB47_166 Depth=1
	test	rbx, rbx
	je	.LBB47_183
# %bb.182:                              #   in Loop: Header=BB47_166 Depth=1
	mov	r13, qword ptr [rsp + 1912]
	mov	rax, qword ptr [rsp + 1920]
	mov	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp + 128], rcx      # 8-byte Spill
	sub	qword ptr [rsp + 80], rax       # 8-byte Folded Spill
	mov	r15, rbx
	jmp	.LBB47_184
.LBB47_183:                             #   in Loop: Header=BB47_166 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	mov	qword ptr [rsp + 80], 0         # 8-byte Folded Spill
.LBB47_184:                             #   in Loop: Header=BB47_166 Depth=1
	test	r13, r13
	je	.LBB47_65
# %bb.185:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, qword ptr [rsp + 128]      # 8-byte Reload
	mov	rsi, qword ptr [rsp + 80]       # 8-byte Reload
	call	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	mov	rbx, rax
	mov	qword ptr [rsp + 1312], rax
	mov	qword ptr [rsp + 1320], rdx
	and	qword ptr [rsp + 1328], 0
	mov	r14, rdx
	mov	qword ptr [rsp + 1336], rdx
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 137438953504
	mov	qword ptr [rsp + 1344], rax
.Ltmp141:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp142:
# %bb.186:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 1904], 0
	je	.LBB47_189
# %bb.187:                              #   in Loop: Header=BB47_166 Depth=1
	test	rbx, rbx
	je	.LBB47_189
# %bb.188:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1912]
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 1920]
	mov	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	rsi, r14
	sub	rsi, rax
	mov	qword ptr [rsp + 128], rbx      # 8-byte Spill
	jmp	.LBB47_190
.LBB47_189:                             #   in Loop: Header=BB47_166 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	xor	esi, esi
.LBB47_190:                             #   in Loop: Header=BB47_166 Depth=1
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
	je	.LBB47_65
# %bb.191:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r14, rsi
	call	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	mov	rbx, rax
	mov	qword ptr [rsp + 1312], rax
	mov	qword ptr [rsp + 1320], rdx
	and	qword ptr [rsp + 1328], 0
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	mov	qword ptr [rsp + 1336], rdx
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 137438953504
	mov	qword ptr [rsp + 1344], rax
.Ltmp143:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp144:
# %bb.192:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 1904], 0
	je	.LBB47_195
# %bb.193:                              #   in Loop: Header=BB47_166 Depth=1
	test	rbx, rbx
	je	.LBB47_195
# %bb.194:                              #   in Loop: Header=BB47_166 Depth=1
	mov	r14, qword ptr [rsp + 1912]
	mov	rax, qword ptr [rsp + 1920]
	mov	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp], rcx            # 8-byte Spill
	sub	qword ptr [rsp + 8], rax        # 8-byte Folded Spill
	mov	qword ptr [rsp + 16], rbx       # 8-byte Spill
	jmp	.LBB47_196
.LBB47_195:                             #   in Loop: Header=BB47_166 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp], rax            # 8-byte Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
.LBB47_196:                             #   in Loop: Header=BB47_166 Depth=1
	test	r14, r14
	je	.LBB47_65
# %bb.197:                              #   in Loop: Header=BB47_166 Depth=1
	mov	qword ptr [rsp + 160], r14      # 8-byte Spill
	mov	rdi, qword ptr [rsp]            # 8-byte Reload
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	call	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	mov	rbx, rax
	mov	qword ptr [rsp + 1312], rax
	mov	qword ptr [rsp + 1320], rdx
	and	qword ptr [rsp + 1328], 0
	mov	qword ptr [rsp + 144], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 1336], rdx
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 137438953504
	mov	qword ptr [rsp + 1344], rax
.Ltmp145:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp146:
# %bb.198:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 1904], 0
	je	.LBB47_201
# %bb.199:                              #   in Loop: Header=BB47_166 Depth=1
	test	rbx, rbx
	je	.LBB47_201
# %bb.200:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1912]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rax, qword ptr [rsp + 1920]
	mov	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	sub	qword ptr [rsp + 144], rax      # 8-byte Folded Spill
	mov	qword ptr [rsp], rbx            # 8-byte Spill
	jmp	.LBB47_202
.LBB47_201:                             #   in Loop: Header=BB47_166 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	qword ptr [rsp + 144], 0        # 8-byte Folded Spill
.LBB47_202:                             #   in Loop: Header=BB47_166 Depth=1
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	je	.LBB47_65
# %bb.203:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	call	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	mov	r14, rax
	mov	rbx, rdx
	mov	qword ptr [rsp + 1312], rax
	mov	qword ptr [rsp + 1320], rdx
	and	qword ptr [rsp + 1328], 0
	mov	qword ptr [rsp + 1336], rdx
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 137438953504
	mov	qword ptr [rsp + 1344], rax
.Ltmp147:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp148:
# %bb.204:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 1904], 0
	je	.LBB47_207
# %bb.205:                              #   in Loop: Header=BB47_166 Depth=1
	test	r14, r14
	je	.LBB47_207
# %bb.206:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1912]
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 1920]
	mov	rdi, r14
	add	rdi, rax
	sub	rbx, rax
	mov	qword ptr [rsp + 96], r14       # 8-byte Spill
	jmp	.LBB47_208
.LBB47_207:                             #   in Loop: Header=BB47_166 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rdi
	.cfi_adjust_cfa_offset -8
	xor	ebx, ebx
.LBB47_208:                             #   in Loop: Header=BB47_166 Depth=1
	cmp	qword ptr [rsp + 144], 0        # 8-byte Folded Reload
	je	.LBB47_65
# %bb.209:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rsi, rbx
	call	_RINvMNtCsfQL5qMWGko6_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs3bNtqN8jaZB_3std
	mov	qword ptr [rsp + 272], rax      # 8-byte Spill
	mov	qword ptr [rsp + 1312], r15
	mov	qword ptr [rsp + 1320], r13
	and	qword ptr [rsp + 1328], 0
	mov	qword ptr [rsp + 176], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 1336], r13
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 193273528365
	mov	qword ptr [rsp + 1344], rax
.Ltmp149:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp150:
# %bb.210:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	dword ptr [rsp + 1904], 1
	jne	.LBB47_65
# %bb.211:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rcx, qword ptr [rsp + 1912]
	mov	rax, qword ptr [rsp + 1920]
	cmp	rcx, 1
	je	.LBB47_214
# %bb.212:                              #   in Loop: Header=BB47_166 Depth=1
	test	rcx, rcx
	je	.LBB47_65
# %bb.213:                              #   in Loop: Header=BB47_166 Depth=1
	mov	sil, byte ptr [r15]
	jmp	.LBB47_216
.LBB47_214:                             #   in Loop: Header=BB47_166 Depth=1
	movzx	esi, byte ptr [r15]
	cmp	esi, 43
	je	.LBB47_65
# %bb.215:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	esi, 45
	je	.LBB47_65
.LBB47_216:                             #   in Loop: Header=BB47_166 Depth=1
	xor	edx, edx
	cmp	sil, 43
	sete	dl
	mov	rsi, rdx
	neg	rsi
	mov	rdi, rcx
	sub	rdi, rdx
	add	rdx, r15
	cmp	rdi, 17
	jae	.LBB47_221
# %bb.217:                              #   in Loop: Header=BB47_166 Depth=1
	test	rdi, rdi
	je	.LBB47_225
# %bb.218:                              #   in Loop: Header=BB47_166 Depth=1
	add	rcx, rsi
	neg	rcx
	xor	esi, esi
	xor	ebx, ebx
.LBB47_219:                             #   Parent Loop BB47_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r8d, byte ptr [rdx + rsi]
	lea	r9d, [r8 - 65]
	and	r9d, -33
	add	r9d, 10
	lea	edi, [r8 - 48]
	cmp	r8d, 58
	cmovae	edi, r9d
	cmp	edi, 15
	ja	.LBB47_65
# %bb.220:                              #   in Loop: Header=BB47_219 Depth=2
	shl	rbx, 4
	mov	edi, edi
	or	rbx, rdi
	inc	rsi
	mov	rdi, rcx
	add	rdi, rsi
	jne	.LBB47_219
	jmp	.LBB47_226
.LBB47_221:                             #   in Loop: Header=BB47_166 Depth=1
	add	rcx, rsi
	neg	rcx
	xor	esi, esi
	xor	ebx, ebx
.LBB47_222:                             #   Parent Loop BB47_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdi, rcx
	add	rdi, rsi
	je	.LBB47_226
# %bb.223:                              #   in Loop: Header=BB47_222 Depth=2
	movzx	r8d, byte ptr [rdx + rsi]
	lea	r9d, [r8 - 65]
	and	r9d, -33
	add	r9d, 10
	lea	edi, [r8 - 48]
	cmp	r8d, 58
	cmovae	edi, r9d
	cmp	edi, 15
	ja	.LBB47_65
# %bb.224:                              #   in Loop: Header=BB47_222 Depth=2
	mov	r8, rbx
	shl	r8, 4
	mov	edi, edi
	or	rdi, r8
	inc	rsi
	movabs	r8, 1152921504606846975
	cmp	rbx, r8
	mov	rbx, rdi
	jbe	.LBB47_222
	jmp	.LBB47_65
.LBB47_225:                             #   in Loop: Header=BB47_166 Depth=1
	xor	ebx, ebx
.LBB47_226:                             #   in Loop: Header=BB47_166 Depth=1
	sub	r13, rax
	add	r15, rax
	cmp	r13, 1
	je	.LBB47_229
# %bb.227:                              #   in Loop: Header=BB47_166 Depth=1
	test	r13, r13
	je	.LBB47_65
# %bb.228:                              #   in Loop: Header=BB47_166 Depth=1
	mov	al, byte ptr [r15]
	jmp	.LBB47_231
.LBB47_229:                             #   in Loop: Header=BB47_166 Depth=1
	movzx	eax, byte ptr [r15]
	cmp	eax, 43
	je	.LBB47_65
# %bb.230:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	eax, 45
	je	.LBB47_65
.LBB47_231:                             #   in Loop: Header=BB47_166 Depth=1
	xor	ecx, ecx
	cmp	al, 43
	sete	cl
	sub	r13, rcx
	add	r15, rcx
	cmp	r13, 17
	jae	.LBB47_236
# %bb.232:                              #   in Loop: Header=BB47_166 Depth=1
	test	r13, r13
	je	.LBB47_240
# %bb.233:                              #   in Loop: Header=BB47_166 Depth=1
	xor	eax, eax
	xor	r14d, r14d
.LBB47_234:                             #   Parent Loop BB47_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	edx, byte ptr [r15 + rax]
	lea	esi, [rdx - 65]
	and	esi, -33
	add	esi, 10
	lea	ecx, [rdx - 48]
	cmp	edx, 58
	cmovae	ecx, esi
	cmp	ecx, 15
	ja	.LBB47_65
# %bb.235:                              #   in Loop: Header=BB47_234 Depth=2
	shl	r14, 4
	mov	ecx, ecx
	or	r14, rcx
	inc	rax
	cmp	r13, rax
	jne	.LBB47_234
	jmp	.LBB47_241
.LBB47_236:                             #   in Loop: Header=BB47_166 Depth=1
	xor	eax, eax
	xor	r14d, r14d
.LBB47_237:                             #   Parent Loop BB47_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	r13, rax
	je	.LBB47_241
# %bb.238:                              #   in Loop: Header=BB47_237 Depth=2
	movzx	edx, byte ptr [r15 + rax]
	lea	esi, [rdx - 65]
	and	esi, -33
	add	esi, 10
	lea	ecx, [rdx - 48]
	cmp	edx, 58
	cmovae	ecx, esi
	cmp	ecx, 15
	ja	.LBB47_65
# %bb.239:                              #   in Loop: Header=BB47_237 Depth=2
	mov	rdx, r14
	shl	rdx, 4
	mov	ecx, ecx
	or	rcx, rdx
	inc	rax
	movabs	rdx, 1152921504606846975
	cmp	r14, rdx
	mov	r14, rcx
	jbe	.LBB47_237
	jmp	.LBB47_65
.LBB47_240:                             #   in Loop: Header=BB47_166 Depth=1
	xor	r14d, r14d
.LBB47_241:                             #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 128]      # 8-byte Reload
	add	rax, rcx
	mov	qword ptr [rsp + 1312], rcx
	mov	qword ptr [rsp + 1320], rax
	lea	r15, [rsp + 1312]
	mov	rdi, r15
	call	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	test	al, 1
	je	.LBB47_65
# %bb.242:                              #   in Loop: Header=BB47_166 Depth=1
	mov	r13d, edx
	mov	rdi, r15
	call	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	mov	dword ptr [rsp + 80], edx       # 4-byte Spill
	test	al, 1
	je	.LBB47_65
# %bb.243:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, r15
	call	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	mov	dword ptr [rsp + 128], edx      # 4-byte Spill
	test	al, 1
	je	.LBB47_65
# %bb.244:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, r15
	call	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	mov	dword ptr [rsp + 224], edx      # 4-byte Spill
	test	al, 1
	je	.LBB47_65
# %bb.245:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, r15
	call	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	test	al, 1
	jne	.LBB47_65
# %bb.246:                              #   in Loop: Header=BB47_166 Depth=1
	mov	dword ptr [rsp + 240], r13d     # 4-byte Spill
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	movzx	eax, byte ptr [rax]
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	cmp	rdi, 1
	jne	.LBB47_249
# %bb.247:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	eax, 43
	je	.LBB47_65
# %bb.248:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	eax, 45
	je	.LBB47_65
.LBB47_249:                             #   in Loop: Header=BB47_166 Depth=1
	xor	edx, edx
	cmp	eax, 43
	sete	dl
	mov	rcx, rdi
	sub	rcx, rdx
	add	qword ptr [rsp + 16], rdx       # 8-byte Folded Spill
	mov	rax, rdx
	neg	rax
	cmp	rcx, 17
	jae	.LBB47_254
# %bb.250:                              #   in Loop: Header=BB47_166 Depth=1
	test	rcx, rcx
	je	.LBB47_258
# %bb.251:                              #   in Loop: Header=BB47_166 Depth=1
	add	rdi, rax
	neg	rdi
	xor	eax, eax
	xor	r13d, r13d
.LBB47_252:                             #   Parent Loop BB47_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	movzx	edx, byte ptr [rcx + rax]
	lea	esi, [rdx - 65]
	and	esi, -33
	add	esi, 10
	lea	ecx, [rdx - 48]
	cmp	edx, 58
	cmovae	ecx, esi
	cmp	ecx, 15
	ja	.LBB47_65
# %bb.253:                              #   in Loop: Header=BB47_252 Depth=2
	shl	r13, 4
	mov	ecx, ecx
	or	r13, rcx
	inc	rax
	mov	rcx, rdi
	add	rcx, rax
	jne	.LBB47_252
	jmp	.LBB47_259
.LBB47_254:                             #   in Loop: Header=BB47_166 Depth=1
	add	rdi, rax
	neg	rdi
	xor	eax, eax
	xor	r13d, r13d
.LBB47_255:                             #   Parent Loop BB47_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabs	rcx, 1152921504606846975
	cmp	r13, rcx
	ja	.LBB47_65
# %bb.256:                              #   in Loop: Header=BB47_255 Depth=2
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	movzx	edx, byte ptr [rcx + rax]
	lea	esi, [rdx - 48]
	lea	ecx, [rdx - 65]
	and	ecx, -33
	add	ecx, 10
	cmp	edx, 58
	cmovb	ecx, esi
	cmp	ecx, 16
	jae	.LBB47_65
# %bb.257:                              #   in Loop: Header=BB47_255 Depth=2
	shl	r13, 4
	mov	ecx, ecx
	or	r13, rcx
	inc	rax
	mov	rcx, rdi
	add	rcx, rax
	je	.LBB47_259
	jmp	.LBB47_255
.LBB47_258:                             #   in Loop: Header=BB47_166 Depth=1
	xor	r13d, r13d
.LBB47_259:                             #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rsp + 1312], rax
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 1320], rax
	and	qword ptr [rsp + 1328], 0
	mov	qword ptr [rsp + 1336], rax
	mov	byte ptr [rsp + 1352], 1
	movabs	rax, 249108103226
	mov	qword ptr [rsp + 1344], rax
.Ltmp151:
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 1312]
	call	_RNvXs_NtNtCsfQL5qMWGko6_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match
.Ltmp152:
# %bb.260:                              #   in Loop: Header=BB47_166 Depth=1
	cmp	byte ptr [rsp + 1904], 0
	je	.LBB47_65
# %bb.261:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdx, qword ptr [rsp + 1912]
	mov	r15, qword ptr [rsp + 1920]
	lea	rdi, [rsp + 1312]
	mov	rsi, qword ptr [rsp]            # 8-byte Reload
	call	_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix
	cmp	byte ptr [rsp + 1312], 0
	jne	.LBB47_65
# %bb.262:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1320]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	rsi, qword ptr [rsp]            # 8-byte Reload
	add	rsi, r15
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	sub	rdx, r15
	lea	rdi, [rsp + 1312]
	call	_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix
	cmp	byte ptr [rsp + 1312], 0
	jne	.LBB47_65
# %bb.263:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1320]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	lea	rdi, [rsp + 1312]
	mov	rsi, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 144]      # 8-byte Reload
	call	_RNvMsv_NtCsfQL5qMWGko6_4core3numj16from_ascii_radix
	cmp	byte ptr [rsp + 1312], 0
	jne	.LBB47_65
# %bb.264:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1320]
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r15
	.cfi_adjust_cfa_offset -8
	cmp	qword ptr [rsp + 176], 0        # 8-byte Folded Reload
	je	.LBB47_267
# %bb.265:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rdi, qword ptr [rsp + 176]      # 8-byte Reload
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB47_661
# %bb.266:                              #   in Loop: Header=BB47_166 Depth=1
	mov	r15, rax
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 272]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 176]      # 8-byte Reload
	call	qword ptr [rip + memcpy@GOTPCREL]
	cmp	qword ptr [rsp + 176], rbp      # 8-byte Folded Reload
	je	.LBB47_65
.LBB47_267:                             #   in Loop: Header=BB47_166 Depth=1
	cmp	r12, qword ptr [rsp + 1032]
	jne	.LBB47_270
# %bb.268:                              #   in Loop: Header=BB47_166 Depth=1
.Ltmp157:
	lea	rdi, [rsp + 1032]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtNtCsktQxXQGZjIy_5gimli4read4line9FileEntryINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity12LittleEndianEjEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp158:
# %bb.269:                              #   in Loop: Header=BB47_166 Depth=1
	mov	rax, qword ptr [rsp + 1040]
	mov	qword ptr [rsp + 208], rax      # 8-byte Spill
.LBB47_270:                             #   in Loop: Header=BB47_166 Depth=1
	imul	rax, r12, 88
	mov	rcx, qword ptr [rsp + 208]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 176]      # 8-byte Reload
	mov	qword ptr [rcx + rax], rdx
	mov	qword ptr [rcx + rax + 8], r15
	mov	qword ptr [rcx + rax + 16], rdx
	mov	edx, dword ptr [rsp + 240]      # 4-byte Reload
	mov	dword ptr [rcx + rax + 24], edx
	mov	edx, dword ptr [rsp + 80]       # 4-byte Reload
	mov	dword ptr [rcx + rax + 28], edx
	mov	edx, dword ptr [rsp + 128]      # 4-byte Reload
	mov	dword ptr [rcx + rax + 32], edx
	mov	edx, dword ptr [rsp + 224]      # 4-byte Reload
	mov	dword ptr [rcx + rax + 36], edx
	mov	qword ptr [rcx + rax + 40], rbx
	mov	qword ptr [rcx + rax + 48], r14
	mov	qword ptr [rcx + rax + 56], r13
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rcx + rax + 64], rdx
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rcx + rax + 72], rdx
	mov	rdx, qword ptr [rsp + 144]      # 8-byte Reload
	mov	qword ptr [rcx + rax + 80], rdx
	inc	r12
	mov	qword ptr [rsp + 1048], r12
	cmp	byte ptr [rsp + 2577], 0
	lea	rsi, [rsp + 2528]
	lea	rdi, [rsp + 1312]
	je	.LBB47_166
.LBB47_271:
	mov	r14, qword ptr [rsp + 1032]
	mov	r15, qword ptr [rsp + 1040]
	cmp	qword ptr [rsp + 720], 0
	je	.LBB47_273
# %bb.272:
	mov	rdi, qword ptr [rsp + 728]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_273:
	mov	edi, dword ptr [rsp + 112]      # 4-byte Reload
	call	qword ptr [rip + close@GOTPCREL]
	cmp	r14, rbp
	je	.LBB47_80
	jmp	.LBB47_81
.LBB47_274:
	mov	rdi, qword ptr [rax + 16]
	mov	rsi, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+520]
	cmp	rdi, rsi
	jae	.LBB47_646
# %bb.275:
	imul	rdx, rdi, 560
	add	rdx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+512]
	mov	qword ptr [rsp + 2512], rdx
	lea	rdx, [rsp + 1312]
	xor	r14d, r14d
.LBB47_276:
	mov	qword ptr [rdx], rax
	mov	rbx, qword ptr [rsp + 2512]
	test	rbx, rbx
	je	.LBB47_279
# %bb.277:
	lea	rcx, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+488]
	lea	rdi, [rsp + 2512]
	mov	rsi, rbx
	mov	r13, qword ptr [rsp + 200]      # 8-byte Reload
	mov	rdx, r13
	call	_RNvMNtCsfwdNdOnv07X_9addr2line4unitINtB2_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEE25find_function_or_locationCs3bNtqN8jaZB_3std
	lea	rdx, [rsp + 1312]
	mov	qword ptr [rdx], r13
	mov	qword ptr [rdx + 8], rbx
	lea	rax, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+488]
	mov	qword ptr [rdx + 16], rax
	lea	rax, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+496]
	mov	qword ptr [rdx + 24], rax
	mov	qword ptr [rdx + 32], r13
	mov	qword ptr [rdx + 40], r12
	mov	qword ptr [rdx + 48], rbp
	mov	qword ptr [rdx + 56], r15
	mov	qword ptr [rdx + 64], r13
	mov	qword ptr [rdx + 72], r12
	mov	byte ptr [rdx + 80], r14b
	lea	rbx, [rsp + 1904]
	mov	rdi, rbx
	lea	rsi, [rsp + 2512]
	call	_RNvMs2_NtCsfwdNdOnv07X_9addr2line6lookupINtB5_13LoopingLookupINtNtCsfQL5qMWGko6_4core6result6ResultINtNtB7_5frame9FrameIterINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEINtB5_12MappedLookupIBY_TINtNtB12_6option6OptionRINtNtB7_8function8FunctionB1X_EEIB45_NtB1C_8LocationEEB3s_EINtB5_12SimpleLookupIBY_TNtB7_9DebugFileINtNtB22_5dwarf7UnitRefB1X_EEB3s_EB1X_NCNvMNtB7_4unitINtB6K_7ResUnitB1X_E14dwarf_and_units4_0ENCNvB6J_25find_function_or_location0ENCNvMs_B7_INtB7_7ContextB1X_E11find_frames0E10new_lookupCs3bNtqN8jaZB_3std
	cmp	byte ptr [rbx + 184], 2
	jne	.LBB47_297
.LBB47_278:
	mov	ecx, dword ptr [rsp + 1904]
.LBB47_279:
	cmp	ecx, 5
	mov	rdi, qword ptr [rsp + 200]      # 8-byte Reload
	je	.LBB47_486
# %bb.280:
	mov	rax, qword ptr [rsp + 1960]
	mov	qword ptr [rsp + 160], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 1976]
	mov	qword ptr [rsp], rax            # 8-byte Spill
	lea	eax, [rcx - 3]
	cmp	ecx, 3
	push	2
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	cmovae	edx, eax
	test	edx, edx
	je	.LBB47_287
# %bb.281:
	mov	esi, dword ptr [rsp + 1908]
	mov	qword ptr [rsp + 144], rsi      # 8-byte Spill
	mov	r10d, dword ptr [rsp + 1912]
	mov	ebp, dword ptr [rsp + 1916]
	mov	rsi, qword ptr [rsp + 1920]
	mov	qword ptr [rsp + 80], rsi       # 8-byte Spill
	mov	rsi, qword ptr [rsp + 1928]
	mov	qword ptr [rsp + 16], rsi       # 8-byte Spill
	mov	rsi, qword ptr [rsp + 1936]
	mov	rdi, qword ptr [rsp + 1944]
	mov	qword ptr [rsp + 288], rdi      # 8-byte Spill
	mov	rdi, qword ptr [rsp + 1952]
	mov	r8, qword ptr [rsp + 1968]
	mov	qword ptr [rsp + 176], r8       # 8-byte Spill
	mov	r8, qword ptr [rsp + 1984]
	lea	r9, [rsi + 96]
	mov	qword ptr [rsp + 272], r9       # 8-byte Spill
	lea	r9, [rsi + 456]
	mov	qword ptr [rsp + 224], r9       # 8-byte Spill
	mov	qword ptr [rsp + 96], rsi       # 8-byte Spill
	add	rsi, 464
	mov	qword ptr [rsp + 240], rsi      # 8-byte Spill
	cmp	edx, 1
	mov	qword ptr [rsp + 208], rdi      # 8-byte Spill
	mov	qword ptr [rsp + 128], r8       # 8-byte Spill
	mov	qword ptr [rsp + 8], rbp        # 8-byte Spill
	jne	.LBB47_288
# %bb.282:
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	sete	cl
	shl	rbp, 32
	or	rbp, r10
	cmp	eax, 2
	setb	al
	or	al, cl
	push	2
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	push	3
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	jne	.LBB47_284
# %bb.283:
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_284:
	mov	r13, qword ptr [rsp + 96]       # 8-byte Reload
	mov	r14, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r15, qword ptr [rsp + 80]       # 8-byte Reload
.LBB47_285:
.Ltmp344:
	mov	rdi, qword ptr [rsp + 200]      # 8-byte Reload
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab
.Ltmp345:
# %bb.286:
	mov	rbx, rax
	mov	r12, rdx
	jmp	.LBB47_454
.LBB47_287:
	xor	ebx, ebx
	jmp	.LBB47_483
.LBB47_288:
	mov	qword ptr [rsp + 40], r10       # 8-byte Spill
	mov	eax, ecx
	mov	rbp, qword ptr [rsp + 144]      # 8-byte Reload
	shl	rbp, 32
	or	rbp, rax
	mov	r15, qword ptr [rsp + 8]        # 8-byte Reload
	shl	r15, 32
	add	r15, qword ptr [rsp + 40]       # 8-byte Folded Reload
	cmp	qword ptr [rsp + 176], r8       # 8-byte Folded Reload
	je	.LBB47_447
# %bb.289:
	mov	r12, qword ptr [r8 - 8]
	mov	eax, dword ptr [r12 + 40]
	mov	qword ptr [rsp + 112], 0        # 8-byte Folded Spill
	test	eax, eax
	setne	bl
	mov	ecx, dword ptr [r12 + 44]
	mov	qword ptr [rsp + 40], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	test	ecx, ecx
	setne	r14b
	cmp	dword ptr [r12], 1
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	jne	.LBB47_440
# %bb.290:
	mov	rax, qword ptr [rsp + 272]      # 8-byte Reload
	cmp	dword ptr [rax], 47
	je	.LBB47_440
# %bb.291:
	mov	r13, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 224]      # 8-byte Reload
	cmp	byte ptr [rax], 0
	mov	rax, qword ptr [rsp + 240]      # 8-byte Reload
	je	.LBB47_569
.LBB47_292:
	cmp	qword ptr [rax], 0
	jne	.LBB47_295
# %bb.293:
	cmp	byte ptr [rax + 8], 82
	jne	.LBB47_501
# %bb.294:
	mov	rax, qword ptr [rax + 16]
.LBB47_295:
	cmp	r13, qword ptr [rax + 8]
	jae	.LBB47_440
# %bb.296:
	mov	rcx, qword ptr [rax]
	imul	rdx, r13, 24
	mov	rax, qword ptr [rcx + rdx + 8]
	mov	rcx, qword ptr [rcx + rdx + 16]
	jmp	.LBB47_441
.LBB47_297:
	mov	cl, byte ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+152]
	lea	rax, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+152]
	xor	edx, edx
	mov	byte ptr [rsp + 80], cl         # 1-byte Spill
	cmp	cl, 10
	cmovne	rdx, rax
	mov	eax, dword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+232]
	mov	qword ptr [rsp + 272], rax      # 8-byte Spill
	lea	eax, [rax - 1]
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+168]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+160]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+184]
	mov	qword ptr [rsp + 992], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+176]
	mov	qword ptr [rsp + 976], rax      # 8-byte Spill
	mov	eax, dword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+228]
	mov	dword ptr [rsp + 960], eax      # 4-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+200]
	mov	qword ptr [rsp + 928], rax      # 8-byte Spill
	mov	eax, dword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+224]
	mov	rcx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+192]
	mov	qword ptr [rsp + 896], rcx      # 8-byte Spill
	mov	rcx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+208]
	mov	qword ptr [rsp + 880], rcx      # 8-byte Spill
	mov	rcx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+216]
	mov	qword ptr [rsp + 912], rcx      # 8-byte Spill
	mov	qword ptr [rsp + 592], rax      # 8-byte Spill
	add	rdx, rax
	mov	qword ptr [rsp + 944], rdx      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+336]
	mov	qword ptr [rsp + 864], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+328]
	mov	qword ptr [rsp + 576], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+352]
	mov	qword ptr [rsp + 1248], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+344]
	mov	qword ptr [rsp + 560], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+368]
	mov	qword ptr [rsp + 1240], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+360]
	mov	qword ptr [rsp + 544], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+416]
	mov	qword ptr [rsp + 1232], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+408]
	mov	qword ptr [rsp + 528], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+432]
	mov	qword ptr [rsp + 1224], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+424]
	mov	qword ptr [rsp + 304], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+400]
	mov	qword ptr [rsp + 1216], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+392]
	mov	qword ptr [rsp + 712], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+448]
	mov	qword ptr [rsp + 1208], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+440]
	mov	qword ptr [rsp + 704], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+464]
	mov	qword ptr [rsp + 1200], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+456]
	mov	qword ptr [rsp + 696], rax      # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+376]
	mov	qword ptr [rsp + 1280], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+384]
	mov	qword ptr [rsp + 1272], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+472]
	mov	qword ptr [rsp + 1264], rax     # 8-byte Spill
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+480]
	mov	qword ptr [rsp + 1256], rax     # 8-byte Spill
.LBB47_298:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_301 Depth 2
                                        #     Child Loop BB47_314 Depth 2
	movups	xmm0, xmmword ptr [rsp + 1904]
	movdqu	xmm1, xmmword ptr [rsp + 1920]
	movups	xmm2, xmmword ptr [rsp + 1936]
	movaps	xmmword ptr [rsp + 352], xmm2
	movdqa	xmmword ptr [rsp + 336], xmm1
	movaps	xmmword ptr [rsp + 320], xmm0
	mov	ecx, 144
	lea	rdi, [rsp + 720]
	lea	rsi, [rsp + 1952]
	rep movsb es:[rdi], [rsi]
	cmp	byte ptr [rsp + 80], 10         # 1-byte Folded Reload
	je	.LBB47_328
# %bb.299:                              #   in Loop: Header=BB47_298 Depth=1
	cmp	dword ptr [rsp + 272], 0        # 4-byte Folded Reload
	je	.LBB47_328
# %bb.300:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rbx, qword ptr [rsp + 320]
	mov	rcx, qword ptr [rsp + 328]
	mov	rdx, rcx
	shr	rdx, 32
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	and	edx, eax
	or	rdx, 1
	mov	esi, eax
	mov	rax, rcx
.LBB47_301:                             #   Parent Loop BB47_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	eax, dword ptr [rsp + 112]      # 4-byte Folded Reload
	lea	rdi, [8*rax]
	mov	r8, qword ptr [rsp + 40]        # 8-byte Reload
	sub	r8, rdi
	jb	.LBB47_328
# %bb.302:                              #   in Loop: Header=BB47_301 Depth=2
	cmp	r8, 8
	jb	.LBB47_328
# %bb.303:                              #   in Loop: Header=BB47_301 Depth=2
	mov	r11, qword ptr [rsp + 16]       # 8-byte Reload
	movzx	r8d, byte ptr [r11 + rdi + 7]
	movzx	r9d, word ptr [r11 + rdi + 4]
	movzx	r10d, byte ptr [r11 + rdi + 6]
	shl	r10d, 16
	or	r10d, r9d
	mov	edi, dword ptr [r11 + rdi]
	shl	r10, 40
	shl	rdi, 8
	or	rdi, r10
	shrd	rdi, r8, 8
	cmp	rdi, rcx
	je	.LBB47_306
# %bb.304:                              #   in Loop: Header=BB47_301 Depth=2
	sub	esi, 1
	setb	r8b
	test	rdi, rdi
	je	.LBB47_328
# %bb.305:                              #   in Loop: Header=BB47_301 Depth=2
	add	rax, rdx
	test	r8b, r8b
	je	.LBB47_301
	jmp	.LBB47_328
.LBB47_306:                             #   in Loop: Header=BB47_298 Depth=1
	shl	rax, 2
	mov	rcx, qword ptr [rsp + 992]      # 8-byte Reload
	sub	rcx, rax
	setae	dl
	cmp	rcx, 4
	setae	cl
	and	cl, dl
	cmp	cl, 1
	jne	.LBB47_328
# %bb.307:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rcx, qword ptr [rsp + 976]      # 8-byte Reload
	mov	eax, dword ptr [rcx + rax]
	test	eax, eax
	je	.LBB47_328
# %bb.308:                              #   in Loop: Header=BB47_298 Depth=1
	dec	eax
	cmp	eax, dword ptr [rsp + 960]      # 4-byte Folded Reload
	jae	.LBB47_328
# %bb.309:                              #   in Loop: Header=BB47_298 Depth=1
	mov	eax, eax
	imul	rax, qword ptr [rsp + 592]      # 8-byte Folded Reload
	shl	rax, 2
	mov	rcx, qword ptr [rsp + 928]      # 8-byte Reload
	sub	rcx, rax
	jb	.LBB47_328
# %bb.310:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rdx, qword ptr [rsp + 912]      # 8-byte Reload
	sub	rdx, rax
	jb	.LBB47_328
# %bb.311:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rsi, qword ptr [rsp + 592]      # 8-byte Reload
	cmp	esi, 9
	jae	.LBB47_585
# %bb.312:                              #   in Loop: Header=BB47_298 Depth=1
	test	rsi, rsi
	je	.LBB47_393
# %bb.313:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rsi, qword ptr [rsp + 896]      # 8-byte Reload
	add	rsi, rax
	add	rax, qword ptr [rsp + 880]      # 8-byte Folded Reload
	xor	edi, edi
	xor	r11d, r11d
	xor	r10d, r10d
	xor	r13d, r13d
	xor	r12d, r12d
	xor	r15d, r15d
	mov	dword ptr [rsp + 8], 0          # 4-byte Folded Spill
	mov	dword ptr [rsp + 144], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp + 128], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp], 0              # 4-byte Folded Spill
	mov	dword ptr [rsp + 96], 0         # 4-byte Folded Spill
	mov	dword ptr [rsp + 176], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp + 160], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp + 208], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp + 240], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp + 224], 0        # 4-byte Folded Spill
	mov	dword ptr [rsp + 288], 0        # 4-byte Folded Spill
.LBB47_314:                             #   Parent Loop BB47_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmp	rcx, 4
	jb	.LBB47_326
# %bb.315:                              #   in Loop: Header=BB47_314 Depth=2
	cmp	rdx, 4
	jb	.LBB47_326
# %bb.316:                              #   in Loop: Header=BB47_314 Depth=2
	lea	r8, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	movzx	ebp, byte ptr [rdi + r8 + 152]
	mov	r8d, dword ptr [rsi + 4*rdi]
	mov	r9d, dword ptr [rax + 4*rdi]
	mov	ebp, ebp
	lea	r14, [rip + .LJTI47_0]
	movsxd	rbp, dword ptr [r14 + 4*rbp]
	add	rbp, r14
	jmp	rbp
.LBB47_317:                             #   in Loop: Header=BB47_314 Depth=2
	mov	r12d, r9d
	mov	r13d, r8d
	jmp	.LBB47_324
.LBB47_318:                             #   in Loop: Header=BB47_314 Depth=2
	mov	dword ptr [rsp + 8], r9d        # 4-byte Spill
	mov	r15d, r8d
	jmp	.LBB47_324
.LBB47_319:                             #   in Loop: Header=BB47_314 Depth=2
	mov	dword ptr [rsp + 288], r9d      # 4-byte Spill
	mov	dword ptr [rsp + 224], r8d      # 4-byte Spill
	jmp	.LBB47_324
.LBB47_320:                             #   in Loop: Header=BB47_314 Depth=2
	mov	dword ptr [rsp + 240], r9d      # 4-byte Spill
	mov	dword ptr [rsp + 208], r8d      # 4-byte Spill
	jmp	.LBB47_324
.LBB47_321:                             #   in Loop: Header=BB47_314 Depth=2
	mov	dword ptr [rsp + 128], r9d      # 4-byte Spill
	mov	dword ptr [rsp + 144], r8d      # 4-byte Spill
	jmp	.LBB47_324
.LBB47_322:                             #   in Loop: Header=BB47_314 Depth=2
	mov	dword ptr [rsp + 96], r9d       # 4-byte Spill
	mov	dword ptr [rsp], r8d            # 4-byte Spill
	jmp	.LBB47_324
.LBB47_323:                             #   in Loop: Header=BB47_314 Depth=2
	mov	dword ptr [rsp + 160], r9d      # 4-byte Spill
	mov	dword ptr [rsp + 176], r8d      # 4-byte Spill
.LBB47_324:                             #   in Loop: Header=BB47_314 Depth=2
	mov	r9d, r10d
	mov	r8d, r11d
.LBB47_325:                             #   in Loop: Header=BB47_314 Depth=2
	lea	r10, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE]
	lea	rbp, [rdi + r10]
	add	rbp, 153
	inc	rdi
	add	rcx, -4
	add	rdx, -4
	mov	r11d, r8d
	mov	r10d, r9d
	cmp	rbp, qword ptr [rsp + 944]      # 8-byte Folded Reload
	jne	.LBB47_314
	jmp	.LBB47_327
.LBB47_326:                             #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, r10d
	mov	r8d, r11d
.LBB47_327:                             #   in Loop: Header=BB47_298 Depth=1
	mov	eax, r8d
	mov	rcx, qword ptr [rsp + 864]      # 8-byte Reload
	sub	rcx, rax
	jae	.LBB47_398
.LBB47_328:                             #   in Loop: Header=BB47_298 Depth=1
	and	qword ptr [rsp + 384], 0
	mov	qword ptr [rsp + 392], 1
	and	qword ptr [rsp + 400], 0
	mov	r15, qword ptr [rsp + 336]
	test	r15, r15
	je	.LBB47_332
# %bb.329:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r14, qword ptr [rsp + 344]
	test	r14, r14
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	je	.LBB47_333
# %bb.330:                              #   in Loop: Header=BB47_298 Depth=1
.Ltmp258:
	lea	rdi, [rsp + 384]
	xor	esi, esi
	mov	rdx, r14
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp259:
# %bb.331:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r12, qword ptr [rsp + 392]
	mov	rbx, qword ptr [rsp + 400]
	jmp	.LBB47_334
.LBB47_332:                             #   in Loop: Header=BB47_298 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r12
	.cfi_adjust_cfa_offset -8
	xor	ebx, ebx
	jmp	.LBB47_335
.LBB47_333:                             #   in Loop: Header=BB47_298 Depth=1
	mov	r12, rcx
	xor	ebx, ebx
.LBB47_334:                             #   in Loop: Header=BB47_298 Depth=1
	lea	rdi, [r12 + rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	rbx, r14
	mov	qword ptr [rsp + 400], rbx
.LBB47_335:                             #   in Loop: Header=BB47_298 Depth=1
	mov	r15, qword ptr [rsp + 352]
	test	r15, r15
	je	.LBB47_358
# %bb.336:                              #   in Loop: Header=BB47_298 Depth=1
	xor	eax, eax
	test	rbx, rbx
	je	.LBB47_339
# %bb.337:                              #   in Loop: Header=BB47_298 Depth=1
	lea	rcx, [r12 + rbx]
	dec	rcx
	test	rcx, rcx
	je	.LBB47_339
# %bb.338:                              #   in Loop: Header=BB47_298 Depth=1
	cmp	byte ptr [rcx], 47
	setne	al
.LBB47_339:                             #   in Loop: Header=BB47_298 Depth=1
	mov	r13, qword ptr [rsp + 360]
	test	r13, r13
	je	.LBB47_342
# %bb.340:                              #   in Loop: Header=BB47_298 Depth=1
	cmp	byte ptr [r15], 47
	jne	.LBB47_342
# %bb.341:                              #   in Loop: Header=BB47_298 Depth=1
	xor	ebx, ebx
	jmp	.LBB47_345
.LBB47_342:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rcx, qword ptr [rsp + 384]
	test	al, al
	je	.LBB47_346
# %bb.343:                              #   in Loop: Header=BB47_298 Depth=1
	cmp	rcx, rbx
	je	.LBB47_425
.LBB47_344:                             #   in Loop: Header=BB47_298 Depth=1
	mov	byte ptr [r12 + rbx], 47
	inc	rbx
.LBB47_345:                             #   in Loop: Header=BB47_298 Depth=1
	mov	qword ptr [rsp + 400], rbx
	mov	rcx, qword ptr [rsp + 384]
.LBB47_346:                             #   in Loop: Header=BB47_298 Depth=1
	sub	rcx, rbx
	cmp	r13, rcx
	ja	.LBB47_418
# %bb.347:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rbp, qword ptr [rsp + 392]
.LBB47_348:                             #   in Loop: Header=BB47_298 Depth=1
	add	r12, rbx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	rbx, r13
	mov	qword ptr [rsp + 400], rbx
.Ltmp264:
	lea	rdi, [rsp + 1032]
	mov	rsi, rbp
	mov	rdx, rbx
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
.Ltmp265:
	lea	r12, [rsp + 1312]
# %bb.349:                              #   in Loop: Header=BB47_298 Depth=1
	cmp	dword ptr [rsp + 1032], 1
	jne	.LBB47_355
# %bb.350:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r15, qword ptr [rsp + 1040]
	mov	r14, qword ptr [rsp + 1048]
	mov	rbx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+600]
	cmp	rbx, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+584]
	jne	.LBB47_352
# %bb.351:                              #   in Loop: Header=BB47_298 Depth=1
.Ltmp266:
	lea	rdi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+584]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_
.Ltmp267:
.LBB47_352:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+592]
	mov	rcx, rbx
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	qword ptr [rax + rcx + 8], r14
	inc	rbx
	mov	qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+600], rbx
	je	.LBB47_514
# %bb.353:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+592]
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx - 16]
	mov	rdx, qword ptr [rax + rbx - 8]
.Ltmp269:
	mov	rdi, r12
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
.Ltmp270:
# %bb.354:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rcx, qword ptr [rsp + 1312]
	movabs	rax, -9223372036854775808
	cmp	rcx, rax
	jne	.LBB47_359
.LBB47_355:                             #   in Loop: Header=BB47_298 Depth=1
	cmp	qword ptr [rsp + 384], 0
	je	.LBB47_357
# %bb.356:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rdi, rbp
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_357:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [rsp + 320]
	lock		dec	qword ptr [rax]
	mov	r12d, 0
	je	.LBB47_379
	jmp	.LBB47_380
.LBB47_358:                             #   in Loop: Header=BB47_298 Depth=1
	xor	r12d, r12d
	jmp	.LBB47_375
.LBB47_359:                             #   in Loop: Header=BB47_298 Depth=1
	mov	qword ptr [rsp + 624], rcx      # 8-byte Spill
	mov	rax, qword ptr [rsp + 1320]
	mov	qword ptr [rsp + 608], rax      # 8-byte Spill
.Ltmp272:
	mov	rdi, r12
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.109]
	push	17
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
.Ltmp273:
# %bb.360:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	rcx, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	cmove	rcx, rdx
	mov	qword ptr [rsp + 224], rcx      # 8-byte Spill
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
.Ltmp274:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.111]
	push	15
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 144], rdx      # 8-byte Spill
.Ltmp275:
# %bb.361:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	rcx, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	cmove	rcx, rdx
	mov	qword ptr [rsp + 240], rcx      # 8-byte Spill
	mov	rcx, qword ptr [rsp + 144]      # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp + 144], rcx      # 8-byte Spill
.Ltmp276:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.112]
	push	15
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 128], rdx      # 8-byte Spill
.Ltmp277:
# %bb.362:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	rdx, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	rdx, rcx
	mov	qword ptr [rsp + 288], rdx      # 8-byte Spill
	mov	rcx, qword ptr [rsp + 128]      # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp + 128], rcx      # 8-byte Spill
.Ltmp278:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.115]
	push	18
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp], rdx            # 8-byte Spill
.Ltmp279:
# %bb.363:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	rdx, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	rdx, rcx
	mov	qword ptr [rsp + 672], rdx      # 8-byte Spill
	mov	rcx, qword ptr [rsp]            # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp], rcx            # 8-byte Spill
.Ltmp280:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.116]
	push	16
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 96], rdx       # 8-byte Spill
.Ltmp281:
# %bb.364:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	rdx, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	rdx, rcx
	mov	qword ptr [rsp + 656], rdx      # 8-byte Spill
	mov	rcx, qword ptr [rsp + 96]       # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
.Ltmp282:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.118]
	push	14
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 176], rdx      # 8-byte Spill
.Ltmp283:
# %bb.365:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	rdx, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	rdx, rcx
	mov	qword ptr [rsp + 640], rdx      # 8-byte Spill
	mov	rcx, qword ptr [rsp + 176]      # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp + 176], rcx      # 8-byte Spill
.Ltmp284:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.119]
	push	22
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 160], rdx      # 8-byte Spill
.Ltmp285:
# %bb.366:                              #   in Loop: Header=BB47_298 Depth=1
	test	rax, rax
	mov	r14, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	r14, rcx
	mov	rcx, qword ptr [rsp + 160]      # 8-byte Reload
	cmove	rcx, rax
	mov	qword ptr [rsp + 160], rcx      # 8-byte Spill
.Ltmp286:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.121]
	push	16
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
.Ltmp287:
# %bb.367:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rbx, rdx
	test	rax, rax
	mov	r12, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	r12, rcx
	cmove	rbx, rax
.Ltmp288:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.113]
	push	14
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
.Ltmp289:
# %bb.368:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rbp, rdx
	test	rax, rax
	mov	r13, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmove	r13, rcx
	cmove	rbp, rax
.Ltmp290:
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.114]
	push	19
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
	mov	qword ptr [rsp + 208], rdx      # 8-byte Spill
.Ltmp291:
# %bb.369:                              #   in Loop: Header=BB47_298 Depth=1
.Ltmp292:
	mov	r15, rax
	lea	rdi, [rsp + 1312]
	lea	rsi, [rip + _RNvNvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB7_5Cache11with_global14MAPPINGS_CACHE+560]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.117]
	push	19
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object7section
.Ltmp293:
# %bb.370:                              #   in Loop: Header=BB47_298 Depth=1
	test	r15, r15
	mov	rcx, qword ptr [rsp + 208]      # 8-byte Reload
	cmove	rcx, r15
	mov	qword ptr [rsp + 208], rcx      # 8-byte Spill
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rsi
	.cfi_adjust_cfa_offset -8
	cmove	r15, rsi
	test	rax, rax
	mov	rcx, rax
	cmove	rcx, rsi
	cmove	rdx, rax
	mov	rax, qword ptr [rsp + 320]
	mov	r8, qword ptr [rax + 32]
	mov	r9, qword ptr [rax + 40]
	mov	rsi, qword ptr [rax + 224]
	mov	rdi, qword ptr [rax + 232]
	mov	rax, qword ptr [rax + 256]
	test	rax, rax
	je	.LBB47_372
# %bb.371:                              #   in Loop: Header=BB47_298 Depth=1
	lock		inc	qword ptr [rax]
	jle	.LBB47_644
.LBB47_372:                             #   in Loop: Header=BB47_298 Depth=1
	mov	r10, qword ptr [rsp + 224]      # 8-byte Reload
	mov	qword ptr [rsp + 2528], r10
	mov	r10, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 2536], r10
	mov	qword ptr [rsp + 2544], r8
	mov	qword ptr [rsp + 2552], r9
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r8
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 2560], r8
	and	qword ptr [rsp + 2568], 0
	mov	r9, qword ptr [rsp + 240]       # 8-byte Reload
	mov	qword ptr [rsp + 2576], r9
	mov	r9, qword ptr [rsp + 144]       # 8-byte Reload
	mov	qword ptr [rsp + 2584], r9
	mov	r9, qword ptr [rsp + 288]       # 8-byte Reload
	mov	qword ptr [rsp + 2592], r9
	mov	r9, qword ptr [rsp + 128]       # 8-byte Reload
	mov	qword ptr [rsp + 2600], r9
	mov	qword ptr [rsp + 2608], r8
	and	qword ptr [rsp + 2616], 0
	mov	r9, qword ptr [rsp + 672]       # 8-byte Reload
	mov	qword ptr [rsp + 2624], r9
	mov	r9, qword ptr [rsp]             # 8-byte Reload
	mov	qword ptr [rsp + 2632], r9
	mov	r9, qword ptr [rsp + 656]       # 8-byte Reload
	mov	qword ptr [rsp + 2640], r9
	mov	r9, qword ptr [rsp + 96]        # 8-byte Reload
	mov	qword ptr [rsp + 2648], r9
	mov	r9, qword ptr [rsp + 640]       # 8-byte Reload
	mov	qword ptr [rsp + 2656], r9
	mov	r9, qword ptr [rsp + 176]       # 8-byte Reload
	mov	qword ptr [rsp + 2664], r9
	mov	qword ptr [rsp + 2672], r14
	mov	r9, qword ptr [rsp + 160]       # 8-byte Reload
	mov	qword ptr [rsp + 2680], r9
	mov	qword ptr [rsp + 2688], r12
	mov	qword ptr [rsp + 2696], rbx
	mov	qword ptr [rsp + 2704], r13
	mov	qword ptr [rsp + 2712], rbp
	mov	qword ptr [rsp + 2720], r15
	mov	r9, qword ptr [rsp + 208]       # 8-byte Reload
	mov	qword ptr [rsp + 2728], r9
	mov	qword ptr [rsp + 2736], rsi
	mov	qword ptr [rsp + 2744], rdi
	mov	qword ptr [rsp + 2752], rcx
	mov	qword ptr [rsp + 2760], rdx
	mov	qword ptr [rsp + 2768], rax
	and	qword ptr [rsp + 2776], 0
	and	qword ptr [rsp + 2792], 0
	mov	byte ptr [rsp + 2800], 1
	mov	qword ptr [rsp + 2512], r8
	mov	qword ptr [rsp + 2520], r8
	mov	edi, 296
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB47_516
# %bb.373:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r12, rax
	mov	ecx, 296
	mov	rdi, rax
	lea	rsi, [rsp + 2512]
	rep movsb es:[rdi], [rsi]
	cmp	qword ptr [rsp + 624], 0        # 8-byte Folded Reload
	je	.LBB47_375
# %bb.374:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rdi, qword ptr [rsp + 608]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_375:                             #   in Loop: Header=BB47_298 Depth=1
	cmp	qword ptr [rsp + 384], 0
	je	.LBB47_377
# %bb.376:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rdi, qword ptr [rsp + 392]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_377:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rbx, qword ptr [rsp + 320]
.LBB47_378:                             #   in Loop: Header=BB47_298 Depth=1
	lock		dec	qword ptr [rbx]
	jne	.LBB47_380
.LBB47_379:                             #   in Loop: Header=BB47_298 Depth=1
	#MEMBARRIER
.Ltmp307:
	lea	rdi, [rsp + 320]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp308:
.LBB47_380:                             #   in Loop: Header=BB47_298 Depth=1
	movups	xmm0, xmmword ptr [rsp + 720]
	movdqu	xmm1, xmmword ptr [rsp + 736]
	movdqa	xmmword ptr [rsp + 64], xmm1
	movaps	xmmword ptr [rsp + 48], xmm0
	mov	r14, qword ptr [rsp + 64]
	lea	rax, [rsp + 72]
	mov	qword ptr [rsp + 1288], rax
	mov	qword ptr [rsp + 1296], r12
	mov	al, byte ptr [r14 + 536]
	cmp	al, 83
	je	.LBB47_414
# %bb.381:                              #   in Loop: Header=BB47_298 Depth=1
	test	r12, r12
	je	.LBB47_385
# %bb.382:                              #   in Loop: Header=BB47_298 Depth=1
	lock		dec	qword ptr [r12]
	jne	.LBB47_384
# %bb.383:                              #   in Loop: Header=BB47_298 Depth=1
	#MEMBARRIER
.Ltmp309:
	lea	rdi, [rsp + 1296]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp310:
.LBB47_384:                             #   in Loop: Header=BB47_298 Depth=1
	mov	al, byte ptr [r14 + 536]
.LBB47_385:                             #   in Loop: Header=BB47_298 Depth=1
	cmp	al, 82
	jne	.LBB47_388
# %bb.386:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [r14 + 544]
	test	rax, rax
	je	.LBB47_389
# %bb.387:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rcx, qword ptr [rax + 448]
	add	rcx, 16
	mov	dl, 2
	jmp	.LBB47_390
.LBB47_388:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rcx, qword ptr [r14 + 536]
	mov	rax, qword ptr [r14 + 544]
	mov	dl, 3
	jmp	.LBB47_390
.LBB47_389:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [rsp + 48]
	mov	rcx, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rcx]
	add	rcx, 16
	xor	edx, edx
.LBB47_390:                             #   in Loop: Header=BB47_298 Depth=1
	mov	byte ptr [rsp + 2512], dl
	mov	qword ptr [rsp + 2520], rcx
	mov	qword ptr [rsp + 2528], rax
.Ltmp336:
	lea	rdi, [rsp + 1040]
	lea	rsi, [rsp + 752]
	lea	rdx, [rsp + 2512]
	call	_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std
.Ltmp337:
# %bb.391:                              #   in Loop: Header=BB47_298 Depth=1
	and	qword ptr [rsp + 1032], 0
	push	88
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	lea	rdx, [rsp + 1312]
	mov	rdi, rdx
	lea	rsi, [rsp + 776]
	rep movsb es:[rdi], [rsi]
.Ltmp338:
	lea	rdi, [rsp + 2512]
	lea	rsi, [rsp + 1032]
	call	_RNvMs2_NtCsfwdNdOnv07X_9addr2line6lookupINtB5_13LoopingLookupINtNtCsfQL5qMWGko6_4core6result6ResultINtNtB7_5frame9FrameIterINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEINtB5_12MappedLookupIBY_TINtNtB12_6option6OptionRINtNtB7_8function8FunctionB1X_EEIB45_NtB1C_8LocationEEB3s_EINtB5_12SimpleLookupIBY_TNtB7_9DebugFileINtNtB22_5dwarf7UnitRefB1X_EEB3s_EB1X_NCNvMNtB7_4unitINtB6K_7ResUnitB1X_E14dwarf_and_units4_0ENCNvB6J_25find_function_or_location0ENCNvMs_B7_INtB7_7ContextB1X_E11find_frames0E10new_lookupCs3bNtqN8jaZB_3std
.Ltmp339:
# %bb.392:                              #   in Loop: Header=BB47_298 Depth=1
	mov	ecx, 192
	lea	rdi, [rsp + 1904]
	lea	rsi, [rsp + 2512]
	rep movsb es:[rdi], [rsi]
	cmp	byte ptr [rsp + 2088], 2
	jne	.LBB47_298
	jmp	.LBB47_278
.LBB47_393:                             #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [rsp + 696]      # 8-byte Reload
	mov	qword ptr [rsp + 160], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 704]      # 8-byte Reload
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	rax, qword ptr [rsp + 712]      # 8-byte Reload
	mov	qword ptr [rsp], rax            # 8-byte Spill
	mov	rax, qword ptr [rsp + 304]      # 8-byte Reload
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	mov	r11, qword ptr [rsp + 528]      # 8-byte Reload
	mov	r9, qword ptr [rsp + 544]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 560]      # 8-byte Reload
	mov	rax, qword ptr [rsp + 576]      # 8-byte Reload
	xor	edx, edx
	mov	qword ptr [rsp + 208], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 176], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 128], 0        # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	xor	edi, edi
	xor	r8d, r8d
	xor	esi, esi
.LBB47_394:                             #   in Loop: Header=BB47_298 Depth=1
	mov	r15, qword ptr [rbx + 32]
	mov	r13, qword ptr [rbx + 40]
	mov	r14, qword ptr [rbx + 224]
	mov	r12, qword ptr [rbx + 232]
	mov	r10, qword ptr [rbx + 256]
	test	r10, r10
	je	.LBB47_396
# %bb.395:                              #   in Loop: Header=BB47_298 Depth=1
	lock		inc	qword ptr [r10]
	jle	.LBB47_644
.LBB47_396:                             #   in Loop: Header=BB47_298 Depth=1
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rbp
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 2512], rbp
	mov	qword ptr [rsp + 2520], rbp
	mov	qword ptr [rsp + 2528], rax
	mov	qword ptr [rsp + 2536], rsi
	mov	qword ptr [rsp + 2544], r15
	mov	qword ptr [rsp + 2552], r13
	mov	rax, qword ptr [rsp + 1264]     # 8-byte Reload
	mov	qword ptr [rsp + 2560], rax
	mov	rsi, qword ptr [rsp + 1256]     # 8-byte Reload
	mov	qword ptr [rsp + 2568], rsi
	mov	qword ptr [rsp + 2576], rcx
	mov	qword ptr [rsp + 2584], r8
	mov	qword ptr [rsp + 2592], r9
	mov	qword ptr [rsp + 2600], rdi
	mov	qword ptr [rsp + 2608], rax
	mov	qword ptr [rsp + 2616], rsi
	mov	qword ptr [rsp + 2624], rax
	mov	qword ptr [rsp + 2632], rsi
	mov	qword ptr [rsp + 2640], rax
	mov	qword ptr [rsp + 2648], rsi
	mov	rax, qword ptr [rsp + 1280]     # 8-byte Reload
	mov	qword ptr [rsp + 2656], rax
	mov	rax, qword ptr [rsp + 1272]     # 8-byte Reload
	mov	qword ptr [rsp + 2664], rax
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	qword ptr [rsp + 2672], rax
	mov	rax, qword ptr [rsp + 176]      # 8-byte Reload
	mov	qword ptr [rsp + 2680], rax
	mov	rax, qword ptr [rsp + 160]      # 8-byte Reload
	mov	qword ptr [rsp + 2688], rax
	mov	qword ptr [rsp + 2696], rdx
	mov	qword ptr [rsp + 2704], r11
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 2712], rax
	mov	rax, qword ptr [rsp + 144]      # 8-byte Reload
	mov	qword ptr [rsp + 2720], rax
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	mov	qword ptr [rsp + 2728], rax
	mov	qword ptr [rsp + 2736], r14
	mov	qword ptr [rsp + 2744], r12
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	mov	qword ptr [rsp + 2752], rax
	mov	rax, qword ptr [rsp + 208]      # 8-byte Reload
	mov	qword ptr [rsp + 2760], rax
	mov	qword ptr [rsp + 2768], r10
	and	qword ptr [rsp + 2776], 0
	and	qword ptr [rsp + 2792], 0
	mov	byte ptr [rsp + 2800], 1
	mov	edi, 296
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB47_615
# %bb.397:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r12, rax
	mov	ecx, 296
	mov	rdi, rax
	lea	rsi, [rsp + 2512]
	rep movsb es:[rdi], [rsi]
	jmp	.LBB47_378
.LBB47_398:                             #   in Loop: Header=BB47_298 Depth=1
	mov	esi, r9d
	cmp	rcx, rsi
	jb	.LBB47_328
# %bb.399:                              #   in Loop: Header=BB47_298 Depth=1
	mov	ecx, r13d
	mov	rdx, qword ptr [rsp + 1248]     # 8-byte Reload
	sub	rdx, rcx
	jb	.LBB47_328
# %bb.400:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r8d, r12d
	cmp	rdx, r8
	jb	.LBB47_328
# %bb.401:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r15d, r15d
	mov	rdx, qword ptr [rsp + 1240]     # 8-byte Reload
	sub	rdx, r15
	jb	.LBB47_328
# %bb.402:                              #   in Loop: Header=BB47_298 Depth=1
	mov	edi, dword ptr [rsp + 8]        # 4-byte Reload
	cmp	rdx, rdi
	jb	.LBB47_328
# %bb.403:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r11d, dword ptr [rsp + 144]     # 4-byte Reload
	mov	rdx, qword ptr [rsp + 1232]     # 8-byte Reload
	sub	rdx, r11
	jb	.LBB47_328
# %bb.404:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp + 128]      # 4-byte Reload
	mov	qword ptr [rsp + 8], r9         # 8-byte Spill
	cmp	rdx, r9
	jb	.LBB47_328
# %bb.405:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp]            # 4-byte Reload
	mov	rdx, qword ptr [rsp + 1224]     # 8-byte Reload
	mov	qword ptr [rsp + 144], r9       # 8-byte Spill
	sub	rdx, r9
	jb	.LBB47_328
# %bb.406:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp + 96]       # 4-byte Reload
	mov	qword ptr [rsp + 128], r9       # 8-byte Spill
	cmp	rdx, r9
	jb	.LBB47_328
# %bb.407:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp + 176]      # 4-byte Reload
	mov	rdx, qword ptr [rsp + 1216]     # 8-byte Reload
	mov	qword ptr [rsp], r9             # 8-byte Spill
	sub	rdx, r9
	jb	.LBB47_328
# %bb.408:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp + 160]      # 4-byte Reload
	mov	qword ptr [rsp + 176], r9       # 8-byte Spill
	cmp	rdx, r9
	jb	.LBB47_328
# %bb.409:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp + 208]      # 4-byte Reload
	mov	rdx, qword ptr [rsp + 1208]     # 8-byte Reload
	mov	qword ptr [rsp + 96], r9        # 8-byte Spill
	sub	rdx, r9
	jb	.LBB47_328
# %bb.410:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9d, dword ptr [rsp + 240]      # 4-byte Reload
	mov	r14d, dword ptr [rsp + 224]     # 4-byte Reload
	mov	r10, qword ptr [rsp + 1200]     # 8-byte Reload
	mov	qword ptr [rsp + 160], r14      # 8-byte Spill
	sub	r10, r14
	setb	r14b
	mov	qword ptr [rsp + 208], r9       # 8-byte Spill
	cmp	rdx, r9
	jb	.LBB47_328
# %bb.411:                              #   in Loop: Header=BB47_298 Depth=1
	test	r14b, r14b
	jne	.LBB47_328
# %bb.412:                              #   in Loop: Header=BB47_298 Depth=1
	mov	edx, dword ptr [rsp + 288]      # 4-byte Reload
	cmp	r10, rdx
	jb	.LBB47_328
# %bb.413:                              #   in Loop: Header=BB47_298 Depth=1
	add	rax, qword ptr [rsp + 576]      # 8-byte Folded Reload
	add	rcx, qword ptr [rsp + 560]      # 8-byte Folded Reload
	add	r15, qword ptr [rsp + 544]      # 8-byte Folded Reload
	mov	r9, r15
	add	r11, qword ptr [rsp + 528]      # 8-byte Folded Reload
	mov	r10, qword ptr [rsp + 144]      # 8-byte Reload
	add	r10, qword ptr [rsp + 304]      # 8-byte Folded Reload
	mov	qword ptr [rsp + 144], r10      # 8-byte Spill
	mov	r10, qword ptr [rsp]            # 8-byte Reload
	add	r10, qword ptr [rsp + 712]      # 8-byte Folded Reload
	mov	qword ptr [rsp], r10            # 8-byte Spill
	mov	r10, qword ptr [rsp + 96]       # 8-byte Reload
	add	r10, qword ptr [rsp + 704]      # 8-byte Folded Reload
	mov	qword ptr [rsp + 96], r10       # 8-byte Spill
	mov	r10, qword ptr [rsp + 160]      # 8-byte Reload
	add	r10, qword ptr [rsp + 696]      # 8-byte Folded Reload
	mov	qword ptr [rsp + 160], r10      # 8-byte Spill
	jmp	.LBB47_394
.LBB47_414:                             #   in Loop: Header=BB47_298 Depth=1
	test	r12, r12
	je	.LBB47_420
# %bb.415:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r15, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 1008], r12
	movups	xmm0, xmmword ptr [r12 + 64]
	movups	xmmword ptr [rsp + 2488], xmm0
	and	qword ptr [rsp + 2504], 0
	lea	rdi, [rsp + 2512]
	lea	rsi, [rsp + 2488]
	call	_RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 2512]
	mov	bpl, byte ptr [rsp + 2520]
	lea	rdx, [rsp + 2521]
	mov	ecx, dword ptr [rdx]
	mov	edx, dword ptr [rdx + 3]
	mov	dword ptr [rsp + 256], ecx
	mov	dword ptr [rsp + 259], edx
	mov	rbx, qword ptr [rsp + 2528]
	cmp	rax, 3
	jne	.LBB47_421
# %bb.416:                              #   in Loop: Header=BB47_298 Depth=1
	mov	eax, dword ptr [rsp + 256]
	mov	ecx, dword ptr [rsp + 259]
.LBB47_417:                             #   in Loop: Header=BB47_298 Depth=1
	mov	dword ptr [rsp + 2512], eax
	mov	dword ptr [rsp + 2515], ecx
	jmp	.LBB47_423
.LBB47_418:                             #   in Loop: Header=BB47_298 Depth=1
.Ltmp262:
	lea	rdi, [rsp + 384]
	mov	rsi, rbx
	mov	rdx, r13
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp263:
# %bb.419:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rbp, qword ptr [rsp + 392]
	mov	rbx, qword ptr [rsp + 400]
	mov	r12, rbp
	jmp	.LBB47_348
.LBB47_420:                             #   in Loop: Header=BB47_298 Depth=1
	mov	bpl, 82
	xor	ebx, ebx
	jmp	.LBB47_434
.LBB47_421:                             #   in Loop: Header=BB47_298 Depth=1
	lea	rdx, [rsp + 2521]
	mov	rcx, qword ptr [rdx + 63]
	mov	qword ptr [rsp + 1184], rcx
	movups	xmm0, xmmword ptr [rdx + 15]
	movdqu	xmm1, xmmword ptr [rdx + 31]
	movups	xmm2, xmmword ptr [rdx + 47]
	movaps	xmmword ptr [rsp + 1168], xmm2
	movdqa	xmmword ptr [rsp + 1152], xmm1
	movaps	xmmword ptr [rsp + 1136], xmm0
	cmp	eax, 2
	jne	.LBB47_427
# %bb.422:                              #   in Loop: Header=BB47_298 Depth=1
	mov	bpl, 82
	xor	ebx, ebx
.LBB47_423:                             #   in Loop: Header=BB47_298 Depth=1
	lock		dec	qword ptr [r12]
	jne	.LBB47_434
# %bb.424:                              #   in Loop: Header=BB47_298 Depth=1
	#MEMBARRIER
.Ltmp329:
	lea	rdi, [rsp + 1008]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp330:
	jmp	.LBB47_434
.LBB47_425:                             #   in Loop: Header=BB47_298 Depth=1
.Ltmp260:
	lea	rdi, [rsp + 384]
	mov	rsi, rbx
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rdx, rcx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp261:
# %bb.426:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r12, qword ptr [rsp + 392]
	mov	rbx, qword ptr [rsp + 400]
	jmp	.LBB47_344
.LBB47_427:                             #   in Loop: Header=BB47_298 Depth=1
	mov	qword ptr [rsp + 384], rax
	mov	byte ptr [rsp + 392], bpl
	mov	eax, dword ptr [rsp + 256]
	mov	ecx, dword ptr [rsp + 259]
	lea	rdx, [rsp + 393]
	mov	dword ptr [rdx + 3], ecx
	mov	dword ptr [rdx], eax
	mov	qword ptr [rsp + 400], rbx
	mov	rax, qword ptr [rsp + 1184]
	mov	qword ptr [rdx + 63], rax
	movaps	xmm0, xmmword ptr [rsp + 1136]
	movdqa	xmm1, xmmword ptr [rsp + 1152]
	movaps	xmm2, xmmword ptr [rsp + 1168]
	movups	xmmword ptr [rdx + 47], xmm2
	movdqu	xmmword ptr [rdx + 31], xmm1
	movups	xmmword ptr [rdx + 15], xmm0
	lea	rsi, [r12 + 16]
.Ltmp311:
	lea	rdi, [rsp + 2512]
	lea	rdx, [rsp + 384]
	call	_RNvMs4_NtNtCsktQxXQGZjIy_5gimli4read5dwarfINtB5_4UnitINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE3newCs3bNtqN8jaZB_3std
.Ltmp312:
# %bb.428:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rax, qword ptr [rsp + 2512]
	mov	bpl, byte ptr [rsp + 2520]
	lea	rdx, [rsp + 2521]
	mov	ecx, dword ptr [rdx]
	mov	edx, dword ptr [rdx + 3]
	mov	dword ptr [rsp + 264], ecx
	mov	dword ptr [rsp + 267], edx
	mov	rbx, qword ptr [rsp + 2528]
	cmp	rax, 2
	jne	.LBB47_430
# %bb.429:                              #   in Loop: Header=BB47_298 Depth=1
	mov	eax, dword ptr [rsp + 264]
	mov	ecx, dword ptr [rsp + 267]
	jmp	.LBB47_417
.LBB47_430:                             #   in Loop: Header=BB47_298 Depth=1
	lea	rdx, [rsp + 2521]
	movzx	ecx, word ptr [rdx + 63]
	mov	word ptr [rsp + 512], cx
	movups	xmm0, xmmword ptr [rdx + 15]
	movups	xmm1, xmmword ptr [rdx + 31]
	movups	xmm2, xmmword ptr [rdx + 47]
	movaps	xmmword ptr [rsp + 496], xmm2
	movaps	xmmword ptr [rsp + 480], xmm1
	movaps	xmmword ptr [rsp + 464], xmm0
	movzx	r10d, word ptr [rsp + 2586]
	mov	ecx, 332
	lea	rdi, [rsp + 1312]
	lea	rsi, [rsp + 2588]
	rep movsb es:[rdi], [rsi]
	mov	r8, qword ptr [rsp + 2928]
	mov	rdx, qword ptr [rsp + 2944]
	mov	r9, qword ptr [rsp + 2952]
	mov	ecx, dword ptr [rsp + 264]
	mov	esi, dword ptr [rsp + 267]
	mov	dword ptr [rsp + 312], ecx
	mov	dword ptr [rsp + 315], esi
	mov	r13, qword ptr [r15 + 408]
	mov	r11, qword ptr [r15 + 424]
	cmp	r10w, 4
	ja	.LBB47_432
# %bb.431:                              #   in Loop: Header=BB47_298 Depth=1
	mov	r9, qword ptr [r15 + 440]
.LBB47_432:                             #   in Loop: Header=BB47_298 Depth=1
	mov	qword ptr [rsp + 2960], r12
	mov	qword ptr [rsp + 2512], rax
	mov	byte ptr [rsp + 2520], bpl
	mov	eax, dword ptr [rsp + 312]
	mov	ecx, dword ptr [rsp + 315]
	lea	rsi, [rsp + 2521]
	mov	dword ptr [rsi + 3], ecx
	mov	dword ptr [rsi], eax
	mov	qword ptr [rsp + 2528], rbx
	movzx	eax, word ptr [rsp + 512]
	mov	word ptr [rsi + 63], ax
	movaps	xmm0, xmmword ptr [rsp + 464]
	movdqa	xmm1, xmmword ptr [rsp + 480]
	movaps	xmm2, xmmword ptr [rsp + 496]
	movups	xmmword ptr [rsi + 47], xmm2
	movdqu	xmmword ptr [rsi + 31], xmm1
	movups	xmmword ptr [rsi + 15], xmm0
	mov	word ptr [rsp + 2586], r10w
	mov	ecx, 332
	lea	rdi, [rsp + 2588]
	lea	rsi, [rsp + 1312]
	rep movsb es:[rdi], [rsi]
	mov	qword ptr [rsp + 2920], r13
	mov	qword ptr [rsp + 2928], r8
	mov	qword ptr [rsp + 2936], r11
	mov	qword ptr [rsp + 2944], rdx
	mov	qword ptr [rsp + 2952], r9
	mov	edi, 456
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB47_647
# %bb.433:                              #   in Loop: Header=BB47_298 Depth=1
	mov	rbx, rax
	mov	ecx, 456
	mov	rdi, rax
	lea	rsi, [rsp + 2512]
	rep movsb es:[rdi], [rsi]
	mov	bpl, 82
.LBB47_434:                             #   in Loop: Header=BB47_298 Depth=1
	cmp	byte ptr [r14 + 536], 83
	jne	.LBB47_436
# %bb.435:                              #   in Loop: Header=BB47_298 Depth=1
	mov	byte ptr [r14 + 536], bpl
	mov	eax, dword ptr [rsp + 2512]
	mov	ecx, dword ptr [rsp + 2515]
	mov	dword ptr [r14 + 537], eax
	mov	dword ptr [r14 + 540], ecx
	mov	qword ptr [r14 + 544], rbx
	jmp	.LBB47_384
.LBB47_436:                             #   in Loop: Header=BB47_298 Depth=1
	cmp	bpl, 83
	je	.LBB47_384
# %bb.437:
.Ltmp331:
	movzx	edi, bpl
	mov	rsi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std
.Ltmp332:
# %bb.438:
.Ltmp333:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.0]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.2]
	push	29
	.cfi_adjust_cfa_offset 8
	pop	rsi
	.cfi_adjust_cfa_offset -8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp334:
# %bb.439:
.LBB47_440:
	xor	eax, eax
                                        # implicit-def: $rcx
.LBB47_441:
	add	qword ptr [rsp + 128], -8       # 8-byte Folded Spill
	mov	rdx, qword ptr [rsp + 112]      # 8-byte Reload
	mov	dl, bl
	mov	qword ptr [rsp + 112], rdx      # 8-byte Spill
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	dl, r14b
	mov	qword ptr [rsp + 40], rdx       # 8-byte Spill
	mov	rbx, qword ptr [r12 + 24]
	test	rbx, rbx
	je	.LBB47_449
# %bb.442:
	mov	r14, qword ptr [rsp + 80]       # 8-byte Reload
	mov	r12, qword ptr [r12 + 32]
	mov	r13, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	jmp	.LBB47_454
.LBB47_443:
	movups	xmm0, xmmword ptr [rsp + 2520]
	movaps	xmmword ptr [rsp + 608], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2536]
	movaps	xmmword ptr [rsp + 992], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2552]
	movaps	xmmword ptr [rsp + 976], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2568]
	movaps	xmmword ptr [rsp + 960], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2584]
	movaps	xmmword ptr [rsp + 944], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2600]
	movaps	xmmword ptr [rsp + 592], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2616]
	movaps	xmmword ptr [rsp + 928], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2632]
	movaps	xmmword ptr [rsp + 912], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2648]
	movaps	xmmword ptr [rsp + 896], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2664]
	movaps	xmmword ptr [rsp + 880], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2680]
	movaps	xmmword ptr [rsp + 864], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2696]
	movaps	xmmword ptr [rsp + 576], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2712]
	movaps	xmmword ptr [rsp + 560], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2728]
	movaps	xmmword ptr [rsp + 544], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2744]
	movaps	xmmword ptr [rsp + 528], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 3072]
	movaps	xmmword ptr [rsp + 496], xmm0
	movups	xmm0, xmmword ptr [rsp + 3056]
	movaps	xmmword ptr [rsp + 480], xmm0
	movups	xmm0, xmmword ptr [rsp + 3040]
	movaps	xmmword ptr [rsp + 464], xmm0
	movups	xmm0, xmmword ptr [rsp + 2760]
	movaps	xmmword ptr [rsp + 112], xmm0   # 16-byte Spill
	mov	r15, qword ptr [rsp + 2776]
	mov	rbp, qword ptr [rsp + 2784]
	mov	r14, qword ptr [rsp + 3032]
	movups	xmm0, xmmword ptr [rsp + 2792]
	movaps	xmmword ptr [rsp + 16], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2808]
	movaps	xmmword ptr [rsp + 80], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2824]
	movaps	xmmword ptr [rsp + 144], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2840]
	movaps	xmmword ptr [rsp + 128], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2856]
	movaps	xmmword ptr [rsp + 96], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2872]
	movaps	xmmword ptr [rsp + 176], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2888]
	movaps	xmmword ptr [rsp + 160], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2904]
	movaps	xmmword ptr [rsp + 272], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2920]
	movaps	xmmword ptr [rsp + 224], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2936]
	movaps	xmmword ptr [rsp + 240], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2952]
	movaps	xmmword ptr [rsp + 288], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2968]
	movaps	xmmword ptr [rsp + 672], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2984]
	movaps	xmmword ptr [rsp + 656], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 3000]
	movaps	xmmword ptr [rsp + 640], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 3016]
	movaps	xmmword ptr [rsp + 208], xmm0   # 16-byte Spill
.LBB47_444:
	cmp	qword ptr [rsp + 720], 0
	je	.LBB47_446
# %bb.445:
	mov	rdi, qword ptr [rsp + 728]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_446:
	movq	xmm0, rbp
	movq	xmm1, r15
	punpcklqdq	xmm1, xmm0              # xmm1 = xmm1[0],xmm0[0]
	movdqa	xmmword ptr [rsp + 624], xmm1   # 16-byte Spill
	movabs	rbp, -9223372036854775808
	mov	r15, qword ptr [rsp]            # 8-byte Reload
	jmp	.LBB47_136
.LBB47_447:
	mov	rbx, qword ptr [rdi + 40]
	test	rbx, rbx
	je	.LBB47_450
# %bb.448:
	mov	r12, qword ptr [rdi + 48]
	jmp	.LBB47_451
.LBB47_449:
	mov	r14, qword ptr [rsp + 80]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	jmp	.LBB47_285
.LBB47_450:
                                        # implicit-def: $r12
.LBB47_451:
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	je	.LBB47_453
# %bb.452:
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_453:
	push	3
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	r13, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r14, qword ptr [rsp + 80]       # 8-byte Reload
	test	rbx, rbx
	je	.LBB47_285
.LBB47_454:
	lea	rsi, [rsp + 2512]
	mov	qword ptr [rsi], rbp
	mov	qword ptr [rsi + 8], r15
	mov	qword ptr [rsi + 16], r14
	mov	qword ptr [rsi + 24], r13
	mov	rax, qword ptr [rsp + 200]      # 8-byte Reload
	mov	qword ptr [rsi + 32], rax
	mov	qword ptr [rsi + 40], rbx
	mov	qword ptr [rsi + 48], r12
.Ltmp346:
	mov	rdi, qword ptr [rsp + 376]      # 8-byte Reload
	call	_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_
.Ltmp347:
.LBB47_455:                             # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rsp + 112]      # 8-byte Reload
	lea	eax, [rcx - 3]
	cmp	ecx, 3
	push	2
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	cmovae	edx, eax
	mov	ecx, dword ptr [rsp + 40]       # 4-byte Reload
	cmp	edx, 1
	je	.LBB47_466
# %bb.456:                              #   in Loop: Header=BB47_455 Depth=1
	cmp	edx, 2
	jne	.LBB47_482
# %bb.457:                              #   in Loop: Header=BB47_455 Depth=1
	mov	eax, dword ptr [rsp + 112]      # 4-byte Reload
	mov	r15, qword ptr [rsp + 144]      # 8-byte Reload
	shl	r15, 32
	or	r15, rax
	mov	r14, qword ptr [rsp + 8]        # 8-byte Reload
	shl	r14, 32
	or	r14, rcx
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	cmp	qword ptr [rsp + 176], rax      # 8-byte Folded Reload
	je	.LBB47_474
# %bb.458:                              #   in Loop: Header=BB47_455 Depth=1
	mov	r12, qword ptr [rax - 8]
	mov	eax, dword ptr [r12 + 40]
	mov	ecx, dword ptr [r12 + 44]
	mov	qword ptr [rsp + 112], 0        # 8-byte Folded Spill
	test	eax, eax
	setne	bl
	mov	qword ptr [rsp + 40], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	test	ecx, ecx
	setne	bpl
	cmp	byte ptr [r12], 0
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	je	.LBB47_471
# %bb.459:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rax, qword ptr [rsp + 272]      # 8-byte Reload
	cmp	dword ptr [rax], 47
	je	.LBB47_471
# %bb.460:                              #   in Loop: Header=BB47_455 Depth=1
	mov	r13, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 224]      # 8-byte Reload
	cmp	byte ptr [rax], 0
	mov	rax, qword ptr [rsp + 240]      # 8-byte Reload
	je	.LBB47_481
.LBB47_461:                             #   in Loop: Header=BB47_455 Depth=1
	cmp	qword ptr [rax], 0
	jne	.LBB47_464
# %bb.462:                              #   in Loop: Header=BB47_455 Depth=1
	cmp	byte ptr [rax + 8], 82
	jne	.LBB47_489
# %bb.463:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rax, qword ptr [rax + 16]
.LBB47_464:                             #   in Loop: Header=BB47_455 Depth=1
	cmp	r13, qword ptr [rax + 8]
	jae	.LBB47_471
# %bb.465:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rcx, qword ptr [rax]
	imul	rdx, r13, 24
	mov	rax, qword ptr [rcx + rdx + 8]
	mov	rcx, qword ptr [rcx + rdx + 16]
	jmp	.LBB47_472
.LBB47_466:                             #   in Loop: Header=BB47_455 Depth=1
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	sete	dl
	mov	r15, qword ptr [rsp + 8]        # 8-byte Reload
	shl	r15, 32
	or	r15, rcx
	cmp	eax, 2
	setb	al
	or	al, dl
	jne	.LBB47_468
# %bb.467:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_468:                             #   in Loop: Header=BB47_455 Depth=1
	push	3
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
                                        # kill: def $eax killed $eax def $rax
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	push	2
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
                                        # kill: def $eax killed $eax def $rax
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	r12, qword ptr [rsp + 96]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r14, qword ptr [rsp + 80]       # 8-byte Reload
.LBB47_469:                             #   in Loop: Header=BB47_455 Depth=1
.Ltmp352:
	mov	rdi, qword ptr [rsp + 200]      # 8-byte Reload
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab
.Ltmp353:
# %bb.470:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rbx, rax
	mov	rbp, rdx
	jmp	.LBB47_479
.LBB47_471:                             #   in Loop: Header=BB47_455 Depth=1
	xor	eax, eax
                                        # implicit-def: $rcx
.LBB47_472:                             #   in Loop: Header=BB47_455 Depth=1
	add	qword ptr [rsp + 128], -8       # 8-byte Folded Spill
	mov	rdx, qword ptr [rsp + 112]      # 8-byte Reload
	mov	dl, bl
	mov	qword ptr [rsp + 112], rdx      # 8-byte Spill
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	dl, bpl
	mov	qword ptr [rsp + 40], rdx       # 8-byte Spill
	mov	rbx, qword ptr [r12 + 24]
	test	rbx, rbx
	je	.LBB47_480
# %bb.473:                              #   in Loop: Header=BB47_455 Depth=1
	mov	r13, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rbp, qword ptr [r12 + 32]
	mov	r12, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	jmp	.LBB47_479
.LBB47_474:                             #   in Loop: Header=BB47_455 Depth=1
	mov	rax, qword ptr [rsp + 208]      # 8-byte Reload
	mov	rbx, qword ptr [rax + 40]
                                        # implicit-def: $rbp
	test	rbx, rbx
	je	.LBB47_476
# %bb.475:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rbp, qword ptr [rax + 48]
.LBB47_476:                             #   in Loop: Header=BB47_455 Depth=1
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	je	.LBB47_478
# %bb.477:                              #   in Loop: Header=BB47_455 Depth=1
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_478:                             #   in Loop: Header=BB47_455 Depth=1
	push	3
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
                                        # kill: def $eax killed $eax def $rax
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	r12, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r13, qword ptr [rsp + 80]       # 8-byte Reload
	test	rbx, rbx
	je	.LBB47_469
.LBB47_479:                             #   in Loop: Header=BB47_455 Depth=1
	mov	qword ptr [rsp + 2512], r15
	mov	qword ptr [rsp + 2520], r14
	mov	qword ptr [rsp + 2528], r13
	mov	qword ptr [rsp + 2536], r12
	mov	rax, qword ptr [rsp + 200]      # 8-byte Reload
	mov	qword ptr [rsp + 2544], rax
	mov	qword ptr [rsp + 2552], rbx
	mov	qword ptr [rsp + 2560], rbp
.Ltmp354:
	mov	rdi, qword ptr [rsp + 376]      # 8-byte Reload
	lea	rsi, [rsp + 2512]
	call	_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_
.Ltmp355:
	jmp	.LBB47_455
.LBB47_480:                             #   in Loop: Header=BB47_455 Depth=1
	mov	r13, qword ptr [rsp + 80]       # 8-byte Reload
	mov	r12, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	jmp	.LBB47_469
.LBB47_481:                             #   in Loop: Header=BB47_455 Depth=1
.Ltmp349:
	mov	rdi, qword ptr [rsp + 224]      # 8-byte Reload
	mov	rsi, qword ptr [rsp + 288]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 272]      # 8-byte Reload
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std
.Ltmp350:
	jmp	.LBB47_461
.LBB47_482:
	mov	bl, 1
.LBB47_483:
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	sete	cl
	cmp	eax, 2
	setb	al
	or	al, cl
	jne	.LBB47_485
.LBB47_484:
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_485:
	test	bl, bl
	mov	rdi, qword ptr [rsp + 200]      # 8-byte Reload
	jne	.LBB47_488
.LBB47_486:
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object13search_symtab
	test	rax, rax
	je	.LBB47_488
# %bb.487:
	lea	rsi, [rsp + 2512]
	mov	dword ptr [rsi], 3
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rsi + 16], rdx
	mov	rdi, qword ptr [rsp + 376]      # 8-byte Reload
	call	_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_
.LBB47_488:
	add	rsp, 4872
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
.LBB47_489:
	.cfi_def_cfa_offset 4928
	mov	bl, 1
	jmp	.LBB47_502
.LBB47_490:
	xor	r12d, r12d
	jmp	.LBB47_58
.LBB47_491:
	cmp	r12, 9
	push	8
	.cfi_adjust_cfa_offset 8
	pop	r14
	.cfi_adjust_cfa_offset -8
	cmovae	r14, r12
	lea	rdi, [rsp + 2512]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	xor	esi, esi
	mov	rcx, r14
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growB7_
	lea	rax, [rsp + 2512]
	cmp	dword ptr [rax], 1
	jne	.LBB47_499
# %bb.492:
	movabs	r13, 163208757251
	jmp	.LBB47_63
.LBB47_493:
	cmp	dword ptr [rbp + 4], 8
	je	.LBB47_132
# %bb.494:
	mov	rax, qword ptr [rbp + 32]
	test	rax, rax
	je	.LBB47_132
# %bb.495:
	mov	rcx, qword ptr [rsp + 752]
	mov	r13, qword ptr [rbp + 24]
	sub	rcx, r13
	setb	dl
	cmp	rax, rcx
	seta	cl
	or	cl, dl
	jne	.LBB47_132
# %bb.496:
	add	r13, qword ptr [rsp + 744]
	xor	ebx, ebx
.LBB47_497:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [r13 + rbx], 0
	je	.LBB47_507
# %bb.498:                              #   in Loop: Header=BB47_497 Depth=1
	inc	rbx
	cmp	rax, rbx
	jne	.LBB47_497
	jmp	.LBB47_132
.LBB47_499:
	mov	rax, qword ptr [rsp + 2520]
	mov	qword ptr [rsp + 728], rax
	mov	qword ptr [rsp + 720], r14
	cmp	r12, -1025
	jbe	.LBB47_20
# %bb.500:
	mov	eax, 8192
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB47_21
.LBB47_501:
	xor	ebx, ebx
.LBB47_502:
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	jne	.LBB47_484
	jmp	.LBB47_485
.LBB47_503:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.229]
.LBB47_504:
	push	4
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	xor	edi, edi
	mov	rsi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB47_505:
	movabs	r13, 163208757251
.LBB47_506:
	mov	r12b, 1
	jmp	.LBB47_58
.LBB47_507:
	mov	rcx, rbx
	and	rcx, -4
	lea	rdx, [rcx + 4]
	add	rcx, 8
	cmp	rcx, rdx
	jb	.LBB47_132
# %bb.508:
	cmp	rcx, rax
	ja	.LBB47_132
# %bb.509:
	mov	r14, qword ptr [rsp + 16]       # 8-byte Reload
	cmp	r14, 383
	ja	.LBB47_645
# %bb.510:
	lea	r15, [rsp + 2512]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	byte ptr [rsp + r14 + 2512], 0
	lea	rdx, [r14 + 1]
	lea	r14, [rsp + 1312]
	mov	rdi, r14
	mov	rsi, r15
	call	_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
	cmp	dword ptr [r14], 1
	jne	.LBB47_518
# %bb.511:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	mov	qword ptr [rsp + 1040], rax
	movabs	rax, -9223372036854775808
	mov	qword ptr [rsp + 1032], rax
	jmp	.LBB47_519
.LBB47_512:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.373]
	jmp	.LBB47_504
.LBB47_513:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.354]
	mov	rsi, rdx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB47_514:
.Ltmp301:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.174]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp302:
# %bb.515:
.LBB47_516:
.Ltmp295:
	mov	edi, 296
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp296:
# %bb.517:
.LBB47_518:
	mov	rsi, qword ptr [rsp + 1320]
.Ltmp175:
	lea	rdi, [rsp + 1032]
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix12canonicalize
.Ltmp176:
	movabs	rax, -9223372036854775808
.LBB47_519:
	mov	rcx, qword ptr [rsp + 1032]
	mov	qword ptr [rsp + 80], rcx       # 8-byte Spill
	cmp	rcx, rax
	jne	.LBB47_527
# %bb.520:
	mov	rax, qword ptr [rsp + 1040]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB47_132
# %bb.521:
	lea	r12, [rax - 1]
	mov	r14, qword ptr [rax - 1]
	mov	r15, qword ptr [rax + 7]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.LBB47_523
# %bb.522:
.Ltmp234:
	mov	rdi, r14
	call	rax
.Ltmp235:
.LBB47_523:
	cmp	qword ptr [r15 + 8], 0
	je	.LBB47_525
# %bb.524:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_525:
	mov	rdi, r12
.LBB47_526:
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB47_132
.LBB47_527:
	mov	rax, qword ptr [rsp + 1040]
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	rax, qword ptr [rsp + 1048]
	mov	r15, rax
	test	rax, rax
	je	.LBB47_529
# %bb.528:
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	cmp	byte ptr [rax], 47
	sete	al
	jmp	.LBB47_530
.LBB47_529:
	xor	eax, eax
.LBB47_530:
	lea	rsi, [rsp + 2512]
	mov	rcx, qword ptr [rsp + 112]      # 8-byte Reload
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r15
	mov	byte ptr [rsi + 16], 6
	mov	byte ptr [rsi + 58], al
	mov	word ptr [rsi + 56], 513
.Ltmp179:
	lea	rdi, [rsp + 1312]
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp180:
# %bb.531:
	mov	al, byte ptr [rsp + 1312]
	add	al, -7
	cmp	al, 3
	jae	.LBB47_537
# %bb.532:
.Ltmp181:
	lea	rdi, [rsp + 2512]
	call	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components7as_path
	mov	qword ptr [rsp + 176], rax      # 8-byte Spill
	mov	qword ptr [rsp + 128], rdx      # 8-byte Spill
.Ltmp182:
# %bb.533:
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	lea	r14, [rbx + rax]
	add	r14, 16
	jns	.LBB47_538
# %bb.534:
	xor	edi, edi
.LBB47_535:
.Ltmp231:
	mov	rsi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Ltmp232:
# %bb.536:
.LBB47_537:
	movabs	rbx, -9223372036854775808
	jmp	.LBB47_599
.LBB47_538:
	je	.LBB47_541
# %bb.539:
	mov	rdi, r14
	call	_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	test	rax, rax
	je	.LBB47_679
# %bb.540:
	mov	rbp, rax
	jmp	.LBB47_542
.LBB47_541:
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rbp
	.cfi_adjust_cfa_offset -8
.LBB47_542:
	mov	qword ptr [rsp + 48], r14
	mov	qword ptr [rsp + 56], rbp
	and	qword ptr [rsp + 64], 0
	cmp	qword ptr [rsp + 128], r14      # 8-byte Folded Reload
	ja	.LBB47_649
# %bb.543:
	xor	eax, eax
.LBB47_544:
	mov	r12, rax
	lea	rdi, [rax + rbp]
	mov	rsi, qword ptr [rsp + 176]      # 8-byte Reload
	mov	r14, qword ptr [rsp + 128]      # 8-byte Reload
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	xor	eax, eax
	add	r12, r14
	mov	rsi, r12
	mov	qword ptr [rsp + 64], r12
	je	.LBB47_547
# %bb.545:
	lea	rcx, [rsi + rbp]
	dec	rcx
	test	rcx, rcx
	je	.LBB47_547
# %bb.546:
	cmp	byte ptr [rcx], 47
	setne	al
.LBB47_547:
	test	rbx, rbx
	je	.LBB47_550
# %bb.548:
	cmp	byte ptr [r13], 47
	jne	.LBB47_550
# %bb.549:
	xor	esi, esi
	jmp	.LBB47_553
.LBB47_550:
	mov	rcx, qword ptr [rsp + 48]
	test	al, al
	je	.LBB47_554
# %bb.551:
	cmp	rcx, rsi
	je	.LBB47_659
.LBB47_552:
	mov	byte ptr [rbp + rsi], 47
	inc	rsi
.LBB47_553:
	mov	qword ptr [rsp + 64], rsi
	mov	rcx, qword ptr [rsp + 48]
.LBB47_554:
	sub	rcx, rsi
	cmp	rbx, rcx
	ja	.LBB47_651
.LBB47_555:
	mov	r14, rsi
	add	rbp, rsi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r14, rbx
	mov	qword ptr [rsp + 160], r14      # 8-byte Spill
	mov	qword ptr [rsp + 64], r14
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	je	.LBB47_557
# %bb.556:
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	cmp	byte ptr [rax], 47
	sete	bpl
	jmp	.LBB47_558
.LBB47_557:
	xor	ebp, ebp
.LBB47_558:
	test	r15, r15
	je	.LBB47_560
# %bb.559:
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	cmp	byte ptr [rax], 47
	sete	r14b
	jmp	.LBB47_561
.LBB47_560:
	xor	r14d, r14d
.LBB47_561:
	cmp	qword ptr [rsp + 160], r15      # 8-byte Folded Reload
	jne	.LBB47_563
# %bb.562:
	mov	rdi, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 112]      # 8-byte Reload
	mov	rdx, r15
	call	qword ptr [rip + bcmp@GOTPCREL]
	test	eax, eax
	je	.LBB47_574
.LBB47_563:
	lea	rdx, [rsp + 1032]
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rsp + 160]      # 8-byte Reload
	mov	qword ptr [rdx + 8], rax
	mov	al, 6
	mov	byte ptr [rdx + 16], al
	mov	cx, 513
	mov	word ptr [rdx + 56], cx
	mov	r12, rdx
	mov	byte ptr [rdx + 58], bpl
	lea	rbp, [rsp + 1312]
	mov	rdx, qword ptr [rsp + 112]      # 8-byte Reload
	mov	qword ptr [rbp], rdx
	mov	qword ptr [rbp + 8], r15
	mov	byte ptr [rbp + 16], al
	mov	word ptr [rbp + 56], cx
	mov	byte ptr [rbp + 58], r14b
	lea	r14, [rsp + 2568]
	lea	r15, [rsp + 1136]
.LBB47_564:                             # =>This Inner Loop Header: Depth=1
.Ltmp189:
	mov	rdi, r15
	mov	rsi, r12
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp190:
# %bb.565:                              #   in Loop: Header=BB47_564 Depth=1
	cmp	byte ptr [rsp + 1136], 10
	je	.LBB47_570
# %bb.566:                              #   in Loop: Header=BB47_564 Depth=1
.Ltmp191:
	lea	rdi, [rsp + 384]
	mov	rsi, rbp
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp192:
# %bb.567:                              #   in Loop: Header=BB47_564 Depth=1
	cmp	byte ptr [rsp + 384], 10
	je	.LBB47_572
# %bb.568:                              #   in Loop: Header=BB47_564 Depth=1
	mov	rax, qword ptr [rsp + 1184]
	mov	qword ptr [rsp + 2560], rax
	movups	xmm0, xmmword ptr [rsp + 1136]
	movups	xmm1, xmmword ptr [rsp + 1152]
	movups	xmm2, xmmword ptr [rsp + 1168]
	movaps	xmmword ptr [rsp + 2544], xmm2
	movaps	xmmword ptr [rsp + 2528], xmm1
	movaps	xmmword ptr [rsp + 2512], xmm0
	mov	rax, qword ptr [rsp + 432]
	mov	qword ptr [r14 + 48], rax
	movups	xmm0, xmmword ptr [rsp + 384]
	movdqu	xmm1, xmmword ptr [rsp + 400]
	movups	xmm2, xmmword ptr [rsp + 416]
	movups	xmmword ptr [r14 + 32], xmm2
	movdqu	xmmword ptr [r14 + 16], xmm1
	movups	xmmword ptr [r14], xmm0
	lea	rdi, [rsp + 2512]
	mov	rsi, r14
	call	_RNvXs1Y_NtCs3bNtqN8jaZB_3std4pathNtB6_9ComponentNtNtCsfQL5qMWGko6_4core3cmp9PartialEq2eq
	test	al, al
	jne	.LBB47_564
	jmp	.LBB47_572
.LBB47_569:
.Ltmp341:
	mov	rdi, qword ptr [rsp + 224]      # 8-byte Reload
	mov	rsi, qword ptr [rsp + 288]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 272]      # 8-byte Reload
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std
.Ltmp342:
	jmp	.LBB47_292
.LBB47_570:
.Ltmp194:
	lea	rdi, [rsp + 2512]
	lea	rsi, [rsp + 1312]
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp195:
# %bb.571:
	cmp	byte ptr [rsp + 2512], 10
	je	.LBB47_574
.LBB47_572:
.Ltmp196:
	mov	rdi, qword ptr [rsp + 96]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 160]      # 8-byte Reload
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
.Ltmp197:
# %bb.573:
	test	al, al
	jne	.LBB47_598
.LBB47_574:
	and	qword ptr [rsp + 64], 0
	mov	rax, qword ptr [rsp + 128]      # 8-byte Reload
	cmp	rax, qword ptr [rsp + 48]
	ja	.LBB47_653
# %bb.575:
	xor	r14d, r14d
.LBB47_576:
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	lea	rdi, [rax + r14]
	mov	rsi, qword ptr [rsp + 176]      # 8-byte Reload
	mov	rbp, qword ptr [rsp + 128]      # 8-byte Reload
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	rbp, r14
	mov	qword ptr [rsp + 64], rbp
	je	.LBB47_581
# %bb.577:
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	add	rax, rbp
	dec	rax
	test	rax, rax
	je	.LBB47_581
# %bb.578:
	cmp	byte ptr [rax], 47
	mov	rax, qword ptr [rsp + 48]
	je	.LBB47_582
# %bb.579:
	cmp	rax, rbp
	je	.LBB47_665
.LBB47_580:
	mov	rcx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	byte ptr [rcx + rbp], 47
	inc	rbp
	mov	qword ptr [rsp + 64], rbp
	jmp	.LBB47_582
.LBB47_581:
	mov	rax, qword ptr [rsp + 48]
.LBB47_582:
	sub	rax, rbp
	cmp	rax, 5
	jbe	.LBB47_655
.LBB47_583:
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	mov	word ptr [rax + rbp + 4], 26485
	mov	dword ptr [rax + rbp], 1650811950
	lea	r14, [rbp + 6]
	mov	qword ptr [rsp + 64], r14
	mov	rdi, qword ptr [rsp + 56]
	lea	rax, [rdi + rbp]
	add	rax, 6
	dec	rax
	je	.LBB47_587
# %bb.584:
	cmp	byte ptr [rax], 47
	setne	cl
	jmp	.LBB47_588
.LBB47_585:
.Ltmp249:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.344]
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	xor	edi, edi
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp250:
# %bb.586:
.LBB47_587:
	xor	ecx, ecx
.LBB47_588:
	test	rbx, rbx
	je	.LBB47_591
# %bb.589:
	cmp	byte ptr [r13], 47
	jne	.LBB47_591
# %bb.590:
	xor	r14d, r14d
	jmp	.LBB47_594
.LBB47_591:
	mov	rax, qword ptr [rsp + 48]
	test	cl, cl
	je	.LBB47_595
# %bb.592:
	cmp	rax, r14
	je	.LBB47_663
.LBB47_593:
	mov	byte ptr [rdi + r14], 47
	inc	r14
.LBB47_594:
	mov	qword ptr [rsp + 64], r14
	mov	rax, qword ptr [rsp + 48]
.LBB47_595:
	sub	rax, r14
	cmp	rbx, rax
	ja	.LBB47_657
.LBB47_596:
	add	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r14, rbx
	mov	qword ptr [rsp + 64], r14
	mov	r12, qword ptr [rsp + 56]
.Ltmp208:
	mov	rdi, r12
	mov	rsi, r14
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
.Ltmp209:
# %bb.597:
	test	al, al
	je	.LBB47_605
.LBB47_598:
	lea	rax, [rsp + 56]
	mov	rbx, qword ptr [rax - 8]
	movups	xmm0, xmmword ptr [rax]
	movaps	xmmword ptr [rsp + 1008], xmm0
.LBB47_599:
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
	je	.LBB47_601
# %bb.600:
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_601:
	movabs	rax, -9223372036854775808
	cmp	rbx, rax
	je	.LBB47_132
# %bb.602:
	movaps	xmm0, xmmword ptr [rsp + 1008]
	lea	rcx, [rsp + 2488]
	movups	xmmword ptr [rcx + 8], xmm0
	mov	qword ptr [rcx], rbx
.Ltmp229:
	lea	rdi, [rsp + 2512]
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping9new_debug
.Ltmp230:
	movabs	rax, -9223372036854775808
# %bb.603:
	mov	rbx, qword ptr [rsp + 2512]
	cmp	rbx, rax
	je	.LBB47_132
# %bb.604:
	movups	xmm0, xmmword ptr [rsp + 2520]
	movaps	xmmword ptr [rsp + 608], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2536]
	movaps	xmmword ptr [rsp + 992], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2552]
	movaps	xmmword ptr [rsp + 976], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2568]
	movaps	xmmword ptr [rsp + 960], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2584]
	movaps	xmmword ptr [rsp + 944], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2600]
	movaps	xmmword ptr [rsp + 592], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2616]
	movaps	xmmword ptr [rsp + 928], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2632]
	movaps	xmmword ptr [rsp + 912], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2648]
	movaps	xmmword ptr [rsp + 896], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2664]
	movaps	xmmword ptr [rsp + 880], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2680]
	movaps	xmmword ptr [rsp + 864], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2696]
	movaps	xmmword ptr [rsp + 576], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2712]
	movaps	xmmword ptr [rsp + 560], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2728]
	movaps	xmmword ptr [rsp + 544], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2744]
	movaps	xmmword ptr [rsp + 528], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 3072]
	movaps	xmmword ptr [rsp + 496], xmm0
	movups	xmm0, xmmword ptr [rsp + 3056]
	movaps	xmmword ptr [rsp + 480], xmm0
	movups	xmm0, xmmword ptr [rsp + 3040]
	movaps	xmmword ptr [rsp + 464], xmm0
	movups	xmm0, xmmword ptr [rsp + 2760]
	movaps	xmmword ptr [rsp + 112], xmm0   # 16-byte Spill
	mov	r15, qword ptr [rsp + 2776]
	mov	rbp, qword ptr [rsp + 2784]
	mov	r14, qword ptr [rsp + 3032]
	movups	xmm0, xmmword ptr [rsp + 2792]
	movaps	xmmword ptr [rsp + 16], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2808]
	movaps	xmmword ptr [rsp + 80], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2824]
	movaps	xmmword ptr [rsp + 144], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2840]
	movaps	xmmword ptr [rsp + 128], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2856]
	movaps	xmmword ptr [rsp + 96], xmm0    # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2872]
	movaps	xmmword ptr [rsp + 176], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2888]
	movaps	xmmword ptr [rsp + 160], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2904]
	movaps	xmmword ptr [rsp + 272], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2920]
	movaps	xmmword ptr [rsp + 224], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2936]
	movaps	xmmword ptr [rsp + 240], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2952]
	movaps	xmmword ptr [rsp + 288], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2968]
	movaps	xmmword ptr [rsp + 672], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 2984]
	movaps	xmmword ptr [rsp + 656], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 3000]
	movaps	xmmword ptr [rsp + 640], xmm0   # 16-byte Spill
	movups	xmm0, xmmword ptr [rsp + 3016]
	movaps	xmmword ptr [rsp + 208], xmm0   # 16-byte Spill
	push	1
	.cfi_adjust_cfa_offset 8
	pop	r12
	.cfi_adjust_cfa_offset -8
	mov	r13, qword ptr [rsp + 304]      # 8-byte Reload
	jmp	.LBB47_444
.LBB47_605:
	mov	cl, byte ptr [rip + _RNvNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf17debug_path_exists17DEBUG_PATH_EXISTS.0]
	test	cl, cl
	jne	.LBB47_608
# %bb.606:
.Ltmp210:
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir
.Ltmp211:
# %bb.607:
	mov	cl, 2
	sub	cl, al
	mov	byte ptr [rip + _RNvNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf17debug_path_exists17DEBUG_PATH_EXISTS.0], cl
.LBB47_608:
	cmp	cl, 1
	jne	.LBB47_639
# %bb.609:
	and	qword ptr [rsp + 64], 0
	cmp	qword ptr [rsp + 48], 13
	jbe	.LBB47_667
# %bb.610:
	xor	r14d, r14d
.LBB47_611:
	movabs	rax, 7454972945793770089
	mov	qword ptr [r12 + r14 + 6], rax
	movabs	rax, 7091318039310988591
	mov	qword ptr [r12 + r14], rax
	add	r14, 14
	mov	qword ptr [rsp + 64], r14
.Ltmp214:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.208]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rdi, qword ptr [rsp + 176]      # 8-byte Reload
	mov	rsi, qword ptr [rsp + 128]      # 8-byte Reload
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path13__strip_prefix
.Ltmp215:
# %bb.612:
	mov	rbp, rax
	test	rax, rax
	je	.LBB47_669
# %bb.613:
	mov	r15, rdx
	lea	rax, [r12 + r14]
	dec	rax
	je	.LBB47_617
# %bb.614:
	cmp	byte ptr [rax], 47
	setne	cl
	jmp	.LBB47_618
.LBB47_615:
.Ltmp252:
	mov	edi, 296
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp253:
# %bb.616:
.LBB47_617:
	xor	ecx, ecx
.LBB47_618:
	test	r15, r15
	je	.LBB47_621
# %bb.619:
	cmp	byte ptr [rbp], 47
	jne	.LBB47_621
# %bb.620:
	xor	r14d, r14d
	jmp	.LBB47_624
.LBB47_621:
	mov	rax, qword ptr [rsp + 48]
	test	cl, cl
	je	.LBB47_625
# %bb.622:
	cmp	rax, r14
	je	.LBB47_675
.LBB47_623:
	mov	byte ptr [r12 + r14], 47
	inc	r14
.LBB47_624:
	mov	qword ptr [rsp + 64], r14
	mov	rax, qword ptr [rsp + 48]
.LBB47_625:
	sub	rax, r14
	cmp	r15, rax
	ja	.LBB47_671
.LBB47_626:
	add	r12, r14
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	xor	eax, eax
	add	r15, r14
	mov	qword ptr [rsp + 64], r15
	mov	rdi, qword ptr [rsp + 56]
	je	.LBB47_629
# %bb.627:
	lea	rcx, [rdi + r15]
	dec	rcx
	test	rcx, rcx
	je	.LBB47_629
# %bb.628:
	cmp	byte ptr [rcx], 47
	setne	al
.LBB47_629:
	test	rbx, rbx
	je	.LBB47_632
# %bb.630:
	cmp	byte ptr [r13], 47
	jne	.LBB47_632
# %bb.631:
	xor	r15d, r15d
	jmp	.LBB47_635
.LBB47_632:
	mov	rcx, qword ptr [rsp + 48]
	test	al, al
	je	.LBB47_636
# %bb.633:
	cmp	rcx, r15
	je	.LBB47_677
.LBB47_634:
	mov	byte ptr [rdi + r15], 47
	inc	r15
.LBB47_635:
	mov	qword ptr [rsp + 64], r15
	mov	rcx, qword ptr [rsp + 48]
.LBB47_636:
	sub	rcx, r15
	cmp	rbx, rcx
	ja	.LBB47_673
.LBB47_637:
	add	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, rbx
	mov	qword ptr [rsp + 64], r15
	mov	r12, qword ptr [rsp + 56]
.Ltmp224:
	mov	rdi, r12
	mov	rsi, r15
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
.Ltmp225:
# %bb.638:
	test	al, al
	jne	.LBB47_598
.LBB47_639:
	cmp	qword ptr [rsp + 48], 0
	je	.LBB47_641
# %bb.640:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_641:
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
	je	.LBB47_132
# %bb.642:
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
	jmp	.LBB47_526
.LBB47_643:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.227]
	mov	rdi, r14
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB47_644:
	ud2
.LBB47_645:
.Ltmp177:
	lea	rdi, [rsp + 1032]
	mov	rsi, qword ptr [rsp + 144]      # 8-byte Reload
	mov	rdx, r14
	call	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_
.Ltmp178:
	movabs	rax, -9223372036854775808
	jmp	.LBB47_519
.LBB47_646:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.108]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB47_647:
.Ltmp317:
	mov	edi, 456
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp318:
# %bb.648:
.LBB47_649:
.Ltmp183:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	xor	esi, esi
	mov	rdx, qword ptr [rsp + 128]      # 8-byte Reload
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp184:
# %bb.650:
	mov	rbp, qword ptr [rsp + 56]
	mov	rax, qword ptr [rsp + 64]
	jmp	.LBB47_544
.LBB47_651:
.Ltmp187:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rdx, rbx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp188:
# %bb.652:
	mov	rbp, qword ptr [rsp + 56]
	mov	rsi, qword ptr [rsp + 64]
	jmp	.LBB47_555
.LBB47_653:
.Ltmp198:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	xor	esi, esi
	mov	rdx, qword ptr [rsp + 128]      # 8-byte Reload
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp199:
# %bb.654:
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	r14, qword ptr [rsp + 64]
	jmp	.LBB47_576
.LBB47_655:
.Ltmp202:
	lea	rdi, [rsp + 48]
	push	6
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, rbp
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp203:
# %bb.656:
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	rbp, qword ptr [rsp + 64]
	jmp	.LBB47_583
.LBB47_657:
.Ltmp206:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, r14
	mov	rdx, rbx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp207:
# %bb.658:
	mov	rdi, qword ptr [rsp + 56]
	mov	r14, qword ptr [rsp + 64]
	jmp	.LBB47_596
.LBB47_659:
.Ltmp185:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rdx, rcx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp186:
# %bb.660:
	mov	rbp, qword ptr [rsp + 56]
	mov	rsi, qword ptr [rsp + 64]
	jmp	.LBB47_552
.LBB47_661:
.Ltmp154:
	mov	rdi, qword ptr [rsp + 176]      # 8-byte Reload
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp155:
# %bb.662:
.LBB47_663:
.Ltmp204:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, r14
	mov	rdx, rcx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp205:
# %bb.664:
	mov	rdi, qword ptr [rsp + 56]
	mov	r14, qword ptr [rsp + 64]
	jmp	.LBB47_593
.LBB47_665:
.Ltmp200:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, rbp
	mov	rdx, rcx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp201:
# %bb.666:
	mov	rbp, qword ptr [rsp + 64]
	mov	rax, qword ptr [rsp + 48]
	mov	rcx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	jmp	.LBB47_580
.LBB47_667:
.Ltmp212:
	lea	rdi, [rsp + 48]
	push	14
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	xor	esi, esi
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp213:
# %bb.668:
	mov	r12, qword ptr [rsp + 56]
	mov	r14, qword ptr [rsp + 64]
	jmp	.LBB47_611
.LBB47_669:
.Ltmp226:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.156]
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.162]
	lea	r8, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.462]
	push	43
	.cfi_adjust_cfa_offset 8
	pop	rsi
	.cfi_adjust_cfa_offset -8
	lea	rdx, [rsp + 2512]
	call	_RNvNtCsfQL5qMWGko6_4core6result13unwrap_failed
.Ltmp227:
# %bb.670:
.LBB47_671:
.Ltmp218:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, r14
	mov	rdx, r15
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp219:
# %bb.672:
	mov	r12, qword ptr [rsp + 56]
	mov	r14, qword ptr [rsp + 64]
	jmp	.LBB47_626
.LBB47_673:
.Ltmp222:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, r15
	mov	rdx, rbx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp223:
# %bb.674:
	mov	rdi, qword ptr [rsp + 56]
	mov	r15, qword ptr [rsp + 64]
	jmp	.LBB47_637
.LBB47_675:
.Ltmp216:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, r14
	mov	rdx, rcx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp217:
# %bb.676:
	mov	r12, qword ptr [rsp + 56]
	mov	r14, qword ptr [rsp + 64]
	jmp	.LBB47_623
.LBB47_677:
.Ltmp220:
	lea	rdi, [rsp + 48]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	mov	rsi, r15
	mov	rdx, rcx
	mov	r8, rcx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp221:
# %bb.678:
	mov	rdi, qword ptr [rsp + 56]
	mov	r15, qword ptr [rsp + 64]
	jmp	.LBB47_634
.LBB47_679:
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rdi
	.cfi_adjust_cfa_offset -8
	jmp	.LBB47_535
.LBB47_680:
.Ltmp343:
	jmp	.LBB47_689
.LBB47_681:
.Ltmp236:
	mov	rbx, rax
	cmp	qword ptr [r15 + 8], 0
	je	.LBB47_683
# %bb.682:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_683:
	mov	rdi, r12
	jmp	.LBB47_751
.LBB47_684:
.Ltmp313:
	mov	rbx, rax
	lock		dec	qword ptr [r12]
	jne	.LBB47_765
# %bb.685:
	#MEMBARRIER
.Ltmp314:
	lea	rdi, [rsp + 1008]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp315:
	jmp	.LBB47_765
.LBB47_686:
.Ltmp316:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_687:
.Ltmp193:
	jmp	.LBB47_691
.LBB47_688:
.Ltmp351:
.LBB47_689:
	mov	rbx, rax
	jmp	.LBB47_746
.LBB47_690:
.Ltmp228:
.LBB47_691:
	mov	rbx, rax
	cmp	qword ptr [rsp + 48], 0
	je	.LBB47_749
# %bb.692:
	mov	rdi, qword ptr [rsp + 56]
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB47_749
.LBB47_693:
.Ltmp159:
	mov	rbx, rax
	cmp	qword ptr [rsp + 176], 0        # 8-byte Folded Reload
	je	.LBB47_722
# %bb.694:
	mov	rdi, r15
	jmp	.LBB47_701
.LBB47_695:
.Ltmp156:
	jmp	.LBB47_721
.LBB47_696:
.Ltmp130:
	jmp	.LBB47_698
.LBB47_697:
.Ltmp162:
.LBB47_698:
	mov	rbx, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB47_700
# %bb.699:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_700:
	mov	rdi, r14
.LBB47_701:
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB47_722
.LBB47_702:
.Ltmp319:
	mov	rbx, rax
	lock		dec	qword ptr [r12]
	jne	.LBB47_704
# %bb.703:
	#MEMBARRIER
.Ltmp320:
	lea	rdi, [rsp + 2960]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp321:
.LBB47_704:
	mov	rax, qword ptr [rsp + 2880]
	lock		dec	qword ptr [rax]
	jne	.LBB47_706
# %bb.705:
	#MEMBARRIER
	mov	rdi, qword ptr [rsp + 2880]
.Ltmp326:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp327:
.LBB47_706:
	lea	rdi, [rsp + 2608]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	jmp	.LBB47_765
.LBB47_707:
.Ltmp328:
	lea	rdi, [rsp + 2608]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_708:
.Ltmp322:
.Ltmp323:
	lea	rdi, [rsp + 2512]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std
.Ltmp324:
# %bb.709:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_710:
.Ltmp325:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_711:
.Ltmp136:
	jmp	.LBB47_721
.LBB47_712:
.Ltmp165:
	mov	rbx, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB47_714
# %bb.713:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_714:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rax
	.cfi_adjust_cfa_offset -8
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	jmp	.LBB47_732
.LBB47_715:
.Ltmp245:
	mov	rbx, rax
.Ltmp246:
	lea	rdi, [rsp + 1904]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_
.Ltmp247:
	jmp	.LBB47_770
.LBB47_716:
.Ltmp248:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_717:
.Ltmp133:
	jmp	.LBB47_721
.LBB47_718:
.Ltmp268:
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r14
	call	qword ptr [rip + munmap@GOTPCREL]
	jmp	.LBB47_761
.LBB47_719:
.Ltmp348:
	jmp	.LBB47_745
.LBB47_720:
.Ltmp153:
.LBB47_721:
	mov	rbx, rax
.LBB47_722:
	cmp	qword ptr [rsp + 720], 0
	je	.LBB47_724
# %bb.723:
	mov	rdi, qword ptr [rsp + 728]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_724:
	mov	edi, dword ptr [rsp + 112]      # 4-byte Reload
	call	qword ptr [rip + close@GOTPCREL]
	mov	rax, qword ptr [rsp + 1040]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	r14, qword ptr [rsp + 1048]
	test	r14, r14
	je	.LBB47_732
# %bb.725:
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	lea	r15, [rax + 8]
	mov	r12, qword ptr [rip + free@GOTPCREL]
.LBB47_726:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r15 - 8], 0
	je	.LBB47_728
# %bb.727:                              #   in Loop: Header=BB47_726 Depth=1
	mov	rdi, qword ptr [r15]
	call	r12
.LBB47_728:                             #   in Loop: Header=BB47_726 Depth=1
	add	r15, 88
	dec	r14
	jne	.LBB47_726
	jmp	.LBB47_732
.LBB47_729:
.Ltmp335:
	jmp	.LBB47_742
.LBB47_730:
.Ltmp239:
	jmp	.LBB47_735
.LBB47_731:
.Ltmp127:
	mov	rbx, rax
.LBB47_732:
	cmp	qword ptr [rsp + 1032], 0
	je	.LBB47_770
# %bb.733:
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB47_769
.LBB47_734:
.Ltmp174:
.LBB47_735:
	mov	rbx, rax
	jmp	.LBB47_752
.LBB47_736:
.Ltmp242:
	mov	qword ptr [rsp], r15            # 8-byte Spill
	mov	rbx, rax
	jmp	.LBB47_754
.LBB47_737:
.Ltmp254:
	mov	rbx, rax
.Ltmp255:
	lea	rdi, [rsp + 2512]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
.Ltmp256:
	jmp	.LBB47_763
.LBB47_738:
.Ltmp257:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_739:
.Ltmp271:
	jmp	.LBB47_760
.LBB47_740:
.Ltmp294:
	mov	rbx, rax
	jmp	.LBB47_756
.LBB47_741:
.Ltmp340:
.LBB47_742:
	mov	rbx, rax
	jmp	.LBB47_765
.LBB47_743:
.Ltmp251:
	mov	rbx, rax
	jmp	.LBB47_763
.LBB47_744:
.Ltmp356:
.LBB47_745:
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 112]      # 8-byte Reload
	add	eax, -3
	cmp	eax, 2
	jb	.LBB47_770
.LBB47_746:
	cmp	qword ptr [rsp], 0              # 8-byte Folded Reload
	je	.LBB47_770
# %bb.747:
	mov	rdi, qword ptr [rsp + 160]      # 8-byte Reload
	jmp	.LBB47_769
.LBB47_748:
.Ltmp233:
	mov	rbx, rax
.LBB47_749:
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
	je	.LBB47_752
# %bb.750:
	mov	rdi, qword ptr [rsp + 112]      # 8-byte Reload
.LBB47_751:
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_752:
	cmp	qword ptr [rsp + 720], 0
	je	.LBB47_754
# %bb.753:
	mov	rdi, qword ptr [rsp + 728]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_754:
	lea	rdi, [rsp + 320]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rsi, qword ptr [rsp]            # 8-byte Reload
	call	qword ptr [rip + munmap@GOTPCREL]
	jmp	.LBB47_770
.LBB47_755:
.Ltmp297:
	mov	rbx, rax
.Ltmp298:
	lea	rdi, [rsp + 2512]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
.Ltmp299:
.LBB47_756:
	cmp	qword ptr [rsp + 624], 0        # 8-byte Folded Reload
	je	.LBB47_761
# %bb.757:
	mov	rdi, qword ptr [rsp + 608]      # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB47_761
.LBB47_758:
.Ltmp300:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB47_759:
.Ltmp303:
.LBB47_760:
	mov	rbx, rax
.LBB47_761:
	cmp	qword ptr [rsp + 384], 0
	je	.LBB47_763
# %bb.762:
	mov	rdi, qword ptr [rsp + 392]
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_763:
	mov	rax, qword ptr [rsp + 320]
	lock		dec	qword ptr [rax]
	jne	.LBB47_765
# %bb.764:
	#MEMBARRIER
.Ltmp304:
	lea	rdi, [rsp + 320]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp305:
.LBB47_765:
	cmp	byte ptr [rsp + 2088], 2
	jne	.LBB47_770
# %bb.766:
	cmp	qword ptr [rsp + 1976], 0
	je	.LBB47_770
# %bb.767:
	mov	eax, dword ptr [rsp + 1904]
	add	eax, -3
	cmp	eax, 3
	jb	.LBB47_770
# %bb.768:
	mov	rdi, qword ptr [rsp + 1960]
.LBB47_769:
	call	qword ptr [rip + free@GOTPCREL]
.LBB47_770:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB47_771:
.Ltmp306:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end47:
	.size	_RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_, .Lfunc_end47-_RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_
	.cfi_endproc
	.section	.rodata._RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_,"a",@progbits
	.p2align	2, 0x0
.LJTI47_0:
	.long	.LBB47_325-.LJTI47_0
	.long	.LBB47_317-.LJTI47_0
	.long	.LBB47_318-.LJTI47_0
	.long	.LBB47_321-.LJTI47_0
	.long	.LBB47_322-.LJTI47_0
	.long	.LBB47_324-.LJTI47_0
	.long	.LBB47_324-.LJTI47_0
	.long	.LBB47_320-.LJTI47_0
	.long	.LBB47_323-.LJTI47_0
	.long	.LBB47_319-.LJTI47_0
	.section	.gcc_except_table._RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table47:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp125-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin13        #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin13        #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin13        #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin13        #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin13        #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin13        # >> Call Site 6 <<
	.uleb128 .Ltmp160-.Ltmp135              #   Call between .Ltmp135 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin13        # >> Call Site 7 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin13        #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin13        # >> Call Site 8 <<
	.uleb128 .Ltmp166-.Ltmp161              #   Call between .Ltmp161 and .Ltmp166
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin13        # >> Call Site 9 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp242-.Lfunc_begin13        #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin13        # >> Call Site 10 <<
	.uleb128 .Ltmp171-.Ltmp168              #   Call between .Ltmp168 and .Ltmp171
	.uleb128 .Ltmp239-.Lfunc_begin13        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin13        # >> Call Site 11 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin13        #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin13        # >> Call Site 12 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin13        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin13        # >> Call Site 13 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin13        #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin13        # >> Call Site 14 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin13        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin13        # >> Call Site 15 <<
	.uleb128 .Ltmp152-.Ltmp137              #   Call between .Ltmp137 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin13        #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin13        # >> Call Site 16 <<
	.uleb128 .Ltmp157-.Ltmp152              #   Call between .Ltmp152 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin13        # >> Call Site 17 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin13        #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin13        # >> Call Site 18 <<
	.uleb128 .Ltmp344-.Ltmp158              #   Call between .Ltmp158 and .Ltmp344
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin13        # >> Call Site 19 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp348-.Lfunc_begin13        #     jumps to .Ltmp348
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin13        # >> Call Site 20 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp271-.Lfunc_begin13        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin13        # >> Call Site 21 <<
	.uleb128 .Ltmp264-.Ltmp259              #   Call between .Ltmp259 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin13        # >> Call Site 22 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp271-.Lfunc_begin13        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin13        # >> Call Site 23 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin13        #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin13        # >> Call Site 24 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin13        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin13        # >> Call Site 25 <<
	.uleb128 .Ltmp293-.Ltmp272              #   Call between .Ltmp272 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin13        #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin13        # >> Call Site 26 <<
	.uleb128 .Ltmp339-.Ltmp307              #   Call between .Ltmp307 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin13        #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin13        # >> Call Site 27 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp271-.Lfunc_begin13        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin13        # >> Call Site 28 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp340-.Lfunc_begin13        #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin13        # >> Call Site 29 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp271-.Lfunc_begin13        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin13        # >> Call Site 30 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin13        #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin13        # >> Call Site 31 <<
	.uleb128 .Ltmp334-.Ltmp331              #   Call between .Ltmp331 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin13        #     jumps to .Ltmp335
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin13        # >> Call Site 32 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin13        #     jumps to .Ltmp348
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin13        # >> Call Site 33 <<
	.uleb128 .Ltmp355-.Ltmp352              #   Call between .Ltmp352 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin13        #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin13        # >> Call Site 34 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp351-.Lfunc_begin13        #     jumps to .Ltmp351
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin13        # >> Call Site 35 <<
	.uleb128 .Ltmp301-.Ltmp350              #   Call between .Ltmp350 and .Ltmp301
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin13        # >> Call Site 36 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin13        #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin13        # >> Call Site 37 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin13        #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin13        # >> Call Site 38 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp239-.Lfunc_begin13        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin13        # >> Call Site 39 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin13        #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin13        # >> Call Site 40 <<
	.uleb128 .Ltmp232-.Ltmp179              #   Call between .Ltmp179 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin13        #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin13        # >> Call Site 41 <<
	.uleb128 .Ltmp189-.Ltmp232              #   Call between .Ltmp232 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin13        # >> Call Site 42 <<
	.uleb128 .Ltmp192-.Ltmp189              #   Call between .Ltmp189 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin13        #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin13        # >> Call Site 43 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin13        #     jumps to .Ltmp343
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin13        # >> Call Site 44 <<
	.uleb128 .Ltmp197-.Ltmp194              #   Call between .Ltmp194 and .Ltmp197
	.uleb128 .Ltmp228-.Lfunc_begin13        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin13        # >> Call Site 45 <<
	.uleb128 .Ltmp249-.Ltmp197              #   Call between .Ltmp197 and .Ltmp249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin13        # >> Call Site 46 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin13        #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin13        # >> Call Site 47 <<
	.uleb128 .Ltmp208-.Ltmp250              #   Call between .Ltmp250 and .Ltmp208
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin13        # >> Call Site 48 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp228-.Lfunc_begin13        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin13        # >> Call Site 49 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp239-.Lfunc_begin13        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin13        # >> Call Site 50 <<
	.uleb128 .Ltmp215-.Ltmp210              #   Call between .Ltmp210 and .Ltmp215
	.uleb128 .Ltmp228-.Lfunc_begin13        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin13        # >> Call Site 51 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin13        #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin13        # >> Call Site 52 <<
	.uleb128 .Ltmp224-.Ltmp253              #   Call between .Ltmp253 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin13        # >> Call Site 53 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp228-.Lfunc_begin13        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin13        # >> Call Site 54 <<
	.uleb128 .Ltmp177-.Ltmp225              #   Call between .Ltmp225 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin13        # >> Call Site 55 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp239-.Lfunc_begin13        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin13        # >> Call Site 56 <<
	.uleb128 .Ltmp317-.Ltmp178              #   Call between .Ltmp178 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin13        # >> Call Site 57 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin13        #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin13        # >> Call Site 58 <<
	.uleb128 .Ltmp186-.Ltmp183              #   Call between .Ltmp183 and .Ltmp186
	.uleb128 .Ltmp228-.Lfunc_begin13        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin13        # >> Call Site 59 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin13        #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin13        # >> Call Site 60 <<
	.uleb128 .Ltmp221-.Ltmp204              #   Call between .Ltmp204 and .Ltmp221
	.uleb128 .Ltmp228-.Lfunc_begin13        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin13        # >> Call Site 61 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin13        #     jumps to .Ltmp316
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp320-.Lfunc_begin13        # >> Call Site 62 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin13        #     jumps to .Ltmp322
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp326-.Lfunc_begin13        # >> Call Site 63 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin13        #     jumps to .Ltmp328
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp323-.Lfunc_begin13        # >> Call Site 64 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin13        #     jumps to .Ltmp325
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp246-.Lfunc_begin13        # >> Call Site 65 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin13        #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin13        # >> Call Site 66 <<
	.uleb128 .Ltmp255-.Ltmp247              #   Call between .Ltmp247 and .Ltmp255
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin13        # >> Call Site 67 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin13        #     jumps to .Ltmp257
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp298-.Lfunc_begin13        # >> Call Site 68 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin13        #     jumps to .Ltmp300
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp304-.Lfunc_begin13        # >> Call Site 69 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin13        #     jumps to .Ltmp306
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp305-.Lfunc_begin13        # >> Call Site 70 <<
	.uleb128 .Lfunc_end47-.Ltmp305          #   Call between .Ltmp305 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase6:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
