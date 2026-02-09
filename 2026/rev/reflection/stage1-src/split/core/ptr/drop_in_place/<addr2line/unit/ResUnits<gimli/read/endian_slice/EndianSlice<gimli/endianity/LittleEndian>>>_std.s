	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Lfunc_begin50:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception50
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
	mov	r14, rdi
	cmp	qword ptr [rdi + 8], 0
	je	.LBB265_2
# %bb.1:
	mov	rdi, qword ptr [r14]
	call	qword ptr [rip + free@GOTPCREL]
.LBB265_2:
	mov	rbx, qword ptr [r14 + 16]
	mov	r15, qword ptr [r14 + 24]
	lea	r12, [r15 + 1]
	mov	rdi, rbx
	.p2align	4
.LBB265_3:                              # =>This Inner Loop Header: Depth=1
	cmp	r12, 1
	je	.LBB265_10
# %bb.4:                                #   in Loop: Header=BB265_3 Depth=1
	lea	r14, [rdi + 560]
	dec	r12
.Ltmp990:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp991:
	mov	rdi, r14
	jmp	.LBB265_3
.LBB265_10:
	test	r15, r15
	je	.LBB265_11
# %bb.12:
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
.LBB265_11:
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
.LBB265_5:
	.cfi_def_cfa_offset 48
.Ltmp992:
	mov	r15, rax
	.p2align	4
.LBB265_6:                              # =>This Inner Loop Header: Depth=1
	dec	r12
	je	.LBB265_9
# %bb.7:                                #   in Loop: Header=BB265_6 Depth=1
.Ltmp993:
	lea	r13, [r14 + 560]
	mov	rdi, r14
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp994:
	mov	r14, r13
	jmp	.LBB265_6
.LBB265_9:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.LBB265_8:
.Ltmp995:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end265:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std, .Lfunc_end265-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table265:
.Lexception50:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end50-.Lcst_begin50
.Lcst_begin50:
	.uleb128 .Ltmp990-.Lfunc_begin50        # >> Call Site 1 <<
	.uleb128 .Ltmp991-.Ltmp990              #   Call between .Ltmp990 and .Ltmp991
	.uleb128 .Ltmp992-.Lfunc_begin50        #     jumps to .Ltmp992
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp993-.Lfunc_begin50        # >> Call Site 2 <<
	.uleb128 .Ltmp994-.Ltmp993              #   Call between .Ltmp993 and .Ltmp994
	.uleb128 .Ltmp995-.Lfunc_begin50        #     jumps to .Ltmp995
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp994-.Lfunc_begin50        # >> Call Site 3 <<
	.uleb128 .Lfunc_end265-.Ltmp994         #   Call between .Ltmp994 and .Lfunc_end265
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end50:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase16:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
