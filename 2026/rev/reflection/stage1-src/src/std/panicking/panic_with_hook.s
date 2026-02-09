	.section	.text._RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook,"ax",@progbits
	.type	_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook,@function
_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook: # @_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
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
	sub	rsp, 728
	.cfi_def_cfa_offset 784
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	dword ptr [rsp + 20], ecx       # 4-byte Spill
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 40], rsi
	mov	qword ptr [rsp + 24], rdx
	lock		inc	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	jle	.LBB8_71
# %bb.1:
	cmp	byte ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF+8], 0
	jne	.LBB8_72
# %bb.2:
	mov	r13d, r8d
	inc	qword ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF]
	mov	byte ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF+8], 1
	mov	eax, dword ptr [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK]
	cmp	eax, 1073741822
	jae	.LBB8_60
# %bb.3:
	lea	ecx, [rax + 1]
                                        # kill: def $eax killed $eax killed $rax
	lock		cmpxchg	dword ptr [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK], ecx
	jne	.LBB8_60
.LBB8_4:
	cmp	qword ptr [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK+8], 0
	jne	.LBB8_16
# %bb.5:
	mov	rdi, qword ptr [rsp + 32]
	mov	r15, qword ptr [rsp + 40]
.Ltmp13:
	mov	qword ptr [rsp + 48], rdi       # 8-byte Spill
	call	qword ptr [r15 + 40]
.Ltmp14:
# %bb.6:
	mov	r12, rax
	mov	rbx, rdx
	mov	r14, qword ptr [rsp + 24]
	mov	bpl, 3
	test	r13b, r13b
	jne	.LBB8_10
# %bb.7:
	mov	bpl, 1
	cmp	qword ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF], 1
	ja	.LBB8_10
# %bb.8:
.Ltmp15:
	call	_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style
.Ltmp16:
# %bb.9:
	mov	ebp, eax
.LBB8_10:
	mov	qword ptr [rsp + 56], r14
	mov	rbx, qword ptr [rbx + 24]
.Ltmp17:
	lea	r13, [rsp + 208]
	mov	rdi, r13
	mov	rsi, r12
	call	rbx
.Ltmp18:
# %bb.11:
	movdqa	xmm0, xmmword ptr [rsp + 208]
	pcmpeqb	xmm0, xmmword ptr [rip + .LCPI8_0]
	pmovmskb	eax, xmm0
	cmp	eax, 65535
	jne	.LBB8_20
# %bb.12:
	push	8
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
# BEGIN STAGE1
	.cfi_escape DW_CFA_val_expression, DW_REG_RCX, uleb128(9), DW_OP_const8u, data8(_RNvNtNtNtNtCs3bNtqN8jaZB_3std3sys4args4unix3imp4ARGC.0 + 89)
# END STAGE1
	mov	rax, r12
.LBB8_13:
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [r12 + rcx]
.LBB8_14:
	mov	qword ptr [rsp + 64], rax
	mov	qword ptr [rsp + 72], rcx
	call	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock
	mov	rcx, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std6thread11main_thread4MAIN.0]
	xor	edx, edx
	cmp	qword ptr fs:[_RNvNtNtNtCs3bNtqN8jaZB_3std6thread7current2id2ID@TPOFF], rcx
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.90]
	cmove	rdx, rsi
	test	rcx, rcx
	cmove	rdx, rcx
	mov	byte ptr [rsp + 7], al          # 1-byte Spill
	xor	eax, eax
	test	rdx, rdx
	sete	al
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.94]
	cmovne	rcx, rdx
	lea	rax, [rax + 4*rax]
	add	rax, 4
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 88], rax
	cmp	qword ptr [rip + gettid@GOTPCREL], 0
	jne	.LBB8_23
# %bb.15:
	mov	edi, 186
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	jmp	.LBB8_24
.LBB8_16:
	mov	rdi, qword ptr [rsp + 32]
	mov	r15, qword ptr [rsp + 40]
.Ltmp9:
	mov	qword ptr [rsp + 48], rdi       # 8-byte Spill
	call	qword ptr [r15 + 40]
.Ltmp10:
# %bb.17:
	lea	rsi, [rsp + 208]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rsi + 8], rdx
	mov	rax, qword ptr [rsp + 24]
	mov	qword ptr [rsi + 16], rax
	mov	eax, dword ptr [rsp + 20]       # 4-byte Reload
	mov	byte ptr [rsi + 24], al
	mov	byte ptr [rsi + 25], r13b
	mov	rdi, qword ptr [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK+8]
	mov	rax, qword ptr [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK+16]
.Ltmp11:
	call	qword ptr [rax + 40]
.Ltmp12:
.LBB8_18:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_
	mov	byte ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF+8], 0
	cmp	byte ptr [rsp + 20], 0          # 1-byte Folded Reload
	je	.LBB8_75
# %bb.19:
	mov	rdi, qword ptr [rsp + 48]       # 8-byte Reload
	mov	rsi, r15
	call	_RNvCsL6e0J8m5bd_7___rustc10rust_panic
.LBB8_20:
.Ltmp19:
	lea	rdi, [rsp + 208]
	mov	rsi, r12
	call	rbx
.Ltmp20:
# %bb.21:
	movdqa	xmm0, xmmword ptr [rsp + 208]
	pcmpeqb	xmm0, xmmword ptr [rip + .LCPI8_1]
	pmovmskb	eax, xmm0
	cmp	eax, 65535
	jne	.LBB8_39
# %bb.22:
	lea	rax, [r12 + 8]
	push	16
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	jmp	.LBB8_13
.LBB8_23:
	call	qword ptr [rip + gettid@GOTPCREL]
                                        # kill: def $eax killed $eax def $rax
.LBB8_24:
	and	byte ptr [rsp + 7], 1           # 1-byte Folded Spill
	cdqe
	lea	r12, [rsp + 176]
	mov	qword ptr [r12], rax
	mov	ecx, 128
	xor	eax, eax
	mov	rdi, r13
	rep stosd es:[rdi], eax
	lea	rax, [rsp + 184]
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], 512
	and	qword ptr [rax + 16], 0
	lea	rcx, [rsp + 80]
	lea	r14, [rsp + 112]
	mov	qword ptr [r14], rcx
	lea	rbx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [r14 + 16], r12
	lea	rcx, [rip + _RNvXsd_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impyNtB9_7Display3fmt]
	mov	qword ptr [r14 + 24], rcx
	lea	rcx, [rsp + 56]
	mov	qword ptr [r14 + 32], rcx
	lea	rcx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std]
	mov	qword ptr [r14 + 40], rcx
	lea	rcx, [rsp + 64]
	mov	qword ptr [r14 + 48], rcx
	mov	qword ptr [r14 + 56], rbx
	lea	rdi, [rsp + 96]
	mov	qword ptr [rdi], rax
	and	qword ptr [rdi + 8], 0
.Ltmp22:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.49]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.92]
	mov	rcx, r14
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
.Ltmp23:
# %bb.25:
	mov	rcx, qword ptr [rsp + 104]
	movzx	ebp, bpl
	test	al, al
	je	.LBB8_32
# %bb.26:
	test	rcx, rcx
	je	.LBB8_81
# %bb.27:
	mov	eax, ecx
	and	eax, 3
	cmp	eax, 1
	je	.LBB8_50
.LBB8_28:
	lea	rdx, [rsp + 112]
	lea	rax, [rsp + 80]
	mov	qword ptr [rdx], rax
	mov	qword ptr [rdx + 8], rbx
	mov	qword ptr [rdx + 16], r12
	lea	rax, [rip + _RNvXsd_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impyNtB9_7Display3fmt]
	mov	qword ptr [rdx + 24], rax
	lea	rax, [rsp + 56]
	mov	qword ptr [rdx + 32], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std]
	mov	qword ptr [rdx + 40], rax
	lea	rax, [rsp + 64]
	mov	qword ptr [rdx + 48], rax
	mov	qword ptr [rdx + 56], rbx
.Ltmp37:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.92]
	lea	rdi, [rsp + 6]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp38:
# %bb.29:
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB8_37
# %bb.30:
	mov	qword ptr [rsp + 8], rbp        # 8-byte Spill
	mov	rbx, r14
	mov	rbp, rax
	dec	rbp
	mov	r13, qword ptr [rax - 1]
	mov	r14, qword ptr [rax + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB8_63
# %bb.31:
.Ltmp39:
	mov	rdi, r13
	call	rax
.Ltmp40:
	jmp	.LBB8_63
.LBB8_32:
	mov	qword ptr [rsp + 8], rbp        # 8-byte Spill
	mov	eax, ecx
	and	eax, 3
	cmp	eax, 1
	je	.LBB8_55
.LBB8_33:
	mov	rbp, qword ptr [rsp + 200]
	cmp	rbp, 513
	jae	.LBB8_76
# %bb.34:
	test	rbp, rbp
	jne	.LBB8_40
# %bb.35:
	xor	ecx, ecx
.LBB8_36:
	mov	eax, ecx
	and	eax, 3
	cmp	eax, 1
	mov	rbp, qword ptr [rsp + 8]        # 8-byte Reload
	je	.LBB8_61
.LBB8_37:
	lea	rax, [rip + .LJTI8_0]
	movsxd	rcx, dword ptr [rax + 4*rbp]
	add	rcx, rax
	jmp	rcx
.LBB8_38:
	mov	byte ptr [rsp + 112], 0
	lea	rdx, [rsp + 208]
	mov	qword ptr [rdx], r14
	lea	rax, [rip + _RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rdx + 8], rax
.Ltmp46:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rdi, [rsp + 6]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp47:
	jmp	.LBB8_69
.LBB8_39:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.397]
	push	12
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	jmp	.LBB8_14
.LBB8_40:
	push	2
	.cfi_adjust_cfa_offset 8
	pop	r12
	.cfi_adjust_cfa_offset -8
	mov	rbx, qword ptr [rip + write@GOTPCREL]
	mov	r14, qword ptr [rip + __errno_location@GOTPCREL]
.LBB8_41:                               # =>This Inner Loop Header: Depth=1
	mov	edi, r12d
	mov	rsi, r13
	mov	rdx, rbp
	call	rbx
	cmp	rax, -1
	je	.LBB8_45
# %bb.42:                               #   in Loop: Header=BB8_41 Depth=1
	test	rax, rax
	je	.LBB8_78
# %bb.43:                               #   in Loop: Header=BB8_41 Depth=1
	mov	rcx, rbp
	sub	rcx, rax
	jb	.LBB8_48
# %bb.44:                               #   in Loop: Header=BB8_41 Depth=1
	add	r13, rax
	mov	rbp, rcx
	jmp	.LBB8_46
.LBB8_45:                               #   in Loop: Header=BB8_41 Depth=1
	call	r14
	movsxd	rax, dword ptr [rax]
	cmp	rax, 4
	jne	.LBB8_79
.LBB8_46:                               #   in Loop: Header=BB8_41 Depth=1
	test	rbp, rbp
	jne	.LBB8_41
# %bb.47:
	xor	ecx, ecx
	jmp	.LBB8_80
.LBB8_48:
.Ltmp29:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, rbp
	mov	rdx, rbp
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp30:
# %bb.49:
.LBB8_50:
	mov	qword ptr [rsp + 8], rbp        # 8-byte Spill
	lea	rbp, [rcx - 1]
	mov	r13, qword ptr [rcx - 1]
	mov	r14, qword ptr [rcx + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB8_52
# %bb.51:
.Ltmp34:
	mov	rdi, r13
	call	rax
.Ltmp35:
.LBB8_52:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB8_54
# %bb.53:
	mov	rdi, r13
	call	qword ptr [rip + free@GOTPCREL]
.LBB8_54:
	mov	rdi, rbp
	call	qword ptr [rip + free@GOTPCREL]
	lea	r14, [rsp + 112]
	mov	rbp, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB8_28
.LBB8_55:
	mov	rbx, r14
	lea	r12, [rcx - 1]
	mov	rbp, qword ptr [rcx - 1]
	mov	r14, qword ptr [rcx + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB8_57
# %bb.56:
.Ltmp24:
	mov	rdi, rbp
	call	rax
.Ltmp25:
.LBB8_57:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB8_59
# %bb.58:
	mov	rdi, rbp
	call	qword ptr [rip + free@GOTPCREL]
.LBB8_59:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	mov	r14, rbx
	jmp	.LBB8_33
.LBB8_60:
	lea	rdi, [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended
	jmp	.LBB8_4
.LBB8_61:
	mov	rbx, r14
	lea	rbp, [rcx - 1]
	mov	r13, qword ptr [rcx - 1]
	mov	r14, qword ptr [rcx + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB8_63
# %bb.62:
.Ltmp31:
	mov	rdi, r13
	call	rax
.Ltmp32:
.LBB8_63:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB8_65
# %bb.64:
	mov	rdi, r13
	call	qword ptr [rip + free@GOTPCREL]
.LBB8_65:
	mov	rdi, rbp
	call	qword ptr [rip + free@GOTPCREL]
	lea	rax, [rip + .LJTI8_0]
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	mov	r14, rbx
	jmp	rcx
.LBB8_66:
	mov	byte ptr [rsp + 112], 1
	lea	rdx, [rsp + 208]
	mov	qword ptr [rdx], r14
	lea	rax, [rip + _RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rdx + 8], rax
.Ltmp44:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rdi, [rsp + 6]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp45:
	jmp	.LBB8_69
.LBB8_67:
	xor	eax, eax
	xchg	byte ptr [rip + _RNvNCNvNtCs3bNtqN8jaZB_3std9panicking12default_hook011FIRST_PANIC], al
	test	al, al
	je	.LBB8_70
# %bb.68:
.Ltmp42:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.125]
	lea	rdi, [rsp + 6]
	mov	edx, 157
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp43:
.LBB8_69:
.Ltmp48:
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
.Ltmp49:
.LBB8_70:
	movzx	edi, byte ptr [rsp + 7]         # 1-byte Folded Reload
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
	jmp	.LBB8_18
.LBB8_71:
	lea	rax, [rsp + 24]
	lea	rdx, [rsp + 208]
	mov	qword ptr [rdx], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std]
	mov	qword ptr [rdx + 8], rax
	lea	rax, [rsp + 32]
	mov	qword ptr [rdx + 16], rax
	lea	rax, [rip + _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRDNtB6_5DebugEL_Bx_3fmtB8_]
	mov	qword ptr [rdx + 24], rax
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.398]
	jmp	.LBB8_73
.LBB8_72:
	call	qword ptr [rsi + 48]
	test	rax, rax
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rcx
	.cfi_adjust_cfa_offset -8
	cmovne	rcx, rax
	cmove	rdx, rax
	lea	rax, [rsp + 112]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rax + 8], rdx
	lea	rcx, [rsp + 24]
	lea	rdx, [rsp + 208]
	mov	qword ptr [rdx], rcx
	lea	rcx, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs3bNtqN8jaZB_3std]
	mov	qword ptr [rdx + 8], rcx
	mov	qword ptr [rdx + 16], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rdx + 24], rax
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.399]
.LBB8_73:
	lea	rdi, [rsp + 6]
.LBB8_74:
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.LBB8_75:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.400]
	lea	rdi, [rsp + 6]
	push	91
	.cfi_adjust_cfa_offset 8
	pop	rdx
	.cfi_adjust_cfa_offset -8
	jmp	.LBB8_74
.LBB8_76:
.Ltmp27:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.96]
	mov	edx, 512
	xor	edi, edi
	mov	rsi, rbp
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp28:
# %bb.77:
.LBB8_78:
	lea	r14, [rsp + 112]
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	jmp	.LBB8_36
.LBB8_79:
	shl	rax, 32
	or	rax, 2
	mov	rcx, rax
.LBB8_80:
	lea	r14, [rsp + 112]
	jmp	.LBB8_36
.LBB8_81:
.Ltmp51:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.50]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.51]
	mov	esi, 173
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp52:
# %bb.82:
.LBB8_83:
.Ltmp41:
	jmp	.LBB8_90
.LBB8_84:
.Ltmp33:
	jmp	.LBB8_90
.LBB8_85:
.Ltmp26:
	mov	rbx, rax
	cmp	qword ptr [r14 + 8], 0
	je	.LBB8_87
# %bb.86:
	mov	rdi, rbp
	call	qword ptr [rip + free@GOTPCREL]
.LBB8_87:
	mov	rdi, r12
	jmp	.LBB8_88
.LBB8_89:
.Ltmp36:
.LBB8_90:
	mov	rbx, rax
	cmp	qword ptr [r14 + 8], 0
	je	.LBB8_92
# %bb.91:
	mov	rdi, r13
	call	qword ptr [rip + free@GOTPCREL]
.LBB8_92:
	mov	rdi, rbp
.LBB8_88:
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB8_96
.LBB8_93:
.Ltmp50:
	mov	rbx, rax
	jmp	.LBB8_96
.LBB8_94:
.Ltmp53:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 104]
	test	rdi, rdi
	je	.LBB8_96
# %bb.95:
.Ltmp54:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
.Ltmp55:
.LBB8_96:
	movzx	edi, byte ptr [rsp + 7]         # 1-byte Folded Reload
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
	jmp	.LBB8_99
.LBB8_97:
.Ltmp56:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB8_98:
.Ltmp21:
	mov	rbx, rax
.LBB8_99:
.Ltmp57:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_
.Ltmp58:
# %bb.100:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB8_101:
.Ltmp59:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end8:
	.size	_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook, .Lfunc_end8-_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook
	.cfi_endproc
	.section	.rodata._RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.long	.LBB8_38-.LJTI8_0
	.long	.LBB8_66-.LJTI8_0
	.long	.LBB8_67-.LJTI8_0
	.long	.LBB8_70-.LJTI8_0
	.section	.gcc_except_table._RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp13-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp13                #   Call between .Ltmp13 and .Ltmp12
	.uleb128 .Ltmp21-.Lfunc_begin3          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp12                #   Call between .Ltmp12 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin3          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp53-.Lfunc_begin3          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin3          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp29-.Ltmp47                #   Call between .Ltmp47 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin3          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin3          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp31-.Ltmp25                #   Call between .Ltmp25 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp49-.Ltmp44                #   Call between .Ltmp44 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp27-.Ltmp49                #   Call between .Ltmp49 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin3          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 18 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin3          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin3          # >> Call Site 19 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin3          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin3          # >> Call Site 20 <<
	.uleb128 .Lfunc_end8-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase2:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
