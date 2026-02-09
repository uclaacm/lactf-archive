	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std
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
	mov	r14, qword ptr [rdi]
	test	r14, r14
	je	.LBB270_12
# %bb.1:
	mov	rbx, rdi
	mov	r15, qword ptr [rdi + 8]
	test	r15, r15
	je	.LBB270_11
# %bb.2:
	lea	r12, [r14 + 32]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB270_3
	.p2align	4
.LBB270_9:                              #   in Loop: Header=BB270_3 Depth=1
	add	r12, 72
	dec	r15
	je	.LBB270_10
.LBB270_3:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 32], 0
	je	.LBB270_9
# %bb.4:                                #   in Loop: Header=BB270_3 Depth=1
	mov	rdi, qword ptr [r12 - 24]
	test	rdi, rdi
	je	.LBB270_9
# %bb.5:                                #   in Loop: Header=BB270_3 Depth=1
	cmp	qword ptr [r12 - 16], 0
	je	.LBB270_7
# %bb.6:                                #   in Loop: Header=BB270_3 Depth=1
	call	r13
.LBB270_7:                              #   in Loop: Header=BB270_3 Depth=1
	cmp	qword ptr [r12], 0
	je	.LBB270_9
# %bb.8:                                #   in Loop: Header=BB270_3 Depth=1
	mov	rdi, qword ptr [r12 - 8]
	call	r13
	jmp	.LBB270_9
.LBB270_10:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB270_11:
	cmp	qword ptr [rbx + 24], 0
	je	.LBB270_12
# %bb.13:
	mov	rdi, qword ptr [rbx + 16]
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
.LBB270_12:
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
.Lfunc_end270:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std, .Lfunc_end270-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1V_9endianity12LittleEndianEENtB1T_5ErrorEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
