	.section	.text._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std: # @_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception34
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
	sub	rsp, 24
	.cfi_def_cfa_offset 4176
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
	cmp	rsi, 250000
	mov	r15d, 250000
	cmovb	r15, rsi
	cmp	r15, rax
	cmovbe	r15, rax
	cmp	r15, 49
	mov	ecx, 48
	cmovae	rcx, r15
	cmp	r15, 129
	jb	.LBB183_1
# %bb.2:
	mov	r14, rcx
	shl	r14, 5
	shr	rax, 59
	sete	al
	movabs	rdx, 9223372036854775801
	cmp	r14, rdx
	setb	dl
	test	al, dl
	jne	.LBB183_3
# %bb.12:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB183_1:
	lea	rbx, [rsp + 24]
	mov	ecx, 128
	jmp	.LBB183_5
.LBB183_3:
	mov	rbp, rcx
	mov	r12, rdi
	mov	r13, rsi
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB183_13
# %bb.4:
	mov	rbx, rax
	mov	rcx, rbp
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 16], 0
	mov	rsi, r13
	mov	rdi, r12
.LBB183_5:
	xor	r8d, r8d
	cmp	rsi, 65
	setb	r8b
.Ltmp864:
	mov	rdx, rbx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyyNCINvMs_BY_NtBY_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB36_9endianity12LittleEndianEEs_0E0ECs3bNtqN8jaZB_3std
.Ltmp865:
# %bb.6:
	cmp	r15, 128
	jbe	.LBB183_8
# %bb.7:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB183_8:
	add	rsp, 4120
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
.LBB183_13:
	.cfi_def_cfa_offset 4176
	mov	rdi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB183_9:
.Ltmp866:
	mov	rbx, rax
	cmp	r15, 128
	jbe	.LBB183_11
# %bb.10:
	mov	rdi, rsp
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc3vec3VecNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceEECs3bNtqN8jaZB_3std
.LBB183_11:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end183:
	.size	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std, .Lfunc_end183-_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainNtNtCsfwdNdOnv07X_9addr2line4line12LineSequenceNCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyyNCINvMs_B11_NtB11_5Lines5parseINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB3b_9endianity12LittleEndianEEs_0E0INtNtB1S_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table183:
.Lexception34:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Lfunc_begin34-.Lfunc_begin34  # >> Call Site 1 <<
	.uleb128 .Ltmp864-.Lfunc_begin34        #   Call between .Lfunc_begin34 and .Ltmp864
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin34        # >> Call Site 2 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.uleb128 .Ltmp866-.Lfunc_begin34        #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp865-.Lfunc_begin34        # >> Call Site 3 <<
	.uleb128 .Lfunc_end183-.Ltmp865         #   Call between .Ltmp865 and .Lfunc_end183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end34:
	.p2align	2, 0x0
                                        # -- End function
