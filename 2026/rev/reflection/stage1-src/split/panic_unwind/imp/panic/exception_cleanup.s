	.section	.text._RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup
	.type	_RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup,@function
_RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup: # @_RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup
.Lfunc_begin73:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception73
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rdi, rsi
.Ltmp1094:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtCs78A21jy8lRn_5alloc5boxed3BoxNtNtCs3NI1OepfVOb_12panic_unwind3imp9ExceptionEEB1j_
.Ltmp1095:
# %bb.1:
	call	_RNvCsL6e0J8m5bd_7___rustc17___rust_drop_panic
.LBB331_2:
.Ltmp1096:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.Lfunc_end331:
	.size	_RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup, .Lfunc_end331-_RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup
	.cfi_endproc
	.section	.gcc_except_table._RNvNvNtCs3NI1OepfVOb_12panic_unwind3imp5panic17exception_cleanup,"a",@progbits
	.p2align	2, 0x0
GCC_except_table331:
.Lexception73:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end73-.Lcst_begin73
.Lcst_begin73:
	.uleb128 .Ltmp1094-.Lfunc_begin73       # >> Call Site 1 <<
	.uleb128 .Ltmp1095-.Ltmp1094            #   Call between .Ltmp1094 and .Ltmp1095
	.uleb128 .Ltmp1096-.Lfunc_begin73       #     jumps to .Ltmp1096
	.byte	0                               #   On action: cleanup
.Lcst_end73:
	.p2align	2, 0x0
                                        # -- End function
