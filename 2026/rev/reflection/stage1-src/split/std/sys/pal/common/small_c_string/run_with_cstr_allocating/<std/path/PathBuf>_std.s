	.section	.text.unlikely._RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_
	.type	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_,@function
_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_: # @_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception19
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdi
	movabs	r12, -9223372036854775808
	lea	rdi, [rsp + 8]
	call	_RNvXs_NvMs_NtNtCs78A21jy8lRn_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl
	mov	rax, qword ptr [rsp + 8]
	neg	rax
	jno	.LBB146_15
# %bb.1:
	mov	rbx, qword ptr [rsp + 16]
	mov	rbp, qword ptr [rsp + 24]
	mov	rdi, rbx
	xor	esi, esi
	call	qword ptr [rip + realpath@GOTPCREL]
	test	rax, rax
	je	.LBB146_2
# %bb.3:
	mov	r15, rax
	mov	rdi, rax
	call	qword ptr [rip + strlen@GOTPCREL]
	mov	r12, rax
	test	rax, rax
	je	.LBB146_4
# %bb.5:
	mov	rdi, r12
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB146_10
# %bb.6:
	mov	r13, rax
	jmp	.LBB146_7
.LBB146_15:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14], r12
	jae	.LBB146_9
# %bb.16:
	mov	rbx, qword ptr [rsp + 16]
	jmp	.LBB146_17
.LBB146_2:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14], r12
	mov	byte ptr [rbx], 0
	test	rbp, rbp
	jne	.LBB146_17
.LBB146_9:
	add	rsp, 40
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB146_4:
	.cfi_def_cfa_offset 96
	mov	r13d, 1
.LBB146_7:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	mov	qword ptr [r14], r12
	mov	qword ptr [r14 + 8], r13
	mov	qword ptr [r14 + 16], r12
	mov	byte ptr [rbx], 0
	test	rbp, rbp
	je	.LBB146_9
.LBB146_17:
	mov	rdi, rbx
	add	rsp, 40
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB146_10:
	.cfi_def_cfa_offset 96
.Ltmp456:
	mov	rdi, r12
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp457:
# %bb.11:
.LBB146_12:
.Ltmp458:
	mov	r14, rax
	mov	byte ptr [rbx], 0
	test	rbp, rbp
	je	.LBB146_14
# %bb.13:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB146_14:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end146:
	.size	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_, .Lfunc_end146-_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_
	.cfi_endproc
	.section	.gcc_except_table._RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtBa_4path7PathBufEBa_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table146:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp456-.Lfunc_begin19        #   Call between .Lfunc_begin19 and .Ltmp456
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin19        #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Lfunc_end146-.Ltmp457         #   Call between .Ltmp457 and .Lfunc_end146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
