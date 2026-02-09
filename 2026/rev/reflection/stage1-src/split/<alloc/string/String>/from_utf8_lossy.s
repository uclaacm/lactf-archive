	.section	.text._RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
	.type	_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy,@function
_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy: # @_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
.Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception36
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
	sub	rsp, 104
	.cfi_def_cfa_offset 160
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbp, rdx
	mov	rbx, rdi
	mov	qword ptr [rsp + 40], rsi
	mov	qword ptr [rsp + 48], rdx
	lea	rdi, [rsp + 56]
	lea	rsi, [rsp + 40]
	call	_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	mov	r12, qword ptr [rsp + 56]
	test	r12, r12
	je	.LBB193_8
# %bb.1:
	mov	r13, qword ptr [rsp + 64]
	cmp	qword ptr [rsp + 80], 0
	je	.LBB193_9
# %bb.2:
	mov	qword ptr [rsp + 32], rbx       # 8-byte Spill
	test	rbp, rbp
	je	.LBB193_3
# %bb.4:
	mov	rdi, rbp
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB193_10
# %bb.5:
	mov	r14, rax
	jmp	.LBB193_6
.LBB193_8:
	mov	r12d, 1
	xor	r13d, r13d
.LBB193_9:
	mov	qword ptr [rbx + 8], r12
	mov	qword ptr [rbx + 16], r13
	movabs	rax, -9223372036854775808
	mov	qword ptr [rbx], rax
	jmp	.LBB193_32
.LBB193_3:
	mov	r14d, 1
.LBB193_6:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 16], r14
	mov	qword ptr [rsp + 24], 0
	cmp	r13, rbp
	ja	.LBB193_11
# %bb.7:
	xor	r15d, r15d
.LBB193_13:
	lea	rdi, [r14 + r15]
	mov	rsi, r12
	mov	rdx, r13
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, r13
	mov	qword ptr [rsp + 24], r15
	sub	rbp, r15
	cmp	rbp, 2
	jbe	.LBB193_14
.LBB193_16:
	mov	byte ptr [r14 + r15 + 2], -67
	mov	word ptr [r14 + r15], -16401
	add	r15, 3
	mov	qword ptr [rsp + 24], r15
	movups	xmm0, xmmword ptr [rsp + 40]
	movups	xmmword ptr [rsp + 88], xmm0
	lea	r13, [rsp + 88]
	.p2align	4
.LBB193_17:                             # =>This Inner Loop Header: Depth=1
	lea	rdi, [rsp + 56]
	mov	rsi, r13
	call	_RNvXs2_NtNtCsfQL5qMWGko6_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next
	mov	rbp, qword ptr [rsp + 56]
	test	rbp, rbp
	je	.LBB193_31
# %bb.18:                               #   in Loop: Header=BB193_17 Depth=1
	mov	rbx, qword ptr [rsp + 64]
	mov	r12, qword ptr [rsp + 80]
	mov	rax, qword ptr [rsp + 8]
	sub	rax, r15
	cmp	rbx, rax
	ja	.LBB193_19
.LBB193_21:                             #   in Loop: Header=BB193_17 Depth=1
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r15, rbx
	mov	qword ptr [rsp + 24], r15
	test	r12, r12
	je	.LBB193_17
# %bb.22:                               #   in Loop: Header=BB193_17 Depth=1
	mov	rax, qword ptr [rsp + 8]
	sub	rax, r15
	cmp	rax, 2
	jbe	.LBB193_23
.LBB193_25:                             #   in Loop: Header=BB193_17 Depth=1
	mov	byte ptr [r14 + r15 + 2], -67
	mov	word ptr [r14 + r15], -16401
	add	r15, 3
	mov	qword ptr [rsp + 24], r15
	jmp	.LBB193_17
.LBB193_19:                             #   in Loop: Header=BB193_17 Depth=1
.Ltmp884:
	lea	rdi, [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_
.Ltmp885:
# %bb.20:                               #   in Loop: Header=BB193_17 Depth=1
	mov	r14, qword ptr [rsp + 16]
	mov	r15, qword ptr [rsp + 24]
	jmp	.LBB193_21
.LBB193_23:                             #   in Loop: Header=BB193_17 Depth=1
.Ltmp886:
	mov	edx, 3
	lea	rdi, [rsp + 8]
	mov	rsi, r15
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_
.Ltmp887:
# %bb.24:                               #   in Loop: Header=BB193_17 Depth=1
	mov	r14, qword ptr [rsp + 16]
	mov	r15, qword ptr [rsp + 24]
	jmp	.LBB193_25
.LBB193_31:
	mov	rax, qword ptr [rsp + 24]
	mov	rcx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rcx + 16], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rcx], xmm0
.LBB193_32:
	add	rsp, 104
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
.LBB193_11:
	.cfi_def_cfa_offset 160
.Ltmp879:
	lea	rdi, [rsp + 8]
	xor	esi, esi
	mov	rdx, r13
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_
.Ltmp880:
# %bb.12:
	mov	r15, qword ptr [rsp + 24]
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 16]
	jmp	.LBB193_13
.LBB193_14:
.Ltmp881:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rsi, r15
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalEBa_
.Ltmp882:
# %bb.15:
	mov	r14, qword ptr [rsp + 16]
	mov	r15, qword ptr [rsp + 24]
	jmp	.LBB193_16
.LBB193_10:
	mov	rdi, rbp
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB193_27:
.Ltmp883:
	jmp	.LBB193_28
.LBB193_26:
.Ltmp888:
.LBB193_28:
	mov	rbx, rax
	cmp	qword ptr [rsp + 8], 0
	je	.LBB193_30
# %bb.29:
	mov	rdi, qword ptr [rsp + 16]
	call	qword ptr [rip + free@GOTPCREL]
.LBB193_30:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end193:
	.size	_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy, .Lfunc_end193-_RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy
	.cfi_endproc
	.section	.gcc_except_table._RNvMNtCs78A21jy8lRn_5alloc6stringNtB2_6String15from_utf8_lossy,"a",@progbits
	.p2align	2, 0x0
GCC_except_table193:
.Lexception36:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Lfunc_begin36-.Lfunc_begin36  # >> Call Site 1 <<
	.uleb128 .Ltmp884-.Lfunc_begin36        #   Call between .Lfunc_begin36 and .Ltmp884
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp884-.Lfunc_begin36        # >> Call Site 2 <<
	.uleb128 .Ltmp887-.Ltmp884              #   Call between .Ltmp884 and .Ltmp887
	.uleb128 .Ltmp888-.Lfunc_begin36        #     jumps to .Ltmp888
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin36        # >> Call Site 3 <<
	.uleb128 .Ltmp882-.Ltmp879              #   Call between .Ltmp879 and .Ltmp882
	.uleb128 .Ltmp883-.Lfunc_begin36        #     jumps to .Ltmp883
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin36        # >> Call Site 4 <<
	.uleb128 .Lfunc_end193-.Ltmp882         #   Call between .Ltmp882 and .Lfunc_end193
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end36:
	.p2align	2, 0x0
                                        # -- End function
