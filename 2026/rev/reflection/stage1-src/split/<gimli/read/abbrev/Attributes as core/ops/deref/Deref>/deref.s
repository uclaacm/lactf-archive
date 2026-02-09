	.section	.text._RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref
	.type	_RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref,@function
_RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref: # @_RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref
	.cfi_startproc
# %bb.0:
	cmp	dword ptr [rdi], 1
	jne	.LBB221_2
# %bb.1:
	mov	rax, qword ptr [rdi + 16]
	mov	rdx, qword ptr [rdi + 24]
	ret
.LBB221_2:
	mov	rsi, qword ptr [rdi + 8]
	cmp	rsi, 6
	jae	.LBB221_5
# %bb.3:
	add	rdi, 16
	mov	rax, rdi
	mov	rdx, rsi
	ret
.LBB221_5:
	push	rax
	.cfi_def_cfa_offset 16
	lea	rcx, [rip + .Lanon.9ec0135e8298aa3c3e587a4f28c80910.1761]
	mov	edx, 5
	xor	edi, edi
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end221:
	.size	_RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref, .Lfunc_end221-_RNvXsa_NtNtCsktQxXQGZjIy_5gimli4read6abbrevNtB5_10AttributesNtNtNtCsfQL5qMWGko6_4core3ops5deref5Deref5deref
	.cfi_endproc
                                        # -- End function
