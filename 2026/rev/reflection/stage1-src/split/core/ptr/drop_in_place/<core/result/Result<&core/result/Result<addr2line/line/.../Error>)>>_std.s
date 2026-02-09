	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
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
	je	.LBB192_14
# %bb.1:
	mov	rbx, qword ptr [rdi + 8]
	test	rbx, rbx
	je	.LBB192_14
# %bb.2:
	mov	r15, qword ptr [rdi + 16]
	test	r15, r15
	je	.LBB192_8
# %bb.3:
	mov	r14, rdi
	lea	r12, [rbx + 8]
	mov	r13, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB192_4
	.p2align	4
.LBB192_6:                              #   in Loop: Header=BB192_4 Depth=1
	add	r12, 24
	dec	r15
	je	.LBB192_7
.LBB192_4:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r12 - 8], 0
	je	.LBB192_6
# %bb.5:                                #   in Loop: Header=BB192_4 Depth=1
	mov	rdi, qword ptr [r12]
	call	r13
	jmp	.LBB192_6
.LBB192_7:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r14
.LBB192_8:
	mov	r14, qword ptr [rdi + 32]
	test	r14, r14
	je	.LBB192_14
# %bb.9:
	mov	rbx, qword ptr [rdi + 24]
	lea	r15, [rbx + 8]
	mov	r12, qword ptr [rip + free@GOTPCREL]
	jmp	.LBB192_10
	.p2align	4
.LBB192_12:                             #   in Loop: Header=BB192_10 Depth=1
	add	r15, 32
	dec	r14
	je	.LBB192_13
.LBB192_10:                             # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [r15], 0
	je	.LBB192_12
# %bb.11:                               #   in Loop: Header=BB192_10 Depth=1
	mov	rdi, qword ptr [r15 - 8]
	call	r12
	jmp	.LBB192_12
.LBB192_14:
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
.LBB192_13:
	.cfi_def_cfa_offset 48
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
.Lfunc_end192:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std, .Lfunc_end192-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultRIBH_NtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorETB12_B13_EEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
