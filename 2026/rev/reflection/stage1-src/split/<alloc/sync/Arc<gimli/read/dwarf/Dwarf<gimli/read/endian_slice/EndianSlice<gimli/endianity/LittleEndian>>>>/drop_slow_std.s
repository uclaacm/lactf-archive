	.section	.text._RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
	.type	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std,@function
_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std: # @_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception26
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, qword ptr [rdi]
	mov	rax, qword ptr [rbx + 256]
	test	rax, rax
	je	.LBB159_3
# %bb.1:
	lock		dec	qword ptr [rax]
	jne	.LBB159_3
# %bb.2:
	lea	rdi, [rbx + 256]
	#MEMBARRIER
.Ltmp723:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp724:
.LBB159_3:
	lea	rdi, [rbx + 264]
.Ltmp729:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std
.Ltmp730:
# %bb.4:
	cmp	rbx, -1
	je	.LBB159_14
# %bb.5:
	lock		dec	qword ptr [rbx + 8]
	jne	.LBB159_14
# %bb.6:
	#MEMBARRIER
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB159_14:
	.cfi_def_cfa_offset 32
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB159_7:
	.cfi_def_cfa_offset 32
.Ltmp725:
	mov	r14, rax
	lea	rdi, [rbx + 264]
.Ltmp726:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev18AbbreviationsCacheECs3bNtqN8jaZB_3std
.Ltmp727:
	jmp	.LBB159_10
.LBB159_8:
.Ltmp728:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB159_9:
.Ltmp731:
	mov	r14, rax
.LBB159_10:
	cmp	rbx, -1
	je	.LBB159_13
# %bb.11:
	lock		dec	qword ptr [rbx + 8]
	jne	.LBB159_13
# %bb.12:
	#MEMBARRIER
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB159_13:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end159:
	.size	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std, .Lfunc_end159-_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table159:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp723-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp724-.Ltmp723              #   Call between .Ltmp723 and .Ltmp724
	.uleb128 .Ltmp725-.Lfunc_begin26        #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Ltmp730-.Ltmp729              #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp731-.Lfunc_begin26        #     jumps to .Ltmp731
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp726-.Lfunc_begin26        # >> Call Site 3 <<
	.uleb128 .Ltmp727-.Ltmp726              #   Call between .Ltmp726 and .Ltmp727
	.uleb128 .Ltmp728-.Lfunc_begin26        #     jumps to .Ltmp728
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp727-.Lfunc_begin26        # >> Call Site 4 <<
	.uleb128 .Lfunc_end159-.Ltmp727         #   Call between .Ltmp727 and .Lfunc_end159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase11:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
