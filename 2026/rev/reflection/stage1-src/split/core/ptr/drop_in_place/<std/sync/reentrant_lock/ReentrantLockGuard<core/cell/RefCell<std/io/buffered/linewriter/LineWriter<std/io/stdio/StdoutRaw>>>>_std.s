	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_
	.cfi_startproc
# %bb.0:
	dec	dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+12]
	jne	.LBB368_2
# %bb.1:
	mov	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT], 0
	xor	eax, eax
	xchg	dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+8], eax
	cmp	eax, 2
	je	.LBB368_3
.LBB368_2:
	ret
.LBB368_3:
	lea	rsi, [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+8]
	mov	edi, 202
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	jmp	qword ptr [rip + syscall@GOTPCREL] # TAILCALL
.Lfunc_end368:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_, .Lfunc_end368-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_
	.cfi_endproc
                                        # -- End function
