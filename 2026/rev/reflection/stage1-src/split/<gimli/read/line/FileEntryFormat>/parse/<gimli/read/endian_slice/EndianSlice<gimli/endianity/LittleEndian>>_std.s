	.section	.text._RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
.Lfunc_begin46:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception46
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
	sub	rsp, 72
	.cfi_def_cfa_offset 128
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rsi]
	mov	rbp, qword ptr [rsi + 8]
	test	rbp, rbp
	je	.LBB239_1
# %bb.2:
	mov	r14, rsi
	dec	rbp
	lea	r12, [rax + 1]
	mov	qword ptr [rsi], r12
	mov	qword ptr [rsi + 8], rbp
	movzx	r13d, byte ptr [rax]
	test	r13d, r13d
	je	.LBB239_3
# %bb.7:
	lea	r15d, [4*r13]
	mov	rdi, r15
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB239_41
# %bb.8:
	mov	qword ptr [rsp + 24], r13
	mov	qword ptr [rsp + 32], rax
	mov	qword ptr [rsp + 40], 0
	xor	r15d, r15d
	mov	dword ptr [rsp + 20], 0         # 4-byte Folded Spill
                                        # implicit-def: $cx
	mov	dword ptr [rsp + 16], ecx       # 4-byte Spill
                                        # implicit-def: $rdi
	mov	qword ptr [rsp + 56], r13       # 8-byte Spill
.LBB239_9:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB239_11 Depth 2
	test	rbp, rbp
	je	.LBB239_16
# %bb.10:                               #   in Loop: Header=BB239_9 Depth=1
	lea	rcx, [r15 + 1]
	mov	qword ptr [rsp + 64], rcx       # 8-byte Spill
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdx, rbp
	mov	rsi, r12
	.p2align	4
.LBB239_11:                             #   Parent Loop BB239_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	r9, [rdx - 1]
	lea	r8, [rsi + 1]
	movzx	r10d, byte ptr [rsi]
	cmp	ecx, 63
	jne	.LBB239_13
# %bb.12:                               #   in Loop: Header=BB239_11 Depth=2
	cmp	r10b, 1
	ja	.LBB239_20
.LBB239_13:                             #   in Loop: Header=BB239_11 Depth=2
	movzx	r10d, r10b
	mov	r11d, r10d
	and	r11d, 127
	shl	r11, cl
	or	r13, r11
	test	r10b, r10b
	jns	.LBB239_22
# %bb.14:                               #   in Loop: Header=BB239_11 Depth=2
	add	ecx, 7
	mov	rdx, r9
	mov	rsi, r8
	test	r9, r9
	jne	.LBB239_11
	jmp	.LBB239_15
.LBB239_22:                             #   in Loop: Header=BB239_9 Depth=1
	mov	qword ptr [rsp + 48], r15       # 8-byte Spill
	mov	qword ptr [r14], r8
	mov	qword ptr [r14 + 8], r9
	cmp	r13, 1
	sete	cl
	cmp	r13, 65535
	mov	r15d, 65535
	cmovb	r15, r13
	test	r9, r9
	je	.LBB239_23
# %bb.24:                               #   in Loop: Header=BB239_9 Depth=1
	mov	byte ptr [rsp + 15], cl         # 1-byte Spill
	lea	rbp, [rdx - 2]
	lea	r12, [rsi + 2]
	mov	qword ptr [r14], r12
	mov	qword ptr [r14 + 8], rbp
	movzx	edi, byte ptr [rsi + 1]
	mov	ecx, edi
	and	ecx, 127
	test	dil, dil
	jns	.LBB239_25
# %bb.26:                               #   in Loop: Header=BB239_9 Depth=1
	test	rbp, rbp
	je	.LBB239_27
# %bb.28:                               #   in Loop: Header=BB239_9 Depth=1
	lea	rbp, [rdx - 3]
	lea	r12, [rsi + 3]
	mov	qword ptr [r14], r12
	mov	qword ptr [r14 + 8], rbp
	movzx	edi, byte ptr [rsi + 2]
	mov	r8d, edi
	and	r8d, 127
	shl	r8d, 7
	movzx	ecx, cx
	or	ecx, r8d
	test	dil, dil
	js	.LBB239_29
.LBB239_25:                             #   in Loop: Header=BB239_9 Depth=1
                                        # kill: def $cx killed $cx killed $ecx def $ecx
	mov	dword ptr [rsp + 16], ecx       # 4-byte Spill
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	cmp	rcx, qword ptr [rsp + 24]
	jne	.LBB239_37
.LBB239_35:                             #   in Loop: Header=BB239_9 Depth=1
.Ltmp975:
	lea	rdi, [rsp + 24]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read4line15FileEntryFormatE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp976:
# %bb.36:                               #   in Loop: Header=BB239_9 Depth=1
	mov	rax, qword ptr [rsp + 32]
.LBB239_37:                             #   in Loop: Header=BB239_9 Depth=1
	xor	ecx, ecx
	movzx	edx, byte ptr [rsp + 15]        # 1-byte Folded Reload
	mov	cl, dl
	add	dword ptr [rsp + 20], ecx       # 4-byte Folded Spill
	mov	rdx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	word ptr [rax + 4*rdx], r15w
	mov	ecx, dword ptr [rsp + 16]       # 4-byte Reload
	mov	word ptr [rax + 4*rdx + 2], cx
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [rsp + 40], rcx
	mov	r15, rcx
	mov	rdi, r13
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	cmp	rcx, r13
	jne	.LBB239_9
	jmp	.LBB239_38
.LBB239_29:                             #   in Loop: Header=BB239_9 Depth=1
	test	rbp, rbp
	je	.LBB239_27
# %bb.30:                               #   in Loop: Header=BB239_9 Depth=1
	add	rdx, -4
	lea	r12, [rsi + 4]
	mov	qword ptr [r14], r12
	mov	qword ptr [r14 + 8], rdx
	movzx	esi, byte ptr [rsi + 3]
	cmp	si, 3
	ja	.LBB239_31
# %bb.33:                               #   in Loop: Header=BB239_9 Depth=1
	movzx	esi, si
	shl	esi, 14
	movzx	ecx, cx
	or	ecx, esi
	mov	dword ptr [rsp + 16], ecx       # 4-byte Spill
	mov	rbp, rdx
	mov	rcx, qword ptr [rsp + 48]       # 8-byte Reload
	cmp	rcx, qword ptr [rsp + 24]
	je	.LBB239_35
	jmp	.LBB239_37
.LBB239_1:
	mov	word ptr [rbx + 8], 19
	mov	word ptr [rbx + 14], 0
	mov	dword ptr [rbx + 10], 0
	mov	qword ptr [rbx + 16], rax
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	jmp	.LBB239_40
.LBB239_3:
	mov	qword ptr [rsp + 24], 0
	mov	qword ptr [rsp + 32], 2
	mov	qword ptr [rsp + 40], 0
.LBB239_4:
	mov	byte ptr [rbx + 8], 71
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	cmp	qword ptr [rsp + 24], 0
	jne	.LBB239_6
	jmp	.LBB239_40
.LBB239_20:
	mov	qword ptr [r14], r8
	mov	qword ptr [r14 + 8], r9
	mov	al, 6
	jmp	.LBB239_21
.LBB239_15:
	add	r12, rbp
	mov	qword ptr [r14], r12
	mov	qword ptr [r14 + 8], 0
.LBB239_16:
	mov	al, 19
	mov	rdi, r12
.LBB239_21:
	mov	byte ptr [rbx + 8], al
	mov	byte ptr [rbx + 9], 0
	mov	word ptr [rbx + 14], 0
	mov	dword ptr [rbx + 10], 0
	mov	qword ptr [rbx + 16], rdi
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	cmp	qword ptr [rsp + 24], 0
	je	.LBB239_40
.LBB239_6:
	mov	rdi, qword ptr [rsp + 32]
	call	qword ptr [rip + free@GOTPCREL]
.LBB239_40:
	add	rsp, 72
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
.LBB239_23:
	.cfi_def_cfa_offset 128
	mov	al, 19
	xor	ecx, ecx
	jmp	.LBB239_32
.LBB239_38:
	cmp	dword ptr [rsp + 20], 1         # 4-byte Folded Reload
	jne	.LBB239_4
# %bb.39:
	mov	rax, qword ptr [rsp + 40]
	mov	qword ptr [rbx + 16], rax
	movups	xmm0, xmmword ptr [rsp + 24]
	movups	xmmword ptr [rbx], xmm0
	jmp	.LBB239_40
.LBB239_27:
	mov	al, 19
	xor	ecx, ecx
	mov	r8, r12
	jmp	.LBB239_32
.LBB239_31:
	mov	al, 6
                                        # implicit-def: $r8
	mov	ecx, dword ptr [rsp + 16]       # 4-byte Reload
.LBB239_32:
	mov	byte ptr [rbx + 8], al
	mov	byte ptr [rbx + 9], 0
	mov	word ptr [rbx + 10], cx
	mov	dword ptr [rbx + 12], 0
	mov	qword ptr [rbx + 16], r8
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	cmp	qword ptr [rsp + 24], 0
	jne	.LBB239_6
	jmp	.LBB239_40
.LBB239_41:
	mov	rdi, r15
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB239_17:
.Ltmp977:
	mov	rbx, rax
	cmp	qword ptr [rsp + 24], 0
	je	.LBB239_19
# %bb.18:
	mov	rdi, qword ptr [rsp + 32]
	call	qword ptr [rip + free@GOTPCREL]
.LBB239_19:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end239:
	.size	_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end239-_RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RINvMse_NtNtCsktQxXQGZjIy_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table239:
.Lexception46:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end46-.Lcst_begin46
.Lcst_begin46:
	.uleb128 .Ltmp975-.Lfunc_begin46        # >> Call Site 1 <<
	.uleb128 .Ltmp976-.Ltmp975              #   Call between .Ltmp975 and .Ltmp976
	.uleb128 .Ltmp977-.Lfunc_begin46        #     jumps to .Ltmp977
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp976-.Lfunc_begin46        # >> Call Site 2 <<
	.uleb128 .Lfunc_end239-.Ltmp976         #   Call between .Ltmp976 and .Lfunc_end239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end46:
	.p2align	2, 0x0
                                        # -- End function
