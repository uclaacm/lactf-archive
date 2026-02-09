	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	test	dil, 1
	jne	.LBB39_4
# %bb.1:
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	jne	.LBB39_2
.LBB39_4:
	xor	eax, eax
	xchg	dword ptr [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK], eax
	cmp	eax, 2
	je	.LBB39_6
# %bb.5:
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.LBB39_6:
	.cfi_def_cfa_offset 16
	lea	rsi, [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK]
	mov	edi, 202
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	pop	r8
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + syscall@GOTPCREL] # TAILCALL
.LBB39_2:
	.cfi_def_cfa_offset 16
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	test	al, al
	jne	.LBB39_4
# %bb.3:
	mov	byte ptr [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK+4], 1
	jmp	.LBB39_4
.Lfunc_end39:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_, .Lfunc_end39-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std3sys9backtrace13BacktraceLockEBM_
	.cfi_endproc
                                        # -- End function
