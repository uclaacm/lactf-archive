	.section	.text._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std: # @_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Lfunc_begin42:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception42
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
	sub	rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov	qword ptr [rsp], 0
	push	rax
	.cfi_def_cfa_offset 4160
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rcx, rsi
	shr	rcx
	mov	rax, rsi
	sub	rax, rcx
	cmp	rsi, 333333
	mov	r15d, 333333
	cmovb	r15, rsi
	cmp	r15, rax
	cmovbe	r15, rax
	cmp	r15, 49
	mov	ecx, 48
	cmovae	rcx, r15
	cmp	r15, 171
	jae	.LBB226_2
# %bb.1:
	lea	rbx, [rsp + 8]
	mov	ecx, 170
	jmp	.LBB226_7
.LBB226_2:
	movabs	rdx, 384307168202282326
	cmp	rax, rdx
	jb	.LBB226_3
# %bb.14:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB226_3:
	lea	rax, [8*rcx]
	lea	r14, [rax + 2*rax]
	test	r14, r14
	je	.LBB226_4
# %bb.5:
	mov	r12, rcx
	mov	r13, rdi
	mov	rbp, rsi
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB226_15
# %bb.6:
	mov	rbx, rax
	mov	rsi, rbp
	mov	rdi, r13
	mov	rcx, r12
	jmp	.LBB226_7
.LBB226_4:
	mov	ebx, 8
	xor	ecx, ecx
.LBB226_7:
	xor	r8d, r8d
	cmp	rsi, 65
	setb	r8b
.Ltmp932:
	mov	rdx, rbx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCNvMs0_BY_INtBY_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3c_9endianity12LittleEndianEE5parses_0E0ECs3bNtqN8jaZB_3std
.Ltmp933:
# %bb.8:
	cmp	r15, 170
	jbe	.LBB226_10
# %bb.9:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB226_10:
	add	rsp, 4104
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
.LBB226_15:
	.cfi_def_cfa_offset 4160
	mov	rdi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB226_11:
.Ltmp934:
	mov	r14, rax
	cmp	r15, 171
	jb	.LBB226_13
# %bb.12:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB226_13:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end226:
	.size	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std, .Lfunc_end226-_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line8function15FunctionAddressNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B11_INtB11_9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3h_9endianity12LittleEndianEE5parses_0E0INtNtB1Z_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table226:
.Lexception42:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end42-.Lcst_begin42
.Lcst_begin42:
	.uleb128 .Lfunc_begin42-.Lfunc_begin42  # >> Call Site 1 <<
	.uleb128 .Ltmp932-.Lfunc_begin42        #   Call between .Lfunc_begin42 and .Ltmp932
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp932-.Lfunc_begin42        # >> Call Site 2 <<
	.uleb128 .Ltmp933-.Ltmp932              #   Call between .Ltmp932 and .Ltmp933
	.uleb128 .Ltmp934-.Lfunc_begin42        #     jumps to .Ltmp934
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp933-.Lfunc_begin42        # >> Call Site 3 <<
	.uleb128 .Lfunc_end226-.Ltmp933         #   Call between .Ltmp933 and .Lfunc_end226
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end42:
	.p2align	2, 0x0
                                        # -- End function
