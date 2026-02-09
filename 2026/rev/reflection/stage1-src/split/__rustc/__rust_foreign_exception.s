	.section	.text._RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception
	.type	_RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception,@function
_RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception: # @_RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception
.Lfunc_begin87:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception87
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
	mov	ebx, 68
	lea	r14, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.149]
	mov	r15, qword ptr [rip + write@GOTPCREL]
	mov	r12, qword ptr [rip + __errno_location@GOTPCREL]
	jmp	.LBB381_1
	.p2align	4
.LBB381_5:                              #   in Loop: Header=BB381_1 Depth=1
	call	r12
	movsxd	rax, dword ptr [rax]
	cmp	rax, 4
	jne	.LBB381_6
# %bb.9:                                #   in Loop: Header=BB381_1 Depth=1
	test	rbx, rbx
	je	.LBB381_19
.LBB381_1:                              # =>This Inner Loop Header: Depth=1
	mov	edi, 2
	mov	rsi, r14
	mov	rdx, rbx
	call	r15
	cmp	rax, -1
	je	.LBB381_5
# %bb.2:                                #   in Loop: Header=BB381_1 Depth=1
	test	rax, rax
	je	.LBB381_12
# %bb.3:                                #   in Loop: Header=BB381_1 Depth=1
	mov	rcx, rbx
	sub	rcx, rax
	jb	.LBB381_4
# %bb.8:                                #   in Loop: Header=BB381_1 Depth=1
	add	r14, rax
	mov	rbx, rcx
	test	rbx, rbx
	jne	.LBB381_1
	jmp	.LBB381_19
.LBB381_4:
.Ltmp1268:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdx, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp1269:
# %bb.7:
.LBB381_12:
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	jmp	.LBB381_13
.LBB381_6:
	shl	rax, 32
	or	rax, 2
.LBB381_13:
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB381_14
.LBB381_19:
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.LBB381_14:
	lea	rbx, [rax - 1]
	mov	r14, qword ptr [rax - 1]
	mov	r15, qword ptr [rax + 7]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.LBB381_16
# %bb.15:
.Ltmp1265:
	mov	rdi, r14
	call	rax
.Ltmp1266:
.LBB381_16:
	cmp	qword ptr [r15 + 8], 0
	je	.LBB381_18
# %bb.17:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB381_18:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.LBB381_20:
.Ltmp1267:
	cmp	qword ptr [r15 + 8], 0
	je	.LBB381_22
# %bb.21:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB381_22:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.LBB381_10:
.Ltmp1270:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.Lfunc_end381:
	.size	_RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception, .Lfunc_end381-_RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception
	.cfi_endproc
	.section	.gcc_except_table._RNvCsL6e0J8m5bd_7___rustc24___rust_foreign_exception,"a",@progbits
	.p2align	2, 0x0
GCC_except_table381:
.Lexception87:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end87-.Lcst_begin87
.Lcst_begin87:
	.uleb128 .Lfunc_begin87-.Lfunc_begin87  # >> Call Site 1 <<
	.uleb128 .Ltmp1268-.Lfunc_begin87       #   Call between .Lfunc_begin87 and .Ltmp1268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1268-.Lfunc_begin87       # >> Call Site 2 <<
	.uleb128 .Ltmp1269-.Ltmp1268            #   Call between .Ltmp1268 and .Ltmp1269
	.uleb128 .Ltmp1270-.Lfunc_begin87       #     jumps to .Ltmp1270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1265-.Lfunc_begin87       # >> Call Site 3 <<
	.uleb128 .Ltmp1266-.Ltmp1265            #   Call between .Ltmp1265 and .Ltmp1266
	.uleb128 .Ltmp1267-.Lfunc_begin87       #     jumps to .Ltmp1267
	.byte	0                               #   On action: cleanup
.Lcst_end87:
	.p2align	2, 0x0
                                        # -- End function
