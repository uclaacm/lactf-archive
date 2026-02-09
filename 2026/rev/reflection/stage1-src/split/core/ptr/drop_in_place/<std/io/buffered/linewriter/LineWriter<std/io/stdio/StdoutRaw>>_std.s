	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_
.Lfunc_begin85:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception85
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
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	cmp	byte ptr [rdi + 24], 0
	jne	.LBB369_35
# %bb.1:
	mov	r12, qword ptr [rbx + 16]
	test	r12, r12
	je	.LBB369_2
# %bb.6:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	xor	r14d, r14d
	mov	r15, qword ptr [rip + free@GOTPCREL]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.366]
	mov	qword ptr [rsp], rax            # 8-byte Spill
	jmp	.LBB369_7
.LBB369_19:                             #   in Loop: Header=BB369_7 Depth=1
	cmp	byte ptr [rax + 16], 35
	jne	.LBB369_15
	.p2align	4
.LBB369_26:                             #   in Loop: Header=BB369_7 Depth=1
	cmp	r14, r12
	jae	.LBB369_3
.LBB369_7:                              # =>This Inner Loop Header: Depth=1
	mov	byte ptr [rbx + 24], 1
	mov	r13, r12
	sub	r13, r14
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rbp, [rax + r14]
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r13
	call	qword ptr [rip + write@GOTPCREL]
	cmp	rax, -1
	je	.LBB369_11
# %bb.8:                                #   in Loop: Header=BB369_7 Depth=1
	mov	byte ptr [rbx + 24], 0
	jmp	.LBB369_9
	.p2align	4
.LBB369_11:                             #   in Loop: Header=BB369_7 Depth=1
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	ecx, dword ptr [rax]
	mov	rax, rcx
	shl	rax, 32
	or	rax, 2
	mov	byte ptr [rbx + 24], 0
	cmp	ecx, 9
	cmove	rax, r13
	jne	.LBB369_12
.LBB369_9:                              #   in Loop: Header=BB369_7 Depth=1
	test	rax, rax
	je	.LBB369_16
# %bb.10:                               #   in Loop: Header=BB369_7 Depth=1
	add	r14, rax
	jmp	.LBB369_26
.LBB369_12:                             #   in Loop: Header=BB369_7 Depth=1
	mov	ecx, eax
	and	ecx, 3
	lea	rdx, [rip + .LJTI369_0]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB369_20:                             #   in Loop: Header=BB369_7 Depth=1
	cmp	byte ptr [rax + 15], 35
	jne	.LBB369_15
# %bb.21:                               #   in Loop: Header=BB369_7 Depth=1
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	mov	rbp, qword ptr [rax - 1]
	mov	r13, qword ptr [rax + 7]
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.LBB369_23
# %bb.22:                               #   in Loop: Header=BB369_7 Depth=1
.Ltmp1234:
	mov	rdi, rbp
	call	rax
.Ltmp1235:
.LBB369_23:                             #   in Loop: Header=BB369_7 Depth=1
	cmp	qword ptr [r13 + 8], 0
	je	.LBB369_25
# %bb.24:                               #   in Loop: Header=BB369_7 Depth=1
	mov	rdi, rbp
	call	r15
.LBB369_25:                             #   in Loop: Header=BB369_7 Depth=1
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	call	r15
	jmp	.LBB369_26
.LBB369_18:                             #   in Loop: Header=BB369_7 Depth=1
	mov	rcx, rax
	movabs	rdx, -4294967296
	and	rcx, rdx
	movabs	rdx, 17179869184
	cmp	rcx, rdx
	je	.LBB369_26
	jmp	.LBB369_15
.LBB369_13:                             #   in Loop: Header=BB369_7 Depth=1
	mov	rcx, rax
	movabs	rdx, -4294967296
	and	rcx, rdx
	movabs	rdx, 150323855360
	cmp	rcx, rdx
	je	.LBB369_26
.LBB369_15:
	mov	qword ptr [rsp], rax            # 8-byte Spill
.LBB369_16:
	test	r14, r14
	je	.LBB369_17
# %bb.27:
	mov	rdi, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rsi, rbp
	mov	rdx, r13
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rcx, qword ptr [rsp]            # 8-byte Reload
	jmp	.LBB369_28
.LBB369_2:
	xor	ecx, ecx
	mov	eax, ecx
	and	eax, 3
	cmp	eax, 1
	jne	.LBB369_35
	jmp	.LBB369_30
.LBB369_3:
	xor	r13d, r13d
	mov	ecx, 0
	cmp	r14, r12
	ja	.LBB369_4
.LBB369_28:
	mov	qword ptr [rbx + 16], r13
	mov	eax, ecx
	and	eax, 3
	cmp	eax, 1
	je	.LBB369_30
.LBB369_35:
	cmp	qword ptr [rbx], 0
	je	.LBB369_48
.LBB369_36:
	mov	rdi, qword ptr [rbx + 8]
	add	rsp, 24
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
.LBB369_17:
	.cfi_def_cfa_offset 80
	mov	rcx, qword ptr [rsp]            # 8-byte Reload
	mov	eax, ecx
	and	eax, 3
	cmp	eax, 1
	jne	.LBB369_35
.LBB369_30:
	lea	r14, [rcx - 1]
	mov	r12, qword ptr [rcx - 1]
	mov	r13, qword ptr [rcx + 7]
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.LBB369_32
# %bb.31:
.Ltmp1243:
	mov	rdi, r12
	call	rax
.Ltmp1244:
.LBB369_32:
	cmp	qword ptr [r13 + 8], 0
	je	.LBB369_34
# %bb.33:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB369_34:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	cmp	qword ptr [rbx], 0
	jne	.LBB369_36
.LBB369_48:
	add	rsp, 24
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
.LBB369_4:
	.cfi_def_cfa_offset 80
.Ltmp1240:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.36]
	xor	edi, edi
	mov	rsi, r14
	mov	rdx, r12
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp1241:
# %bb.5:
.LBB369_41:
.Ltmp1245:
	mov	r15, rax
	cmp	qword ptr [r13 + 8], 0
	je	.LBB369_43
# %bb.42:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB369_43:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB369_45
.LBB369_37:
.Ltmp1236:
	mov	r15, rax
	cmp	qword ptr [r13 + 8], 0
	je	.LBB369_39
# %bb.38:
	mov	rdi, rbp
	call	qword ptr [rip + free@GOTPCREL]
.LBB369_39:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.Ltmp1237:
	mov	rdi, rbx
	mov	rsi, r14
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs3bNtqN8jaZB_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardEBT_
.Ltmp1238:
	jmp	.LBB369_45
.LBB369_40:
.Ltmp1239:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB369_44:
.Ltmp1242:
	mov	r15, rax
.LBB369_45:
	cmp	qword ptr [rbx], 0
	je	.LBB369_47
# %bb.46:
	mov	rdi, qword ptr [rbx + 8]
	call	qword ptr [rip + free@GOTPCREL]
.LBB369_47:
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end369:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_, .Lfunc_end369-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_
	.cfi_endproc
	.section	.rodata._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_,"a",@progbits
	.p2align	2, 0x0
.LJTI369_0:
	.long	.LBB369_19-.LJTI369_0
	.long	.LBB369_20-.LJTI369_0
	.long	.LBB369_18-.LJTI369_0
	.long	.LBB369_13-.LJTI369_0
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table369:
.Lexception85:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end85-.Lcst_begin85
.Lcst_begin85:
	.uleb128 .Ltmp1234-.Lfunc_begin85       # >> Call Site 1 <<
	.uleb128 .Ltmp1235-.Ltmp1234            #   Call between .Ltmp1234 and .Ltmp1235
	.uleb128 .Ltmp1236-.Lfunc_begin85       #     jumps to .Ltmp1236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1235-.Lfunc_begin85       # >> Call Site 2 <<
	.uleb128 .Ltmp1243-.Ltmp1235            #   Call between .Ltmp1235 and .Ltmp1243
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1243-.Lfunc_begin85       # >> Call Site 3 <<
	.uleb128 .Ltmp1244-.Ltmp1243            #   Call between .Ltmp1243 and .Ltmp1244
	.uleb128 .Ltmp1245-.Lfunc_begin85       #     jumps to .Ltmp1245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1240-.Lfunc_begin85       # >> Call Site 4 <<
	.uleb128 .Ltmp1241-.Ltmp1240            #   Call between .Ltmp1240 and .Ltmp1241
	.uleb128 .Ltmp1242-.Lfunc_begin85       #     jumps to .Ltmp1242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1237-.Lfunc_begin85       # >> Call Site 5 <<
	.uleb128 .Ltmp1238-.Ltmp1237            #   Call between .Ltmp1237 and .Ltmp1238
	.uleb128 .Ltmp1239-.Lfunc_begin85       #     jumps to .Ltmp1239
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1238-.Lfunc_begin85       # >> Call Site 6 <<
	.uleb128 .Lfunc_end369-.Ltmp1238        #   Call between .Ltmp1238 and .Lfunc_end369
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end85:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase27:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
