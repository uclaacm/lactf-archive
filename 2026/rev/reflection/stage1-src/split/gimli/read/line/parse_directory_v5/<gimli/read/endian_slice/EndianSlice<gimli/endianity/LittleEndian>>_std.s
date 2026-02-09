	.section	.text._RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
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
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	test	r8, r8
	je	.LBB241_10
# %bb.1:
	mov	r14, r8
	mov	r15, rcx
	mov	ebp, edx
	mov	r12, rsi
	shl	r14, 2
	mov	ebx, 46
	xor	r13d, r13d
	jmp	.LBB241_2
	.p2align	4
.LBB241_6:                              #   in Loop: Header=BB241_2 Depth=1
	add	r13, 4
	cmp	r14, r13
	je	.LBB241_7
.LBB241_2:                              # =>This Inner Loop Header: Depth=1
	movzx	ecx, word ptr [r15 + r13 + 2]
	lea	rdi, [rsp + 64]
	mov	rsi, r12
	mov	edx, ebp
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp + 64]
	lea	rcx, [rsp + 72]
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 16], xmm0
	cmp	rax, 46
	je	.LBB241_3
# %bb.4:                                #   in Loop: Header=BB241_2 Depth=1
	movaps	xmm0, xmmword ptr [rsp + 16]
	movaps	xmmword ptr [rsp + 48], xmm0
	cmp	word ptr [r15 + r13], 1
	jne	.LBB241_6
# %bb.5:                                #   in Loop: Header=BB241_2 Depth=1
	movaps	xmm0, xmmword ptr [rsp + 48]
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	rbx, rax
	jmp	.LBB241_6
.LBB241_3:
	movaps	xmm0, xmmword ptr [rsp + 16]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmmword ptr [rax + 8], xmm0
	mov	qword ptr [rax], 46
	jmp	.LBB241_9
.LBB241_7:
	cmp	rbx, 46
	je	.LBB241_10
# %bb.8:
	movaps	xmm0, xmmword ptr [rsp + 32]
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movups	xmmword ptr [rax + 8], xmm0
	mov	qword ptr [rax], rbx
.LBB241_9:
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
.LBB241_10:
	.cfi_def_cfa_offset 144
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.71]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Lfunc_end241:
	.size	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end241-_RINvNtNtCsktQxXQGZjIy_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
