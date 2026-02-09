	.section	.text._RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic
	.type	_RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic,@function
_RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic: # @_RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic
.Lfunc_begin71:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception71
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	call	qword ptr [rsi + 32]
	mov	r14, rax
	mov	rbx, rdx
	mov	edi, 56
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB329_1
# %bb.6:
	movabs	rcx, 6076294132934528845
	mov	qword ptr [rax], rcx
	lea	rcx, [rip + _RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup]
	mov	qword ptr [rax + 8], rcx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 16], xmm0
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.376]
	mov	qword ptr [rax + 32], rcx
	mov	qword ptr [rax + 40], r14
	mov	qword ptr [rax + 48], rbx
	mov	rdi, rax
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + _Unwind_RaiseException@GOTPCREL] # TAILCALL
.LBB329_1:
	.cfi_def_cfa_offset 32
.Ltmp1085:
	mov	edi, 56
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1086:
# %bb.2:
.LBB329_4:
.Ltmp1087:
	mov	r15, rax
.Ltmp1088:
	mov	rdi, r14
	mov	rsi, rbx
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEBK_
.Ltmp1089:
# %bb.5:
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.LBB329_3:
.Ltmp1090:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end329:
	.size	_RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic, .Lfunc_end329-_RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic
	.cfi_endproc
	.section	.gcc_except_table._RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic,"a",@progbits
	.p2align	2, 0x0
GCC_except_table329:
.Lexception71:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end71-.Lcst_begin71
.Lcst_begin71:
	.uleb128 .Lfunc_begin71-.Lfunc_begin71  # >> Call Site 1 <<
	.uleb128 .Ltmp1085-.Lfunc_begin71       #   Call between .Lfunc_begin71 and .Ltmp1085
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1085-.Lfunc_begin71       # >> Call Site 2 <<
	.uleb128 .Ltmp1086-.Ltmp1085            #   Call between .Ltmp1085 and .Ltmp1086
	.uleb128 .Ltmp1087-.Lfunc_begin71       #     jumps to .Ltmp1087
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1088-.Lfunc_begin71       # >> Call Site 3 <<
	.uleb128 .Ltmp1089-.Ltmp1088            #   Call between .Ltmp1088 and .Ltmp1089
	.uleb128 .Ltmp1090-.Lfunc_begin71       #     jumps to .Ltmp1090
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1089-.Lfunc_begin71       # >> Call Site 4 <<
	.uleb128 .Lfunc_end329-.Ltmp1089        #   Call between .Ltmp1089 and .Lfunc_end329
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end71:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase22:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
