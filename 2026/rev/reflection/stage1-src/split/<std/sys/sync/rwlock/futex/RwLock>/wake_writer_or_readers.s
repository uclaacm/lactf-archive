	.section	.text.unlikely._RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers
	.type	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers,@function
_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers: # @_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	test	esi, 1073741823
	jne	.LBB319_12
# %bb.1:
	mov	rbx, rdi
	mov	eax, esi
	neg	eax
	jno	.LBB319_4
# %bb.2:
	xor	ecx, ecx
	mov	eax, -2147483648
	lock		cmpxchg	dword ptr [rbx], ecx
	jne	.LBB319_3
# %bb.13:
	lock		inc	dword ptr [rbx + 4]
	add	rbx, 4
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + syscall@GOTPCREL] # TAILCALL
.LBB319_3:
	.cfi_def_cfa_offset 16
	mov	esi, eax
.LBB319_4:
	cmp	esi, -1073741824
	je	.LBB319_7
# %bb.5:
	cmp	esi, 1073741824
	jne	.LBB319_6
.LBB319_9:
	xor	ecx, ecx
	mov	eax, 1073741824
	lock		cmpxchg	dword ptr [rbx], ecx
	jne	.LBB319_6
# %bb.10:
	mov	edi, 202
	mov	rsi, rbx
	mov	edx, 129
	mov	ecx, 2147483647
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + syscall@GOTPCREL] # TAILCALL
.LBB319_7:
	.cfi_def_cfa_offset 16
	mov	ecx, 1073741824
	mov	eax, -1073741824
	lock		cmpxchg	dword ptr [rbx], ecx
	jne	.LBB319_6
# %bb.8:
	lea	rsi, [rbx + 4]
	lock		inc	dword ptr [rbx + 4]
	mov	edi, 202
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	test	rax, rax
	jle	.LBB319_9
.LBB319_6:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB319_12:
	.cfi_def_cfa_offset 16
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.187]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.188]
	mov	esi, 36
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Lfunc_end319:
	.size	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers, .Lfunc_end319-_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers
	.cfi_endproc
                                        # -- End function
