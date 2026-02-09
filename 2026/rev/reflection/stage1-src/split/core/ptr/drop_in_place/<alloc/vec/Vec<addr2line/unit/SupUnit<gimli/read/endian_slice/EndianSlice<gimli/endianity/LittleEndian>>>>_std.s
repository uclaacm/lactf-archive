	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
.Lfunc_begin57:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception57
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
	test	r13, r13
	je	.LBB278_14
# %bb.1:
	lea	r15, [rbx + 456]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB278_2
	.p2align	4
.LBB278_13:                             #   in Loop: Header=BB278_2 Depth=1
	add	r15, 456
	dec	r13
	je	.LBB278_14
.LBB278_2:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [r15 - 88]
	lock		dec	qword ptr [rax]
	jne	.LBB278_4
# %bb.3:                                #   in Loop: Header=BB278_2 Depth=1
	#MEMBARRIER
	mov	rdi, qword ptr [r15 - 88]
.Ltmp1023:
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Ltmp1024:
.LBB278_4:                              #   in Loop: Header=BB278_2 Depth=1
	cmp	dword ptr [r15 - 360], 47
	je	.LBB278_13
# %bb.5:                                #   in Loop: Header=BB278_2 Depth=1
	cmp	qword ptr [r15 - 272], 0
	je	.LBB278_7
# %bb.6:                                #   in Loop: Header=BB278_2 Depth=1
	mov	rdi, qword ptr [r15 - 264]
	call	r12
.LBB278_7:                              #   in Loop: Header=BB278_2 Depth=1
	cmp	qword ptr [r15 - 248], 0
	je	.LBB278_9
# %bb.8:                                #   in Loop: Header=BB278_2 Depth=1
	mov	rdi, qword ptr [r15 - 240]
	call	r12
.LBB278_9:                              #   in Loop: Header=BB278_2 Depth=1
	cmp	qword ptr [r15 - 224], 0
	je	.LBB278_11
# %bb.10:                               #   in Loop: Header=BB278_2 Depth=1
	mov	rdi, qword ptr [r15 - 216]
	call	r12
.LBB278_11:                             #   in Loop: Header=BB278_2 Depth=1
	cmp	qword ptr [r15 - 200], 0
	je	.LBB278_13
# %bb.12:                               #   in Loop: Header=BB278_2 Depth=1
	mov	rdi, qword ptr [r15 - 192]
	call	r12
	jmp	.LBB278_13
.LBB278_14:
	cmp	qword ptr [r14], 0
	je	.LBB278_23
# %bb.15:
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
.LBB278_23:
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
.LBB278_16:
	.cfi_def_cfa_offset 64
.Ltmp1025:
	mov	r12, rax
	lea	rdi, [r15 - 360]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsktQxXQGZjIy_5gimli4read4line21IncompleteLineProgramINtNtB17_12endian_slice11EndianSliceNtNtB19_9endianity12LittleEndianEjEEECs3bNtqN8jaZB_3std
	.p2align	4
.LBB278_17:                             # =>This Inner Loop Header: Depth=1
	dec	r13
	je	.LBB278_20
# %bb.18:                               #   in Loop: Header=BB278_17 Depth=1
.Ltmp1026:
	lea	rbp, [r15 + 456]
	mov	rdi, r15
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1t_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
.Ltmp1027:
	mov	r15, rbp
	jmp	.LBB278_17
.LBB278_20:
	cmp	qword ptr [r14], 0
	je	.LBB278_22
# %bb.21:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB278_22:
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.LBB278_19:
.Ltmp1028:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end278:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std, .Lfunc_end278-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecINtNtCsfwdNdOnv07X_9addr2line4unit7SupUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEEEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table278:
.Lexception57:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end57-.Lcst_begin57
.Lcst_begin57:
	.uleb128 .Ltmp1023-.Lfunc_begin57       # >> Call Site 1 <<
	.uleb128 .Ltmp1024-.Ltmp1023            #   Call between .Ltmp1023 and .Ltmp1024
	.uleb128 .Ltmp1025-.Lfunc_begin57       #     jumps to .Ltmp1025
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1024-.Lfunc_begin57       # >> Call Site 2 <<
	.uleb128 .Ltmp1026-.Ltmp1024            #   Call between .Ltmp1024 and .Ltmp1026
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1026-.Lfunc_begin57       # >> Call Site 3 <<
	.uleb128 .Ltmp1027-.Ltmp1026            #   Call between .Ltmp1026 and .Ltmp1027
	.uleb128 .Ltmp1028-.Lfunc_begin57       #     jumps to .Ltmp1028
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1027-.Lfunc_begin57       # >> Call Site 4 <<
	.uleb128 .Lfunc_end278-.Ltmp1027        #   Call between .Ltmp1027 and .Lfunc_end278
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end57:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase20:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
