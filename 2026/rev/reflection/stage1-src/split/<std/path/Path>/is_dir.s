	.section	.text._RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir
	.type	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir,@function
_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir: # @_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception21
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 568
	.cfi_def_cfa_offset 608
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	movabs	rax, 7454972945793770089
	mov	qword ptr [rsp + 190], rax
	movabs	rax, 7091318039310988591
	mov	qword ptr [rsp + 184], rax
	mov	byte ptr [rsp + 198], 0
	movq	xmm0, qword ptr [rsp + 184]     # xmm0 = mem[0],zero
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pxor	xmm1, xmm1
	pcmpeqb	xmm0, xmm1
	pcmpeqd	xmm2, xmm2
	pxor	xmm2, xmm0
	movq	xmm0, qword ptr [rsp + 192]     # xmm0 = mem[0],zero
	punpcklbw	xmm0, xmm0              # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	cmp	byte ptr [rsp + 196], 0
	setne	al
	pshufd	xmm0, xmm0, 68                  # xmm0 = xmm0[0,1,0,1]
	pcmpeqb	xmm0, xmm1
	pshufd	xmm1, xmm2, 68                  # xmm1 = xmm2[0,1,0,1]
	pandn	xmm0, xmm1
	punpckhqdq	xmm0, xmm2              # xmm0 = xmm0[1],xmm2[1]
	psllw	xmm0, 15
	packsswb	xmm0, xmm0
	pmovmskb	ecx, xmm0
	cmp	cl, -1
	sete	cl
	and	cl, al
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.79]
	cmp	cl, 1
	jne	.LBB152_8
# %bb.1:
	cmp	byte ptr [rsp + 197], 0
	je	.LBB152_8
# %bb.2:
	xor	ecx, ecx
	test	cl, cl
	jne	.LBB152_8
# %bb.3:
	mov	rdi, rsp
	lea	rdx, [rsp + 184]
	mov	esi, -100
	xor	ecx, ecx
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std3sys2fs4unix9try_statx
	mov	rax, qword ptr [rsp]
	cmp	rax, 3
	jne	.LBB152_6
# %bb.4:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 128], xmm0
	movdqa	xmmword ptr [rsp + 112], xmm0
	movdqa	xmmword ptr [rsp + 96], xmm0
	movdqa	xmmword ptr [rsp + 80], xmm0
	movdqa	xmmword ptr [rsp + 64], xmm0
	movdqa	xmmword ptr [rsp + 48], xmm0
	movdqa	xmmword ptr [rsp + 32], xmm0
	movdqa	xmmword ptr [rsp + 16], xmm0
	movdqa	xmmword ptr [rsp], xmm0
	lea	rdi, [rsp + 184]
	mov	rsi, rsp
	call	qword ptr [rip + stat64@GOTPCREL]
	cmp	eax, -1
	je	.LBB152_5
# %bb.21:
	mov	eax, dword ptr [rsp + 24]
	jmp	.LBB152_16
.LBB152_6:
	cmp	eax, 2
	jne	.LBB152_15
# %bb.7:
	mov	rax, qword ptr [rsp + 8]
.LBB152_8:
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB152_14
.LBB152_9:
	lea	rbx, [rax - 1]
	mov	r14, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB152_11
# %bb.10:
.Ltmp462:
	mov	rdi, r14
	call	rax
.Ltmp463:
.LBB152_11:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB152_13
# %bb.12:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB152_13:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB152_14
.LBB152_15:
	mov	eax, dword ptr [rsp + 56]
.LBB152_16:
	and	eax, 61440
	cmp	eax, 16384
	sete	al
	jmp	.LBB152_17
.LBB152_5:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	eax, dword ptr [rax]
	shl	rax, 32
	or	rax, 2
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	je	.LBB152_9
.LBB152_14:
	xor	eax, eax
.LBB152_17:
                                        # kill: def $al killed $al killed $eax
	add	rsp, 568
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
.LBB152_18:
	.cfi_def_cfa_offset 608
.Ltmp464:
	mov	r15, rax
	cmp	qword ptr [r12 + 8], 0
	je	.LBB152_20
# %bb.19:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB152_20:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
	mov	rdi, r15
	call	_Unwind_Resume@PLT
.Lfunc_end152:
	.size	_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir, .Lfunc_end152-_RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir
	.cfi_endproc
	.section	.gcc_except_table._RNvMs16_NtCs3bNtqN8jaZB_3std4pathNtB6_4Path6is_dir,"a",@progbits
	.p2align	2, 0x0
GCC_except_table152:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp462-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin21        #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end152-.Ltmp463         #   Call between .Ltmp463 and .Lfunc_end152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
