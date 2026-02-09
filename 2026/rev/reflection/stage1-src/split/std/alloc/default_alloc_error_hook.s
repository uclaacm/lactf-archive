	.section	.text._RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook,"ax",@progbits
	.type	_RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook,@function # -- Begin function _RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook
_RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook: # @_RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 40
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	al, 1
	xchg	byte ptr [rip + _RNvNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook18PREV_ALLOC_FAILURE], al
	test	al, al
	je	.LBB31_1
# %bb.8:
	lea	rax, [rsp + 16]
	mov	qword ptr [rax], rdi
	lea	rdx, [rsp + 24]
	mov	qword ptr [rdx], rax
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rdx + 8], rax
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.393]
	lea	rdi, [rsp + 15]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
	jmp	.LBB31_9
.LBB31_1:
	lea	r14, [rsp + 16]
	mov	qword ptr [r14], rdi
	lea	rdx, [rsp + 24]
	mov	qword ptr [rdx], r14
	lea	rax, [rip + _RNvXsi_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impjNtB9_7Display3fmt]
	mov	qword ptr [rdx + 8], rax
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.391]
	lea	rdi, [rsp + 15]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
	call	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock
	mov	ebx, eax
	and	bl, 1
.Ltmp68:
	call	_RNvNtCs3bNtqN8jaZB_3std5panic19get_backtrace_style
.Ltmp69:
# %bb.2:
	movzx	eax, al
	lea	rcx, [rip + .LJTI31_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB31_4:
	mov	byte ptr [rsp + 16], 0
	lea	rdx, [rsp + 24]
	mov	qword ptr [rdx], r14
	lea	rax, [rip + _RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rdx + 8], rax
.Ltmp74:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rdi, [rsp + 15]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp75:
	jmp	.LBB31_5
.LBB31_7:
	mov	byte ptr [rsp + 16], 1
	lea	rdx, [rsp + 24]
	mov	qword ptr [rdx], r14
	lea	rax, [rip + _RNvXNvMNtNtCs3bNtqN8jaZB_3std3sys9backtraceNtB5_13BacktraceLock5printNtB2_16DisplayBacktraceNtNtCsfQL5qMWGko6_4core3fmt7Display3fmt]
	mov	qword ptr [rdx + 8], rax
.Ltmp72:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.164]
	lea	rdi, [rsp + 15]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp73:
	jmp	.LBB31_5
.LBB31_3:
.Ltmp70:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.125]
	lea	rdi, [rsp + 15]
	mov	edx, 157
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp71:
.LBB31_5:
.Ltmp76:
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
.Ltmp77:
.LBB31_6:
	movzx	edi, bl
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
.LBB31_9:
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB31_10:
	.cfi_def_cfa_offset 64
.Ltmp78:
	mov	r14, rax
	movzx	edi, bl
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end31:
	.size	_RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook, .Lfunc_end31-_RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook
	.cfi_endproc
	.section	.rodata._RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook,"a",@progbits
	.p2align	2, 0x0
.LJTI31_0:
	.long	.LBB31_4-.LJTI31_0
	.long	.LBB31_7-.LJTI31_0
	.long	.LBB31_3-.LJTI31_0
	.long	.LBB31_6-.LJTI31_0
	.section	.gcc_except_table._RNvNtCs3bNtqN8jaZB_3std5alloc24default_alloc_error_hook,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp68-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp77-.Ltmp68                #   Call between .Ltmp68 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin6          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end31-.Ltmp77           #   Call between .Ltmp77 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
