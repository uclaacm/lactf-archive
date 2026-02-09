	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	cmp	qword ptr [rdi], 0
	je	.LBB228_5
# %bb.1:
	mov	rax, qword ptr [rdi + 8]
	test	rax, rax
	je	.LBB228_5
# %bb.2:
	cmp	qword ptr [rdi + 16], 0
	je	.LBB228_4
# %bb.3:
	mov	rbx, rdi
	mov	rdi, rax
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, rbx
.LBB228_4:
	cmp	qword ptr [rdi + 32], 0
	je	.LBB228_5
# %bb.6:
	mov	rdi, qword ptr [rdi + 24]
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB228_5:
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end228:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std, .Lfunc_end228-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCsfwdNdOnv07X_9addr2line8function12LazyFunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB1D_9endianity12LittleEndianEEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
