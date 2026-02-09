	.section	.text._RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate
	.type	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate,@function
_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate: # @_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate
.Lfunc_begin47:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception47
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	test	rsi, rsi
	jns	.LBB249_1
# %bb.11:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB249_1:
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [rdi + 16]
	je	.LBB249_2
# %bb.3:
	mov	esi, 1
	mov	rdi, rbx
	call	qword ptr [rip + calloc@GOTPCREL]
	test	rax, rax
	je	.LBB249_12
# %bb.4:
	mov	r15, rax
	cmp	r12, qword ptr [r14]
	je	.LBB249_6
	jmp	.LBB249_7
.LBB249_2:
	mov	r15d, 1
	cmp	r12, qword ptr [r14]
	jne	.LBB249_7
.LBB249_6:
.Ltmp978:
	mov	rdi, r14
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCs3bNtqN8jaZB_3std
.Ltmp979:
.LBB249_7:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [8*r12]
	lea	rcx, [rcx + 2*rcx]
	mov	qword ptr [rax + rcx], rbx
	mov	qword ptr [rax + rcx + 8], r15
	mov	qword ptr [rax + rcx + 16], rbx
	inc	r12
	mov	qword ptr [r14 + 16], r12
	mov	rdx, qword ptr [r14 + 8]
	mov	rax, qword ptr [rdx + rcx + 8]
	mov	rdx, qword ptr [rdx + rcx + 16]
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB249_12:
	.cfi_def_cfa_offset 48
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB249_8:
.Ltmp980:
	mov	r14, rax
	test	rbx, rbx
	je	.LBB249_10
# %bb.9:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB249_10:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end249:
	.size	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate, .Lfunc_end249-_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate
	.cfi_endproc
	.section	.gcc_except_table._RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli5stashNtB2_5Stash8allocate,"a",@progbits
	.p2align	2, 0x0
GCC_except_table249:
.Lexception47:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end47-.Lcst_begin47
.Lcst_begin47:
	.uleb128 .Lfunc_begin47-.Lfunc_begin47  # >> Call Site 1 <<
	.uleb128 .Ltmp978-.Lfunc_begin47        #   Call between .Lfunc_begin47 and .Ltmp978
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin47        # >> Call Site 2 <<
	.uleb128 .Ltmp979-.Ltmp978              #   Call between .Ltmp978 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin47        #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp979-.Lfunc_begin47        # >> Call Site 3 <<
	.uleb128 .Lfunc_end249-.Ltmp979         #   Call between .Ltmp979 and .Lfunc_end249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end47:
	.p2align	2, 0x0
                                        # -- End function
