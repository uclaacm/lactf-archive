	.section	.text._RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
	.type	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file,@function
_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file: # @_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception20
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 744
	.cfi_def_cfa_offset 784
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rsi
	mov	rsi, rdi
	cmp	rbx, 383
	ja	.LBB151_25
# %bb.1:
	lea	r14, [rsp + 360]
	mov	rdi, r14
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	byte ptr [rsp + rbx + 360], 0
	lea	rax, [rbx + 1]
	cmp	rbx, 14
	ja	.LBB151_5
# %bb.2:
	xor	edx, edx
	.p2align	4
.LBB151_3:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsp + rdx + 360], 0
	je	.LBB151_17
# %bb.4:                                #   in Loop: Header=BB151_3 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB151_3
	jmp	.LBB151_18
.LBB151_5:
	lea	rcx, [rsp + 367]
	and	rcx, -8
	sub	rcx, r14
	jne	.LBB151_6
# %bb.40:
	lea	rdx, [rbx - 15]
	xor	ecx, ecx
.LBB151_10:
	movabs	rsi, -9187201950435737472
	movabs	rdi, 72340172838076672
	.p2align	4
.LBB151_11:                             # =>This Inner Loop Header: Depth=1
	mov	r8, qword ptr [rsp + rcx + 360]
	mov	r9, qword ptr [rsp + rcx + 368]
	mov	r10, rdi
	sub	r10, r8
	or	r10, r8
	mov	r8, rdi
	sub	r8, r9
	or	r8, r9
	and	r10, rsi
	and	r10, r8
	cmp	r10, rsi
	jne	.LBB151_12
# %bb.39:                               #   in Loop: Header=BB151_11 Depth=1
	add	rcx, 16
	cmp	rcx, rdx
	jbe	.LBB151_11
	jmp	.LBB151_12
.LBB151_6:
	xor	edx, edx
	.p2align	4
.LBB151_7:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsp + rdx + 360], 0
	je	.LBB151_17
# %bb.8:                                #   in Loop: Header=BB151_7 Depth=1
	inc	rdx
	cmp	rcx, rdx
	jne	.LBB151_7
# %bb.9:
	lea	rdx, [rbx - 15]
	cmp	rcx, rdx
	jbe	.LBB151_10
.LBB151_12:
	sub	rax, rcx
	je	.LBB151_18
# %bb.13:
	lea	rsi, [rsp + rcx]
	add	rsi, 360
	xor	edx, edx
	.p2align	4
.LBB151_14:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsi + rdx], 0
	je	.LBB151_16
# %bb.15:                               #   in Loop: Header=BB151_14 Depth=1
	inc	rdx
	cmp	rax, rdx
	jne	.LBB151_14
	jmp	.LBB151_18
.LBB151_16:
	add	rdx, rcx
.LBB151_17:
	cmp	rdx, rbx
	jne	.LBB151_18
# %bb.20:
	mov	rdi, rsp
	lea	rdx, [rsp + 360]
	mov	esi, -100
	xor	ecx, ecx
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	cmp	dword ptr [rsp], 3
	jne	.LBB151_21
# %bb.22:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 128], xmm0
	movaps	xmmword ptr [rsp + 112], xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rsp + 360]
	mov	rsi, rsp
	call	qword ptr [rip + stat64@GOTPCREL]
	cmp	eax, -1
	je	.LBB151_23
# %bb.24:
	lea	rdi, [rsp + 216]
	mov	rsi, rsp
	mov	edx, 144
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [rsp + 184], 0
	jmp	.LBB151_26
.LBB151_18:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
.LBB151_19:
	mov	qword ptr [rsp + 192], rax
	mov	qword ptr [rsp + 184], 2
.LBB151_26:
	cmp	dword ptr [rsp + 184], 2
	jne	.LBB151_27
# %bb.29:
	mov	rax, qword ptr [rsp + 192]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB151_35
# %bb.30:
	lea	rbx, [rax - 1]
	mov	r14, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB151_32
# %bb.31:
.Ltmp459:
	mov	rdi, r14
	call	rax
.Ltmp460:
.LBB151_32:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB151_34
# %bb.33:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB151_34:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB151_35:
	xor	eax, eax
	jmp	.LBB151_28
.LBB151_27:
	mov	eax, 61440
	and	eax, dword ptr [rsp + 240]
	cmp	eax, 32768
	sete	al
.LBB151_28:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 744
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
.LBB151_21:
	.cfi_def_cfa_offset 784
	lea	rdi, [rsp + 184]
	mov	rsi, rsp
	mov	edx, 176
	call	qword ptr [rip + memcpy@GOTPCREL]
	jmp	.LBB151_26
.LBB151_23:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	jmp	.LBB151_19
.LBB151_25:
	lea	rdi, [rsp + 184]
	mov	rdx, rbx
	call	_RINvNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal6common14small_c_string24run_with_cstr_allocatingNtNtNtB8_2fs4unix8FileAttrEBa_
	jmp	.LBB151_26
.LBB151_36:
.Ltmp461:
	mov	r15, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB151_38
# %bb.37:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB151_38:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end151:
	.size	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file, .Lfunc_end151-_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file
	.cfi_endproc
	.section	.gcc_except_table._RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path7is_file,"a",@progbits
	.p2align	2, 0x0
GCC_except_table151:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp459-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp459
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin20        #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end151-.Ltmp460         #   Call between .Ltmp460 and .Lfunc_end151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
