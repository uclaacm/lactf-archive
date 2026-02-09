	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception31
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	cmp	dil, 82
	setne	al
	test	rsi, rsi
	sete	cl
	or	cl, al
	je	.LBB168_1
# %bb.19:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB168_1:
	.cfi_def_cfa_offset 32
	mov	rbx, rsi
	mov	rax, qword ptr [rsi + 448]
	lock		dec	qword ptr [rax]
	jne	.LBB168_3
# %bb.2:
	lea	rdi, [rbx + 448]
	#MEMBARRIER
.Ltmp801:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp802:
.LBB168_3:
	mov	rax, qword ptr [rbx + 368]
	lock		dec	qword ptr [rax]
	jne	.LBB168_5
# %bb.4:
	#MEMBARRIER
	mov	rdi, qword ptr [rbx + 368]
.Ltmp807:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp808:
.LBB168_5:
	cmp	dword ptr [rbx + 96], 47
	je	.LBB168_14
# %bb.6:
	cmp	qword ptr [rbx + 184], 0
	je	.LBB168_8
# %bb.7:
	mov	rdi, qword ptr [rbx + 192]
	call	qword ptr [rip + free@GOTPCREL]
.LBB168_8:
	cmp	qword ptr [rbx + 208], 0
	je	.LBB168_10
# %bb.9:
	mov	rdi, qword ptr [rbx + 216]
	call	qword ptr [rip + free@GOTPCREL]
.LBB168_10:
	cmp	qword ptr [rbx + 232], 0
	je	.LBB168_12
# %bb.11:
	mov	rdi, qword ptr [rbx + 240]
	call	qword ptr [rip + free@GOTPCREL]
.LBB168_12:
	cmp	qword ptr [rbx + 256], 0
	je	.LBB168_14
# %bb.13:
	mov	rdi, qword ptr [rbx + 264]
	call	qword ptr [rip + free@GOTPCREL]
.LBB168_14:
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB168_17:
	.cfi_def_cfa_offset 32
.Ltmp809:
	mov	r14, rax
	lea	rdi, [rbx + 96]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB168_15:
.Ltmp803:
	mov	r14, rax
.Ltmp804:
	mov	rdi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std
.Ltmp805:
# %bb.18:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB168_16:
.Ltmp806:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end168:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std, .Lfunc_end168-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCs78A21jy8lRn_5alloc5boxed3BoxINtNtCsfwdNdOnv07X_9addr2line4unit7DwoUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2K_9endianity12LittleEndianEEEENtB2I_5ErrorEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table168:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp801-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin31        #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp808-.Ltmp807              #   Call between .Ltmp807 and .Ltmp808
	.uleb128 .Ltmp809-.Lfunc_begin31        #     jumps to .Ltmp809
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Ltmp804-.Ltmp808              #   Call between .Ltmp808 and .Ltmp804
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp804-.Lfunc_begin31        # >> Call Site 4 <<
	.uleb128 .Ltmp805-.Ltmp804              #   Call between .Ltmp804 and .Ltmp805
	.uleb128 .Ltmp806-.Lfunc_begin31        #     jumps to .Ltmp806
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp805-.Lfunc_begin31        # >> Call Site 5 <<
	.uleb128 .Lfunc_end168-.Ltmp805         #   Call between .Ltmp805 and .Lfunc_end168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase14:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
