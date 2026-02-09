	.section	.text.rust_eh_personality,"ax",@progbits
	.p2align	4                               # -- Begin function rust_eh_personality
	.type	rust_eh_personality,@function
rust_eh_personality:                    # @rust_eh_personality
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
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
	mov	eax, 3
	cmp	edi, 1
	jne	.LBB1_77
# %bb.1:
	mov	rbx, r8
	mov	r12, rcx
	mov	dword ptr [rsp + 36], esi       # 4-byte Spill
	mov	qword ptr [rsp + 64], r8
	mov	rdi, r8
	call	qword ptr [rip + _Unwind_GetLanguageSpecificData@GOTPCREL]
	mov	r14, rax
	mov	dword ptr [rsp + 12], 0
	lea	rsi, [rsp + 12]
	mov	rdi, rbx
	call	qword ptr [rip + _Unwind_GetIPInfo@GOTPCREL]
	mov	r13, rax
	cmp	dword ptr [rsp + 12], 1
	sbb	r13, 0
	mov	rdi, rbx
	call	qword ptr [rip + _Unwind_GetRegionStart@GOTPCREL]
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	lea	rax, [rsp + 64]
	mov	qword ptr [rsp + 72], rax
	mov	qword ptr [rsp + 80], rax
	test	r14, r14
	je	.LBB1_69
# %bb.2:
	movzx	ebp, byte ptr [r14]
	lea	r15, [r14 + 1]
	cmp	ebp, 255
	je	.LBB1_6
# %bb.3:
	mov	eax, ebp
	shr	eax, 4
	and	eax, 7
	cmp	eax, 5
	ja	.LBB1_76
# %bb.4:
	lea	rcx, [rip + .LJTI1_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	mov	r8, r15
	jmp	rax
.LBB1_5:
	lea	rdi, [rsp + 72]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.435]
	jmp	.LBB1_9
.LBB1_6:
	mov	r8, qword ptr [rsp + 24]        # 8-byte Reload
	jmp	.LBB1_31
.LBB1_7:
	mov	rax, qword ptr [rsp + 24]       # 8-byte Reload
	mov	r8, rax
	test	rax, rax
	jne	.LBB1_11
	jmp	.LBB1_76
.LBB1_8:
	lea	rdi, [rsp + 80]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.436]
.LBB1_9:
.Ltmp0:
	call	qword ptr [rax + 40]
.Ltmp1:
# %bb.10:
	mov	r8, rax
	test	rax, rax
	je	.LBB1_15
.LBB1_11:
	mov	eax, ebp
	and	eax, 15
	cmp	eax, 12
	ja	.LBB1_76
# %bb.12:
	lea	rcx, [rip + .LJTI1_1]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB1_13:
	mov	rax, qword ptr [r14 + 1]
	add	r14, 9
	jmp	.LBB1_27
.LBB1_14:
	add	r15, 7
	and	r15, -8
.LBB1_15:
	test	bpl, 15
	jne	.LBB1_76
# %bb.16:
	mov	r8, qword ptr [r15]
	add	r15, 8
	jmp	.LBB1_29
.LBB1_17:
	mov	eax, dword ptr [r14 + 1]
	jmp	.LBB1_26
.LBB1_18:
	xor	eax, eax
	xor	ecx, ecx
	.p2align	4
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [r15]
	mov	esi, edx
	and	esi, 127
	shl	rsi, cl
	inc	r15
	or	rax, rsi
	add	ecx, 7
	test	dl, dl
	js	.LBB1_19
# %bb.20:
	mov	rsi, -1
	shl	rsi, cl
	xor	edi, edi
	cmp	dl, 64
	cmovb	rsi, rdi
	cmp	ecx, 64
	cmovae	rsi, rdi
	or	rax, rsi
	jmp	.LBB1_28
.LBB1_21:
	movsx	rax, word ptr [r14 + 1]
	add	r14, 3
	jmp	.LBB1_27
.LBB1_22:
	xor	ecx, ecx
	xor	eax, eax
	.p2align	4
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [r15]
	mov	esi, edx
	and	esi, 127
	shl	rsi, cl
	inc	r15
	or	rax, rsi
	add	rcx, 7
	test	dl, dl
	js	.LBB1_23
	jmp	.LBB1_28
.LBB1_24:
	movzx	eax, word ptr [r14 + 1]
	add	r14, 3
	jmp	.LBB1_27
.LBB1_25:
	movsxd	rax, dword ptr [r14 + 1]
.LBB1_26:
	add	r14, 5
.LBB1_27:
	mov	r15, r14
.LBB1_28:
	add	r8, rax
.LBB1_29:
	test	bpl, bpl
	jns	.LBB1_31
# %bb.30:
	mov	r8, qword ptr [r8]
.LBB1_31:
	mov	qword ptr [rsp + 16], r8        # 8-byte Spill
	lea	rax, [r15 + 1]
	cmp	byte ptr [r15], -1
	je	.LBB1_33
	.p2align	4
.LBB1_32:                               # =>This Inner Loop Header: Depth=1
	lea	r8, [rax + 1]
	cmp	byte ptr [rax], 0
	mov	rax, r8
	js	.LBB1_32
	jmp	.LBB1_34
.LBB1_33:
	mov	r8, rax
.LBB1_34:
	movzx	edi, byte ptr [r8]
	inc	r8
	xor	ecx, ecx
	xor	eax, eax
	.p2align	4
.LBB1_35:                               # =>This Inner Loop Header: Depth=1
	mov	rdx, r8
	movzx	esi, byte ptr [r8]
	mov	r9d, esi
	and	r9d, 127
	shl	r9, cl
	inc	r8
	or	rax, r9
	add	rcx, 7
	test	sil, sil
	js	.LBB1_35
# %bb.36:
	cmp	dil, 15
	ja	.LBB1_75
# %bb.37:
	lea	r10, [rdx + rax]
	inc	r10
	movzx	r11d, dil
	mov	qword ptr [rsp + 56], r12       # 8-byte Spill
	mov	byte ptr [rsp + 11], dil        # 1-byte Spill
	mov	qword ptr [rsp + 48], r10       # 8-byte Spill
	mov	qword ptr [rsp + 40], r11       # 8-byte Spill
	mov	r9d, 4
	.p2align	4
.LBB1_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #     Child Loop BB1_48 Depth 2
                                        #     Child Loop BB1_61 Depth 2
	cmp	r8, r10
	jae	.LBB1_70
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=1
	cmp	dil, 12
	ja	.LBB1_76
# %bb.40:                               #   in Loop: Header=BB1_38 Depth=1
	lea	rcx, [rip + .LJTI1_2]
	movsxd	rax, dword ptr [rcx + 4*r11]
	add	rax, rcx
	jmp	rax
.LBB1_41:                               #   in Loop: Header=BB1_38 Depth=1
	mov	rbp, qword ptr [r8]
	mov	r15, qword ptr [r8 + 8]
	mov	r14, qword ptr [r8 + 16]
	add	r8, 24
	jmp	.LBB1_60
.LBB1_42:                               #   in Loop: Header=BB1_38 Depth=1
	mov	ebp, dword ptr [r8]
	mov	r15d, dword ptr [r8 + 4]
	mov	r14d, dword ptr [r8 + 8]
	add	r8, 12
	jmp	.LBB1_60
.LBB1_43:                               #   in Loop: Header=BB1_38 Depth=1
	xor	ecx, ecx
	xor	ebp, ebp
	.p2align	4
.LBB1_44:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	eax, byte ptr [r8]
	mov	edx, eax
	and	edx, 127
	shl	rdx, cl
	inc	r8
	or	rbp, rdx
	add	rcx, 7
	test	al, al
	js	.LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_38 Depth=1
	xor	ecx, ecx
	xor	r15d, r15d
	.p2align	4
.LBB1_46:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	eax, byte ptr [r8]
	mov	edx, eax
	and	edx, 127
	shl	rdx, cl
	inc	r8
	or	r15, rdx
	add	rcx, 7
	test	al, al
	js	.LBB1_46
# %bb.47:                               #   in Loop: Header=BB1_38 Depth=1
	xor	ecx, ecx
	xor	r14d, r14d
	.p2align	4
.LBB1_48:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	eax, byte ptr [r8]
	mov	edx, eax
	and	edx, 127
	shl	rdx, cl
	inc	r8
	or	r14, rdx
	add	rcx, 7
	test	al, al
	js	.LBB1_48
	jmp	.LBB1_60
.LBB1_49:                               #   in Loop: Header=BB1_38 Depth=1
	movsxd	rbp, dword ptr [r8]
	movsxd	r15, dword ptr [r8 + 4]
	movsxd	r14, dword ptr [r8 + 8]
	add	r8, 12
	jmp	.LBB1_60
.LBB1_50:                               #   in Loop: Header=BB1_38 Depth=1
	xor	ebp, ebp
	xor	eax, eax
	.p2align	4
.LBB1_51:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r11d, byte ptr [r8]
	mov	edx, r11d
	and	edx, 127
	mov	ecx, eax
	shl	rdx, cl
	inc	r8
	or	rbp, rdx
	add	eax, 7
	test	r11b, r11b
	js	.LBB1_51
# %bb.52:                               #   in Loop: Header=BB1_38 Depth=1
	xor	r15d, r15d
	xor	edx, edx
	.p2align	4
.LBB1_53:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	r10d, byte ptr [r8]
	mov	esi, r10d
	and	esi, 127
	mov	ecx, edx
	shl	rsi, cl
	inc	r8
	or	r15, rsi
	add	edx, 7
	test	r10b, r10b
	js	.LBB1_53
# %bb.54:                               #   in Loop: Header=BB1_38 Depth=1
	xor	r14d, r14d
	xor	esi, esi
	.p2align	4
.LBB1_55:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	edi, byte ptr [r8]
	mov	r12d, edi
	and	r12d, 127
	mov	ecx, esi
	shl	r12, cl
	inc	r8
	or	r14, r12
	add	esi, 7
	test	dil, dil
	js	.LBB1_55
# %bb.56:                               #   in Loop: Header=BB1_38 Depth=1
	mov	r12, -1
	mov	ecx, eax
	shl	r12, cl
	cmp	r11b, 64
	mov	r11d, 0
	cmovb	r12, r11
	cmp	eax, 64
	cmovae	r12, r11
	mov	rax, -1
	mov	ecx, edx
	shl	rax, cl
	or	rbp, r12
	cmp	r10b, 64
	cmovb	rax, r11
	cmp	edx, 64
	cmovae	rax, r11
	mov	rdx, -1
	mov	ecx, esi
	shl	rdx, cl
	or	r15, rax
	cmp	dil, 64
	cmovb	rdx, r11
	cmp	esi, 64
	cmovae	rdx, r11
	or	r14, rdx
	mov	r12, qword ptr [rsp + 56]       # 8-byte Reload
	movzx	edi, byte ptr [rsp + 11]        # 1-byte Folded Reload
	mov	r10, qword ptr [rsp + 48]       # 8-byte Reload
	mov	r11, qword ptr [rsp + 40]       # 8-byte Reload
	jmp	.LBB1_60
.LBB1_57:                               #   in Loop: Header=BB1_38 Depth=1
	movzx	ebp, word ptr [r8]
	movzx	r15d, word ptr [r8 + 2]
	movzx	r14d, word ptr [r8 + 4]
	jmp	.LBB1_59
.LBB1_58:                               #   in Loop: Header=BB1_38 Depth=1
	movsx	rbp, word ptr [r8]
	movsx	r15, word ptr [r8 + 2]
	movsx	r14, word ptr [r8 + 4]
.LBB1_59:                               #   in Loop: Header=BB1_38 Depth=1
	add	r8, 6
.LBB1_60:                               #   in Loop: Header=BB1_38 Depth=1
	xor	ecx, ecx
	xor	eax, eax
	.p2align	4
.LBB1_61:                               #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzx	edx, byte ptr [r8]
	mov	esi, edx
	and	esi, 127
	shl	rsi, cl
	inc	r8
	or	rax, rsi
	add	rcx, 7
	test	dl, dl
	js	.LBB1_61
# %bb.62:                               #   in Loop: Header=BB1_38 Depth=1
	add	rbp, qword ptr [rsp + 24]       # 8-byte Folded Reload
	cmp	r13, rbp
	jb	.LBB1_71
# %bb.63:                               #   in Loop: Header=BB1_38 Depth=1
	add	rbp, r15
	cmp	r13, rbp
	jae	.LBB1_38
# %bb.64:
	test	r14, r14
	je	.LBB1_69
# %bb.65:
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	add	rcx, r14
	test	rax, rax
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	je	.LBB1_82
# %bb.66:
	lea	rdx, [r10 + rax]
	dec	rdx
	xor	eax, eax
	xor	ecx, ecx
	.p2align	4
.LBB1_67:                               # =>This Inner Loop Header: Depth=1
	movzx	esi, byte ptr [rdx]
	mov	edi, esi
	and	edi, 127
	shl	rdi, cl
	inc	rdx
	or	rax, rdi
	add	ecx, 7
	test	sil, sil
	js	.LBB1_67
# %bb.68:
	mov	rdx, -1
	shl	rdx, cl
	xor	edi, edi
	cmp	sil, 64
	cmovb	rdx, rdi
	cmp	ecx, 64
	cmovae	rdx, rdi
	xor	ecx, ecx
	mov	rsi, rax
	or	rsi, rdx
	setg	cl
	xor	rcx, 3
	or	rdx, rax
	mov	r9d, 1
	cmovne	r9, rcx
	mov	edx, dword ptr [rsp + 36]       # 4-byte Reload
	test	dl, 1
	jne	.LBB1_74
	jmp	.LBB1_72
.LBB1_69:
	xor	r9d, r9d
.LBB1_70:
                                        # implicit-def: $rax
                                        # kill: killed $rax
.LBB1_71:
	mov	edx, dword ptr [rsp + 36]       # 4-byte Reload
	test	dl, 1
	jne	.LBB1_74
.LBB1_72:
	mov	eax, 8
	lea	rsi, [rip + .LJTI1_3]
	movsxd	rcx, dword ptr [rsi + 4*r9]
	add	rcx, rsi
	jmp	rcx
.LBB1_73:
	mov	r14, qword ptr [rip + _Unwind_SetGR@GOTPCREL]
	mov	rdi, rbx
	xor	esi, esi
	mov	rdx, r12
	call	r14
	mov	rdi, rbx
	mov	esi, 1
	xor	edx, edx
	call	r14
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 16]       # 8-byte Reload
	call	qword ptr [rip + _Unwind_SetIP@GOTPCREL]
	mov	eax, 7
	jmp	.LBB1_77
.LBB1_75:
	test	rax, rax
	jle	.LBB1_78
.LBB1_76:
	mov	eax, 3
	jmp	.LBB1_77
.LBB1_78:
	mov	r9d, 4
	jmp	.LBB1_70
.LBB1_80:
	mov	eax, 2
	jmp	.LBB1_77
.LBB1_81:
	test	dl, 8
	jne	.LBB1_77
	jmp	.LBB1_73
.LBB1_82:
	mov	r9d, 1
	mov	edx, dword ptr [rsp + 36]       # 4-byte Reload
	test	dl, 1
	je	.LBB1_72
.LBB1_74:
	lea	rax, [rip + .Lswitch.table.rust_eh_personality]
	mov	eax, dword ptr [rax + 4*r9]
.LBB1_77:
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
.LBB1_83:
	.cfi_def_cfa_offset 144
.Ltmp2:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.Lfunc_end1:
	.size	rust_eh_personality, .Lfunc_end1-rust_eh_personality
	.cfi_endproc
	.section	.rodata.rust_eh_personality,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.long	.LBB1_15-.LJTI1_0
	.long	.LBB1_11-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
	.long	.LBB1_8-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
.LJTI1_1:
	.long	.LBB1_13-.LJTI1_1
	.long	.LBB1_22-.LJTI1_1
	.long	.LBB1_24-.LJTI1_1
	.long	.LBB1_17-.LJTI1_1
	.long	.LBB1_13-.LJTI1_1
	.long	.LBB1_76-.LJTI1_1
	.long	.LBB1_76-.LJTI1_1
	.long	.LBB1_76-.LJTI1_1
	.long	.LBB1_76-.LJTI1_1
	.long	.LBB1_18-.LJTI1_1
	.long	.LBB1_21-.LJTI1_1
	.long	.LBB1_25-.LJTI1_1
	.long	.LBB1_13-.LJTI1_1
.LJTI1_2:
	.long	.LBB1_41-.LJTI1_2
	.long	.LBB1_43-.LJTI1_2
	.long	.LBB1_57-.LJTI1_2
	.long	.LBB1_42-.LJTI1_2
	.long	.LBB1_41-.LJTI1_2
	.long	.LBB1_76-.LJTI1_2
	.long	.LBB1_76-.LJTI1_2
	.long	.LBB1_76-.LJTI1_2
	.long	.LBB1_76-.LJTI1_2
	.long	.LBB1_50-.LJTI1_2
	.long	.LBB1_58-.LJTI1_2
	.long	.LBB1_49-.LJTI1_2
	.long	.LBB1_41-.LJTI1_2
.LJTI1_3:
	.long	.LBB1_77-.LJTI1_3
	.long	.LBB1_73-.LJTI1_3
	.long	.LBB1_73-.LJTI1_3
	.long	.LBB1_81-.LJTI1_3
	.long	.LBB1_80-.LJTI1_3
	.section	.gcc_except_table.rust_eh_personality,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase0:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
