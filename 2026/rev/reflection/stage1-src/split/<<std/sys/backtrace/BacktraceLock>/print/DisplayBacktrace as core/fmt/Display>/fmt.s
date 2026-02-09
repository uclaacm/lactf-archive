	.section	.text._RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.type	_RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,@function
_RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt: # @_RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception10
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
	sub	rsp, 184
	.cfi_def_cfa_offset 240
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 104], rsi      # 8-byte Spill
	movzx	eax, byte ptr [rdi]
	mov	byte ptr [rsp + 11], al         # 1-byte Spill
	mov	byte ptr [rsp + 13], al
	mov	r15d, 512
	mov	edi, 512
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB40_34
# %bb.1:
	mov	r12, rax
	mov	qword ptr [rsp + 48], 512
	mov	qword ptr [rsp + 56], rax
	mov	rbp, qword ptr [rip + getcwd@GOTPCREL]
	mov	rbx, qword ptr [rip + __errno_location@GOTPCREL]
	lea	r14, [rsp + 48]
	.p2align	4
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
	mov	rdi, r12
	mov	rsi, r15
	call	rbp
	test	rax, rax
	jne	.LBB40_6
# %bb.3:                                #   in Loop: Header=BB40_2 Depth=1
	call	rbx
	movsxd	r13, dword ptr [rax]
	cmp	r13, 34
	jne	.LBB40_12
# %bb.4:                                #   in Loop: Header=BB40_2 Depth=1
	mov	qword ptr [rsp + 64], r15
.Ltmp113:
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r14
	mov	rsi, r15
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp114:
# %bb.5:                                #   in Loop: Header=BB40_2 Depth=1
	mov	r15, qword ptr [rsp + 48]
	mov	r12, qword ptr [rsp + 56]
	jmp	.LBB40_2
.LBB40_6:
	mov	rdi, r12
	call	qword ptr [rip + strlen@GOTPCREL]
	mov	rbp, rax
	cmp	r15, rax
	jbe	.LBB40_20
# %bb.7:
	test	rbp, rbp
	movabs	rbx, -9223372036854775808
	je	.LBB40_21
# %bb.8:
	mov	rdi, r12
	mov	rsi, rbp
	call	qword ptr [rip + realloc@GOTPCREL]
	mov	r13, rax
	mov	r15, rbp
	test	rax, rax
	je	.LBB40_35
# %bb.9:
	cmp	r15, rbx
	movzx	r12d, byte ptr [rsp + 11]       # 1-byte Folded Reload
	jne	.LBB40_23
	jmp	.LBB40_10
.LBB40_12:
	shl	r13, 32
	or	r13, 2
	test	r15, r15
	je	.LBB40_14
# %bb.13:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB40_14:
	movzx	r12d, byte ptr [rsp + 11]       # 1-byte Folded Reload
	movabs	rbx, -9223372036854775808
	mov	eax, r13d
	and	eax, 3
	cmp	eax, 1
	jne	.LBB40_11
.LBB40_15:
	lea	r15, [r13 - 1]
	mov	r12, qword ptr [r13 - 1]
	mov	r13, qword ptr [r13 + 7]
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.LBB40_17
# %bb.16:
.Ltmp105:
	mov	rdi, r12
	call	rax
.Ltmp106:
.LBB40_17:
	cmp	qword ptr [r13 + 8], 0
	je	.LBB40_19
# %bb.18:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB40_19:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
                                        # implicit-def: $r13
                                        # implicit-def: $rbp
	mov	r15, rbx
	jmp	.LBB40_22
.LBB40_20:
	mov	r13, r12
	movabs	rbx, -9223372036854775808
	cmp	r15, rbx
	movzx	r12d, byte ptr [rsp + 11]       # 1-byte Folded Reload
	jne	.LBB40_23
.LBB40_10:
	mov	eax, r13d
	and	eax, 3
	cmp	eax, 1
	je	.LBB40_15
.LBB40_11:
                                        # implicit-def: $r13
                                        # implicit-def: $rbp
	mov	r15, rbx
	jmp	.LBB40_23
.LBB40_21:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	mov	r13d, 1
	xor	ebp, ebp
	xor	r15d, r15d
.LBB40_22:
	movzx	r12d, byte ptr [rsp + 11]       # 1-byte Folded Reload
.LBB40_23:
	mov	byte ptr [rsp + 40], r12b
	mov	qword ptr [rsp + 16], r15
	mov	qword ptr [rsp + 24], r13
	mov	qword ptr [rsp + 32], rbp
	mov	rbx, qword ptr [rsp + 104]      # 8-byte Reload
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
.Ltmp108:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.420]
	mov	edx, 17
	call	qword ptr [rax + 24]
.Ltmp109:
# %bb.24:
	test	al, al
	jne	.LBB40_27
# %bb.25:
	mov	qword ptr [rsp + 144], rbx
	mov	qword ptr [rsp + 168], 0
	mov	byte ptr [rsp + 176], r12b
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 152], rax
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.421]
	mov	qword ptr [rsp + 160], rax
	mov	qword ptr [rsp + 112], 0
	mov	byte ptr [rsp + 12], 0
	mov	qword ptr [rsp + 120], 0
	mov	byte ptr [rsp + 14], 1
	mov	byte ptr [rsp + 15], r12b
	lea	rax, [rsp + 13]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rsp + 112]
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rsp + 12]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rsp + 144]
	mov	qword ptr [rsp + 72], rax
	lea	rax, [rsp + 15]
	mov	qword ptr [rsp + 80], rax
	lea	rax, [rsp + 120]
	mov	qword ptr [rsp + 88], rax
	lea	rax, [rsp + 14]
	mov	qword ptr [rsp + 96], rax
	mov	qword ptr [rsp + 128], r14
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.422]
	mov	qword ptr [rsp + 136], rax
	lea	rdi, [rip + _RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn]
	lea	rsi, [rsp + 128]
	call	qword ptr [rip + _Unwind_Backtrace@GOTPCREL]
	cmp	byte ptr [rsp + 12], 0
	je	.LBB40_30
.LBB40_26:
	mov	r15, qword ptr [rsp + 16]
.LBB40_27:
	mov	bl, 1
	shl	r15
	mov	al, 1
	test	r15, r15
	je	.LBB40_29
.LBB40_28:
	mov	rdi, qword ptr [rsp + 24]
	call	qword ptr [rip + free@GOTPCREL]
	mov	eax, ebx
.LBB40_29:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 184
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
.LBB40_30:
	.cfi_def_cfa_offset 240
	test	r12b, r12b
	jne	.LBB40_33
# %bb.31:
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
.Ltmp110:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.423]
	mov	edx, 88
	call	qword ptr [rax + 24]
.Ltmp111:
# %bb.32:
	test	al, al
	jne	.LBB40_26
.LBB40_33:
	xor	ebx, ebx
	mov	rcx, qword ptr [rsp + 16]
	shl	rcx
	mov	eax, 0
	test	rcx, rcx
	je	.LBB40_29
	jmp	.LBB40_28
.LBB40_34:
	mov	edi, 512
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB40_35:
.Ltmp102:
	mov	rdi, rbp
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp103:
# %bb.36:
.LBB40_37:
.Ltmp107:
	mov	rbx, rax
	cmp	qword ptr [r13 + 8], 0
	je	.LBB40_39
# %bb.38:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB40_39:
	mov	rdi, r15
	jmp	.LBB40_46
.LBB40_40:
.Ltmp104:
	mov	rbx, rax
	jmp	.LBB40_45
.LBB40_41:
.Ltmp112:
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 16]
	shl	rax
	test	rax, rax
	je	.LBB40_47
# %bb.42:
	mov	rdi, qword ptr [rsp + 24]
	jmp	.LBB40_46
.LBB40_43:
.Ltmp115:
	mov	rbx, rax
	cmp	qword ptr [rsp + 48], 0
	je	.LBB40_47
# %bb.44:
	mov	r12, qword ptr [rsp + 56]
.LBB40_45:
	mov	rdi, r12
.LBB40_46:
	call	qword ptr [rip + free@GOTPCREL]
.LBB40_47:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end40:
	.size	_RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt, .Lfunc_end40-_RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_endproc
	.section	.gcc_except_table._RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"a",@progbits
	.p2align	2, 0x0
GCC_except_table40:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp113-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin10        #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin10        #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp111-.Ltmp108              #   Call between .Ltmp108 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin10        #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp102-.Ltmp111              #   Call between .Ltmp111 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin10        #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Lfunc_end40-.Ltmp103          #   Call between .Ltmp103 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
