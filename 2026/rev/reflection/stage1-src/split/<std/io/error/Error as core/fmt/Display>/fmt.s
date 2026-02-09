	.section	.text._RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.type	_RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,@function
_RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt: # @_RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
.Lfunc_begin88:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception88
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 200
	.cfi_def_cfa_offset 240
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rdi, qword ptr [rdi]
	mov	eax, edi
	and	eax, 3
	lea	rcx, [rip + .LJTI382_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB382_14:
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rdi, rsi
	mov	rsi, rax
	add	rsp, 200
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	_RNvMsa_NtCsfQL5qMWGko6_4core3fmtNtB5_9Formatter3pad # TAILCALL
.LBB382_3:
	.cfi_def_cfa_offset 240
	mov	r12, rsi
	shr	rdi, 32
	mov	dword ptr [rsp + 12], edi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 176], xmm0
	movaps	xmmword ptr [rsp + 160], xmm0
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	lea	rsi, [rsp + 64]
	mov	edx, 128
                                        # kill: def $edi killed $edi killed $rdi
	call	qword ptr [rip + __xpg_strerror_r@GOTPCREL]
	test	eax, eax
	js	.LBB382_19
# %bb.4:
	lea	rbx, [rsp + 64]
	mov	rdi, rbx
	call	qword ptr [rip + strlen@GOTPCREL]
	lea	rdi, [rsp + 40]
	mov	rsi, rbx
	mov	rdx, rax
	call	_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
	xor	eax, eax
	cmp	rax, qword ptr [rsp + 40]
	jno	.LBB382_5
# %bb.6:
	mov	r14, qword ptr [rsp + 48]
	mov	rbx, qword ptr [rsp + 56]
	test	rbx, rbx
	je	.LBB382_7
# %bb.8:
	mov	rdi, rbx
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB382_20
# %bb.9:
	mov	r15, rax
	jmp	.LBB382_10
.LBB382_1:
	shr	rdi, 32
	lea	rax, [rip + .Lswitch.table._RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	rax, qword ptr [rax + 8*rdi]
	lea	rcx, [rip + .Lswitch.table._RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt.138.rel]
	movsxd	rdx, dword ptr [rcx + 4*rdi]
	add	rdx, rcx
	mov	qword ptr [rsp + 40], rdx
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rsp + 40]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 72], rax
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rcx, [rsp + 64]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
	jmp	.LBB382_2
.LBB382_15:
	mov	rax, qword ptr [rdi - 1]
	mov	rcx, qword ptr [rdi + 7]
	mov	rcx, qword ptr [rcx + 32]
	mov	rdi, rax
	add	rsp, 200
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	rcx                             # TAILCALL
.LBB382_5:
	.cfi_def_cfa_offset 240
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 32], rax
	movups	xmm0, xmmword ptr [rsp + 40]
	movaps	xmmword ptr [rsp + 16], xmm0
	jmp	.LBB382_11
.LBB382_7:
	mov	r15d, 1
.LBB382_10:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [rsp + 16], rbx
	mov	qword ptr [rsp + 24], r15
	mov	qword ptr [rsp + 32], rbx
.LBB382_11:
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rip + _RNvXsn_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rsp + 72], rax
	lea	rax, [rsp + 12]
	mov	qword ptr [rsp + 80], rax
	lea	rax, [rip + _RNvXs9_NtNtNtCsfQL5qMWGko6_4core3fmt3num3implNtB9_7Display3fmt]
	mov	qword ptr [rsp + 88], rax
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
.Ltmp1271:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.751]
	lea	rcx, [rsp + 64]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
.Ltmp1272:
# %bb.12:
	cmp	qword ptr [rsp + 16], 0
	je	.LBB382_2
# %bb.13:
	mov	rdi, qword ptr [rsp + 24]
	mov	ebx, eax
	call	qword ptr [rip + free@GOTPCREL]
	mov	eax, ebx
.LBB382_2:
	add	rsp, 200
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB382_19:
	.cfi_def_cfa_offset 240
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.485]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.487]
	mov	esi, 37
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB382_20:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB382_16:
.Ltmp1273:
	mov	rbx, rax
	cmp	qword ptr [rsp + 16], 0
	je	.LBB382_18
# %bb.17:
	mov	rdi, qword ptr [rsp + 24]
	call	qword ptr [rip + free@GOTPCREL]
.LBB382_18:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end382:
	.size	_RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt, .Lfunc_end382-_RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt
	.cfi_endproc
	.section	.rodata._RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"a",@progbits
	.p2align	2, 0x0
.LJTI382_0:
	.long	.LBB382_14-.LJTI382_0
	.long	.LBB382_15-.LJTI382_0
	.long	.LBB382_3-.LJTI382_0
	.long	.LBB382_1-.LJTI382_0
	.section	.gcc_except_table._RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt,"a",@progbits
	.p2align	2, 0x0
GCC_except_table382:
.Lexception88:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end88-.Lcst_begin88
.Lcst_begin88:
	.uleb128 .Lfunc_begin88-.Lfunc_begin88  # >> Call Site 1 <<
	.uleb128 .Ltmp1271-.Lfunc_begin88       #   Call between .Lfunc_begin88 and .Ltmp1271
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1271-.Lfunc_begin88       # >> Call Site 2 <<
	.uleb128 .Ltmp1272-.Ltmp1271            #   Call between .Ltmp1271 and .Ltmp1272
	.uleb128 .Ltmp1273-.Lfunc_begin88       #     jumps to .Ltmp1273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1272-.Lfunc_begin88       # >> Call Site 3 <<
	.uleb128 .Lfunc_end382-.Ltmp1272        #   Call between .Ltmp1272 and .Lfunc_end382
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end88:
	.p2align	2, 0x0
                                        # -- End function
