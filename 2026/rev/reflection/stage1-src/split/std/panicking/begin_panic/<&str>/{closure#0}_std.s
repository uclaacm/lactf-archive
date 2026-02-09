	.section	.text._RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_
	.type	_RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_,@function
_RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_: # @_RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	movups	xmm0, xmmword ptr [rdi]
	movups	xmmword ptr [rsp + 8], xmm0
	mov	rdx, qword ptr [rdi + 16]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.89]
	lea	rdi, [rsp + 8]
	mov	ecx, 1
	xor	r8d, r8d
	call	_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook
.Lfunc_end349:
	.size	_RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_, .Lfunc_end349-_RNCINvNtCs3bNtqN8jaZB_3std9panicking11begin_panicReE0B6_
	.cfi_endproc
                                        # -- End function
