	.section	.text._RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_
	.type	_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_,@function
_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_: # @_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_
.Lfunc_begin68:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception68
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
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	test	rdx, rdx
	je	.LBB323_9
# %bb.1:
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rip + write@GOTPCREL]
	mov	rbp, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB323_4
	.p2align	4
.LBB323_2:                              #   in Loop: Header=BB323_4 Depth=1
	call	rbp
	movsxd	r13, dword ptr [rax]
	cmp	r13, 4
	jne	.LBB323_11
# %bb.3:                                #   in Loop: Header=BB323_4 Depth=1
	test	r14, r14
	je	.LBB323_9
.LBB323_4:                              # =>This Inner Loop Header: Depth=1
	mov	edi, 2
	mov	rsi, r15
	mov	rdx, r14
	call	r12
	cmp	rax, -1
	je	.LBB323_2
# %bb.5:                                #   in Loop: Header=BB323_4 Depth=1
	test	rax, rax
	je	.LBB323_10
# %bb.6:                                #   in Loop: Header=BB323_4 Depth=1
	mov	rcx, r14
	sub	rcx, rax
	jb	.LBB323_20
# %bb.7:                                #   in Loop: Header=BB323_4 Depth=1
	add	r15, rax
	mov	r14, rcx
	test	r14, r14
	jne	.LBB323_4
.LBB323_9:
	xor	eax, eax
	jmp	.LBB323_14
.LBB323_10:
	lea	r13, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	jmp	.LBB323_12
.LBB323_11:
	shl	r13, 32
	or	r13, 2
.LBB323_12:
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB323_15
.LBB323_13:
	mov	qword ptr [rbx + 8], r13
	mov	al, 1
.LBB323_14:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 8
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
.LBB323_15:
	.cfi_def_cfa_offset 64
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	rbp, qword ptr [rax + 7]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.LBB323_17
# %bb.16:
.Ltmp1076:
	mov	rdi, r15
	call	rax
.Ltmp1077:
.LBB323_17:
	cmp	qword ptr [rbp + 8], 0
	je	.LBB323_19
# %bb.18:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB323_19:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB323_13
.LBB323_20:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r14
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB323_21:
.Ltmp1078:
	mov	r12, rax
	cmp	qword ptr [rbp + 8], 0
	je	.LBB323_23
# %bb.22:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB323_23:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	qword ptr [rbx + 8], r13
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end323:
	.size	_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_, .Lfunc_end323-_RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_
	.cfi_endproc
	.section	.gcc_except_table._RNvXNvNtCs3bNtqN8jaZB_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_strB6_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table323:
.Lexception68:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end68-.Lcst_begin68
.Lcst_begin68:
	.uleb128 .Lfunc_begin68-.Lfunc_begin68  # >> Call Site 1 <<
	.uleb128 .Ltmp1076-.Lfunc_begin68       #   Call between .Lfunc_begin68 and .Ltmp1076
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1076-.Lfunc_begin68       # >> Call Site 2 <<
	.uleb128 .Ltmp1077-.Ltmp1076            #   Call between .Ltmp1076 and .Ltmp1077
	.uleb128 .Ltmp1078-.Lfunc_begin68       #     jumps to .Ltmp1078
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1077-.Lfunc_begin68       # >> Call Site 3 <<
	.uleb128 .Lfunc_end323-.Ltmp1077        #   Call between .Ltmp1077 and .Lfunc_end323
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end68:
	.p2align	2, 0x0
                                        # -- End function
