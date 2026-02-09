	.section	.text._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.type	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std,@function
_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std: # @_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std
.Lfunc_begin54:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception54
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
	cmp	rsi, 500000
	mov	r15d, 500000
	cmovb	r15, rsi
	cmp	r15, rcx
	cmovbe	r15, rcx
	cmp	r15, 49
	mov	eax, 48
	cmovae	rax, r15
	cmp	r15, 257
	jb	.LBB274_1
# %bb.5:
	mov	r14, rax
	shl	r14, 4
	shr	rcx, 60
	sete	cl
	movabs	rdx, 9223372036854775801
	cmp	r14, rdx
	setb	dl
	test	cl, dl
	jne	.LBB274_6
# %bb.12:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB274_1:
	mov	rbx, rsp
	mov	ecx, 256
	jmp	.LBB274_2
.LBB274_6:
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
	je	.LBB274_7
.LBB274_2:
	xor	r8d, r8d
	cmp	rsi, 65
	setb	r8b
.Ltmp1011:
	mov	rdx, rbx
	call	_RINvNtNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable5drift4sortTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtBZ_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB38_8ResUnitsINtNtNtB11_4read12endian_slice11EndianSliceNtNtB11_9endianity12LittleEndianEE5parse0E0ECs3bNtqN8jaZB_3std
.Ltmp1012:
# %bb.3:
	cmp	r15, 256
	jbe	.LBB274_4
# %bb.8:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB274_4:
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
.LBB274_7:
	.cfi_def_cfa_offset 4144
	mov	rdi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB274_9:
.Ltmp1013:
	mov	r14, rax
	cmp	r15, 256
	jbe	.LBB274_11
# %bb.10:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB274_11:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end274:
	.size	_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std, .Lfunc_end274-_RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtCsfQL5qMWGko6_4core5slice4sort6stable14driftsort_mainTNtNtCsktQxXQGZjIy_5gimli6common15DebugInfoOffsetNtB12_18DebugArangesOffsetENCINvMNtCs78A21jy8lRn_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs_NtCsfwdNdOnv07X_9addr2line4unitINtB3d_8ResUnitsINtNtNtB14_4read12endian_slice11EndianSliceNtNtB14_9endianity12LittleEndianEE5parse0E0INtNtB2l_3vec3VecBZ_EECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table274:
.Lexception54:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end54-.Lcst_begin54
.Lcst_begin54:
	.uleb128 .Lfunc_begin54-.Lfunc_begin54  # >> Call Site 1 <<
	.uleb128 .Ltmp1011-.Lfunc_begin54       #   Call between .Lfunc_begin54 and .Ltmp1011
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1011-.Lfunc_begin54       # >> Call Site 2 <<
	.uleb128 .Ltmp1012-.Ltmp1011            #   Call between .Ltmp1011 and .Ltmp1012
	.uleb128 .Ltmp1013-.Lfunc_begin54       #     jumps to .Ltmp1013
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1012-.Lfunc_begin54       # >> Call Site 3 <<
	.uleb128 .Lfunc_end274-.Ltmp1012        #   Call between .Ltmp1012 and .Lfunc_end274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end54:
	.p2align	2, 0x0
                                        # -- End function
