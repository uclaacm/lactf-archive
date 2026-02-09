	.section	.text._RNvNtCs3bNtqN8jaZB_3std3env11current_exe,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCs3bNtqN8jaZB_3std3env11current_exe
	.type	_RNvNtCs3bNtqN8jaZB_3std3env11current_exe,@function
_RNvNtCs3bNtqN8jaZB_3std3env11current_exe: # @_RNvNtCs3bNtqN8jaZB_3std3env11current_exe
.Lfunc_begin63:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception63
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
	sub	rsp, 408
	.cfi_def_cfa_offset 464
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	movabs	rax, 7311705249292248435
	mov	qword ptr [rsp + 30], rax
	movabs	rax, 7310238724270485551
	mov	qword ptr [rsp + 24], rax
	mov	byte ptr [rsp + 38], 0
	mov	r12d, 256
	mov	edi, 256
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB302_38
# %bb.1:
	mov	r14, rax
	mov	qword ptr [rsp], 256
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rsp + 24]
	mov	rbp, qword ptr [rip + readlink@GOTPCREL]
	mov	r13, rsp
	.p2align	4
.LBB302_2:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	rbp
	cmp	rax, -1
	je	.LBB302_3
# %bb.7:                                #   in Loop: Header=BB302_2 Depth=1
	mov	qword ptr [rsp + 16], rax
	cmp	r12, rax
	jne	.LBB302_10
# %bb.8:                                #   in Loop: Header=BB302_2 Depth=1
.Ltmp1055:
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r13
	mov	rsi, r12
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp1056:
# %bb.9:                                #   in Loop: Header=BB302_2 Depth=1
	mov	r12, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 8]
	jmp	.LBB302_2
.LBB302_3:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	r15d, dword ptr [rax]
	shl	r15, 32
	or	r15, 2
	test	r12, r12
	je	.LBB302_22
# %bb.4:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	rax, -1
	mov	ecx, r15d
	and	ecx, 3
	lea	rdx, [rip + .LJTI302_0]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	movabs	rsi, -9223372036854775808
	jmp	rcx
.LBB302_10:
	jbe	.LBB302_11
# %bb.14:
	test	rax, rax
	je	.LBB302_15
# %bb.16:
	mov	rdi, r14
	mov	rsi, rax
	mov	r12, rax
	call	qword ptr [rip + realloc@GOTPCREL]
	mov	r15, rax
	mov	rax, r12
	test	r15, r15
	je	.LBB302_17
# %bb.12:
	movabs	rsi, -9223372036854775808
	cmp	r12, rsi
	je	.LBB302_13
	jmp	.LBB302_28
.LBB302_11:
	mov	r15, r14
	movabs	rsi, -9223372036854775808
	cmp	r12, rsi
	jne	.LBB302_28
.LBB302_13:
	mov	ecx, r15d
	and	ecx, 3
	lea	rdx, [rip + .LJTI302_0]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB302_22:
	mov	rax, -1
	mov	ecx, r15d
	and	ecx, 3
	lea	rdx, [rip + .LJTI302_0]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	movabs	rsi, -9223372036854775808
	jmp	rcx
.LBB302_29:
	cmp	byte ptr [r15 + 16], 0
	jne	.LBB302_27
	jmp	.LBB302_24
.LBB302_26:
	mov	rcx, r15
	shr	rcx, 32
	cmp	ecx, 2
	je	.LBB302_24
	jmp	.LBB302_27
.LBB302_23:
	mov	rcx, r15
	shr	rcx, 32
	jne	.LBB302_27
.LBB302_24:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.484]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], rsi
	jmp	.LBB302_25
.LBB302_30:
	cmp	byte ptr [r15 + 15], 0
	je	.LBB302_31
.LBB302_27:
	mov	r12, rsi
.LBB302_28:
	mov	qword ptr [rbx], r12
	mov	qword ptr [rbx + 8], r15
	mov	qword ptr [rbx + 16], rax
.LBB302_25:
	add	rsp, 408
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
.LBB302_15:
	.cfi_def_cfa_offset 464
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	r15d, 1
	xor	eax, eax
	xor	r12d, r12d
	jmp	.LBB302_28
.LBB302_31:
	lea	r14, [r15 - 1]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.484]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], rsi
	mov	r12, qword ptr [r15 - 1]
	mov	r15, qword ptr [r15 + 7]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.LBB302_33
# %bb.32:
.Ltmp1058:
	mov	rdi, r12
	call	rax
.Ltmp1059:
.LBB302_33:
	cmp	qword ptr [r15 + 8], 0
	je	.LBB302_35
# %bb.34:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB302_35:
	mov	rdi, r14
	add	rsp, 408
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
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB302_38:
	.cfi_def_cfa_offset 464
	mov	edi, 256
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB302_17:
.Ltmp1052:
	mov	rdi, rax
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1053:
# %bb.18:
.LBB302_36:
.Ltmp1060:
	mov	rbx, rax
	cmp	qword ptr [r15 + 8], 0
	je	.LBB302_20
# %bb.37:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB302_20
.LBB302_19:
.Ltmp1054:
	mov	rbx, rax
	jmp	.LBB302_20
.LBB302_5:
.Ltmp1057:
	mov	rbx, rax
	cmp	qword ptr [rsp], 0
	je	.LBB302_21
# %bb.6:
	mov	r14, qword ptr [rsp + 8]
.LBB302_20:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB302_21:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end302:
	.size	_RNvNtCs3bNtqN8jaZB_3std3env11current_exe, .Lfunc_end302-_RNvNtCs3bNtqN8jaZB_3std3env11current_exe
	.cfi_endproc
	.section	.rodata._RNvNtCs3bNtqN8jaZB_3std3env11current_exe,"a",@progbits
	.p2align	2, 0x0
.LJTI302_0:
	.long	.LBB302_29-.LJTI302_0
	.long	.LBB302_30-.LJTI302_0
	.long	.LBB302_26-.LJTI302_0
	.long	.LBB302_23-.LJTI302_0
	.section	.gcc_except_table._RNvNtCs3bNtqN8jaZB_3std3env11current_exe,"a",@progbits
	.p2align	2, 0x0
GCC_except_table302:
.Lexception63:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end63-.Lcst_begin63
.Lcst_begin63:
	.uleb128 .Lfunc_begin63-.Lfunc_begin63  # >> Call Site 1 <<
	.uleb128 .Ltmp1055-.Lfunc_begin63       #   Call between .Lfunc_begin63 and .Ltmp1055
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1055-.Lfunc_begin63       # >> Call Site 2 <<
	.uleb128 .Ltmp1056-.Ltmp1055            #   Call between .Ltmp1055 and .Ltmp1056
	.uleb128 .Ltmp1057-.Lfunc_begin63       #     jumps to .Ltmp1057
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1058-.Lfunc_begin63       # >> Call Site 3 <<
	.uleb128 .Ltmp1059-.Ltmp1058            #   Call between .Ltmp1058 and .Ltmp1059
	.uleb128 .Ltmp1060-.Lfunc_begin63       #     jumps to .Ltmp1060
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1059-.Lfunc_begin63       # >> Call Site 4 <<
	.uleb128 .Ltmp1052-.Ltmp1059            #   Call between .Ltmp1059 and .Ltmp1052
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1052-.Lfunc_begin63       # >> Call Site 5 <<
	.uleb128 .Ltmp1053-.Ltmp1052            #   Call between .Ltmp1052 and .Ltmp1053
	.uleb128 .Ltmp1054-.Lfunc_begin63       #     jumps to .Ltmp1054
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1053-.Lfunc_begin63       # >> Call Site 6 <<
	.uleb128 .Lfunc_end302-.Ltmp1053        #   Call between .Ltmp1053 and .Lfunc_end302
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end63:
	.p2align	2, 0x0
                                        # -- End function
