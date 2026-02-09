	.section	.text._RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback
	.type	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback,@function
_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback: # @_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception14
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
	sub	rsp, 88
	.cfi_def_cfa_offset 144
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdx
	mov	r14, qword ptr [rdi]
	mov	r12, qword ptr [rdi + 8]
	mov	r13, qword ptr [rdi + 16]
	movzx	eax, word ptr [rdi + 24]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	mov	rax, qword ptr [rdx + 16]
	test	r12, r12
	mov	qword ptr [rsp + 80], r14       # 8-byte Spill
	je	.LBB138_7
# %bb.1:
	test	r14, r14
	je	.LBB138_11
# %bb.2:
	test	rax, rax
	jne	.LBB138_4
# %bb.3:
	cmp	byte ptr [r12], 0
	je	.LBB138_19
.LBB138_4:
	mov	rdi, r12
	call	qword ptr [rip + strlen@GOTPCREL]
	mov	r15, rax
	test	rax, rax
	je	.LBB138_34
# %bb.5:
	mov	rdi, r15
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB138_57
# %bb.6:
	mov	rdi, rax
	jmp	.LBB138_35
.LBB138_7:
	test	r14, r14
	je	.LBB138_11
# %bb.8:
	test	rax, rax
	je	.LBB138_19
# %bb.9:
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
.LBB138_10:
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.LBB138_37
.LBB138_11:
.Ltmp364:
	lea	rdi, [rsp + 24]
	call	_RNvNtCs3bNtqN8jaZB_3std3env11current_exe
.Ltmp365:
# %bb.12:
	mov	rbp, qword ptr [rsp + 24]
	mov	rax, rbp
	neg	rax
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	jno	.LBB138_32
# %bb.13:
	mov	rax, qword ptr [rsp + 32]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB138_31
# %bb.14:
	lea	r15, [rax - 1]
	mov	r12, qword ptr [rax - 1]
	mov	r14, qword ptr [rax + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB138_16
# %bb.15:
.Ltmp367:
	mov	rdi, r12
	call	rax
.Ltmp368:
.LBB138_16:
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	cmp	qword ptr [r14 + 8], 0
	je	.LBB138_18
# %bb.17:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB138_18:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.LBB138_37
.LBB138_19:
	xor	eax, eax
	cmp	rax, qword ptr [rbx + 24]
	jo	.LBB138_28
# %bb.20:
	mov	rcx, qword ptr [rbx + 40]
	test	rcx, rcx
	je	.LBB138_28
# %bb.21:
	mov	rax, qword ptr [rbx + 32]
	imul	rcx, rcx, 88
	jmp	.LBB138_23
	.p2align	4
.LBB138_22:                             #   in Loop: Header=BB138_23 Depth=1
	add	rax, 88
	add	rcx, -88
	je	.LBB138_28
.LBB138_23:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rax + 40], r14
	ja	.LBB138_22
# %bb.24:                               #   in Loop: Header=BB138_23 Depth=1
	cmp	r14, qword ptr [rax + 48]
	jae	.LBB138_22
# %bb.25:                               #   in Loop: Header=BB138_23 Depth=1
	mov	r15, qword ptr [rax + 16]
	test	r15, r15
	je	.LBB138_22
# %bb.26:
	mov	r12, qword ptr [rax + 8]
	mov	rdi, r15
	call	_RNvCsL6e0J8m5bd_7___rustc12___rust_alloc
	test	rax, rax
	je	.LBB138_57
# %bb.27:
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rdi, rax
	jmp	.LBB138_36
.LBB138_28:
.Ltmp359:
	lea	rdi, [rsp + 24]
	call	_RNvNtCs3bNtqN8jaZB_3std3env11current_exe
.Ltmp360:
# %bb.29:
	movabs	rcx, -9223372036854775808
	mov	rbp, qword ptr [rsp + 24]
	mov	rax, qword ptr [rsp + 32]
	cmp	rbp, rcx
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	jne	.LBB138_33
# %bb.30:
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB138_50
.LBB138_31:
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.LBB138_38
.LBB138_32:
	mov	rax, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	r15, qword ptr [rsp + 40]
	jmp	.LBB138_38
.LBB138_33:
	mov	r15, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	jmp	.LBB138_38
.LBB138_34:
	mov	edi, 1
.LBB138_35:
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
.LBB138_36:
	mov	rsi, r12
	mov	rdx, r15
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rbp, r15
.LBB138_37:
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
.LBB138_38:
	test	rdx, rdx
	mov	eax, 8
	mov	r14, r13
	cmove	r14, rax
	test	r13, r13
	cmovne	r13, rdx
	cmove	r14, rax
	test	r13, r13
	je	.LBB138_42
# %bb.39:
	mov	r12d, r13d
	shl	r12d, 4
	mov	rdi, r12
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB138_55
# %bb.40:
	cmp	r13, 1
	jne	.LBB138_43
# %bb.41:
	xor	ecx, ecx
	mov	r10, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB138_46
.LBB138_42:
	xor	r10d, r10d
	jmp	.LBB138_47
.LBB138_43:
	mov	edx, r13d
	and	edx, 65534
	mov	rsi, rax
	add	rsi, 24
	lea	rdi, [r14 + 96]
	xor	ecx, ecx
	mov	r10, qword ptr [rsp + 16]       # 8-byte Reload
	.p2align	4
.LBB138_44:                             # =>This Inner Loop Header: Depth=1
	mov	r8, qword ptr [rdi - 80]
	mov	r9, qword ptr [rdi - 56]
	mov	qword ptr [rsi - 24], r8
	mov	qword ptr [rsi - 16], r9
	mov	r8, qword ptr [rdi - 24]
	mov	r9, qword ptr [rdi]
	mov	qword ptr [rsi - 8], r8
	mov	qword ptr [rsi], r9
	add	rcx, 2
	add	rsi, 32
	add	rdi, 112
	cmp	rdx, rcx
	jne	.LBB138_44
# %bb.45:
	test	r13b, 1
	je	.LBB138_47
.LBB138_46:
	imul	rdx, rcx, 56
	mov	rsi, qword ptr [r14 + rdx + 16]
	mov	rdx, qword ptr [r14 + rdx + 40]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], rsi
	mov	qword ptr [rax + rcx + 8], rdx
.LBB138_47:
	mov	qword ptr [rsp + 24], rbp
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 32], rcx
	mov	qword ptr [rsp + 40], r15
	mov	qword ptr [rsp + 48], r10
	mov	qword ptr [rsp + 56], rax
	mov	qword ptr [rsp + 64], r10
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	mov	qword ptr [rsp + 72], rax
	mov	r14, qword ptr [rbx + 16]
	cmp	r14, qword ptr [rbx]
	jne	.LBB138_49
# %bb.48:
.Ltmp373:
	mov	rdi, rbx
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryE8grow_oneBU_
.Ltmp374:
.LBB138_49:
	mov	rax, qword ptr [rbx + 8]
	imul	rcx, r14, 56
	mov	rdx, qword ptr [rsp + 72]
	mov	qword ptr [rax + rcx + 48], rdx
	movups	xmm0, xmmword ptr [rsp + 24]
	movups	xmm1, xmmword ptr [rsp + 40]
	movups	xmm2, xmmword ptr [rsp + 56]
	movups	xmmword ptr [rax + rcx + 32], xmm2
	movups	xmmword ptr [rax + rcx + 16], xmm1
	movups	xmmword ptr [rax + rcx], xmm0
	inc	r14
	mov	qword ptr [rbx + 16], r14
	xor	eax, eax
	add	rsp, 88
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
.LBB138_50:
	.cfi_def_cfa_offset 144
	lea	r15, [rax - 1]
	mov	r12, qword ptr [rax - 1]
	mov	r14, qword ptr [rax + 7]
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB138_52
# %bb.51:
.Ltmp361:
	mov	rdi, r12
	call	rax
.Ltmp362:
.LBB138_52:
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	cmp	qword ptr [r14 + 8], 0
	je	.LBB138_54
# %bb.53:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB138_54:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB138_10
.LBB138_55:
.Ltmp370:
	mov	rdi, r12
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp371:
# %bb.56:
.LBB138_57:
.Ltmp357:
	mov	rdi, r15
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp358:
# %bb.58:
.LBB138_59:
.Ltmp363:
	jmp	.LBB138_61
.LBB138_60:
.Ltmp369:
.LBB138_61:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB138_63
# %bb.62:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB138_63:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.LBB138_64:
.Ltmp375:
	lea	rdi, [rsp + 24]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7LibraryEBO_
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.LBB138_65:
.Ltmp372:
	test	rbp, rbp
	je	.LBB138_68
# %bb.66:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.LBB138_67:
.Ltmp366:
.LBB138_68:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.Lfunc_end138:
	.size	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback, .Lfunc_end138-_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback
	.cfi_endproc
	.section	.gcc_except_table._RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli20libs_dl_iterate_phdr8callback,"a",@progbits
	.p2align	2, 0x0
GCC_except_table138:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp364-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin14        #     jumps to .Ltmp366
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp367-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin14        #     jumps to .Ltmp369
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp366-.Lfunc_begin14        #     jumps to .Ltmp366
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp360-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp373-.Ltmp360              #   Call between .Ltmp360 and .Ltmp373
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Ltmp374-.Ltmp373              #   Call between .Ltmp373 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin14        #     jumps to .Ltmp375
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp361-.Lfunc_begin14        # >> Call Site 6 <<
	.uleb128 .Ltmp362-.Ltmp361              #   Call between .Ltmp361 and .Ltmp362
	.uleb128 .Ltmp363-.Lfunc_begin14        #     jumps to .Ltmp363
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp370-.Lfunc_begin14        # >> Call Site 7 <<
	.uleb128 .Ltmp371-.Ltmp370              #   Call between .Ltmp370 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin14        #     jumps to .Ltmp372
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin14        # >> Call Site 8 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp366-.Lfunc_begin14        #     jumps to .Ltmp366
	.byte	1                               #   On action: 1
.Lcst_end14:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase7:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
