	.section	.text._RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_
	.type	_RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_,@function
_RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_: # @_RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception12
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
	sub	rsp, 152
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	rax, qword ptr [rdi]
	cmp	byte ptr [rax], 0
	jne	.LBB46_3
# %bb.1:
	mov	rcx, qword ptr [rbx + 8]
	cmp	qword ptr [rcx], 100
	jbe	.LBB46_3
# %bb.2:
	xor	eax, eax
	jmp	.LBB46_8
.LBB46_3:
	mov	byte ptr [rsp + 31], 0
	mov	rcx, qword ptr [rbx + 48]
	mov	r15, qword ptr [rbx + 16]
	mov	r12, qword ptr [rbx + 24]
	lea	rdx, [rsp + 31]
	mov	qword ptr [rsp + 48], rdx
	mov	qword ptr [rsp + 56], rax
	mov	r13, qword ptr [rbx + 32]
	movups	xmm0, xmmword ptr [rbx + 32]
	movups	xmmword ptr [rsp + 64], xmm0
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 88], r12
	mov	qword ptr [rsp + 96], r15
	mov	qword ptr [rsp + 104], rsi
	movzx	ebp, byte ptr [rsi]
	mov	r14, qword ptr [rsi + 8]
	mov	rax, r14
	test	bpl, bpl
	jne	.LBB46_5
# %bb.4:
	mov	rdi, r14
	call	qword ptr [rip + _Unwind_GetIP@GOTPCREL]
.LBB46_5:
	lea	rdi, [rax - 1]
	test	rax, rax
	cmove	rdi, rax
	lea	rsi, [rsp + 48]
	call	_RINvMs0_NtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimliNtB6_5Cache11with_globalNCNvB6_7resolves_0EBc_
	cmp	byte ptr [rsp + 31], 0
	jne	.LBB46_7
# %bb.6:
	cmp	byte ptr [r13], 0
	je	.LBB46_7
# %bb.9:
	mov	qword ptr [rsp + 32], r12
	mov	qword ptr [rsp + 40], 0
	test	bpl, bpl
	jne	.LBB46_11
# %bb.10:
	mov	rdi, r14
	call	qword ptr [rip + _Unwind_GetIP@GOTPCREL]
	mov	r14, rax
.LBB46_11:
	mov	qword ptr [rsp + 48], 3
	mov	qword ptr [rsp + 128], 2
.Ltmp122:
	mov	dword ptr [rsp], 0
	lea	rdi, [rsp + 32]
	lea	rdx, [rsp + 48]
	lea	rcx, [rsp + 128]
	mov	rsi, r14
	xor	r8d, r8d
	call	_RNvMs_NtNtCs3bNtqN8jaZB_3std12backtrace_rs5printNtB4_17BacktraceFrameFmt21print_raw_with_column
.Ltmp123:
# %bb.12:
	mov	byte ptr [r15], al
	mov	rax, qword ptr [rsp + 32]
	inc	qword ptr [rax + 24]
.LBB46_7:
	mov	rax, qword ptr [rbx + 8]
	inc	qword ptr [rax]
	movzx	eax, byte ptr [r15]
	xor	al, 1
.LBB46_8:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 152
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
.LBB46_13:
	.cfi_def_cfa_offset 208
.Ltmp124:
	mov	rcx, qword ptr [rsp + 32]
	inc	qword ptr [rcx + 24]
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.Lfunc_end46:
	.size	_RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_, .Lfunc_end46-_RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_
	.cfi_endproc
	.section	.gcc_except_table._RNCNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace10__print_fmts_0B7_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table46:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp122-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp122
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin12        #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end46-.Ltmp123          #   Call between .Ltmp123 and .Lfunc_end46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
