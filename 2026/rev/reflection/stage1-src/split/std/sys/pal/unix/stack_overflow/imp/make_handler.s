	.section	.text._RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler
	.type	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler,@function
_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler: # @_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler
.Lfunc_begin80:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception80
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 64
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	movzx	eax, byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13NEED_ALTSTACK.0]
	test	al, al
	je	.LBB356_1
# %bb.3:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	mov	qword ptr [rsp + 32], 0
	xor	ebx, ebx
	lea	rsi, [rsp + 16]
	xor	edi, edi
	call	qword ptr [rip + sigaltstack@GOTPCREL]
	test	byte ptr [rsp + 24], 2
	je	.LBB356_2
# %bb.4:
	mov	edi, 51
	call	qword ptr [rip + getauxval@GOTPCREL]
	cmp	rax, 8193
	mov	r15d, 8192
	cmovae	r15, rax
	mov	rbx, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp9PAGE_SIZE.0]
	lea	rsi, [r15 + rbx]
	xor	edi, edi
	mov	edx, 3
	mov	ecx, 131106
	mov	r8d, -1
	xor	r9d, r9d
	call	qword ptr [rip + mmap64@GOTPCREL]
	cmp	rax, -1
	je	.LBB356_8
# %bb.5:
	mov	r14, rax
	mov	rdi, rax
	mov	rsi, rbx
	xor	edx, edx
	call	qword ptr [rip + mprotect@GOTPCREL]
	test	eax, eax
	jne	.LBB356_6
# %bb.13:
	add	r14, rbx
	mov	qword ptr [rsp + 16], r14
	mov	dword ptr [rsp + 24], 0
	mov	qword ptr [rsp + 32], r15
	lea	rdi, [rsp + 16]
	xor	esi, esi
	call	qword ptr [rip + sigaltstack@GOTPCREL]
	mov	rbx, qword ptr [rsp + 16]
	jmp	.LBB356_2
.LBB356_1:
	xor	ebx, ebx
.LBB356_2:
	mov	rax, rbx
	add	rsp, 64
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB356_8:
	.cfi_def_cfa_offset 96
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rip + _RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rsp + 56], rax
.Ltmp1149:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.545]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.546]
	lea	rsi, [rsp + 48]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp1150:
	jmp	.LBB356_9
.LBB356_6:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rip + _RNvXs7_NtNtCs3bNtqN8jaZB_3std2io5errorNtB5_5ErrorNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rsp + 56], rax
.Ltmp1144:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.543]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.544]
	lea	rsi, [rsp + 48]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp1145:
.LBB356_9:
.LBB356_7:
.Ltmp1146:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 8]
.Ltmp1147:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
.Ltmp1148:
	jmp	.LBB356_12
.LBB356_11:
.Ltmp1151:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 8]
.Ltmp1152:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
.Ltmp1153:
.LBB356_12:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB356_10:
.Ltmp1154:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.Lfunc_end356:
	.size	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler, .Lfunc_end356-_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler
	.cfi_endproc
	.section	.gcc_except_table._RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler,"a",@progbits
	.p2align	2, 0x0
GCC_except_table356:
.Lexception80:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end80-.Lcst_begin80
.Lcst_begin80:
	.uleb128 .Ltmp1149-.Lfunc_begin80       # >> Call Site 1 <<
	.uleb128 .Ltmp1150-.Ltmp1149            #   Call between .Ltmp1149 and .Ltmp1150
	.uleb128 .Ltmp1151-.Lfunc_begin80       #     jumps to .Ltmp1151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1144-.Lfunc_begin80       # >> Call Site 2 <<
	.uleb128 .Ltmp1145-.Ltmp1144            #   Call between .Ltmp1144 and .Ltmp1145
	.uleb128 .Ltmp1146-.Lfunc_begin80       #     jumps to .Ltmp1146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1147-.Lfunc_begin80       # >> Call Site 3 <<
	.uleb128 .Ltmp1153-.Ltmp1147            #   Call between .Ltmp1147 and .Ltmp1153
	.uleb128 .Ltmp1154-.Lfunc_begin80       #     jumps to .Ltmp1154
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1153-.Lfunc_begin80       # >> Call Site 4 <<
	.uleb128 .Lfunc_end356-.Ltmp1153        #   Call between .Ltmp1153 and .Lfunc_end356
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end80:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase24:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
