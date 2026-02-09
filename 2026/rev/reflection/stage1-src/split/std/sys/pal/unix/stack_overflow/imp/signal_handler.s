	.section	.text._RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler
	.type	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler,@function
_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler: # @_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler
.Lfunc_begin82:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception82
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
	sub	rsp, 184
	.cfi_def_cfa_offset 240
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	ebx, edi
	mov	r15, qword ptr [rsi + 16]
	test	r15, r15
	je	.LBB358_57
# %bb.1:
	mov	ebp, 10000000
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	r14, rax
	.p2align	4
.LBB358_2:                              # =>This Inner Loop Header: Depth=1
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], r14
	je	.LBB358_31
# %bb.3:                                #   in Loop: Header=BB358_2 Depth=1
	cmp	rax, r14
	je	.LBB358_51
# %bb.4:                                #   in Loop: Header=BB358_2 Depth=1
	pause
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], r14
	je	.LBB358_31
# %bb.5:                                #   in Loop: Header=BB358_2 Depth=1
	cmp	rax, r14
	je	.LBB358_51
# %bb.6:                                #   in Loop: Header=BB358_2 Depth=1
	pause
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], r14
	je	.LBB358_31
# %bb.7:                                #   in Loop: Header=BB358_2 Depth=1
	cmp	rax, r14
	je	.LBB358_51
# %bb.8:                                #   in Loop: Header=BB358_2 Depth=1
	pause
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], r14
	je	.LBB358_31
# %bb.9:                                #   in Loop: Header=BB358_2 Depth=1
	cmp	rax, r14
	je	.LBB358_51
# %bb.10:                               #   in Loop: Header=BB358_2 Depth=1
	pause
	add	ebp, -4
	jne	.LBB358_2
# %bb.11:
	mov	r15d, 27
	lea	r12, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.83]
	mov	r13, qword ptr [rip + write@GOTPCREL]
	jmp	.LBB358_12
	.p2align	4
.LBB358_16:                             #   in Loop: Header=BB358_12 Depth=1
	movsxd	rax, dword ptr [r14]
	cmp	rax, 4
	jne	.LBB358_17
# %bb.20:                               #   in Loop: Header=BB358_12 Depth=1
	test	r15, r15
	je	.LBB358_57
.LBB358_12:                             # =>This Inner Loop Header: Depth=1
	mov	edi, 2
	mov	rsi, r12
	mov	rdx, r15
	call	r13
	cmp	rax, -1
	je	.LBB358_16
# %bb.13:                               #   in Loop: Header=BB358_12 Depth=1
	test	rax, rax
	je	.LBB358_21
# %bb.14:                               #   in Loop: Header=BB358_12 Depth=1
	mov	rcx, r15
	sub	rcx, rax
	jb	.LBB358_15
# %bb.19:                               #   in Loop: Header=BB358_12 Depth=1
	add	r12, rax
	mov	r15, rcx
	test	r15, r15
	jne	.LBB358_12
	jmp	.LBB358_57
.LBB358_31:
	mov	rax, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0]
	test	rax, rax
	je	.LBB358_56
# %bb.32:
	mov	rcx, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1]
.LBB358_33:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB358_34 Depth 2
	movzx	esi, word ptr [rax + 538]
	mov	edi, esi
	shl	edi, 3
	mov	rdx, -1
	.p2align	4
.LBB358_34:                             #   Parent Loop BB358_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	rdi, rdi
	je	.LBB358_35
# %bb.36:                               #   in Loop: Header=BB358_34 Depth=2
	cmp	r14, qword ptr [rax + 8*rdx + 16]
	seta	r8b
	sbb	r8b, 0
	inc	rdx
	add	rdi, -8
	cmp	r8b, 1
	je	.LBB358_34
# %bb.37:                               #   in Loop: Header=BB358_33 Depth=1
	movzx	esi, r8b
	test	esi, esi
	je	.LBB358_40
	jmp	.LBB358_38
	.p2align	4
.LBB358_35:                             #   in Loop: Header=BB358_33 Depth=1
	mov	rdx, rsi
.LBB358_38:                             #   in Loop: Header=BB358_33 Depth=1
	sub	rcx, 1
	jb	.LBB358_56
# %bb.39:                               #   in Loop: Header=BB358_33 Depth=1
	mov	rax, qword ptr [rax + 8*rdx + 544]
	jmp	.LBB358_33
.LBB358_40:
	lea	rcx, [rdx + 4*rdx]
	cmp	qword ptr [rax + 8*rcx + 112], r15
	ja	.LBB358_56
# %bb.41:
	cmp	qword ptr [rax + 8*rcx + 120], r15
	ja	.LBB358_42
.LBB358_56:
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], 0
.LBB358_57:
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
	mov	qword ptr [rsp + 176], 0
	lea	rsi, [rsp + 32]
	mov	edi, ebx
	xor	edx, edx
	call	qword ptr [rip + sigaction@GOTPCREL]
	add	rsp, 184
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
.LBB358_21:
	.cfi_def_cfa_offset 240
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.414]
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB358_57
	jmp	.LBB358_23
.LBB358_17:
	shl	rax, 32
	or	rax, 2
	mov	ecx, eax
	and	ecx, 3
	cmp	ecx, 1
	jne	.LBB358_57
.LBB358_23:
	lea	r14, [rax - 1]
	mov	r15, qword ptr [rax - 1]
	mov	r12, qword ptr [rax + 7]
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.LBB358_25
# %bb.24:
.Ltmp1190:
	mov	rdi, r15
	call	rax
.Ltmp1191:
.LBB358_25:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB358_27
# %bb.26:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB358_27:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB358_57
.LBB358_15:
.Ltmp1193:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.944]
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r15
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp1194:
# %bb.18:
.LBB358_42:
	lea	rcx, [rax + 8*rcx]
	add	rcx, 96
	mov	rax, qword ptr [rcx + 32]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.LBB358_44
# %bb.43:
	mov	ecx, 9
	lea	rax, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.134]
	jmp	.LBB358_45
.LBB358_44:
	mov	rcx, qword ptr [rcx + 8]
.LBB358_45:
	mov	qword ptr [rsp + 16], rax
	mov	qword ptr [rsp + 24], rcx
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXs1i_NtCsfQL5qMWGko6_4core3fmtReNtB6_7Display3fmtB8_]
	mov	qword ptr [rsp + 40], rax
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 48], rax
	lea	rax, [rip + _RNvXsd_NtNtNtCsfQL5qMWGko6_4core3fmt3num3impyNtB9_7Display3fmt]
	mov	qword ptr [rsp + 56], rax
.Ltmp1200:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.135]
	lea	rdi, [rsp + 7]
	lea	rdx, [rsp + 32]
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp1201:
# %bb.46:
	test	rax, rax
	je	.LBB358_48
# %bb.47:
.Ltmp1202:
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEBM_
.Ltmp1203:
.LBB358_48:
.Ltmp1204:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.136]
	lea	rdi, [rsp + 7]
	mov	edx, 93
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp1205:
# %bb.49:
.Ltmp1206:
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
.Ltmp1207:
	jmp	.LBB358_50
.LBB358_51:
.Ltmp1195:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.84]
	lea	rdi, [rsp + 7]
	mov	edx, 209
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp1196:
# %bb.52:
.Ltmp1197:
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
.Ltmp1198:
.LBB358_50:
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.LBB358_28:
.Ltmp1192:
	cmp	qword ptr [r12 + 8], 0
	je	.LBB358_30
# %bb.29:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB358_30:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.LBB358_53:
.Ltmp1208:
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], 0
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.LBB358_54:
.Ltmp1199:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking19panic_cannot_unwind
.Lfunc_end358:
	.size	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler, .Lfunc_end358-_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler
	.cfi_endproc
	.section	.gcc_except_table._RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler,"a",@progbits
	.p2align	2, 0x0
GCC_except_table358:
.Lexception82:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end82-.Lcst_begin82
.Lcst_begin82:
	.uleb128 .Lfunc_begin82-.Lfunc_begin82  # >> Call Site 1 <<
	.uleb128 .Ltmp1190-.Lfunc_begin82       #   Call between .Lfunc_begin82 and .Ltmp1190
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1190-.Lfunc_begin82       # >> Call Site 2 <<
	.uleb128 .Ltmp1191-.Ltmp1190            #   Call between .Ltmp1190 and .Ltmp1191
	.uleb128 .Ltmp1192-.Lfunc_begin82       #     jumps to .Ltmp1192
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1193-.Lfunc_begin82       # >> Call Site 3 <<
	.uleb128 .Ltmp1194-.Ltmp1193            #   Call between .Ltmp1193 and .Ltmp1194
	.uleb128 .Ltmp1199-.Lfunc_begin82       #     jumps to .Ltmp1199
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1200-.Lfunc_begin82       # >> Call Site 4 <<
	.uleb128 .Ltmp1207-.Ltmp1200            #   Call between .Ltmp1200 and .Ltmp1207
	.uleb128 .Ltmp1208-.Lfunc_begin82       #     jumps to .Ltmp1208
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1195-.Lfunc_begin82       # >> Call Site 5 <<
	.uleb128 .Ltmp1198-.Ltmp1195            #   Call between .Ltmp1195 and .Ltmp1198
	.uleb128 .Ltmp1199-.Lfunc_begin82       #     jumps to .Ltmp1199
	.byte	1                               #   On action: 1
.Lcst_end82:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase25:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
