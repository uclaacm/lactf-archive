	.section	.text._RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock
	.type	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock,@function
_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock: # @_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	ecx, 1
	xor	eax, eax
	lock		cmpxchg	dword ptr [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK], ecx
	jne	.LBB37_1
# %bb.2:
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	jne	.LBB37_4
.LBB37_3:
	xor	eax, eax
	movzx	ecx, byte ptr [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK+4]
                                        # kill: def $al killed $al killed $eax
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.LBB37_1:
	.cfi_def_cfa_offset 16
	lea	rdi, [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	je	.LBB37_3
.LBB37_4:
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
                                        # kill: def $al killed $al def $eax
	xor	al, 1
	movzx	ecx, byte ptr [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock4LOCK+4]
                                        # kill: def $al killed $al killed $eax
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end37:
	.size	_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock, .Lfunc_end37-_RNvNtNtCs3bNtqN8jaZB_3std3sys9backtrace4lock
	.cfi_endproc
                                        # -- End function
