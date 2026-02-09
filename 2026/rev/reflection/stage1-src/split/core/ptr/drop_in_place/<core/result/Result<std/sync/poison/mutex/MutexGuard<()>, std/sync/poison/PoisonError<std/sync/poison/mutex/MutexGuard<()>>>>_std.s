	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	rbx, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rdi + 16]
	cmp	byte ptr [rdi], 0
	test	al, al
	jne	.LBB371_4
# %bb.1:
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	jne	.LBB371_2
.LBB371_4:
	xor	eax, eax
	xchg	dword ptr [rbx], eax
	cmp	eax, 2
	je	.LBB371_6
# %bb.5:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB371_6:
	.cfi_def_cfa_offset 16
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + syscall@GOTPCREL] # TAILCALL
.LBB371_2:
	.cfi_def_cfa_offset 16
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	test	al, al
	jne	.LBB371_4
# %bb.3:
	mov	byte ptr [rbx + 4], 1
	jmp	.LBB371_4
.Lfunc_end371:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_, .Lfunc_end371-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	.cfi_endproc
                                        # -- End function
