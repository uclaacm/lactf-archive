	.section	.text.unlikely._RNvCsL6e0J8m5bd_7___rustc10rust_panic,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsL6e0J8m5bd_7___rustc10rust_panic
	.type	_RNvCsL6e0J8m5bd_7___rustc10rust_panic,@function
_RNvCsL6e0J8m5bd_7___rustc10rust_panic: # @_RNvCsL6e0J8m5bd_7___rustc10rust_panic
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	call	_RNvCsL6e0J8m5bd_7___rustc18___rust_start_panic
	mov	dword ptr [rsp + 4], eax
	lea	rax, [rsp + 4]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rip + _RNvXs8_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impmNtB9_7Display3fmt]
	mov	qword ptr [rsp + 16], rax
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.147]
	lea	rdi, [rsp + 3]
	lea	rdx, [rsp + 8]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.Lfunc_end328:
	.size	_RNvCsL6e0J8m5bd_7___rustc10rust_panic, .Lfunc_end328-_RNvCsL6e0J8m5bd_7___rustc10rust_panic
	.cfi_endproc
                                        # -- End function
