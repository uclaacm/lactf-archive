	.section	.text.unlikely._RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_
	.type	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_,@function
_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_: # @_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rsi, qword ptr [rdi]
	mov	edx, 16
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsktQxXQGZjIy_5gimli
	movabs	rcx, -9223372036854775807
	cmp	rax, rcx
	jne	.LBB236_2
# %bb.1:
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.LBB236_2:
	.cfi_def_cfa_offset 16
	mov	rdi, rax
	mov	rsi, rdx
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Lfunc_end236:
	.size	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_, .Lfunc_end236-_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev22AttributeSpecificationE8grow_oneBS_
	.cfi_endproc
                                        # -- End function
