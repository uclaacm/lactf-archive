	.section	.text._RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.type	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,@function
_RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std: # @_RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
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
	sub	rsp, 136
	.cfi_def_cfa_offset 192
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 40], rdi       # 8-byte Spill
	mov	dword ptr [rsp + 35], 0
	mov	dword ptr [rsp + 32], 0
	test	r8, r8
	je	.LBB242_37
# %bb.1:
	mov	r14, r8
	mov	r15, rcx
	mov	ebp, edx
	mov	r12, rsi
	shl	r14, 2
	mov	eax, 46
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	xor	ebx, ebx
	lea	r13, [rip + .LJTI242_0]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 8], 0          # 8-byte Folded Spill
	mov	qword ptr [rsp + 24], 0         # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	mov	qword ptr [rsp + 56], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp + 48], 0         # 8-byte Folded Spill
	jmp	.LBB242_4
.LBB242_2:                              #   in Loop: Header=BB242_4 Depth=1
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	qword ptr [rsp + 88], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	.p2align	4
.LBB242_3:                              #   in Loop: Header=BB242_4 Depth=1
	add	rbx, 4
	cmp	r14, rbx
	je	.LBB242_34
.LBB242_4:                              # =>This Inner Loop Header: Depth=1
	movzx	ecx, word ptr [r15 + rbx + 2]
	lea	rdi, [rsp + 112]
	mov	rsi, r12
	mov	edx, ebp
	call	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line15parse_attributeINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	mov	rcx, qword ptr [rsp + 112]
	mov	rax, qword ptr [rsp + 120]
	mov	rdx, qword ptr [rsp + 128]
	cmp	rcx, 46
	je	.LBB242_33
# %bb.5:                                #   in Loop: Header=BB242_4 Depth=1
	movzx	esi, word ptr [r15 + rbx]
	lea	edi, [rsi - 1]
	cmp	edi, 4
	ja	.LBB242_10
# %bb.6:                                #   in Loop: Header=BB242_4 Depth=1
	movsxd	rsi, dword ptr [r13 + 4*rdi]
	add	rsi, r13
	jmp	rsi
.LBB242_7:                              #   in Loop: Header=BB242_4 Depth=1
	add	rcx, -2
	cmp	rcx, 5
	ja	.LBB242_3
# %bb.8:                                #   in Loop: Header=BB242_4 Depth=1
	lea	rdx, [rip + .LJTI242_3]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB242_26:                             #   in Loop: Header=BB242_4 Depth=1
	movzx	eax, al
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB242_3
	.p2align	4
.LBB242_10:                             #   in Loop: Header=BB242_4 Depth=1
	cmp	esi, 8193
	jne	.LBB242_3
# %bb.11:                               #   in Loop: Header=BB242_4 Depth=1
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	qword ptr [rsp + 104], rdx      # 8-byte Spill
	mov	qword ptr [rsp + 64], rcx       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_12:                             #   in Loop: Header=BB242_4 Depth=1
	xor	rcx, 1
	xor	rdx, 16
	or	rdx, rcx
	jne	.LBB242_3
# %bb.13:                               #   in Loop: Header=BB242_4 Depth=1
	mov	ecx, dword ptr [rax]
	mov	edx, dword ptr [rax + 3]
	mov	dword ptr [rsp + 35], edx
	mov	dword ptr [rsp + 32], ecx
	mov	rcx, qword ptr [rax + 7]
	mov	qword ptr [rsp + 56], rcx       # 8-byte Spill
	movzx	eax, byte ptr [rax + 15]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_14:                             #   in Loop: Header=BB242_4 Depth=1
	add	rcx, -2
	cmp	rcx, 5
	ja	.LBB242_3
# %bb.15:                               #   in Loop: Header=BB242_4 Depth=1
	lea	rdx, [rip + .LJTI242_2]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB242_16:                             #   in Loop: Header=BB242_4 Depth=1
	movzx	eax, al
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	jmp	.LBB242_3
.LBB242_17:                             #   in Loop: Header=BB242_4 Depth=1
	add	rcx, -2
	cmp	rcx, 5
	ja	.LBB242_3
# %bb.18:                               #   in Loop: Header=BB242_4 Depth=1
	lea	rdx, [rip + .LJTI242_1]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB242_19:                             #   in Loop: Header=BB242_4 Depth=1
	movzx	eax, al
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_20:                             #   in Loop: Header=BB242_4 Depth=1
	movzx	eax, ax
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	jmp	.LBB242_3
.LBB242_21:                             #   in Loop: Header=BB242_4 Depth=1
	mov	eax, eax
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_22:                             #   in Loop: Header=BB242_4 Depth=1
	movzx	eax, ax
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_23:                             #   in Loop: Header=BB242_4 Depth=1
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	cmovns	rcx, rax
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	jmp	.LBB242_3
.LBB242_24:                             #   in Loop: Header=BB242_4 Depth=1
	mov	eax, eax
.LBB242_25:                             #   in Loop: Header=BB242_4 Depth=1
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	jmp	.LBB242_3
.LBB242_27:                             #   in Loop: Header=BB242_4 Depth=1
	movzx	eax, ax
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_28:                             #   in Loop: Header=BB242_4 Depth=1
	test	rax, rax
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	cmovns	rcx, rax
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_29:                             #   in Loop: Header=BB242_4 Depth=1
	test	rax, rax
	js	.LBB242_3
.LBB242_9:                              #   in Loop: Header=BB242_4 Depth=1
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_31:                             #   in Loop: Header=BB242_4 Depth=1
	mov	eax, eax
.LBB242_32:                             #   in Loop: Header=BB242_4 Depth=1
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	jmp	.LBB242_3
.LBB242_33:
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx + 16], rdx
	mov	qword ptr [rcx], 46
	jmp	.LBB242_36
.LBB242_34:
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	cmp	rsi, 46
	je	.LBB242_37
# %bb.35:
	mov	eax, dword ptr [rsp + 32]
	mov	ecx, dword ptr [rsp + 35]
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	dword ptr [rdx + 75], ecx
	mov	dword ptr [rdx + 72], eax
	mov	qword ptr [rdx], rsi
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	mov	qword ptr [rdx + 16], rax
	mov	rax, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [rdx + 24], rax
	mov	rax, qword ptr [rsp + 96]       # 8-byte Reload
	mov	qword ptr [rdx + 32], rax
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	qword ptr [rdx + 40], rax
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rdx + 48], rax
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rdx + 56], rax
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rdx + 64], rax
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [rdx + 79], rax
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	mov	byte ptr [rdx + 87], al
.LBB242_36:
	add	rsp, 136
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
.LBB242_37:
	.cfi_def_cfa_offset 192
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.70]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Lfunc_end242:
	.size	_RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std, .Lfunc_end242-_RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RINvNtNtCsktQxXQGZjIy_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity12LittleEndianEECs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI242_0:
	.long	.LBB242_2-.LJTI242_0
	.long	.LBB242_7-.LJTI242_0
	.long	.LBB242_14-.LJTI242_0
	.long	.LBB242_17-.LJTI242_0
	.long	.LBB242_12-.LJTI242_0
.LJTI242_1:
	.long	.LBB242_19-.LJTI242_1
	.long	.LBB242_22-.LJTI242_1
	.long	.LBB242_31-.LJTI242_1
	.long	.LBB242_32-.LJTI242_1
	.long	.LBB242_28-.LJTI242_1
	.long	.LBB242_32-.LJTI242_1
.LJTI242_2:
	.long	.LBB242_16-.LJTI242_2
	.long	.LBB242_20-.LJTI242_2
	.long	.LBB242_24-.LJTI242_2
	.long	.LBB242_25-.LJTI242_2
	.long	.LBB242_23-.LJTI242_2
	.long	.LBB242_25-.LJTI242_2
.LJTI242_3:
	.long	.LBB242_26-.LJTI242_3
	.long	.LBB242_27-.LJTI242_3
	.long	.LBB242_21-.LJTI242_3
	.long	.LBB242_9-.LJTI242_3
	.long	.LBB242_29-.LJTI242_3
	.long	.LBB242_9-.LJTI242_3
                                        # -- End function
