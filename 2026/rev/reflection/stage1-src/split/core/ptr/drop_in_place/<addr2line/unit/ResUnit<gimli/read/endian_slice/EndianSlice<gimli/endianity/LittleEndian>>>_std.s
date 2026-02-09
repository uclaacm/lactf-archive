	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Lfunc_begin53:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception53
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
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 368]
	lock		dec	qword ptr [rax]
	jne	.LBB268_2
# %bb.1:
	#MEMBARRIER
	mov	rdi, qword ptr [rbx + 368]
.Ltmp1005:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp1006:
.LBB268_2:
	cmp	dword ptr [rbx + 96], 47
	je	.LBB268_11
# %bb.3:
	cmp	qword ptr [rbx + 184], 0
	je	.LBB268_5
# %bb.4:
	mov	rdi, qword ptr [rbx + 192]
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_5:
	cmp	qword ptr [rbx + 208], 0
	je	.LBB268_7
# %bb.6:
	mov	rdi, qword ptr [rbx + 216]
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_7:
	cmp	qword ptr [rbx + 232], 0
	je	.LBB268_9
# %bb.8:
	mov	rdi, qword ptr [rbx + 240]
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_9:
	cmp	qword ptr [rbx + 256], 0
	je	.LBB268_11
# %bb.10:
	mov	rdi, qword ptr [rbx + 264]
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_11:
	cmp	qword ptr [rbx + 456], 0
	je	.LBB268_25
# %bb.12:
	mov	r14, qword ptr [rbx + 464]
	test	r14, r14
	je	.LBB268_25
# %bb.13:
	mov	r15, qword ptr [rbx + 472]
	test	r15, r15
	je	.LBB268_19
# %bb.14:
	lea	r12, [r14 + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB268_15
	.p2align	4
.LBB268_17:                             #   in Loop: Header=BB268_15 Depth=1
	add	r12, 24
	dec	r15
	je	.LBB268_18
.LBB268_15:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB268_17
# %bb.16:                               #   in Loop: Header=BB268_15 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
	jmp	.LBB268_17
.LBB268_18:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_19:
	mov	r15, qword ptr [rbx + 488]
	test	r15, r15
	je	.LBB268_25
# %bb.20:
	mov	r14, qword ptr [rbx + 480]
	lea	r12, [r14 + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB268_21
	.p2align	4
.LBB268_23:                             #   in Loop: Header=BB268_21 Depth=1
	add	r12, 32
	dec	r15
	je	.LBB268_24
.LBB268_21:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12], 0
	je	.LBB268_23
# %bb.22:                               #   in Loop: Header=BB268_21 Depth=1
	mov	rdi, qword ptr [r12 - 8]
	call	r13
	jmp	.LBB268_23
.LBB268_24:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_25:
	cmp	qword ptr [rbx + 496], 0
	je	.LBB268_39
# %bb.26:
	mov	r14, qword ptr [rbx + 504]
	test	r14, r14
	je	.LBB268_39
# %bb.27:
	mov	r15, qword ptr [rbx + 512]
	test	r15, r15
	je	.LBB268_37
# %bb.28:
	lea	r12, [r14 + 32]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB268_29
	.p2align	4
.LBB268_35:                             #   in Loop: Header=BB268_29 Depth=1
	add	r12, 72
	dec	r15
	je	.LBB268_36
.LBB268_29:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 32], 0
	je	.LBB268_35
# %bb.30:                               #   in Loop: Header=BB268_29 Depth=1
	mov	rdi, qword ptr [r12 - 24]
	test	rdi, rdi
	je	.LBB268_35
# %bb.31:                               #   in Loop: Header=BB268_29 Depth=1
	cmp	qword ptr [r12 - 16], 0
	je	.LBB268_33
# %bb.32:                               #   in Loop: Header=BB268_29 Depth=1
	call	r13
.LBB268_33:                             #   in Loop: Header=BB268_29 Depth=1
	cmp	qword ptr [r12], 0
	je	.LBB268_35
# %bb.34:                               #   in Loop: Header=BB268_29 Depth=1
	mov	rdi, qword ptr [r12 - 8]
	call	r13
	jmp	.LBB268_35
.LBB268_36:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_37:
	cmp	qword ptr [rbx + 528], 0
	je	.LBB268_39
# %bb.38:
	mov	rdi, qword ptr [rbx + 520]
	call	qword ptr [rip + free@GOTPCREL]
.LBB268_39:
	movzx	eax, byte ptr [rbx + 536]
	cmp	al, 83
	jne	.LBB268_40
# %bb.48:
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
.LBB268_40:
	.cfi_def_cfa_offset 48
	mov	rsi, qword ptr [rbx + 544]
	movzx	edi, al
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
	jmp	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std # TAILCALL
.LBB268_41:
	.cfi_def_cfa_offset 48
.Ltmp1007:
	mov	r14, rax
	lea	rdi, [rbx + 96]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	cmp	qword ptr [rbx + 456], 0
	jne	.LBB268_42
# %bb.43:
	cmp	qword ptr [rbx + 496], 0
	jne	.LBB268_44
.LBB268_45:
	movzx	eax, byte ptr [rbx + 536]
	cmp	al, 83
	jne	.LBB268_46
	jmp	.LBB268_47
.LBB268_42:
	lea	rdi, [rbx + 464]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEECs3bNtqN8jaZB_3std
	cmp	qword ptr [rbx + 496], 0
	je	.LBB268_45
.LBB268_44:
	lea	rdi, [rbx + 504]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std
	movzx	eax, byte ptr [rbx + 536]
	cmp	al, 83
	je	.LBB268_47
.LBB268_46:
	mov	rsi, qword ptr [rbx + 544]
.Ltmp1008:
	movzx	edi, al
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std
.Ltmp1009:
.LBB268_47:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB268_49:
.Ltmp1010:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end268:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std, .Lfunc_end268-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table268:
.Lexception53:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end53-.Lcst_begin53
.Lcst_begin53:
	.uleb128 .Ltmp1005-.Lfunc_begin53       # >> Call Site 1 <<
	.uleb128 .Ltmp1006-.Ltmp1005            #   Call between .Ltmp1005 and .Ltmp1006
	.uleb128 .Ltmp1007-.Lfunc_begin53       #     jumps to .Ltmp1007
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1006-.Lfunc_begin53       # >> Call Site 2 <<
	.uleb128 .Ltmp1008-.Ltmp1006            #   Call between .Ltmp1006 and .Ltmp1008
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1008-.Lfunc_begin53       # >> Call Site 3 <<
	.uleb128 .Ltmp1009-.Ltmp1008            #   Call between .Ltmp1008 and .Ltmp1009
	.uleb128 .Ltmp1010-.Lfunc_begin53       #     jumps to .Ltmp1010
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1009-.Lfunc_begin53       # >> Call Site 4 <<
	.uleb128 .Lfunc_end268-.Ltmp1009        #   Call between .Ltmp1009 and .Lfunc_end268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end53:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase18:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
