	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Lfunc_begin58:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception58
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	lock		dec	qword ptr [rax]
	jne	.LBB281_2
# %bb.1:
	#MEMBARRIER
.Ltmp1029:
	mov	rdi, rbx
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp1030:
.LBB281_2:
	lea	rdi, [rbx + 8]
.Ltmp1034:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1035:
# %bb.3:
	mov	rdi, qword ptr [rbx + 40]
	mov	rsi, qword ptr [rbx + 48]
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std # TAILCALL
.LBB281_4:
	.cfi_def_cfa_offset 32
.Ltmp1031:
	mov	r14, rax
	lea	rdi, [rbx + 8]
.Ltmp1032:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1033:
	jmp	.LBB281_5
.LBB281_7:
.Ltmp1036:
	mov	r14, rax
.LBB281_5:
	mov	rdi, qword ptr [rbx + 40]
	mov	rsi, qword ptr [rbx + 48]
.Ltmp1037:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1038:
# %bb.6:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB281_8:
.Ltmp1039:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end281:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std, .Lfunc_end281-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtCsfwdNdOnv07X_9addr2line7ContextINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1m_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table281:
.Lexception58:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end58-.Lcst_begin58
.Lcst_begin58:
	.uleb128 .Ltmp1029-.Lfunc_begin58       # >> Call Site 1 <<
	.uleb128 .Ltmp1030-.Ltmp1029            #   Call between .Ltmp1029 and .Ltmp1030
	.uleb128 .Ltmp1031-.Lfunc_begin58       #     jumps to .Ltmp1031
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1034-.Lfunc_begin58       # >> Call Site 2 <<
	.uleb128 .Ltmp1035-.Ltmp1034            #   Call between .Ltmp1034 and .Ltmp1035
	.uleb128 .Ltmp1036-.Lfunc_begin58       #     jumps to .Ltmp1036
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1035-.Lfunc_begin58       # >> Call Site 3 <<
	.uleb128 .Ltmp1032-.Ltmp1035            #   Call between .Ltmp1035 and .Ltmp1032
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1032-.Lfunc_begin58       # >> Call Site 4 <<
	.uleb128 .Ltmp1038-.Ltmp1032            #   Call between .Ltmp1032 and .Ltmp1038
	.uleb128 .Ltmp1039-.Lfunc_begin58       #     jumps to .Ltmp1039
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1038-.Lfunc_begin58       # >> Call Site 5 <<
	.uleb128 .Lfunc_end281-.Ltmp1038        #   Call between .Ltmp1038 and .Lfunc_end281
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end58:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase21:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
