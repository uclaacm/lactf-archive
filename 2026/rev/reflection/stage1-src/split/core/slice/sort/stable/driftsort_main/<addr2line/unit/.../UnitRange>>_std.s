	.section	.text._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std: # @_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Lfunc_begin55:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception55
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
	sub	rsp, 4096
	.cfi_def_cfa_offset 4144
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rax, rsi
	shr	rax
	mov	rcx, rsi
	sub	rcx, rax
	cmp	rsi, 250000
	mov	r15d, 250000
	cmovb	r15, rsi
	cmp	r15, rcx
	cmovbe	r15, rcx
	cmp	r15, 49
	mov	eax, 48
	cmovae	rax, r15
	cmp	r15, 129
	jb	.LBB275_1
# %bb.5:
	mov	r14, rax
	shl	r14, 5
	shr	rcx, 59
	sete	cl
	movabs	rdx, 9223372036854775801
	cmp	r14, rdx
	setb	dl
	test	cl, dl
	jne	.LBB275_6
# %bb.12:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB275_1:
	mov	rbx, rsp
	mov	ecx, 128
	jmp	.LBB275_2
.LBB275_6:
	mov	rbx, rdi
	mov	rdi, r14
	mov	r12, rsi
	mov	r13, rax
	call	qword ptr [rip + malloc@GOTPCREL]
	mov	rcx, r13
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbx, rax
	test	rax, rax
	je	.LBB275_7
.LBB275_2:
	xor	r8d, r8d
	cmp	rsi, 65
	setb	r8b
.Ltmp1014:
	mov	rdx, rbx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs_BY_INtBY_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB2Z_9endianity12LittleEndianEE5parses2_0E0ECs3bNtqN8jaZB_3std
.Ltmp1015:
# %bb.3:
	cmp	r15, 128
	jbe	.LBB275_4
# %bb.8:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB275_4:
	add	rsp, 4096
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
.LBB275_7:
	.cfi_def_cfa_offset 4144
	mov	rdi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB275_9:
.Ltmp1016:
	mov	r14, rax
	cmp	r15, 128
	jbe	.LBB275_11
# %bb.10:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB275_11:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end275:
	.size	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std, .Lfunc_end275-_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4unit9UnitRangeNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs_B11_INtB11_8ResUnitsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB34_9endianity12LittleEndianEE5parses2_0E0INtNtB1O_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table275:
.Lexception55:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end55-.Lcst_begin55
.Lcst_begin55:
	.uleb128 .Lfunc_begin55-.Lfunc_begin55  # >> Call Site 1 <<
	.uleb128 .Ltmp1014-.Lfunc_begin55       #   Call between .Lfunc_begin55 and .Ltmp1014
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1014-.Lfunc_begin55       # >> Call Site 2 <<
	.uleb128 .Ltmp1015-.Ltmp1014            #   Call between .Ltmp1014 and .Ltmp1015
	.uleb128 .Ltmp1016-.Lfunc_begin55       #     jumps to .Ltmp1016
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1015-.Lfunc_begin55       # >> Call Site 3 <<
	.uleb128 .Lfunc_end275-.Ltmp1015        #   Call between .Ltmp1015 and .Lfunc_end275
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end55:
	.p2align	2, 0x0
                                        # -- End function
