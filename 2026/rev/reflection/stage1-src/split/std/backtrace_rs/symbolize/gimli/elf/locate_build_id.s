	.section	.text._RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id
	.type	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id,@function
_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id: # @_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception17
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
	mov	rbx, rdi
	cmp	rdx, 2
	jb	.LBB143_4
# %bb.1:
	mov	r14, rdx
	mov	r15, rsi
	movzx	ecx, byte ptr [rip + _RNvNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf17debug_path_exists17DEBUG_PATH_EXISTS.0]
	test	cl, cl
	je	.LBB143_2
# %bb.3:
	cmp	cl, 1
	jne	.LBB143_4
.LBB143_6:
	lea	r12, [r14 + r14]
	add	r12, 32
	jns	.LBB143_7
# %bb.41:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec17capacity_overflow
.LBB143_2:
	call	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir
	mov	cl, 2
	sub	cl, al
	mov	byte ptr [rip + _RNvNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf17debug_path_exists17DEBUG_PATH_EXISTS.0], cl
	cmp	cl, 1
	je	.LBB143_6
.LBB143_4:
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
.LBB143_5:
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
.LBB143_7:
	.cfi_def_cfa_offset 96
	je	.LBB143_8
# %bb.30:
	mov	rdi, r12
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB143_42
# %bb.31:
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 16], rax
	mov	qword ptr [rsp + 24], 0
	cmp	r12, 24
	jbe	.LBB143_9
# %bb.32:
	xor	r12d, r12d
	jmp	.LBB143_11
.LBB143_8:
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 16], 1
	mov	qword ptr [rsp + 24], 0
.LBB143_9:
.Ltmp388:
	lea	rdi, [rsp + 8]
	mov	edx, 25
	mov	ecx, 1
	mov	r8d, 1
	xor	esi, esi
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp389:
# %bb.10:
	mov	rax, qword ptr [rsp + 16]
	mov	r12, qword ptr [rsp + 24]
.LBB143_11:
	movups	xmm0, xmmword ptr [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.459+9]
	movups	xmmword ptr [rax + r12 + 9], xmm0
	movups	xmm0, xmmword ptr [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.459]
	movups	xmmword ptr [rax + r12], xmm0
	lea	rsi, [r12 + 25]
	mov	qword ptr [rsp + 24], rsi
	movzx	r13d, byte ptr [r15]
	mov	ecx, r13d
	shr	cl, 4
	lea	edx, [rcx + 48]
	add	cl, 87
	cmp	r13b, -96
	movzx	edx, dl
	movzx	ebp, cl
	cmovb	ebp, edx
	cmp	qword ptr [rsp + 8], rsi
	je	.LBB143_12
.LBB143_14:
	mov	byte ptr [rax + rsi], bpl
	lea	rsi, [r12 + 26]
	mov	qword ptr [rsp + 24], rsi
	and	r13b, 15
	lea	eax, [r13 + 48]
	lea	ecx, [r13 + 87]
	cmp	r13b, 10
	movzx	eax, al
	movzx	ebp, cl
	cmovb	ebp, eax
	cmp	qword ptr [rsp + 8], rsi
	je	.LBB143_15
.LBB143_17:
	mov	rax, qword ptr [rsp + 16]
	mov	byte ptr [rax + rsi], bpl
	lea	rsi, [r12 + 27]
	mov	qword ptr [rsp + 24], rsi
	cmp	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 32], rbx       # 8-byte Spill
	je	.LBB143_18
.LBB143_20:
	mov	rax, qword ptr [rsp + 16]
	mov	byte ptr [rax + rsi], 47
	add	r12, 28
	mov	qword ptr [rsp + 24], r12
	dec	r14
	xor	ebp, ebp
	lea	rdi, [rsp + 8]
	.p2align	4
.LBB143_21:                             # =>This Inner Loop Header: Depth=1
	movzx	r13d, byte ptr [r15 + rbp + 1]
	mov	eax, r13d
	shr	al, 4
	lea	ecx, [rax + 48]
	add	al, 87
	cmp	r13b, -96
	movzx	ecx, cl
	movzx	ebx, al
	cmovb	ebx, ecx
	mov	rax, r12
	cmp	r12, qword ptr [rsp + 8]
	je	.LBB143_22
.LBB143_24:                             #   in Loop: Header=BB143_21 Depth=1
	mov	rcx, qword ptr [rsp + 16]
	mov	byte ptr [rcx + rax], bl
	lea	rsi, [r12 + 1]
	mov	qword ptr [rsp + 24], rsi
	and	r13b, 15
	lea	eax, [r13 + 48]
	lea	ecx, [r13 + 87]
	cmp	r13b, 10
	movzx	eax, al
	movzx	ebx, cl
	cmovb	ebx, eax
	cmp	rsi, qword ptr [rsp + 8]
	je	.LBB143_25
.LBB143_27:                             #   in Loop: Header=BB143_21 Depth=1
	mov	rax, qword ptr [rsp + 16]
	mov	byte ptr [rax + rsi], bl
	add	r12, 2
	mov	qword ptr [rsp + 24], r12
	inc	rbp
	cmp	r14, rbp
	jne	.LBB143_21
	jmp	.LBB143_28
.LBB143_22:                             #   in Loop: Header=BB143_21 Depth=1
.Ltmp396:
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, r12
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp397:
# %bb.23:                               #   in Loop: Header=BB143_21 Depth=1
	mov	rax, qword ptr [rsp + 24]
	lea	rdi, [rsp + 8]
	jmp	.LBB143_24
.LBB143_25:                             #   in Loop: Header=BB143_21 Depth=1
.Ltmp398:
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	mov	r13, rdi
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp399:
# %bb.26:                               #   in Loop: Header=BB143_21 Depth=1
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, r13
	jmp	.LBB143_27
.LBB143_28:
	mov	rax, qword ptr [rsp + 8]
	sub	rax, r12
	cmp	rax, 5
	jbe	.LBB143_38
# %bb.29:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
.LBB143_40:
	mov	rax, qword ptr [rsp + 16]
	mov	word ptr [rax + r12 + 4], 26485
	mov	dword ptr [rax + r12], 1650811950
	add	r12, 6
	mov	qword ptr [rsp + 24], r12
	mov	qword ptr [rcx + 16], r12
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rcx], xmm0
	jmp	.LBB143_5
.LBB143_12:
.Ltmp390:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp391:
# %bb.13:
	mov	rax, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 24]
	jmp	.LBB143_14
.LBB143_15:
.Ltmp392:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp393:
# %bb.16:
	mov	rsi, qword ptr [rsp + 24]
	jmp	.LBB143_17
.LBB143_18:
.Ltmp394:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp395:
# %bb.19:
	mov	rsi, qword ptr [rsp + 24]
	jmp	.LBB143_20
.LBB143_38:
.Ltmp401:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, r12
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp402:
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
# %bb.39:
	mov	r12, qword ptr [rsp + 24]
	jmp	.LBB143_40
.LBB143_42:
	mov	rdi, r12
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB143_33:
.Ltmp400:
	jmp	.LBB143_35
.LBB143_34:
.Ltmp403:
.LBB143_35:
	mov	rbx, rax
	cmp	qword ptr [rsp + 8], 0
	je	.LBB143_37
# %bb.36:
	mov	rdi, qword ptr [rsp + 16]
	call	qword ptr [rip + free@GOTPCREL]
.LBB143_37:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end143:
	.size	_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id, .Lfunc_end143-_RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id
	.cfi_endproc
	.section	.gcc_except_table._RNvNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elf15locate_build_id,"a",@progbits
	.p2align	2, 0x0
GCC_except_table143:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp388-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp388
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp403-.Lfunc_begin17        #     jumps to .Ltmp403
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp399-.Ltmp396              #   Call between .Ltmp396 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin17        #     jumps to .Ltmp400
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp402-.Ltmp390              #   Call between .Ltmp390 and .Ltmp402
	.uleb128 .Ltmp403-.Lfunc_begin17        #     jumps to .Ltmp403
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Lfunc_end143-.Ltmp402         #   Call between .Ltmp402 and .Lfunc_end143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
