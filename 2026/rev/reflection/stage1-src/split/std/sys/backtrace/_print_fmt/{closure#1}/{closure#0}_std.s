	.section	.text._RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_
	.type	_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_,@function
_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_: # @_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception33
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r13
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 128
	.cfi_def_cfa_offset 176
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rdi + 8]
	cmp	byte ptr [rax], 0
	je	.LBB172_1
.LBB172_14:
	mov	rax, qword ptr [rbx + 16]
	cmp	byte ptr [rax], 0
	je	.LBB172_31
# %bb.15:
	mov	r15, qword ptr [rbx + 24]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.LBB172_19
# %bb.16:
	mov	r12, qword ptr [rbx + 32]
	cmp	byte ptr [r12], 0
	jne	.LBB172_18
# %bb.17:
	mov	rcx, qword ptr [rbx + 40]
	mov	rcx, qword ptr [rcx]
	xor	edx, edx
	cmp	rax, 1
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.99]
	cmove	rsi, rax
	setne	dl
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	qword ptr [rsp + 48], r15
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rsp + 56], rax
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 64], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 72], rax
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rcx + 8]
	.cfi_escape 0x2e, 0x00
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.100]
	lea	rcx, [rsp + 48]
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
.LBB172_18:
	mov	byte ptr [r12], 0
	mov	qword ptr [r15], 0
.LBB172_19:
	mov	rax, qword ptr [rbx + 40]
	mov	qword ptr [rsp + 32], rax
	mov	qword ptr [rsp + 40], 0
	mov	rax, qword ptr [rbx + 56]
	mov	r15, qword ptr [rax + 8]
	cmp	byte ptr [rax], 0
	jne	.LBB172_21
# %bb.20:
	.cfi_escape 0x2e, 0x00
	mov	rdi, r15
	call	qword ptr [rip + _Unwind_GetIP@GOTPCREL]
	mov	r15, rax
.LBB172_21:
.Ltmp859:
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 48]
	mov	rsi, r14
	call	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name
.Ltmp860:
# %bb.22:
	mov	r8d, dword ptr [r14]
	cmp	r8d, 2
	je	.LBB172_24
# %bb.23:
	cmp	r8d, 3
	jne	.LBB172_25
.LBB172_24:
	mov	qword ptr [rsp + 8], 2
	xor	eax, eax
                                        # implicit-def: $r10d
                                        # implicit-def: $r9d
	xor	r8d, r8d
	jmp	.LBB172_29
.LBB172_1:
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 48]
	mov	rsi, r14
	call	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolizeNtB4_6Symbol4name
	mov	rax, qword ptr [rsp + 48]
	cmp	rax, 3
	je	.LBB172_14
# %bb.2:
	cmp	eax, 2
	jne	.LBB172_5
# %bb.3:
	mov	rsi, qword ptr [rsp + 112]
	mov	rdx, qword ptr [rsp + 120]
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rsp + 8]
	call	_RNvNtNtCsfQL5qMWGko6_4core3str8converts9from_utf8
	cmp	byte ptr [rsp + 8], 0
	jne	.LBB172_14
# %bb.4:
	mov	r15, qword ptr [rsp + 16]
	mov	r12, qword ptr [rsp + 24]
	jmp	.LBB172_7
.LBB172_25:
	mov	rax, qword ptr [r14 + 16]
	test	rax, rax
	je	.LBB172_26
# %bb.27:
	mov	rcx, qword ptr [r14 + 24]
	mov	qword ptr [rsp + 16], rax
	mov	qword ptr [rsp + 24], rcx
	xor	eax, eax
	jmp	.LBB172_28
.LBB172_5:
	mov	r15, qword ptr [rsp + 80]
	test	r15, r15
	je	.LBB172_14
# %bb.6:
	mov	r12, qword ptr [rsp + 88]
.LBB172_7:
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.97]
	mov	esi, 26
	mov	rdx, r15
	mov	rcx, r12
	call	_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in
	mov	r13, qword ptr [rbx + 16]
	test	al, al
	je	.LBB172_8
# %bb.11:
	mov	byte ptr [r13], 1
	jmp	.LBB172_31
.LBB172_8:
	cmp	byte ptr [r13], 0
	je	.LBB172_13
# %bb.9:
	.cfi_escape 0x2e, 0x00
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.98]
	mov	esi, 28
	mov	rdx, r15
	mov	rcx, r12
	call	_RNvXst_NtNtCsfQL5qMWGko6_4core3str7patternReNtB5_7Pattern15is_contained_in
	test	al, al
	je	.LBB172_12
# %bb.10:
	mov	byte ptr [r13], 0
	jmp	.LBB172_31
.LBB172_26:
	mov	eax, 2
.LBB172_28:
	mov	qword ptr [rsp + 8], rax
	mov	r9d, dword ptr [r14 + 4]
	mov	eax, dword ptr [r14 + 8]
	mov	r10d, dword ptr [r14 + 12]
.LBB172_29:
.Ltmp861:
	.cfi_escape 0x2e, 0x10
	lea	rdi, [rsp + 32]
	lea	rdx, [rsp + 48]
	lea	rcx, [rsp + 8]
	mov	rsi, r15
	push	r10
	.cfi_adjust_cfa_offset 8
	push	rax
	.cfi_adjust_cfa_offset 8
	call	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column
	add	rsp, 16
	.cfi_adjust_cfa_offset -16
.Ltmp862:
# %bb.30:
	mov	rcx, qword ptr [rbx + 48]
	mov	byte ptr [rcx], al
	mov	rax, qword ptr [rsp + 32]
	inc	qword ptr [rax + 24]
.LBB172_31:
	add	rsp, 128
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB172_12:
	.cfi_def_cfa_offset 176
	cmp	byte ptr [r13], 0
	jne	.LBB172_14
.LBB172_13:
	mov	rax, qword ptr [rbx + 24]
	inc	qword ptr [rax]
	jmp	.LBB172_14
.LBB172_32:
.Ltmp863:
	mov	rcx, qword ptr [rsp + 32]
	inc	qword ptr [rcx + 24]
	.cfi_escape 0x2e, 0x00
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.Lfunc_end172:
	.size	_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_, .Lfunc_end172-_RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_
	.cfi_endproc
	.section	.gcc_except_table._RNCNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_00B9_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table172:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Lfunc_begin33-.Lfunc_begin33  # >> Call Site 1 <<
	.uleb128 .Ltmp859-.Lfunc_begin33        #   Call between .Lfunc_begin33 and .Ltmp859
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp859-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Ltmp860-.Ltmp859              #   Call between .Ltmp859 and .Ltmp860
	.uleb128 .Ltmp863-.Lfunc_begin33        #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin33        # >> Call Site 3 <<
	.uleb128 .Ltmp861-.Ltmp860              #   Call between .Ltmp860 and .Ltmp861
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin33        # >> Call Site 4 <<
	.uleb128 .Ltmp862-.Ltmp861              #   Call between .Ltmp861 and .Ltmp862
	.uleb128 .Ltmp863-.Lfunc_begin33        #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp862-.Lfunc_begin33        # >> Call Site 5 <<
	.uleb128 .Lfunc_end172-.Ltmp862         #   Call between .Ltmp862 and .Lfunc_end172
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.p2align	2, 0x0
                                        # -- End function
