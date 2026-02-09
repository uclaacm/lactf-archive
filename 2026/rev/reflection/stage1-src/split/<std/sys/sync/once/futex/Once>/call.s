	.section	.text.unlikely._RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call
	.type	_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call,@function
_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call: # @_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call
.Lfunc_begin83:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception83
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
	sub	rsp, 56
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 48], rcx       # 8-byte Spill
	mov	r15, rdx
	mov	rbx, rdi
	mov	eax, dword ptr [rdi]
	lea	r12, [rsp + 24]
	test	esi, esi
	je	.LBB362_1
# %bb.2:
	mov	r13, qword ptr [rip + syscall@GOTPCREL]
	mov	r14, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB362_3
	.p2align	4
.LBB362_15:                             #   in Loop: Header=BB362_3 Depth=1
	or	edx, 1
	lock		cmpxchg	dword ptr [rbx], edx
	je	.LBB362_16
.LBB362_3:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB362_8 Depth 2
	mov	ecx, eax
	and	ecx, 3
	mov	edx, eax
	and	edx, 4
	lea	esi, [rcx - 2]
	cmp	esi, 2
	jb	.LBB362_15
# %bb.4:                                #   in Loop: Header=BB362_3 Depth=1
	cmp	ecx, 1
	jne	.LBB362_20
# %bb.5:                                #   in Loop: Header=BB362_3 Depth=1
	mov	ebp, eax
	test	edx, edx
	jne	.LBB362_7
# %bb.6:                                #   in Loop: Header=BB362_3 Depth=1
	or	ebp, 4
	mov	eax, 1
	lock		cmpxchg	dword ptr [rbx], ebp
	jne	.LBB362_3
.LBB362_7:                              #   in Loop: Header=BB362_3 Depth=1
	mov	qword ptr [rsp + 16], 0
	.p2align	4
.LBB362_8:                              #   Parent Loop BB362_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbx]
	cmp	eax, ebp
	jne	.LBB362_11
# %bb.9:                                #   in Loop: Header=BB362_8 Depth=2
	cmp	byte ptr [rsp + 16], 0
	mov	r8d, 0
	cmovne	r8, r12
	mov	dword ptr [rsp], -1
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 137
	mov	ecx, ebp
	xor	r9d, r9d
	xor	eax, eax
	call	r13
	test	rax, rax
	jns	.LBB362_11
# %bb.10:                               #   in Loop: Header=BB362_8 Depth=2
	call	r14
	cmp	dword ptr [rax], 4
	je	.LBB362_8
.LBB362_11:                             #   in Loop: Header=BB362_3 Depth=1
	mov	eax, dword ptr [rbx]
	jmp	.LBB362_3
.LBB362_16:
	cmp	ecx, 2
	sete	dl
.LBB362_17:
	mov	dword ptr [rsp + 16], 0
	mov	byte ptr [rsp + 20], dl
.Ltmp1209:
	lea	rsi, [rsp + 16]
	mov	rdi, r15
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	call	qword ptr [rax + 32]
.Ltmp1210:
# %bb.18:
	mov	eax, dword ptr [rsp + 16]
	xchg	dword ptr [rbx], eax
	test	al, 4
	je	.LBB362_20
# %bb.19:
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 129
	mov	ecx, 2147483647
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
.LBB362_20:
	add	rsp, 56
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
.LBB362_1:
	.cfi_def_cfa_offset 112
	lea	r14, [rip + .LJTI362_0]
	mov	r13, qword ptr [rip + syscall@GOTPCREL]
	mov	qword ptr [rsp + 40], r8        # 8-byte Spill
	jmp	.LBB362_13
.LBB362_12:                             #   in Loop: Header=BB362_13 Depth=1
	or	ecx, 1
	xor	edx, edx
	mov	eax, ebp
	lock		cmpxchg	dword ptr [rbx], ecx
	je	.LBB362_17
.LBB362_13:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB362_24 Depth 2
                                        #       Child Loop BB362_27 Depth 3
	mov	edx, eax
	and	edx, 3
	mov	ecx, eax
	and	ecx, 4
	movsxd	rdx, dword ptr [r14 + 4*rdx]
	add	rdx, r14
	mov	ebp, eax
	jmp	rdx
.LBB362_24:                             #   Parent Loop BB362_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB362_27 Depth 3
	test	ecx, ecx
	jne	.LBB362_26
# %bb.25:                               #   in Loop: Header=BB362_24 Depth=2
	or	ebp, 4
	mov	eax, 1
	lock		cmpxchg	dword ptr [rbx], ebp
	jne	.LBB362_13
.LBB362_26:                             #   in Loop: Header=BB362_24 Depth=2
	mov	qword ptr [rsp + 16], 0
.LBB362_27:                             #   Parent Loop BB362_13 Depth=1
                                        #     Parent Loop BB362_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	eax, dword ptr [rbx]
	cmp	eax, ebp
	jne	.LBB362_30
# %bb.28:                               #   in Loop: Header=BB362_27 Depth=3
	cmp	byte ptr [rsp + 16], 0
	mov	r8d, 0
	cmovne	r8, r12
	mov	dword ptr [rsp], -1
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 137
	mov	ecx, ebp
	xor	r9d, r9d
	xor	eax, eax
	call	r13
	test	rax, rax
	jns	.LBB362_30
# %bb.29:                               #   in Loop: Header=BB362_27 Depth=3
	call	qword ptr [rip + __errno_location@GOTPCREL]
	cmp	dword ptr [rax], 4
	je	.LBB362_27
.LBB362_30:                             #   in Loop: Header=BB362_24 Depth=2
	mov	ebp, dword ptr [rbx]
	mov	eax, ebp
	and	eax, 3
	mov	ecx, ebp
	and	ecx, 4
	movsxd	rax, dword ptr [r14 + 4*rax]
	add	rax, r14
	mov	r8, qword ptr [rsp + 40]        # 8-byte Reload
	jmp	rax
.LBB362_14:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.242]
	mov	esi, 85
	mov	rdx, r8
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB362_21:
.Ltmp1211:
	mov	r14, rax
	mov	eax, 2
	xchg	dword ptr [rbx], eax
	test	al, 4
	je	.LBB362_23
# %bb.22:
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 129
	mov	ecx, 2147483647
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
.LBB362_23:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end362:
	.size	_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call, .Lfunc_end362-_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call
	.cfi_endproc
	.section	.rodata.unlikely._RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call,"a",@progbits
	.p2align	2, 0x0
.LJTI362_0:
	.long	.LBB362_20-.LJTI362_0
	.long	.LBB362_24-.LJTI362_0
	.long	.LBB362_14-.LJTI362_0
	.long	.LBB362_12-.LJTI362_0
	.section	.gcc_except_table._RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call,"a",@progbits
	.p2align	2, 0x0
GCC_except_table362:
.Lexception83:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end83-.Lcst_begin83
.Lcst_begin83:
	.uleb128 .Lfunc_begin83-.Lfunc_begin83  # >> Call Site 1 <<
	.uleb128 .Ltmp1209-.Lfunc_begin83       #   Call between .Lfunc_begin83 and .Ltmp1209
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1209-.Lfunc_begin83       # >> Call Site 2 <<
	.uleb128 .Ltmp1210-.Ltmp1209            #   Call between .Ltmp1209 and .Ltmp1210
	.uleb128 .Ltmp1211-.Lfunc_begin83       #     jumps to .Ltmp1211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1210-.Lfunc_begin83       # >> Call Site 3 <<
	.uleb128 .Lfunc_end362-.Ltmp1210        #   Call between .Ltmp1210 and .Lfunc_end362
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end83:
	.p2align	2, 0x0
                                        # -- End function
