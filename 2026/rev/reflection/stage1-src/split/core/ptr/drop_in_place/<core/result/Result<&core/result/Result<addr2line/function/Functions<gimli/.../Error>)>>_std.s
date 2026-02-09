	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	.cfi_startproc
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
	cmp	qword ptr [rdi], 0
	je	.LBB231_13
# %bb.1:
	mov	rbx, qword ptr [rdi + 8]
	test	rbx, rbx
	je	.LBB231_13
# %bb.2:
	mov	r15, qword ptr [rdi + 16]
	test	r15, r15
	je	.LBB231_12
# %bb.3:
	mov	r14, rdi
	lea	r12, [rbx + 32]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB231_4
	.p2align	4
.LBB231_10:                             #   in Loop: Header=BB231_4 Depth=1
	add	r12, 72
	dec	r15
	je	.LBB231_11
.LBB231_4:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 32], 0
	je	.LBB231_10
# %bb.5:                                #   in Loop: Header=BB231_4 Depth=1
	mov	rdi, qword ptr [r12 - 24]
	test	rdi, rdi
	je	.LBB231_10
# %bb.6:                                #   in Loop: Header=BB231_4 Depth=1
	cmp	qword ptr [r12 - 16], 0
	je	.LBB231_8
# %bb.7:                                #   in Loop: Header=BB231_4 Depth=1
	call	r13
.LBB231_8:                              #   in Loop: Header=BB231_4 Depth=1
	cmp	qword ptr [r12], 0
	je	.LBB231_10
# %bb.9:                                #   in Loop: Header=BB231_4 Depth=1
	mov	rdi, qword ptr [r12 - 8]
	call	r13
	jmp	.LBB231_10
.LBB231_11:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r14
.LBB231_12:
	cmp	qword ptr [rdi + 32], 0
	je	.LBB231_13
# %bb.14:
	mov	rdi, qword ptr [rdi + 24]
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
.LBB231_13:
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
.Lfunc_end231:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std, .Lfunc_end231-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_INtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB20_9endianity12LittleEndianEENtB1Y_5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
