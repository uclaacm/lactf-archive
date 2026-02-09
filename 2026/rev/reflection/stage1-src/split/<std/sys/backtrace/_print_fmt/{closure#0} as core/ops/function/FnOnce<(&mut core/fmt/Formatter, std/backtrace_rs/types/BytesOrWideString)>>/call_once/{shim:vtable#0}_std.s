	.section	.text._RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_
	.type	_RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_,@function
_RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_: # @_RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_
.Lfunc_begin65:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception65
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 40
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rax, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsp + 16]
	movups	xmm0, xmmword ptr [rdx]
	movups	xmmword ptr [rsp + 16], xmm0
	mov	rcx, qword ptr [rdx + 16]
	mov	qword ptr [rsp + 32], rcx
	movzx	edx, byte ptr [rdi + 24]
	mov	r14, qword ptr [rdi]
	xor	ecx, ecx
	mov	rdi, r14
	neg	rdi
	cmovno	rcx, rbx
.Ltmp1067:
	mov	rdi, rax
	call	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace15output_filename
.Ltmp1068:
# %bb.1:
	shl	r14
	test	r14, r14
	jne	.LBB314_2
# %bb.3:
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB314_2:
	.cfi_def_cfa_offset 64
	mov	rdi, qword ptr [rbx + 8]
	mov	ebx, eax
	call	qword ptr [rip + free@GOTPCREL]
	mov	eax, ebx
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB314_4:
	.cfi_def_cfa_offset 64
.Ltmp1069:
	mov	r14, rax
	mov	rax, qword ptr [rbx]
	shl	rax
	test	rax, rax
	je	.LBB314_6
# %bb.5:
	mov	rdi, qword ptr [rbx + 8]
	call	qword ptr [rip + free@GOTPCREL]
.LBB314_6:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end314:
	.size	_RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_, .Lfunc_end314-_RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_
	.cfi_endproc
	.section	.gcc_except_table._RNSNvYNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmt0INtNtNtCsfQL5qMWGko6_4core3ops8function6FnOnceTQNtNtB13_3fmt9FormatterNtNtNtBc_12backtrace_rs5types17BytesOrWideStringEE9call_once6vtableBc_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table314:
.Lexception65:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end65-.Lcst_begin65
.Lcst_begin65:
	.uleb128 .Ltmp1067-.Lfunc_begin65       # >> Call Site 1 <<
	.uleb128 .Ltmp1068-.Ltmp1067            #   Call between .Ltmp1067 and .Ltmp1068
	.uleb128 .Ltmp1069-.Lfunc_begin65       #     jumps to .Ltmp1069
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1068-.Lfunc_begin65       # >> Call Site 2 <<
	.uleb128 .Lfunc_end314-.Ltmp1068        #   Call between .Ltmp1068 and .Lfunc_end314
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end65:
	.p2align	2, 0x0
                                        # -- End function
