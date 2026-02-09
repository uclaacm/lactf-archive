	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_
	.cfi_startproc
# %bb.0:
	mov	esi, -1
	lock		xadd	dword ptr [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK], esi
	dec	esi
	mov	eax, esi
	and	eax, -1073741825
	neg	eax
	jo	.LBB327_2
# %bb.1:
	ret
.LBB327_2:
	lea	rdi, [rip + _RNvNtCs3bNtqN8jaZB_3std9panicking4HOOK]
	jmp	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers # TAILCALL
.Lfunc_end327:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_, .Lfunc_end327-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std4sync9nonpoison6rwlock15RwLockReadGuardNtNtBP_9panicking4HookEEBP_
	.cfi_endproc
                                        # -- End function
