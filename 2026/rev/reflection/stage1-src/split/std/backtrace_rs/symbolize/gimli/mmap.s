	.section	.text._RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
	.type	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap,@function
_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap: # @_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception15
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 416
	.cfi_def_cfa_offset 464
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rdx
	mov	rbx, rdi
	movabs	rax, 1881195675648
	mov	qword ptr [rsp + 16], rax
	mov	dword ptr [rsp + 24], 0
	mov	word ptr [rsp + 28], 0
	mov	byte ptr [rsp + 24], 1
	cmp	rdx, 383
	ja	.LBB139_20
# %bb.1:
	lea	r15, [rsp + 32]
	mov	rdi, r15
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	byte ptr [rsp + r14 + 32], 0
	lea	rax, [r14 + 1]
	cmp	r14, 14
	ja	.LBB139_5
# %bb.2:
	xor	edx, edx
	.p2align	4
.LBB139_3:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsp + rdx + 32], 0
	je	.LBB139_17
# %bb.4:                                #   in Loop: Header=BB139_3 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB139_3
	jmp	.LBB139_18
.LBB139_5:
	lea	rcx, [rsp + 39]
	and	rcx, -8
	sub	rcx, r15
	jne	.LBB139_6
# %bb.56:
	lea	rdx, [r14 - 15]
	xor	ecx, ecx
.LBB139_10:
	movabs	rsi, -9187201950435737472
	movabs	rdi, 72340172838076672
	.p2align	4
.LBB139_11:                             # =>This Inner Loop Header: Depth=1
	mov	r8, qword ptr [rsp + rcx + 32]
	mov	r9, qword ptr [rsp + rcx + 40]
	mov	r10, rdi
	sub	r10, r8
	or	r10, r8
	mov	r8, rdi
	sub	r8, r9
	or	r8, r9
	and	r10, rsi
	and	r10, r8
	cmp	r10, rsi
	jne	.LBB139_12
# %bb.55:                               #   in Loop: Header=BB139_11 Depth=1
	add	rcx, 16
	cmp	rcx, rdx
	jbe	.LBB139_11
	jmp	.LBB139_12
.LBB139_6:
	xor	edx, edx
	.p2align	4
.LBB139_7:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsp + rdx + 32], 0
	je	.LBB139_17
# %bb.8:                                #   in Loop: Header=BB139_7 Depth=1
	inc	rdx
	cmp	rcx, rdx
	jne	.LBB139_7
# %bb.9:
	lea	rdx, [r14 - 15]
	cmp	rcx, rdx
	jbe	.LBB139_10
.LBB139_12:
	sub	rax, rcx
	je	.LBB139_18
# %bb.13:
	lea	rsi, [rsp + rcx]
	add	rsi, 32
	xor	edx, edx
	.p2align	4
.LBB139_14:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsi + rdx], 0
	je	.LBB139_16
# %bb.15:                               #   in Loop: Header=BB139_14 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB139_14
	jmp	.LBB139_18
.LBB139_16:
	add	rdx, rcx
.LBB139_17:
	cmp	rdx, r14
	jne	.LBB139_18
# %bb.19:
	mov	rdi, rsp
	lea	rsi, [rsp + 32]
	lea	rdx, [rsp + 16]
	call	_RNvMsi_NtNtNtCs3bNtqN8jaZB_3std3sys2fs4unixNtB5_4File6open_c
	cmp	dword ptr [rsp], 1
	je	.LBB139_22
	jmp	.LBB139_33
.LBB139_18:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp], 1
	cmp	dword ptr [rsp], 1
	jne	.LBB139_33
.LBB139_22:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB139_28
# %bb.23:
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB139_25
# %bb.24:
.Ltmp379:
	mov	rdi, r15
	call	rax
.Ltmp380:
.LBB139_25:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB139_27
# %bb.26:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB139_27:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB139_28:
	mov	qword ptr [rbx], 0
	jmp	.LBB139_29
.LBB139_20:
	mov	rdi, rsp
	lea	rcx, [rsp + 16]
	mov	rdx, r14
	call	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix4FileEBa_
	cmp	dword ptr [rsp], 1
	je	.LBB139_22
.LBB139_33:
	mov	ebp, dword ptr [rsp + 4]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.376]
	lea	rdi, [rsp + 32]
	mov	esi, ebp
	mov	ecx, 4096
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	mov	rax, qword ptr [rsp + 32]
	cmp	rax, 3
	jne	.LBB139_44
# %bb.34:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 160], xmm0
	movaps	xmmword ptr [rsp + 144], xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	lea	rsi, [rsp + 32]
	mov	edi, ebp
	call	qword ptr [rip + fstat64@GOTPCREL]
	cmp	eax, -1
	je	.LBB139_35
# %bb.51:
	mov	r14, qword ptr [rsp + 80]
	jmp	.LBB139_52
.LBB139_44:
	cmp	eax, 2
	jne	.LBB139_46
# %bb.45:
	mov	rax, qword ptr [rsp + 40]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB139_42
	jmp	.LBB139_37
.LBB139_46:
	mov	r14, qword ptr [rsp + 112]
.LBB139_52:
	xor	r15d, r15d
	xor	edi, edi
	mov	rsi, r14
	mov	edx, 1
	mov	ecx, 2
	mov	r8d, ebp
	xor	r9d, r9d
	call	qword ptr [rip + mmap64@GOTPCREL]
	cmp	rax, -1
	je	.LBB139_54
# %bb.53:
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 16], r14
	mov	r15d, 1
.LBB139_54:
	mov	qword ptr [rbx], r15
	jmp	.LBB139_43
.LBB139_35:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB139_42
.LBB139_37:
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB139_39
# %bb.38:
.Ltmp376:
	mov	rdi, r15
	call	rax
.Ltmp377:
.LBB139_39:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB139_41
# %bb.40:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB139_41:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB139_42:
	mov	qword ptr [rbx], 0
.LBB139_43:
	mov	edi, ebp
	call	qword ptr [rip + close@GOTPCREL]
.LBB139_29:
	add	rsp, 416
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB139_47:
	.cfi_def_cfa_offset 464
.Ltmp378:
	mov	rbx, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB139_49
# %bb.48:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB139_49:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	edi, ebp
	call	qword ptr [rip + close@GOTPCREL]
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB139_30:
.Ltmp381:
	mov	rbx, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB139_32
# %bb.31:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB139_32:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end139:
	.size	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap, .Lfunc_end139-_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
	.cfi_endproc
	.section	.gcc_except_table._RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap,"a",@progbits
	.p2align	2, 0x0
GCC_except_table139:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp379-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp379
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin15        #     jumps to .Ltmp381
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp380-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp376-.Ltmp380              #   Call between .Ltmp380 and .Ltmp376
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin15        #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin15        # >> Call Site 5 <<
	.uleb128 .Lfunc_end139-.Ltmp377         #   Call between .Ltmp377 and .Lfunc_end139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
