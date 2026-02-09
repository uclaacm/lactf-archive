	.section	.text._RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn
	.type	_RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn,@function
_RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn: # @_RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception11
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
.Ltmp116:
	lea	rsi, [rsp + 8]
	call	qword ptr [rax + 32]
.Ltmp117:
# %bb.1:
	xor	al, 1
	movzx	eax, al
	lea	eax, [rax + 8*rax]
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
.LBB41_2:
	.cfi_def_cfa_offset 48
.Ltmp118:
.Ltmp119:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind4BombEBO_
.Ltmp120:
# %bb.3:
.LBB41_4:
.Ltmp121:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end41:
	.size	_RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn, .Lfunc_end41-_RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn
	.cfi_endproc
	.section	.gcc_except_table._RNvNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9backtrace9libunwind5trace8trace_fn,"a",@progbits
	.p2align	2, 0x0
GCC_except_table41:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp116-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin11        #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin11        #     jumps to .Ltmp121
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase5:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
