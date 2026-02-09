	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception24
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
	mov	rax, qword ptr [rdi + 464]
	lock		dec	qword ptr [rax]
	jne	.LBB156_2
# %bb.1:
	lea	rdi, [rbx + 464]
	#MEMBARRIER
.Ltmp694:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcINtNtNtCsktQxXQGZjIy_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity12LittleEndianEEE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp695:
.LBB156_2:
	lea	rdi, [rbx + 472]
.Ltmp699:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp700:
# %bb.3:
	mov	rdi, qword ptr [rbx + 504]
	mov	rsi, qword ptr [rbx + 512]
.Ltmp705:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp706:
# %bb.4:
	cmp	qword ptr [rbx + 8], 0
	je	.LBB156_6
# %bb.5:
	mov	rdi, qword ptr [rbx + 16]
	call	qword ptr [rip + free@GOTPCREL]
.LBB156_6:
	mov	rdi, qword ptr [rbx + 520]
	mov	rsi, qword ptr [rbx + 528]
	call	qword ptr [rip + munmap@GOTPCREL]
	add	rbx, 536
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_ # TAILCALL
.LBB156_7:
	.cfi_def_cfa_offset 32
.Ltmp696:
	mov	r14, rax
	lea	rdi, [rbx + 472]
.Ltmp697:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp698:
	jmp	.LBB156_8
.LBB156_11:
.Ltmp707:
	mov	r14, rax
	jmp	.LBB156_12
.LBB156_9:
.Ltmp701:
	mov	r14, rax
.LBB156_8:
	mov	rdi, qword ptr [rbx + 504]
	mov	rsi, qword ptr [rbx + 512]
.Ltmp702:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit8SupUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1u_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp703:
.LBB156_12:
	cmp	qword ptr [rbx + 8], 0
	je	.LBB156_14
# %bb.13:
	mov	rdi, qword ptr [rbx + 16]
	call	qword ptr [rip + free@GOTPCREL]
.LBB156_14:
	mov	rdi, qword ptr [rbx + 520]
	mov	rsi, qword ptr [rbx + 528]
	call	qword ptr [rip + munmap@GOTPCREL]
	add	rbx, 536
	mov	rdi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stash5StashEBQ_
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB156_10:
.Ltmp704:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end156:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_, .Lfunc_end156-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeTjNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli7MappingEEBQ_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table156:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp694-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp695-.Ltmp694              #   Call between .Ltmp694 and .Ltmp695
	.uleb128 .Ltmp696-.Lfunc_begin24        #     jumps to .Ltmp696
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin24        #     jumps to .Ltmp701
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin24        #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp697-.Lfunc_begin24        # >> Call Site 4 <<
	.uleb128 .Ltmp703-.Ltmp697              #   Call between .Ltmp697 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin24        #     jumps to .Ltmp704
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp703-.Lfunc_begin24        # >> Call Site 5 <<
	.uleb128 .Lfunc_end156-.Ltmp703         #   Call between .Ltmp703 and .Lfunc_end156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase9:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
