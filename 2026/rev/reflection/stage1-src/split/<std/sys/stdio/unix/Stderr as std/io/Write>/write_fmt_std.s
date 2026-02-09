	.section	.text._RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	.type	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_,@function
_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_: # @_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception7
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r13
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdx
	mov	r14, rsi
	test	bl, 1
	jne	.LBB35_1
# %bb.15:
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], 0
.Ltmp79:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.55]
	mov	rdi, rsp
	mov	rdx, r14
	mov	rcx, rbx
	call	_RNvNtCsfQL5qMWGko6_4core3fmt5write
.Ltmp80:
# %bb.16:
	mov	ecx, eax
	mov	rax, qword ptr [rsp + 8]
	test	cl, cl
	je	.LBB35_19
# %bb.17:
	test	rax, rax
	jne	.LBB35_12
# %bb.18:
.Ltmp84:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.50]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.51]
	mov	esi, 173
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp85:
# %bb.29:
.LBB35_1:
	cmp	rbx, 2
	jb	.LBB35_11
# %bb.2:
	shr	rbx
	mov	r12, qword ptr [rip + write@GOTPCREL]
	lea	r15, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	r13, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB35_3
	.p2align	4
.LBB35_6:                               #   in Loop: Header=BB35_3 Depth=1
	call	r13
	movsxd	rax, dword ptr [rax]
	cmp	rax, 4
	jne	.LBB35_7
# %bb.10:                               #   in Loop: Header=BB35_3 Depth=1
	test	rbx, rbx
	je	.LBB35_11
.LBB35_3:                               # =>This Inner Loop Header: Depth=1
	mov	edi, 2
	mov	rsi, r14
	mov	rdx, rbx
	call	r12
	cmp	rax, -1
	je	.LBB35_6
# %bb.4:                                #   in Loop: Header=BB35_3 Depth=1
	test	rax, rax
	je	.LBB35_5
# %bb.8:                                #   in Loop: Header=BB35_3 Depth=1
	mov	rcx, rbx
	sub	rcx, rax
	jb	.LBB35_31
# %bb.9:                                #   in Loop: Header=BB35_3 Depth=1
	add	r14, rax
	mov	rbx, rcx
	test	rbx, rbx
	jne	.LBB35_3
	jmp	.LBB35_11
.LBB35_19:
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB35_20
.LBB35_11:
	xor	eax, eax
.LBB35_12:
	add	rsp, 16
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB35_5:
	.cfi_def_cfa_offset 64
	mov	rax, r15
	jmp	.LBB35_12
.LBB35_7:
	shl	rax, 32
	or	rax, 2
	jmp	.LBB35_12
.LBB35_20:
	lea	rbx, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB35_22
# %bb.21:
.Ltmp81:
	mov	rdi, r15
	call	rax
.Ltmp82:
.LBB35_22:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB35_24
# %bb.23:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB35_24:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB35_11
.LBB35_31:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB35_25:
.Ltmp83:
	mov	r14, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB35_27
# %bb.26:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB35_27:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB35_13:
.Ltmp86:
	mov	r14, rax
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.LBB35_28
# %bb.14:
.Ltmp87:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
.Ltmp88:
.LBB35_28:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB35_30:
.Ltmp89:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end35:
	.size	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_, .Lfunc_end35-_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	.cfi_endproc
	.section	.gcc_except_table._RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table35:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp79-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp85-.Ltmp79                #   Call between .Ltmp79 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin7          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp81-.Ltmp85                #   Call between .Ltmp85 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin7          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin7          # >> Call Site 4 <<
	.uleb128 .Ltmp87-.Ltmp82                #   Call between .Ltmp82 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin7          # >> Call Site 5 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin7          #     jumps to .Ltmp89
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp88-.Lfunc_begin7          # >> Call Site 6 <<
	.uleb128 .Lfunc_end35-.Ltmp88           #   Call between .Ltmp88 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase3:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
