	.section	.text.unlikely._RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt
	.type	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt,@function
_RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt: # @_RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 24], rdi
	mov	qword ptr [rsp + 32], rsi
	lea	rax, [rsp + 24]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 16], 0
	mov	byte ptr [rsp + 17], dl
.Ltmp3:
	mov	rdi, rsp
	call	_RNvCsL6e0J8m5bd_7___rustc17rust_begin_unwind
.Ltmp4:
# %bb.1:
.LBB4_2:
.Ltmp5:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.Lfunc_end4:
	.size	_RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt, .Lfunc_end4-_RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt
	.cfi_endproc
	.section	.gcc_except_table._RNvNtCsfQL5qMWGko6_4core9panicking18panic_nounwind_fmt,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase1:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
