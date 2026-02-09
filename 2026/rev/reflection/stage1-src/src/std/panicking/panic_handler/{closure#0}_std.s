	.section	.text._RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_
	.type	_RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_,@function
_RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_: # @_RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	sub	rsp, 32
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -16
	mov	rcx, qword ptr [rdi]
	mov	rax, qword ptr [rcx + 8]
	test	al, 1
	jne	.LBB7_6
# BEGIN STAGE1
	.cfi_escape DW_CFA_expression, DW_REG_R8, uleb128(4), DW_OP_GNU_encoded_addr, DW_EH_PE_funcrel | DW_EH_PE_udata2, data2(36)
# END STAGE1
# %bb.1:
	mov	qword ptr [rsp + 24], rdi
	movabs	rax, -9223372036854775808
	mov	qword ptr [rsp], rax
	mov	rdx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 16]
	movzx	ecx, byte ptr [rax + 16]
	movzx	r8d, byte ptr [rax + 17]
.Ltmp6:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.127]
	mov	rdi, rsp
	call	_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook
.Ltmp7:
# %bb.5:
.LBB7_6:
	mov	rcx, qword ptr [rcx]
	shr	rax
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rdx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 16]
	movzx	ecx, byte ptr [rax + 16]
	movzx	r8d, byte ptr [rax + 17]
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.126]
	mov	rdi, rsp
	call	_RNvNtCs3bNtqN8jaZB_3std9panicking15panic_with_hook
.LBB7_2:
.Ltmp8:
	mov	rcx, qword ptr [rsp]
	shl	rcx
	test	rcx, rcx
	jne	.LBB7_3
# %bb.4:
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LBB7_3:
	mov	rdi, qword ptr [rsp + 8]
	mov	rbx, rax
	call	qword ptr [rip + free@GOTPCREL]
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_, .Lfunc_end7-_RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_
	.cfi_endproc
	.section	.gcc_except_table._RNCNvNtCs3bNtqN8jaZB_3std9panicking13panic_handler0B5_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin2           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
