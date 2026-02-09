	.section	.text._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_
	.type	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_,@function
_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_: # @_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_
.Lfunc_begin70:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception70
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
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	test	r14b, 1
	jne	.LBB325_2
# %bb.1:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.55]
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r14
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
	jmp	_RNvNtCsfQL5qMWGko6_4core3fmt5write # TAILCALL
.LBB325_2:
	.cfi_def_cfa_offset 64
	cmp	r14, 2
	jae	.LBB325_4
.LBB325_3:
	xor	eax, eax
	jmp	.LBB325_16
.LBB325_4:
	shr	r14
	mov	r12, qword ptr [rip + write@GOTPCREL]
	mov	rbp, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB325_7
	.p2align	4
.LBB325_5:                              #   in Loop: Header=BB325_7 Depth=1
	call	rbp
	movsxd	r13, dword ptr [rax]
	cmp	r13, 4
	jne	.LBB325_13
# %bb.6:                                #   in Loop: Header=BB325_7 Depth=1
	test	r14, r14
	je	.LBB325_3
.LBB325_7:                              # =>This Inner Loop Header: Depth=1
	mov	edi, 2
	mov	rsi, r15
	mov	rdx, r14
	call	r12
	cmp	rax, -1
	je	.LBB325_5
# %bb.8:                                #   in Loop: Header=BB325_7 Depth=1
	test	rax, rax
	je	.LBB325_12
# %bb.9:                                #   in Loop: Header=BB325_7 Depth=1
	mov	rcx, r14
	sub	rcx, rax
	jb	.LBB325_22
# %bb.10:                               #   in Loop: Header=BB325_7 Depth=1
	add	r15, rax
	mov	r14, rcx
	test	r14, r14
	jne	.LBB325_7
	jmp	.LBB325_3
.LBB325_12:
	lea	r13, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	jmp	.LBB325_14
.LBB325_13:
	shl	r13, 32
	or	r13, 2
.LBB325_14:
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB325_17
.LBB325_15:
	mov	qword ptr [rbx + 8], r13
	mov	al, 1
.LBB325_16:
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
.LBB325_17:
	.cfi_def_cfa_offset 64
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	rbp, qword ptr [rax + 7]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.LBB325_19
# %bb.18:
.Ltmp1082:
	mov	rdi, r15
	call	rax
.Ltmp1083:
.LBB325_19:
	cmp	qword ptr [rbp + 8], 0
	je	.LBB325_21
# %bb.20:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB325_21:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB325_15
.LBB325_22:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r14
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB325_23:
.Ltmp1084:
	mov	r12, rax
	cmp	qword ptr [rbp + 8], 0
	je	.LBB325_25
# %bb.24:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB325_25:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	qword ptr [rbx + 8], r13
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end325:
	.size	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_, .Lfunc_end325-_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_
	.cfi_endproc
	.section	.gcc_except_table._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write9write_fmtB9_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table325:
.Lexception70:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end70-.Lcst_begin70
.Lcst_begin70:
	.uleb128 .Lfunc_begin70-.Lfunc_begin70  # >> Call Site 1 <<
	.uleb128 .Ltmp1082-.Lfunc_begin70       #   Call between .Lfunc_begin70 and .Ltmp1082
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1082-.Lfunc_begin70       # >> Call Site 2 <<
	.uleb128 .Ltmp1083-.Ltmp1082            #   Call between .Ltmp1082 and .Ltmp1083
	.uleb128 .Ltmp1084-.Lfunc_begin70       #     jumps to .Ltmp1084
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1083-.Lfunc_begin70       # >> Call Site 3 <<
	.uleb128 .Lfunc_end325-.Ltmp1083        #   Call between .Ltmp1083 and .Lfunc_end325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end70:
	.p2align	2, 0x0
                                        # -- End function
