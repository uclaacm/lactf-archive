	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin79:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception79
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
	mov	rbx, rsi
	mov	rcx, qword ptr fs:[_RNvNtNtNtCs3bNtqN8jaZB_3std6thread7current2id2ID@TPOFF]
	test	rcx, rcx
	jne	.LBB353_5
# %bb.1:
	mov	rax, qword ptr [rip + _RNvNvMNtNtCs3bNtqN8jaZB_3std6thread2idNtB4_8ThreadId3new7COUNTER]
	.p2align	4
.LBB353_2:                              # =>This Inner Loop Header: Depth=1
	cmp	rax, -1
	je	.LBB353_8
# %bb.3:                                #   in Loop: Header=BB353_2 Depth=1
	lea	rcx, [rax + 1]
	lock		cmpxchg	qword ptr [rip + _RNvNvMNtNtCs3bNtqN8jaZB_3std6thread2idNtB4_8ThreadId3new7COUNTER], rcx
	jne	.LBB353_2
# %bb.4:
	mov	qword ptr fs:[_RNvNtNtNtCs3bNtqN8jaZB_3std6thread7current2id2ID@TPOFF], rcx
.LBB353_5:
	mov	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std6thread11main_thread4MAIN.0], rcx
	mov	qword ptr [rsp + 32], 0
	movaps	xmm0, xmmword ptr [rip + .LCPI353_0] # xmm0 = [1,0,2,0]
	movups	xmmword ptr [rsp + 40], xmm0
	lea	r14, [rsp + 32]
	mov	r15, qword ptr [rip + poll@GOTPCREL]
	mov	r12, qword ptr [rip + __errno_location@GOTPCREL]
	.p2align	4
.LBB353_6:                              # =>This Inner Loop Header: Depth=1
	mov	esi, 3
	mov	rdi, r14
	xor	edx, edx
	call	r15
	cmp	eax, -1
	jne	.LBB353_7
# %bb.10:                               #   in Loop: Header=BB353_6 Depth=1
	call	r12
	mov	ecx, dword ptr [rax]
	cmp	ecx, 4
	je	.LBB353_6
# %bb.11:
	cmp	ecx, 22
	ja	.LBB353_84
# %bb.12:
	mov	r14, rax
	mov	eax, 4200448
	bt	eax, ecx
	jae	.LBB353_84
# %bb.13:
	xor	edi, edi
	mov	esi, 1
	xor	eax, eax
	call	qword ptr [rip + fcntl@GOTPCREL]
	mov	ebp, -1
	cmp	eax, -1
	jne	.LBB353_16
# %bb.14:
	cmp	dword ptr [r14], 9
	jne	.LBB353_16
# %bb.15:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.140]
	mov	esi, 2
	xor	edx, edx
	xor	eax, eax
	call	qword ptr [rip + open64@GOTPCREL]
	mov	ebp, eax
	cmp	eax, -1
	je	.LBB353_84
.LBB353_16:
	mov	edi, 1
	mov	esi, 1
	xor	eax, eax
	call	qword ptr [rip + fcntl@GOTPCREL]
	cmp	eax, -1
	jne	.LBB353_21
# %bb.17:
	cmp	dword ptr [r14], 9
	jne	.LBB353_21
# %bb.18:
	cmp	ebp, -1
	je	.LBB353_20
# %bb.19:
	mov	edi, ebp
	call	qword ptr [rip + dup@GOTPCREL]
	cmp	eax, -1
	jne	.LBB353_21
.LBB353_20:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.140]
	mov	esi, 2
	xor	edx, edx
	xor	eax, eax
	call	qword ptr [rip + open64@GOTPCREL]
	mov	ebp, eax
	cmp	eax, -1
	je	.LBB353_84
.LBB353_21:
	mov	edi, 2
	mov	esi, 1
	xor	eax, eax
	call	qword ptr [rip + fcntl@GOTPCREL]
	cmp	eax, -1
	jne	.LBB353_26
# %bb.22:
	cmp	dword ptr [r14], 9
	jne	.LBB353_26
# %bb.23:
	cmp	ebp, -1
	je	.LBB353_25
# %bb.24:
	mov	edi, ebp
	call	qword ptr [rip + dup@GOTPCREL]
	cmp	eax, -1
	jne	.LBB353_26
.LBB353_25:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.140]
	mov	esi, 2
	xor	edx, edx
	xor	eax, eax
	call	qword ptr [rip + open64@GOTPCREL]
	cmp	eax, -1
	jne	.LBB353_26
.LBB353_84:
	call	qword ptr [rip + abort@GOTPCREL]
.LBB353_7:
	mov	ebp, -1
	lea	r14, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.140]
	mov	r15, qword ptr [rip + open64@GOTPCREL]
	mov	r12, qword ptr [rip + dup@GOTPCREL]
	xor	r13d, r13d
	add	r13, 8
	cmp	r13, 32
	jne	.LBB353_31
	jmp	.LBB353_26
	.p2align	4
.LBB353_32:                             #   in Loop: Header=BB353_31 Depth=1
	add	r13, 8
	cmp	r13, 32
	je	.LBB353_26
.LBB353_31:                             # =>This Inner Loop Header: Depth=1
	test	byte ptr [rsp + r13 + 30], 32
	je	.LBB353_32
# %bb.33:                               #   in Loop: Header=BB353_31 Depth=1
	cmp	ebp, -1
	je	.LBB353_35
# %bb.34:                               #   in Loop: Header=BB353_31 Depth=1
	mov	edi, ebp
	call	r12
	cmp	eax, -1
	jne	.LBB353_32
.LBB353_35:                             #   in Loop: Header=BB353_31 Depth=1
	mov	rdi, r14
	mov	esi, 2
	xor	edx, edx
	xor	eax, eax
	call	r15
	mov	ebp, eax
	cmp	eax, -1
	je	.LBB353_84
# %bb.36:                               #   in Loop: Header=BB353_31 Depth=1
	add	r13, 8
	cmp	r13, 32
	jne	.LBB353_31
.LBB353_26:
	mov	esi, 1
	mov	edi, 13
	call	qword ptr [rip + signal@GOTPCREL]
	cmp	rax, -1
	je	.LBB353_27
# %bb.37:
	mov	edi, 30
	call	qword ptr [rip + sysconf@GOTPCREL]
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp9PAGE_SIZE.0], rax
	mov	r13, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp9PAGE_SIZE.0]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 64], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	mov	qword ptr [rsp + 80], 0
	call	qword ptr [rip + pthread_self@GOTPCREL]
	lea	rsi, [rsp + 32]
	mov	rdi, rax
	call	qword ptr [rip + pthread_getattr_np@GOTPCREL]
	mov	ebp, eax
	test	eax, eax
	sete	r12b
	jne	.LBB353_47
# %bb.38:
	mov	qword ptr [rsp + 24], 0
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 32]
	lea	rsi, [rsp + 24]
	lea	rdx, [rsp + 8]
	call	qword ptr [rip + pthread_attr_getstack@GOTPCREL]
	mov	dword ptr [rsp + 16], eax
	test	eax, eax
	jne	.LBB353_39
# %bb.40:
	mov	r14, qword ptr [rsp + 24]
	lea	rdi, [rsp + 32]
	call	qword ptr [rip + pthread_attr_destroy@GOTPCREL]
	mov	dword ptr [rsp + 20], eax
	test	eax, eax
	jne	.LBB353_41
# %bb.44:
	test	r13, r13
	jne	.LBB353_48
# %bb.45:
.Ltmp1135:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.542]
	call	_RNvNtNtCsfQL5qMWGko6_4core9panicking11panic_const23panic_const_rem_by_zero
.Ltmp1136:
# %bb.46:
.LBB353_47:
                                        # implicit-def: $r14
                                        # implicit-def: $r15
	jmp	.LBB353_52
.LBB353_48:
	mov	rax, r14
	or	rax, r13
	shr	rax, 32
	jne	.LBB353_50
# %bb.49:
	mov	eax, r14d
	xor	edx, edx
	div	r13d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB353_51
.LBB353_50:
	mov	rax, r14
	xor	edx, edx
	div	r13
.LBB353_51:
	mov	rax, r13
	sub	rax, rdx
	test	rdx, rdx
	cmove	rax, rdx
	add	r14, rax
	mov	r15, r14
	sub	r15, r13
.LBB353_52:
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
	lea	rdx, [rsp + 32]
	mov	edi, 11
	xor	esi, esi
	call	qword ptr [rip + sigaction@GOTPCREL]
	cmp	qword ptr [rsp + 32], 0
	jne	.LBB353_59
# %bb.53:
	movzx	eax, byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13NEED_ALTSTACK.0]
	test	al, al
	jne	.LBB353_58
# %bb.54:
	mov	byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13NEED_ALTSTACK.0], 1
.Ltmp1117:
	call	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler
.Ltmp1118:
# %bb.55:
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13MAIN_ALTSTACK.0], rax
	test	ebp, ebp
	jne	.LBB353_57
# %bb.56:
.Ltmp1119:
	mov	rdi, r15
	mov	rsi, r14
	call	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info
.Ltmp1120:
.LBB353_57:
	xor	r12d, r12d
.LBB353_58:
	mov	dword ptr [rsp + 168], 134217732
	lea	rax, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler]
	mov	qword ptr [rsp + 32], rax
	lea	rsi, [rsp + 32]
	mov	edi, 11
	xor	edx, edx
	call	qword ptr [rip + sigaction@GOTPCREL]
.LBB353_59:
	lea	rdx, [rsp + 32]
	mov	edi, 7
	xor	esi, esi
	call	qword ptr [rip + sigaction@GOTPCREL]
	cmp	qword ptr [rsp + 32], 0
	jne	.LBB353_65
# %bb.60:
	movzx	eax, byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13NEED_ALTSTACK.0]
	test	al, al
	jne	.LBB353_64
# %bb.61:
	mov	byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13NEED_ALTSTACK.0], 1
.Ltmp1121:
	call	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp12make_handler
.Ltmp1122:
# %bb.62:
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13MAIN_ALTSTACK.0], rax
	test	r12b, r12b
	je	.LBB353_64
# %bb.63:
.Ltmp1123:
	mov	rdi, r15
	mov	rsi, r14
	call	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info
.Ltmp1124:
.LBB353_64:
	mov	dword ptr [rsp + 168], 134217732
	lea	rax, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp14signal_handler]
	mov	qword ptr [rsp + 32], rax
	lea	rsi, [rsp + 32]
	mov	edi, 7
	xor	edx, edx
	call	qword ptr [rip + sigaction@GOTPCREL]
.LBB353_65:
	mov	qword ptr [rip + _RNvNtNtNtNtCs3bNtqN8jaZB_3std3sys4args4unix3imp4ARGV.0], rbx
.Ltmp1125:
	call	_RINvNtNtCs3bNtqN8jaZB_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8IiOmDRNe1P_10reflection
.Ltmp1126:
# %bb.79:
.LBB353_8:
.Ltmp1141:
	call	_RNvNvMNtNtCs3bNtqN8jaZB_3std6thread2idNtB4_8ThreadId3new9exhausted
.Ltmp1142:
# %bb.9:
.LBB353_27:
.Ltmp1137:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.550]
	lea	rdi, [rsp + 32]
	mov	edx, 195
	call	_RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
.Ltmp1138:
# %bb.28:
.Ltmp1139:
	mov	rdi, rax
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs3bNtqN8jaZB_3std2io5error5ErrorEEB19_
.Ltmp1140:
# %bb.29:
	call	_RNvNtCs3bNtqN8jaZB_3std7process5abort
.LBB353_39:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.541]
	lea	rdi, [rsp + 16]
	jmp	.LBB353_42
.LBB353_41:
	lea	rsi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.540]
	lea	rdi, [rsp + 20]
.LBB353_42:
.Ltmp1115:
	call	_RINvNtCsfQL5qMWGko6_4core9panicking13assert_failedllECs3bNtqN8jaZB_3std
.Ltmp1116:
# %bb.43:
.LBB353_66:
.Ltmp1127:
	mov	rdi, rax
	call	_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup
	lock		dec	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	mov	rbx, rax
	dec	qword ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF]
	mov	r14, rdx
	mov	byte ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF+8], 0
	mov	rax, qword ptr [rdx]
	test	rax, rax
	je	.LBB353_68
# %bb.67:
.Ltmp1128:
	mov	rdi, rbx
	call	rax
.Ltmp1129:
.LBB353_68:
	cmp	qword ptr [r14 + 8], 0
	je	.LBB353_70
# %bb.69:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB353_70:
	mov	eax, dword ptr [rip + _RNvNvNtCs3bNtqN8jaZB_3std2rt7cleanup7CLEANUP]
	test	eax, eax
	jne	.LBB353_71
.LBB353_72:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	rcx, rax
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNvNtNtCs3bNtqN8jaZB_3std3sys10exit_guard18unique_thread_exit17EXITING_THREAD_ID], rcx
	jne	.LBB353_73
# %bb.83:
	mov	eax, 101
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
.LBB353_73:
	.cfi_def_cfa_offset 240
	cmp	rax, rcx
	je	.LBB353_80
# %bb.74:
	mov	rbx, qword ptr [rip + pause@GOTPCREL]
	.p2align	4
.LBB353_75:                             # =>This Inner Loop Header: Depth=1
	call	rbx
	jmp	.LBB353_75
.LBB353_71:
	mov	byte ptr [rsp + 8], 1
	lea	rax, [rsp + 8]
	mov	qword ptr [rsp + 32], rax
.Ltmp1133:
	lea	rdi, [rip + _RNvNvNtCs3bNtqN8jaZB_3std2rt7cleanup7CLEANUP]
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.10]
	lea	r8, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.382]
	lea	rdx, [rsp + 32]
	xor	esi, esi
	call	_RNvMs0_NtNtNtNtCs3bNtqN8jaZB_3std3sys4sync4once5futexNtB5_4Once4call
.Ltmp1134:
	jmp	.LBB353_72
.LBB353_80:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.415]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking14panic_nounwind
.LBB353_76:
.Ltmp1130:
	mov	r15, rax
	cmp	qword ptr [r14 + 8], 0
	je	.LBB353_78
# %bb.77:
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB353_78:
	mov	rdi, r15
	call	_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup
	lock		dec	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	dec	qword ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF]
	mov	byte ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF+8], 0
.Ltmp1131:
	call	_RNCNCNCNvNtCs3bNtqN8jaZB_3std2rt19lang_start_internal00s_0B9_
.Ltmp1132:
# %bb.81:
.LBB353_82:
.Ltmp1143:
	mov	rdi, rax
	call	_RNvCsL6e0J8m5bd_7___rustc20___rust_panic_cleanup
	lock		dec	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	dec	qword ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF]
	mov	byte ptr fs:[_RNvNCNKNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17LOCAL_PANIC_COUNT0s_023___RUST_STD_INTERNAL_VAL@TPOFF+8], 0
	call	_RINvNtCs3bNtqN8jaZB_3std2rt15handle_rt_paniciEB4_
.Lfunc_end353:
	.size	main, .Lfunc_end353-main
	.cfi_endproc
	.section	.gcc_except_table.main,"a",@progbits
	.p2align	2, 0x0
GCC_except_table353:
.Lexception79:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end79-.Lcst_begin79
.Lcst_begin79:
	.uleb128 .Lfunc_begin79-.Lfunc_begin79  # >> Call Site 1 <<
	.uleb128 .Ltmp1135-.Lfunc_begin79       #   Call between .Lfunc_begin79 and .Ltmp1135
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1135-.Lfunc_begin79       # >> Call Site 2 <<
	.uleb128 .Ltmp1124-.Ltmp1135            #   Call between .Ltmp1135 and .Ltmp1124
	.uleb128 .Ltmp1143-.Lfunc_begin79       #     jumps to .Ltmp1143
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp1125-.Lfunc_begin79       # >> Call Site 3 <<
	.uleb128 .Ltmp1126-.Ltmp1125            #   Call between .Ltmp1125 and .Ltmp1126
	.uleb128 .Ltmp1127-.Lfunc_begin79       #     jumps to .Ltmp1127
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp1141-.Lfunc_begin79       # >> Call Site 4 <<
	.uleb128 .Ltmp1116-.Ltmp1141            #   Call between .Ltmp1141 and .Ltmp1116
	.uleb128 .Ltmp1143-.Lfunc_begin79       #     jumps to .Ltmp1143
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp1128-.Lfunc_begin79       # >> Call Site 5 <<
	.uleb128 .Ltmp1129-.Ltmp1128            #   Call between .Ltmp1128 and .Ltmp1129
	.uleb128 .Ltmp1130-.Lfunc_begin79       #     jumps to .Ltmp1130
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp1129-.Lfunc_begin79       # >> Call Site 6 <<
	.uleb128 .Ltmp1133-.Ltmp1129            #   Call between .Ltmp1129 and .Ltmp1133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1133-.Lfunc_begin79       # >> Call Site 7 <<
	.uleb128 .Ltmp1132-.Ltmp1133            #   Call between .Ltmp1133 and .Ltmp1132
	.uleb128 .Ltmp1143-.Lfunc_begin79       #     jumps to .Ltmp1143
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp1132-.Lfunc_begin79       # >> Call Site 8 <<
	.uleb128 .Lfunc_end353-.Ltmp1132        #   Call between .Ltmp1132 and .Lfunc_end353
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end79:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.byte	1                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
                                        # -- End function
