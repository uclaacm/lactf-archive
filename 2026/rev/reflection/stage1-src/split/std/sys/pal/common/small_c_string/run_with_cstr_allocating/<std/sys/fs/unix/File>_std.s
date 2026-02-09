	.section	.text.unlikely._RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_
	.type	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_,@function
_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_: # @_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_
.Lfunc_begin62:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception62
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 40
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rcx
	mov	r15, rdi
	lea	rdi, [rsp + 8]
	call	_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
	mov	rax, qword ptr [rsp + 8]
	neg	rax
	jno	.LBB301_7
# %bb.1:
	mov	rbx, qword ptr [rsp + 16]
	mov	r12, qword ptr [rsp + 24]
.Ltmp1049:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c
.Ltmp1050:
# %bb.2:
	mov	byte ptr [rbx], 0
	test	r12, r12
	jne	.LBB301_9
	jmp	.LBB301_3
.LBB301_7:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	mov	qword ptr [r15 + 8], rax
	mov	dword ptr [r15], 1
	jae	.LBB301_3
# %bb.8:
	mov	rbx, qword ptr [rsp + 16]
.LBB301_9:
	mov	rdi, rbx
	add	rsp, 40
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB301_3:
	.cfi_def_cfa_offset 80
	add	rsp, 40
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
.LBB301_4:
	.cfi_def_cfa_offset 80
.Ltmp1051:
	mov	r14, rax
	mov	byte ptr [rbx], 0
	test	r12, r12
	je	.LBB301_6
# %bb.5:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB301_6:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end301:
	.size	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_, .Lfunc_end301-_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table301:
.Lexception62:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end62-.Lcst_begin62
.Lcst_begin62:
	.uleb128 .Lfunc_begin62-.Lfunc_begin62  # >> Call Site 1 <<
	.uleb128 .Ltmp1049-.Lfunc_begin62       #   Call between .Lfunc_begin62 and .Ltmp1049
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1049-.Lfunc_begin62       # >> Call Site 2 <<
	.uleb128 .Ltmp1050-.Ltmp1049            #   Call between .Ltmp1049 and .Ltmp1050
	.uleb128 .Ltmp1051-.Lfunc_begin62       #     jumps to .Ltmp1051
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1050-.Lfunc_begin62       # >> Call Site 3 <<
	.uleb128 .Lfunc_end301-.Ltmp1050        #   Call between .Ltmp1050 and .Lfunc_end301
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end62:
	.p2align	2, 0x0
                                        # -- End function
