	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception29
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
	mov	rax, qword ptr [rdi + 368]
	lock		dec	qword ptr [rax]
	jne	.LBB165_2
# %bb.1:
	#MEMBARRIER
	mov	rdi, qword ptr [rbx + 368]
.Ltmp795:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp796:
.LBB165_2:
	cmp	dword ptr [rbx + 96], 47
	je	.LBB165_10
# %bb.3:
	cmp	qword ptr [rbx + 184], 0
	je	.LBB165_5
# %bb.4:
	mov	rdi, qword ptr [rbx + 192]
	call	qword ptr [rip + free@GOTPCREL]
.LBB165_5:
	cmp	qword ptr [rbx + 208], 0
	je	.LBB165_7
# %bb.6:
	mov	rdi, qword ptr [rbx + 216]
	call	qword ptr [rip + free@GOTPCREL]
.LBB165_7:
	cmp	qword ptr [rbx + 232], 0
	je	.LBB165_9
# %bb.8:
	mov	rdi, qword ptr [rbx + 240]
	call	qword ptr [rip + free@GOTPCREL]
.LBB165_9:
	cmp	qword ptr [rbx + 256], 0
	je	.LBB165_10
# %bb.12:
	mov	rdi, qword ptr [rbx + 264]
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB165_10:
	.cfi_def_cfa_offset 32
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB165_11:
	.cfi_def_cfa_offset 32
.Ltmp797:
	mov	r14, rax
	add	rbx, 96
	mov	rdi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end165:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std, .Lfunc_end165-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf4UnitINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEjEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table165:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp795-.Lfunc_begin29        # >> Call Site 1 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin29        #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp796-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Lfunc_end165-.Ltmp796         #   Call between .Ltmp796 and .Lfunc_end165
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.p2align	2, 0x0
                                        # -- End function
