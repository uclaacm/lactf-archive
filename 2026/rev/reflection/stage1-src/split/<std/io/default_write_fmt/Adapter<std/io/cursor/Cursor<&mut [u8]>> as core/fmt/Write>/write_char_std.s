	.section	.text._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_
	.type	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_,@function
_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_: # @_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_
.Lfunc_begin77:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception77
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
	jae	.LBB335_1
# %bb.18:
	mov	byte ptr [rsp + 4], sil
	mov	r12d, 1
	jmp	.LBB335_6
.LBB335_1:
	mov	eax, esi
	and	al, 63
	or	al, -128
	mov	ecx, esi
	shr	ecx, 6
	cmp	esi, 2048
	jae	.LBB335_3
# %bb.2:
	or	cl, -64
	mov	byte ptr [rsp + 4], cl
	mov	byte ptr [rsp + 5], al
	mov	r12d, 2
	jmp	.LBB335_6
.LBB335_3:
	and	cl, 63
	or	cl, -128
	mov	edx, esi
	shr	edx, 12
	cmp	esi, 65535
	ja	.LBB335_5
# %bb.4:
	or	dl, -32
	mov	byte ptr [rsp + 4], dl
	mov	byte ptr [rsp + 5], cl
	mov	byte ptr [rsp + 6], al
	mov	r12d, 3
	jmp	.LBB335_6
.LBB335_5:
	and	dl, 63
	or	dl, -128
	shr	esi, 18
	or	sil, -16
	mov	byte ptr [rsp + 4], sil
	mov	byte ptr [rsp + 5], dl
	mov	byte ptr [rsp + 6], cl
	mov	byte ptr [rsp + 7], al
	mov	r12d, 4
.LBB335_6:
	mov	r15, qword ptr [rbx]
	mov	r13, qword ptr [r15 + 8]
	mov	rbp, qword ptr [r15 + 16]
	cmp	r13, rbp
	mov	rdi, rbp
	cmovb	rdi, r13
	sub	r13, rdi
	add	rdi, qword ptr [r15]
	cmp	r13, r12
	mov	r14, r12
	cmovb	r14, r13
	lea	rsi, [rsp + 4]
	mov	rdx, r14
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r14, rbp
	mov	qword ptr [r15 + 16], r14
	cmp	r13, r12
	jae	.LBB335_14
# %bb.7:
	mov	rax, qword ptr [rbx + 8]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB335_8
.LBB335_13:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	qword ptr [rbx + 8], rax
.LBB335_14:
	cmp	r13, r12
	setb	al
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
.LBB335_8:
	.cfi_def_cfa_offset 64
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	rbp, qword ptr [rax + 7]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.LBB335_10
# %bb.9:
.Ltmp1109:
	mov	rdi, r15
	call	rax
.Ltmp1110:
.LBB335_10:
	cmp	qword ptr [rbp + 8], 0
	je	.LBB335_12
# %bb.11:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB335_12:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB335_13
.LBB335_15:
.Ltmp1111:
	mov	r12, rax
	cmp	qword ptr [rbp + 8], 0
	je	.LBB335_17
# %bb.16:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB335_17:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	qword ptr [rbx + 8], rax
	mov	rdi, r12
	call	_Unwind_Resume@PLT
.Lfunc_end335:
	.size	_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_, .Lfunc_end335-_RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_
	.cfi_endproc
	.section	.gcc_except_table._RNvYINtNvNtCs3bNtqN8jaZB_3std2io17default_write_fmt7AdapterINtNtB7_6cursor6CursorQShEENtNtCsfQL5qMWGko6_4core3fmt5Write10write_charB9_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table335:
.Lexception77:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end77-.Lcst_begin77
.Lcst_begin77:
	.uleb128 .Lfunc_begin77-.Lfunc_begin77  # >> Call Site 1 <<
	.uleb128 .Ltmp1109-.Lfunc_begin77       #   Call between .Lfunc_begin77 and .Ltmp1109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1109-.Lfunc_begin77       # >> Call Site 2 <<
	.uleb128 .Ltmp1110-.Ltmp1109            #   Call between .Ltmp1109 and .Ltmp1110
	.uleb128 .Ltmp1111-.Lfunc_begin77       #     jumps to .Ltmp1111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1110-.Lfunc_begin77       # >> Call Site 3 <<
	.uleb128 .Lfunc_end335-.Ltmp1110        #   Call between .Ltmp1110 and .Lfunc_end335
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end77:
	.p2align	2, 0x0
                                        # -- End function
