	.section	.text._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_
	.type	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_,@function
_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_: # @_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_
.Lfunc_begin69:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception69
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
	push	rax
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdi
	mov	dword ptr [rsp + 4], 0
	cmp	esi, 128
	jae	.LBB324_1
# %bb.28:
	mov	byte ptr [rsp + 4], sil
	mov	r14d, 1
	jmp	.LBB324_6
.LBB324_1:
	mov	eax, esi
	and	al, 63
	or	al, -128
	mov	ecx, esi
	shr	ecx, 6
	cmp	esi, 2048
	jae	.LBB324_3
# %bb.2:
	or	cl, -64
	mov	byte ptr [rsp + 4], cl
	mov	byte ptr [rsp + 5], al
	mov	r14d, 2
	jmp	.LBB324_6
.LBB324_3:
	and	cl, 63
	or	cl, -128
	mov	edx, esi
	shr	edx, 12
	cmp	esi, 65535
	ja	.LBB324_5
# %bb.4:
	or	dl, -32
	mov	byte ptr [rsp + 4], dl
	mov	byte ptr [rsp + 5], cl
	mov	byte ptr [rsp + 6], al
	mov	r14d, 3
	jmp	.LBB324_6
.LBB324_5:
	and	dl, 63
	or	dl, -128
	shr	esi, 18
	or	sil, -16
	mov	byte ptr [rsp + 4], sil
	mov	byte ptr [rsp + 5], dl
	mov	byte ptr [rsp + 6], cl
	mov	byte ptr [rsp + 7], al
	mov	r14d, 4
.LBB324_6:
	lea	r15, [rsp + 4]
	mov	r12, qword ptr [rip + write@GOTPCREL]
	mov	rbp, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB324_7
	.p2align	4
.LBB324_11:                             #   in Loop: Header=BB324_7 Depth=1
	call	rbp
	movsxd	r13, dword ptr [rax]
	cmp	r13, 4
	jne	.LBB324_12
# %bb.14:                               #   in Loop: Header=BB324_7 Depth=1
	test	r14, r14
	je	.LBB324_15
.LBB324_7:                              # =>This Inner Loop Header: Depth=1
	mov	edi, 2
	mov	rsi, r15
	mov	rdx, r14
	call	r12
	cmp	rax, -1
	je	.LBB324_11
# %bb.8:                                #   in Loop: Header=BB324_7 Depth=1
	test	rax, rax
	je	.LBB324_16
# %bb.9:                                #   in Loop: Header=BB324_7 Depth=1
	mov	rcx, r14
	sub	rcx, rax
	jb	.LBB324_10
# %bb.13:                               #   in Loop: Header=BB324_7 Depth=1
	add	r15, rax
	mov	r14, rcx
	test	r14, r14
	jne	.LBB324_7
.LBB324_15:
	xor	eax, eax
	jmp	.LBB324_24
.LBB324_16:
	lea	r13, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	jmp	.LBB324_17
.LBB324_12:
	shl	r13, 32
	or	r13, 2
.LBB324_17:
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB324_18
.LBB324_23:
	mov	qword ptr [rbx + 8], r13
	mov	al, 1
.LBB324_24:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 8
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
.LBB324_18:
	.cfi_def_cfa_offset 64
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	rbp, qword ptr [rax + 7]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.LBB324_20
# %bb.19:
.Ltmp1079:
	mov	rdi, r15
	call	rax
.Ltmp1080:
.LBB324_20:
	cmp	qword ptr [rbp + 8], 0
	je	.LBB324_22
# %bb.21:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB324_22:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB324_23
.LBB324_10:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r14
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB324_25:
.Ltmp1081:
	mov	r12, rax
	cmp	qword ptr [rbp + 8], 0
	je	.LBB324_27
# %bb.26:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB324_27:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	mov	qword ptr [rbx + 8], r13
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end324:
	.size	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_, .Lfunc_end324-_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_
	.cfi_endproc
	.section	.gcc_except_table._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table324:
.Lexception69:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end69-.Lcst_begin69
.Lcst_begin69:
	.uleb128 .Lfunc_begin69-.Lfunc_begin69  # >> Call Site 1 <<
	.uleb128 .Ltmp1079-.Lfunc_begin69       #   Call between .Lfunc_begin69 and .Ltmp1079
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1079-.Lfunc_begin69       # >> Call Site 2 <<
	.uleb128 .Ltmp1080-.Ltmp1079            #   Call between .Ltmp1079 and .Ltmp1080
	.uleb128 .Ltmp1081-.Lfunc_begin69       #     jumps to .Ltmp1081
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1080-.Lfunc_begin69       # >> Call Site 3 <<
	.uleb128 .Lfunc_end324-.Ltmp1080        #   Call between .Ltmp1080 and .Lfunc_end324
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end69:
	.p2align	2, 0x0
                                        # -- End function
