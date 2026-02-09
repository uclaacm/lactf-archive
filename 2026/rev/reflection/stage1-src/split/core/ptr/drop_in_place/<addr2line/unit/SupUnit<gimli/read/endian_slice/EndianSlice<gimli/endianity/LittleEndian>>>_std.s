	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Lfunc_begin52:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception52
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
	jne	.LBB267_2
# %bb.1:
	#MEMBARRIER
	mov	rdi, qword ptr [rbx + 368]
.Ltmp1002:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp1003:
.LBB267_2:
	cmp	dword ptr [rbx + 96], 47
	je	.LBB267_10
# %bb.3:
	cmp	qword ptr [rbx + 184], 0
	je	.LBB267_5
# %bb.4:
	mov	rdi, qword ptr [rbx + 192]
	call	qword ptr [rip + free@GOTPCREL]
.LBB267_5:
	cmp	qword ptr [rbx + 208], 0
	je	.LBB267_7
# %bb.6:
	mov	rdi, qword ptr [rbx + 216]
	call	qword ptr [rip + free@GOTPCREL]
.LBB267_7:
	cmp	qword ptr [rbx + 232], 0
	je	.LBB267_9
# %bb.8:
	mov	rdi, qword ptr [rbx + 240]
	call	qword ptr [rip + free@GOTPCREL]
.LBB267_9:
	cmp	qword ptr [rbx + 256], 0
	je	.LBB267_10
# %bb.12:
	mov	rdi, qword ptr [rbx + 264]
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB267_10:
	.cfi_def_cfa_offset 32
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB267_11:
	.cfi_def_cfa_offset 32
.Ltmp1004:
	mov	r14, rax
	add	rbx, 96
	mov	rdi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end267:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std, .Lfunc_end267-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table267:
.Lexception52:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end52-.Lcst_begin52
.Lcst_begin52:
	.uleb128 .Ltmp1002-.Lfunc_begin52       # >> Call Site 1 <<
	.uleb128 .Ltmp1003-.Ltmp1002            #   Call between .Ltmp1002 and .Ltmp1003
	.uleb128 .Ltmp1004-.Lfunc_begin52       #     jumps to .Ltmp1004
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1003-.Lfunc_begin52       # >> Call Site 2 <<
	.uleb128 .Lfunc_end267-.Ltmp1003        #   Call between .Ltmp1003 and .Lfunc_end267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end52:
	.p2align	2, 0x0
                                        # -- End function
