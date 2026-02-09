	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std
.Lfunc_begin48:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception48
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 104
	.cfi_def_cfa_offset 128
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rcx, qword ptr [rdi]
	test	rcx, rcx
	je	.LBB258_1
# %bb.2:
	mov	rdx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 16]
	mov	qword ptr [rsp + 16], 0
	mov	qword ptr [rsp + 24], rcx
	mov	qword ptr [rsp + 32], rdx
	mov	qword ptr [rsp + 48], 0
	mov	qword ptr [rsp + 56], rcx
	mov	qword ptr [rsp + 64], rdx
	mov	ecx, 1
	jmp	.LBB258_3
.LBB258_1:
	xor	ecx, ecx
	xor	eax, eax
.LBB258_3:
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 40], rcx
	mov	qword ptr [rsp + 72], rax
	lea	rbx, [rsp + 80]
	lea	r14, [rsp + 8]
	.p2align	4
.LBB258_4:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, rbx
	mov	rsi, r14
	call	_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 80]
	test	rax, rax
	je	.LBB258_11
# %bb.5:                                #   in Loop: Header=BB258_4 Depth=1
	mov	rcx, qword ptr [rsp + 96]
	shl	rcx, 4
	cmp	byte ptr [rax + rcx], 82
	jne	.LBB258_4
# %bb.6:                                #   in Loop: Header=BB258_4 Depth=1
	add	rax, rcx
	mov	rcx, qword ptr [rax + 8]
	lock		dec	qword ptr [rcx]
	jne	.LBB258_4
# %bb.7:                                #   in Loop: Header=BB258_4 Depth=1
	#MEMBARRIER
	mov	rdi, qword ptr [rax + 8]
.Ltmp981:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp982:
	jmp	.LBB258_4
.LBB258_11:
	add	rsp, 104
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB258_9:
	.cfi_def_cfa_offset 128
.Ltmp983:
	mov	rbx, rax
.Ltmp984:
	lea	rdi, [rsp + 8]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std
.Ltmp985:
# %bb.10:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB258_8:
.Ltmp986:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end258:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std, .Lfunc_end258-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table258:
.Lexception48:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end48-.Lcst_begin48
.Lcst_begin48:
	.uleb128 .Lfunc_begin48-.Lfunc_begin48  # >> Call Site 1 <<
	.uleb128 .Ltmp981-.Lfunc_begin48        #   Call between .Lfunc_begin48 and .Ltmp981
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin48        # >> Call Site 2 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin48        #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin48        # >> Call Site 3 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp986-.Lfunc_begin48        #     jumps to .Ltmp986
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp985-.Lfunc_begin48        # >> Call Site 4 <<
	.uleb128 .Lfunc_end258-.Ltmp985         #   Call between .Ltmp985 and .Lfunc_end258
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end48:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase15:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
