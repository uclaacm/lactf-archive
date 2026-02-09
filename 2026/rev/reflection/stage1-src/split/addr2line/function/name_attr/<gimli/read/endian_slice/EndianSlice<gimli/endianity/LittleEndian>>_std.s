	.section	.text._RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r10, qword ptr [rsp + 56]
	test	r10, r10
	je	.LBB211_1
# %bb.2:
	mov	rax, r9
	mov	r9, qword ptr [rsp + 48]
	cmp	rsi, 13
	je	.LBB211_9
# %bb.3:
	cmp	rsi, 14
	je	.LBB211_10
# %bb.4:
	cmp	rsi, 15
	jne	.LBB211_1
# %bb.5:
	mov	rax, qword ptr [r8 + 240]
	test	rax, rax
	je	.LBB211_1
# %bb.6:
	mov	rsi, qword ptr [r9 + 48]
	test	rsi, rsi
	je	.LBB211_25
# %bb.7:
	mov	rcx, qword ptr [r9 + 40]
	cmp	rsi, 1
	jne	.LBB211_36
# %bb.8:
	xor	r8d, r8d
	jmp	.LBB211_38
.LBB211_1:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	jmp	.LBB211_26
.LBB211_10:
	movzx	esi, cl
	test	sil, sil
	je	.LBB211_15
# %bb.11:
	cmp	esi, 1
	jne	.LBB211_25
# %bb.12:
	mov	rcx, qword ptr [r9 + 48]
	test	rcx, rcx
	je	.LBB211_25
# %bb.13:
	mov	rax, qword ptr [r9 + 40]
	cmp	rcx, 1
	jne	.LBB211_29
# %bb.14:
	xor	r11d, r11d
	jmp	.LBB211_31
.LBB211_9:
	mov	qword ptr [rsp], r10
	movzx	esi, cl
	mov	r10, rdx
	mov	rdx, r8
	mov	rcx, rax
	mov	r8, r10
	call	_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	jmp	.LBB211_26
.LBB211_15:
	mov	rcx, qword ptr [r9 + 32]
	test	rcx, rcx
	je	.LBB211_25
# %bb.16:
	mov	rax, qword ptr [r9 + 24]
	cmp	rcx, 1
	jne	.LBB211_27
# %bb.17:
	xor	r11d, r11d
	jmp	.LBB211_18
.LBB211_36:
	xor	r11d, r11d
	.p2align	4
.LBB211_37:                             # =>This Inner Loop Header: Depth=1
	mov	rbx, rsi
	shr	rbx
	lea	r8, [rbx + r11]
	imul	r14, r8, 456
	cmp	qword ptr [rcx + r14 + 448], rdx
	cmova	r8, r11
	sub	rsi, rbx
	mov	r11, r8
	cmp	rsi, 1
	ja	.LBB211_37
.LBB211_38:
	imul	rsi, r8, 456
	cmp	qword ptr [rcx + rsi + 448], rdx
	je	.LBB211_25
# %bb.39:
	adc	r8, 0
	je	.LBB211_25
# %bb.40:
	imul	rsi, r8, 456
	cmp	byte ptr [rcx + rsi - 456], 0
	jne	.LBB211_25
# %bb.41:
	lea	r11, [rcx + rsi]
	sub	rdx, qword ptr [r11 - 448]
	jb	.LBB211_25
# %bb.42:
	mov	r8, qword ptr [r11 - 408]
	mov	rbx, qword ptr [r11 - 400]
	xor	r14d, r14d
	cmp	byte ptr [r11 - 383], 8
	sete	r14b
	sub	rbx, r8
	lea	rbx, [rbx + 8*r14]
	add	rbx, 4
	mov	r11, rdx
	sub	r11, rbx
	jb	.LBB211_25
# %bb.43:
	cmp	r11, r8
	jae	.LBB211_25
# %bb.44:
	add	rcx, rsi
	add	rcx, -456
	add	rax, 16
	mov	qword ptr [rsp], r10
	mov	esi, 1
	mov	r8, rdx
	mov	rdx, rax
	call	_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	jmp	.LBB211_26
.LBB211_29:
	xor	ebx, ebx
	.p2align	4
.LBB211_30:                             # =>This Inner Loop Header: Depth=1
	mov	r14, rcx
	shr	r14
	lea	r11, [r14 + rbx]
	imul	r15, r11, 456
	cmp	qword ptr [rax + r15 + 448], rdx
	cmova	r11, rbx
	sub	rcx, r14
	mov	rbx, r11
	cmp	rcx, 1
	ja	.LBB211_30
.LBB211_31:
	imul	rcx, r11, 456
	cmp	qword ptr [rax + rcx + 448], rdx
	je	.LBB211_25
# %bb.32:
	adc	r11, 0
	je	.LBB211_25
# %bb.33:
	imul	rcx, r11, 456
	add	rcx, rax
	add	rcx, -456
	jmp	.LBB211_21
.LBB211_27:
	xor	ebx, ebx
	.p2align	4
.LBB211_28:                             # =>This Inner Loop Header: Depth=1
	mov	r14, rcx
	shr	r14
	lea	r11, [r14 + rbx]
	imul	r15, r11, 560
	cmp	qword ptr [rax + r15 + 448], rdx
	cmova	r11, rbx
	sub	rcx, r14
	mov	rbx, r11
	cmp	rcx, 1
	ja	.LBB211_28
.LBB211_18:
	imul	rcx, r11, 560
	cmp	qword ptr [rax + rcx + 448], rdx
	je	.LBB211_25
# %bb.19:
	adc	r11, 0
	je	.LBB211_25
# %bb.20:
	imul	rcx, r11, 560
	add	rcx, rax
	add	rcx, -560
.LBB211_21:
	cmp	byte ptr [rcx], 0
	jne	.LBB211_25
# %bb.22:
	sub	rdx, qword ptr [rcx + 8]
	jae	.LBB211_23
.LBB211_25:
	mov	qword ptr [rdi + 8], 58
	mov	qword ptr [rdi], 1
.LBB211_26:
	add	rsp, 16
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB211_23:
	.cfi_def_cfa_offset 48
	mov	rax, qword ptr [rcx + 48]
	mov	r11, qword ptr [rcx + 56]
	xor	ebx, ebx
	cmp	byte ptr [rcx + 73], 8
	sete	bl
	sub	r11, rax
	lea	rbx, [r11 + 8*rbx]
	add	rbx, 4
	mov	r11, rdx
	sub	r11, rbx
	jb	.LBB211_25
# %bb.24:
	cmp	r11, rax
	jae	.LBB211_25
# %bb.34:
	mov	qword ptr [rsp], r10
	mov	rax, rdx
	mov	rdx, r8
	mov	r8, rax
	call	_RINvNtCsfwdNdOnv07X_9addr2line8function10name_entryINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	jmp	.LBB211_26
.Lfunc_end211:
	.size	_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end211-_RINvNtCsfwdNdOnv07X_9addr2line8function9name_attrINtNtNtCsktQxXQGZjIy_5gimli4read12endian_slice11EndianSliceNtNtBS_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
