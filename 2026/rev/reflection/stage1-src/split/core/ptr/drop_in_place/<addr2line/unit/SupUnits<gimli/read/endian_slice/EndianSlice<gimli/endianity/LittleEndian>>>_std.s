	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Lfunc_begin51:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception51
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
	test	rsi, rsi
	je	.LBB266_20
# %bb.1:
	mov	r14, rsi
	mov	rbx, rdi
	lea	r15, [rdi + 456]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB266_2
	.p2align	4
.LBB266_13:                             #   in Loop: Header=BB266_2 Depth=1
	add	r15, 456
	dec	r14
	je	.LBB266_14
.LBB266_2:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [r15 - 88]
	lock		dec	qword ptr [rax]
	jne	.LBB266_4
# %bb.3:                                #   in Loop: Header=BB266_2 Depth=1
	#MEMBARRIER
	mov	rdi, qword ptr [r15 - 88]
.Ltmp996:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp997:
.LBB266_4:                              #   in Loop: Header=BB266_2 Depth=1
	cmp	dword ptr [r15 - 360], 47
	je	.LBB266_13
# %bb.5:                                #   in Loop: Header=BB266_2 Depth=1
	cmp	qword ptr [r15 - 272], 0
	je	.LBB266_7
# %bb.6:                                #   in Loop: Header=BB266_2 Depth=1
	mov	rdi, qword ptr [r15 - 264]
	call	r12
.LBB266_7:                              #   in Loop: Header=BB266_2 Depth=1
	cmp	qword ptr [r15 - 248], 0
	je	.LBB266_9
# %bb.8:                                #   in Loop: Header=BB266_2 Depth=1
	mov	rdi, qword ptr [r15 - 240]
	call	r12
.LBB266_9:                              #   in Loop: Header=BB266_2 Depth=1
	cmp	qword ptr [r15 - 224], 0
	je	.LBB266_11
# %bb.10:                               #   in Loop: Header=BB266_2 Depth=1
	mov	rdi, qword ptr [r15 - 216]
	call	r12
.LBB266_11:                             #   in Loop: Header=BB266_2 Depth=1
	cmp	qword ptr [r15 - 200], 0
	je	.LBB266_13
# %bb.12:                               #   in Loop: Header=BB266_2 Depth=1
	mov	rdi, qword ptr [r15 - 192]
	call	r12
	jmp	.LBB266_13
.LBB266_14:
	mov	rdi, rbx
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
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB266_20:
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
.LBB266_15:
	.cfi_def_cfa_offset 48
.Ltmp998:
	mov	r12, rax
	lea	rdi, [r15 - 360]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	.p2align	4
.LBB266_16:                             # =>This Inner Loop Header: Depth=1
	dec	r14
	je	.LBB266_19
# %bb.17:                               #   in Loop: Header=BB266_16 Depth=1
.Ltmp999:
	lea	r13, [r15 + 456]
	mov	rdi, r15
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1000:
	mov	r15, r13
	jmp	.LBB266_16
.LBB266_19:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.LBB266_18:
.Ltmp1001:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end266:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std, .Lfunc_end266-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table266:
.Lexception51:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end51-.Lcst_begin51
.Lcst_begin51:
	.uleb128 .Ltmp996-.Lfunc_begin51        # >> Call Site 1 <<
	.uleb128 .Ltmp997-.Ltmp996              #   Call between .Ltmp996 and .Ltmp997
	.uleb128 .Ltmp998-.Lfunc_begin51        #     jumps to .Ltmp998
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp997-.Lfunc_begin51        # >> Call Site 2 <<
	.uleb128 .Ltmp999-.Ltmp997              #   Call between .Ltmp997 and .Ltmp999
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp999-.Lfunc_begin51        # >> Call Site 3 <<
	.uleb128 .Ltmp1000-.Ltmp999             #   Call between .Ltmp999 and .Ltmp1000
	.uleb128 .Ltmp1001-.Lfunc_begin51       #     jumps to .Ltmp1001
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1000-.Lfunc_begin51       # >> Call Site 4 <<
	.uleb128 .Lfunc_end266-.Ltmp1000        #   Call between .Ltmp1000 and .Lfunc_end266
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end51:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase17:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
