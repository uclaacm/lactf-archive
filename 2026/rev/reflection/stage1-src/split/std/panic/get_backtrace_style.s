	.section	.text._RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style
	.type	_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style,@function
_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style: # @_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception9
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
	sub	rsp, 392
	.cfi_def_cfa_offset 448
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	movzx	ebp, byte ptr [rip + _RNvNtCs3bNtqN8jaZB_3std5panic14SHOULD_CAPTURE]
	dec	bpl
	cmp	bpl, 3
	jb	.LBB38_34
# %bb.1:
	movabs	rax, 4990904633913983809
	mov	qword ptr [rsp + 14], rax
	movabs	rax, 4846227651231438162
	mov	qword ptr [rsp + 8], rax
	mov	byte ptr [rsp + 22], 0
	mov	eax, dword ptr [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK]
	cmp	eax, 1073741822
	jae	.LBB38_2
# %bb.3:
	lea	ecx, [rax + 1]
                                        # kill: def $eax killed $eax killed $rax
	lock		cmpxchg	dword ptr [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK], ecx
	jne	.LBB38_2
.LBB38_4:
	movabs	r12, -9223372036854775808
	movzx	eax, byte ptr [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK+8]
	lea	rdi, [rsp + 8]
	call	qword ptr [rip + getenv@GOTPCREL]
	test	rax, rax
	je	.LBB38_5
# %bb.11:
	mov	r15, rax
	mov	rdi, rax
	call	qword ptr [rip + strlen@GOTPCREL]
	mov	r14, rax
	test	rax, rax
	je	.LBB38_12
# %bb.13:
	mov	rdi, r14
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB38_16
# %bb.14:
	mov	rbx, rax
	jmp	.LBB38_15
.LBB38_5:
                                        # implicit-def: $rbx
	mov	r14, r12
	jmp	.LBB38_6
.LBB38_12:
	mov	ebx, 1
.LBB38_15:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
.LBB38_6:
	mov	esi, -1
	lock		xadd	dword ptr [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK], esi
	dec	esi
	mov	eax, esi
	and	eax, -1073741825
	neg	eax
	jo	.LBB38_7
# %bb.8:
	lea	rax, [r12 + 1]
	cmp	r14, rax
	jne	.LBB38_28
.LBB38_9:
	mov	eax, ebx
	and	eax, 3
	cmp	eax, 1
	jne	.LBB38_10
# %bb.21:
	lea	r14, [rbx - 1]
	mov	r15, qword ptr [rbx - 1]
	mov	r13, qword ptr [rbx + 7]
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.LBB38_23
# %bb.22:
.Ltmp99:
	mov	rdi, r15
	call	rax
.Ltmp100:
.LBB38_23:
	mov	r12b, 3
	mov	bpl, 2
	cmp	qword ptr [r13 + 8], 0
	je	.LBB38_40
# %bb.24:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB38_40
.LBB38_2:
	lea	rdi, [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended
	jmp	.LBB38_4
.LBB38_7:
	lea	rdi, [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers
	lea	rax, [r12 + 1]
	cmp	r14, rax
	je	.LBB38_9
.LBB38_28:
	cmp	r14, r12
	jne	.LBB38_29
.LBB38_10:
	mov	r12b, 3
	mov	bpl, 2
	jmp	.LBB38_41
.LBB38_29:
	cmp	r14, 4
	je	.LBB38_35
# %bb.30:
	cmp	r14, 1
	jne	.LBB38_37
# %bb.31:
	cmp	byte ptr [rbx], 48
	jne	.LBB38_37
# %bb.32:
	mov	r12b, 3
	mov	bpl, 2
	test	r14, r14
	jne	.LBB38_39
	jmp	.LBB38_41
.LBB38_35:
	cmp	dword ptr [rbx], 1819047270
	je	.LBB38_36
.LBB38_37:
	mov	r12b, 1
	xor	ebp, ebp
	test	r14, r14
	je	.LBB38_41
.LBB38_39:
	mov	r14, rbx
.LBB38_40:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB38_41:
	xor	eax, eax
	lock		cmpxchg	byte ptr [rip + _RNvNtCs3bNtqN8jaZB_3std5panic14SHOULD_CAPTURE], r12b
	je	.LBB38_34
# %bb.42:
	mov	bpl, 3
	cmp	al, 4
	jae	.LBB38_34
# %bb.33:
	shl	al, 3
	mov	ebp, 33619971
	mov	ecx, eax
	shr	ebp, cl
.LBB38_34:
	mov	eax, ebp
	add	rsp, 392
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
.LBB38_36:
	.cfi_def_cfa_offset 448
	mov	r12b, 2
	mov	bpl, 1
	test	r14, r14
	jne	.LBB38_39
	jmp	.LBB38_41
.LBB38_16:
.Ltmp93:
	mov	rdi, r14
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp94:
# %bb.17:
.LBB38_25:
.Ltmp101:
	mov	rbx, rax
	cmp	qword ptr [r13 + 8], 0
	je	.LBB38_27
# %bb.26:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB38_27:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB38_18:
.Ltmp95:
	mov	rbx, rax
	mov	esi, -1
	lock		xadd	dword ptr [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK], esi
	dec	esi
	mov	eax, esi
	and	eax, -1073741825
	neg	eax
	jo	.LBB38_19
.LBB38_20:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB38_19:
.Ltmp96:
	lea	rdi, [rip + _RNvNtNtNtCs3bNtqN8jaZB_3std3sys3env4unix8ENV_LOCK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers
.Ltmp97:
	jmp	.LBB38_20
.LBB38_43:
.Ltmp98:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end38:
	.size	_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style, .Lfunc_end38-_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style
	.cfi_endproc
	.section	.gcc_except_table._RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style,"a",@progbits
	.p2align	2, 0x0
GCC_except_table38:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin9         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp93-.Ltmp100               #   Call between .Ltmp100 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin9          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Ltmp96-.Ltmp94                #   Call between .Ltmp94 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin9          # >> Call Site 6 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin9          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase4:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
