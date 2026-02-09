	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
.Lfunc_begin56:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception56
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdi
	mov	rbx, qword ptr [rdi + 8]
	mov	r13, qword ptr [rdi + 16]
	inc	r13
	mov	rdi, rbx
	.p2align	4
.LBB277_1:                              # =>This Inner Loop Header: Depth=1
	cmp	r13, 1
	je	.LBB277_10
# %bb.2:                                #   in Loop: Header=BB277_1 Depth=1
	lea	r12, [rdi + 560]
	dec	r13
.Ltmp1017:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1018:
	mov	rdi, r12
	jmp	.LBB277_1
.LBB277_10:
	cmp	qword ptr [r14], 0
	je	.LBB277_11
# %bb.12:
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB277_11:
	.cfi_def_cfa_offset 64
	add	rsp, 8
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB277_3:
	.cfi_def_cfa_offset 64
.Ltmp1019:
	mov	r15, rax
	.p2align	4
.LBB277_4:                              # =>This Inner Loop Header: Depth=1
	dec	r13
	je	.LBB277_7
# %bb.5:                                #   in Loop: Header=BB277_4 Depth=1
.Ltmp1020:
	lea	rbp, [r12 + 560]
	mov	rdi, r12
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1021:
	mov	r12, rbp
	jmp	.LBB277_4
.LBB277_7:
	cmp	qword ptr [r14], 0
	je	.LBB277_9
# %bb.8:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB277_9:
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.LBB277_6:
.Ltmp1022:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end277:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std, .Lfunc_end277-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table277:
.Lexception56:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end56-.Lcst_begin56
.Lcst_begin56:
	.uleb128 .Ltmp1017-.Lfunc_begin56       # >> Call Site 1 <<
	.uleb128 .Ltmp1018-.Ltmp1017            #   Call between .Ltmp1017 and .Ltmp1018
	.uleb128 .Ltmp1019-.Lfunc_begin56       #     jumps to .Ltmp1019
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1020-.Lfunc_begin56       # >> Call Site 2 <<
	.uleb128 .Ltmp1021-.Ltmp1020            #   Call between .Ltmp1020 and .Ltmp1021
	.uleb128 .Ltmp1022-.Lfunc_begin56       #     jumps to .Ltmp1022
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1021-.Lfunc_begin56       # >> Call Site 3 <<
	.uleb128 .Lfunc_end277-.Ltmp1021        #   Call between .Ltmp1021 and .Lfunc_end277
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end56:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase19:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
