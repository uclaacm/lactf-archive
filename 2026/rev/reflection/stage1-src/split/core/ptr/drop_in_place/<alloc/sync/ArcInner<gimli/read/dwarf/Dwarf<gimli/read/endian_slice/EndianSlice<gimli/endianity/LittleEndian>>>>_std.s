	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception27
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
	mov	rax, qword ptr [rdi + 256]
	test	rax, rax
	je	.LBB160_3
# %bb.1:
	lock		dec	qword ptr [rax]
	jne	.LBB160_3
# %bb.2:
	lea	rdi, [rbx + 256]
	#MEMBARRIER
.Ltmp732:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp733:
.LBB160_3:
	add	rbx, 264
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std # TAILCALL
.LBB160_5:
	.cfi_def_cfa_offset 32
.Ltmp734:
	mov	r14, rax
	add	rbx, 264
.Ltmp735:
	mov	rdi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std
.Ltmp736:
# %bb.6:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB160_4:
.Ltmp737:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end160:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std, .Lfunc_end160-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc4sync8ArcInnerINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtB1o_12endian_slice11EndianSliceNtNtB1q_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table160:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp732-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp733-.Ltmp732              #   Call between .Ltmp732 and .Ltmp733
	.uleb128 .Ltmp734-.Lfunc_begin27        #     jumps to .Ltmp734
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp733-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Ltmp735-.Ltmp733              #   Call between .Ltmp733 and .Ltmp735
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp735-.Lfunc_begin27        # >> Call Site 3 <<
	.uleb128 .Ltmp736-.Ltmp735              #   Call between .Ltmp735 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin27        #     jumps to .Ltmp737
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp736-.Lfunc_begin27        # >> Call Site 4 <<
	.uleb128 .Lfunc_end160-.Ltmp736         #   Call between .Ltmp736 and .Lfunc_end160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase12:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
