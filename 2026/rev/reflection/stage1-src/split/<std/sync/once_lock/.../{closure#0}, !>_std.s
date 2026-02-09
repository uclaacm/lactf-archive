	.section	.text.unlikely._RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_,"ax",@progbits
	.type	_RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_,@function # -- Begin function _RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_
_RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_: # @_RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_
	.cfi_startproc
# %bb.0:
	mov	eax, dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+56]
	test	eax, eax
	jne	.LBB367_1
# %bb.2:
	ret
.LBB367_1:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	lea	rax, [rsp + 16]
	mov	qword ptr [rax], rdi
	lea	rcx, [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT]
	mov	qword ptr [rax + 8], rcx
	lea	rcx, [rsp + 7]
	mov	qword ptr [rax + 16], rcx
	lea	rdx, [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	rdi, [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+56]
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.6]
	lea	r8, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.5]
	push	1
	.cfi_adjust_cfa_offset 8
	pop	rsi
	.cfi_adjust_cfa_offset -8
	call	_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end367:
	.size	_RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_, .Lfunc_end367-_RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_
	.cfi_endproc
                                        # -- End function
