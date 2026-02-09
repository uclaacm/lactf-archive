	.section	.text._RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std
	.type	_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std,@function
_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std: # @_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std
	.cfi_startproc
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
	sub	rsp, 88
	.cfi_def_cfa_offset 144
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	movzx	r13d, byte ptr [rdx]
	mov	r12, qword ptr [rdx + 8]
	mov	r15, qword ptr [rdx + 16]
	cmp	r13b, 3
	jne	.LBB169_2
# %bb.1:
	mov	qword ptr [rdi + 16], r12
	mov	qword ptr [rdi + 24], r15
	mov	dword ptr [rdi + 8], 3
	jmp	.LBB169_53
.LBB169_2:
	mov	r14, qword ptr [rsi]
	cmp	dword ptr [r14 + 496], 1
	jne	.LBB169_4
# %bb.3:
	lea	rax, [r14 + 504]
	cmp	qword ptr [rax], 0
	jne	.LBB169_8
.LBB169_6:
	movzx	edx, byte ptr [rax + 8]
	mov	rcx, qword ptr [rax + 16]
	cmp	dl, 82
	jne	.LBB169_54
# %bb.7:
	mov	rax, rcx
.LBB169_8:
	mov	rbp, qword ptr [rsi + 16]
	mov	rdx, qword ptr [rax + 24]
	xor	r11d, r11d
	test	rdx, rdx
	je	.LBB169_9
# %bb.12:
	mov	rcx, qword ptr [rax + 16]
	mov	r8d, 0
	cmp	rdx, 1
	je	.LBB169_15
# %bb.13:
	xor	r9d, r9d
	.p2align	4
.LBB169_14:                             # =>This Inner Loop Header: Depth=1
	mov	r10, rdx
	shr	r10
	lea	r8, [r10 + r9]
	lea	r11, [r8 + 2*r8]
	cmp	rbp, qword ptr [rcx + 8*r11]
	cmovb	r8, r9
	sub	rdx, r10
	mov	r9, r8
	cmp	rdx, 1
	ja	.LBB169_14
.LBB169_15:
	lea	rdx, [r8 + 2*r8]
	xor	ebx, ebx
	cmp	rbp, qword ptr [rcx + 8*rdx]
	jb	.LBB169_16
# %bb.17:
	cmp	rbp, qword ptr [rcx + 8*rdx + 8]
	mov	r11d, 0
	jae	.LBB169_10
# %bb.18:
	mov	rcx, qword ptr [rcx + 8*rdx + 16]
	mov	r8, qword ptr [rax + 8]
	cmp	rcx, r8
	jae	.LBB169_55
# %bb.19:
	mov	rax, qword ptr [rax]
	lea	rcx, [rcx + 8*rcx]
	lea	rbx, [rax + 8*rcx]
	mov	rdx, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 24], rbx
	mov	byte ptr [rsp + 15], r13b
	mov	qword ptr [rsp + 40], r12
	mov	qword ptr [rsp + 48], r15
	mov	qword ptr [rsp + 32], rdx
	lea	rdx, [rsp + 24]
	mov	qword ptr [rsp + 56], rdx
	lea	rdx, [rsp + 15]
	mov	qword ptr [rsp + 64], rdx
	lea	rdx, [rsp + 40]
	mov	qword ptr [rsp + 72], rdx
	lea	rdx, [rsp + 32]
	mov	qword ptr [rsp + 80], rdx
	cmp	dword ptr [rax + 8*rcx], 1
	jne	.LBB169_21
# %bb.20:
	add	rbx, 8
	cmp	qword ptr [rbx], 0
	jne	.LBB169_10
.LBB169_23:
	movzx	eax, byte ptr [rbx + 8]
	mov	ecx, dword ptr [rbx + 12]
	mov	dword ptr [rsp + 19], ecx
	mov	ecx, dword ptr [rbx + 9]
	mov	dword ptr [rsp + 16], ecx
	mov	rbx, qword ptr [rbx + 16]
	cmp	al, 82
	je	.LBB169_10
# %bb.24:
	mov	ecx, dword ptr [rsp + 16]
	mov	edx, dword ptr [rsp + 19]
	mov	dword ptr [rdi + 20], edx
	mov	dword ptr [rdi + 17], ecx
	mov	byte ptr [rdi + 16], al
	mov	qword ptr [rdi + 24], rbx
	mov	dword ptr [rdi + 8], 3
	jmp	.LBB169_53
.LBB169_9:
	xor	ebx, ebx
	jmp	.LBB169_10
.LBB169_54:
	mov	esi, dword ptr [rax + 9]
	mov	eax, dword ptr [rax + 12]
	mov	dword ptr [rdi + 20], eax
	mov	dword ptr [rdi + 17], esi
	mov	byte ptr [rdi + 16], dl
	mov	qword ptr [rdi + 24], rcx
	mov	dword ptr [rdi + 8], 3
	jmp	.LBB169_53
.LBB169_16:
	xor	r11d, r11d
.LBB169_10:
	mov	r15d, 2
	cmp	dword ptr [r14 + 96], 47
	je	.LBB169_11
# %bb.25:
	cmp	dword ptr [r14 + 456], 1
	jne	.LBB169_27
# %bb.26:
	add	r14, 464
	cmp	qword ptr [r14], 0
	je	.LBB169_29
.LBB169_31:
	mov	rcx, qword ptr [r14 + 24]
	xor	r11d, r11d
	test	rcx, rcx
	je	.LBB169_11
.LBB169_32:
	mov	rax, qword ptr [r14 + 16]
	cmp	rcx, 1
	jne	.LBB169_45
# %bb.33:
	xor	edx, edx
	jmp	.LBB169_34
.LBB169_45:
	xor	esi, esi
	.p2align	4
.LBB169_46:                             # =>This Inner Loop Header: Depth=1
	mov	r8, rcx
	shr	r8
	lea	rdx, [r8 + rsi]
	mov	r9, rdx
	shl	r9, 5
	cmp	rbp, qword ptr [rax + r9 + 16]
	cmovb	rdx, rsi
	sub	rcx, r8
	mov	rsi, rdx
	cmp	rcx, 1
	ja	.LBB169_46
.LBB169_34:
	shl	rdx, 5
	cmp	rbp, qword ptr [rax + rdx + 16]
	jb	.LBB169_11
# %bb.35:
	cmp	rbp, qword ptr [rax + rdx + 24]
	jae	.LBB169_11
# %bb.36:
	add	rax, rdx
	mov	rsi, qword ptr [rax + 8]
	xor	r11d, r11d
	test	rsi, rsi
	je	.LBB169_11
# %bb.37:
	mov	rcx, qword ptr [rax]
	cmp	rsi, 1
	jne	.LBB169_47
# %bb.38:
	xor	eax, eax
	jmp	.LBB169_39
.LBB169_47:
	xor	r8d, r8d
	mov	rdx, rsi
	.p2align	4
.LBB169_48:                             # =>This Inner Loop Header: Depth=1
	mov	r9, rdx
	shr	r9
	lea	rax, [r9 + r8]
	lea	r10, [rax + 2*rax]
	cmp	qword ptr [rcx + 8*r10], rbp
	cmova	rax, r8
	sub	rdx, r9
	mov	r8, rax
	cmp	rdx, 1
	ja	.LBB169_48
.LBB169_39:
	lea	rdx, [rax + 2*rax]
	cmp	qword ptr [rcx + 8*rdx], rbp
	je	.LBB169_42
# %bb.40:
	adc	rax, 0
	je	.LBB169_11
# %bb.41:
	dec	rax
.LBB169_42:
	cmp	rax, rsi
	jae	.LBB169_49
# %bb.43:
	lea	rax, [rax + 2*rax]
	lea	rdx, [rcx + 8*rax]
	mov	rax, qword ptr [rcx + 8*rax + 8]
	cmp	rax, qword ptr [r14 + 8]
	jae	.LBB169_44
# %bb.50:
	mov	rcx, qword ptr [r14]
	lea	rsi, [rax + 2*rax]
	mov	rax, qword ptr [rcx + 8*rsi + 8]
	mov	rcx, qword ptr [rcx + 8*rsi + 16]
	jmp	.LBB169_51
.LBB169_44:
	xor	eax, eax
                                        # implicit-def: $rcx
.LBB169_51:
	mov	esi, dword ptr [rdx + 16]
	mov	edx, dword ptr [rdx + 20]
	xor	r11d, r11d
	test	esi, esi
	setne	r11b
	mov	r15d, r11d
	jmp	.LBB169_52
.LBB169_4:
	lea	rax, [r14 + 496]
	mov	rbx, rdi
	mov	rdi, rax
	mov	rbp, rsi
	mov	rsi, r12
	mov	rdx, r15
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function9FunctionsINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB24_9endianity12LittleEndianEENtB22_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMB1e_INtB1e_13LazyFunctionsB1X_E6borrow0E0zECs3bNtqN8jaZB_3std
	mov	rsi, rbp
	mov	rdi, rbx
	cmp	qword ptr [rax], 0
	jne	.LBB169_8
	jmp	.LBB169_6
.LBB169_27:
	mov	rax, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rax]
	lea	rax, [r14 + 456]
	add	rsi, 16
	lea	rcx, [r14 + 96]
	mov	r12, rdi
	mov	rdi, rax
	mov	rdx, r14
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultNtNtCsfwdNdOnv07X_9addr2line4line5LinesNtNtCsktQxXQGZjIy_5gimli4read5ErrorEE8try_initNCINvB2_11get_or_initNCINvMB1d_NtB1d_9LazyLines6borrowINtNtB1Q_12endian_slice11EndianSliceNtNtB1S_9endianity12LittleEndianEE0E0zECs3bNtqN8jaZB_3std
	mov	rdi, r12
	mov	r14, rax
	cmp	qword ptr [r14], 0
	jne	.LBB169_31
.LBB169_29:
	movzx	ecx, byte ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 16]
	cmp	ecx, 82
	jne	.LBB169_56
# %bb.30:
	mov	r14, rax
	mov	rcx, qword ptr [r14 + 24]
	xor	r11d, r11d
	test	rcx, rcx
	jne	.LBB169_32
.LBB169_11:
                                        # implicit-def: $rax
                                        # implicit-def: $edx
                                        # implicit-def: $esi
                                        # implicit-def: $rcx
.LBB169_52:
	mov	dword ptr [rdi + 12], esi
	mov	dword ptr [rdi + 16], r11d
	mov	dword ptr [rdi + 20], edx
	mov	qword ptr [rdi + 24], rax
	mov	qword ptr [rdi], rbx
	mov	dword ptr [rdi + 8], r15d
	mov	qword ptr [rdi + 32], rcx
.LBB169_53:
	add	rsp, 88
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
.LBB169_56:
	.cfi_def_cfa_offset 144
	movzx	edx, byte ptr [r14 + 11]
	movzx	esi, word ptr [r14 + 9]
	mov	r8d, dword ptr [r14 + 12]
	shl	esi, 8
	shl	edx, 24
	or	edx, esi
	or	edx, ecx
	mov	dword ptr [rdi + 16], edx
	mov	dword ptr [rdi + 20], r8d
	mov	qword ptr [rdi + 24], rax
	mov	dword ptr [rdi + 8], 3
	jmp	.LBB169_53
.LBB169_21:
	lea	rax, [rsp + 56]
	mov	r15, rdi
	mov	rdi, rbx
	mov	rbx, rsi
	mov	rsi, rax
	call	_RINvMNtNtCsfQL5qMWGko6_4core4cell4onceINtB3_8OnceCellINtNtB7_6result6ResultINtNtCsfwdNdOnv07X_9addr2line8function8FunctionINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtB23_9endianity12LittleEndianEENtB21_5ErrorEE8try_initNCINvB2_11get_or_initNCNvMs_B1e_INtB1e_12LazyFunctionB1W_E6borrow0E0zECs3bNtqN8jaZB_3std
	xor	r11d, r11d
	mov	rsi, rbx
	mov	rdi, r15
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	jne	.LBB169_10
	jmp	.LBB169_23
.LBB169_55:
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.102]
	mov	rdi, rcx
	mov	rsi, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.LBB169_49:
	lea	rdx, [rip + .Lanon.f32cf3a54bb344e208cfec47a3d03af5.1]
	mov	rdi, rax
	call	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_bounds_check
.Lfunc_end169:
	.size	_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std, .Lfunc_end169-_RNCNvMNtCsfwdNdOnv07X_9addr2line4unitINtB4_7ResUnitINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEE25find_function_or_location0Cs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
