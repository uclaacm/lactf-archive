	.section	.text._RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_,"ax",@progbits
	.p2align	4                               # -- Begin function _RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_
	.type	_RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_,@function
_RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_: # @_RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_
.Lfunc_begin84:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception84
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	sub	rsp, 168
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rax, qword ptr [rdi]
	movzx	ecx, byte ptr [rax]
	mov	byte ptr [rax], 0
	cmp	cl, 1
	jne	.LBB366_61
# %bb.1:
	mov	byte ptr [rsp + 16], 0
	mov	eax, dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+56]
	test	eax, eax
	jne	.LBB366_62
# %bb.2:
	cmp	byte ptr [rsp + 16], 0
	jne	.LBB366_17
.LBB366_3:
	mov	rcx, qword ptr fs:[_RNvNtNtNtCs3bNtqN8jaZB_3std6thread7current2id2ID@TPOFF]
	test	rcx, rcx
	je	.LBB366_7
# %bb.4:
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT]
	cmp	rcx, rax
	jne	.LBB366_11
.LBB366_5:
	mov	edx, dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+12]
	cmp	edx, -1
	je	.LBB366_17
# %bb.6:
	inc	edx
	jmp	.LBB366_13
.LBB366_7:
	mov	rax, qword ptr [rip + _RNvNvMNtNtCs3bNtqN8jaZB_3std6thread2idNtB4_8ThreadId3new7COUNTER]
	.p2align	4
.LBB366_8:                              # =>This Inner Loop Header: Depth=1
	cmp	rax, -1
	je	.LBB366_60
# %bb.9:                                #   in Loop: Header=BB366_8 Depth=1
	lea	rcx, [rax + 1]
	lock		cmpxchg	qword ptr [rip + _RNvNvMNtNtCs3bNtqN8jaZB_3std6thread2idNtB4_8ThreadId3new7COUNTER], rcx
	jne	.LBB366_8
# %bb.10:
	mov	qword ptr fs:[_RNvNtNtNtCs3bNtqN8jaZB_3std6thread7current2id2ID@TPOFF], rcx
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT]
	cmp	rcx, rax
	je	.LBB366_5
.LBB366_11:
	mov	edx, 1
	xor	eax, eax
	lock		cmpxchg	dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+8], edx
	jne	.LBB366_17
# %bb.12:
	mov	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT], rcx
.LBB366_13:
	mov	dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+12], edx
	mov	qword ptr [rsp + 48], 0
	mov	qword ptr [rsp + 56], 1
	mov	qword ptr [rsp + 64], 0
	mov	byte ptr [rsp + 72], 0
	cmp	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+16], 0
	jne	.LBB366_68
# %bb.14:
	mov	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+16], -1
.Ltmp1218:
	lea	rdi, [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+24]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_
.Ltmp1219:
# %bb.15:
	movups	xmm0, xmmword ptr [rsp + 48]
	movups	xmm1, xmmword ptr [rsp + 64]
	movups	xmmword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+40], xmm1
	movups	xmmword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+24], xmm0
	inc	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+16]
	dec	dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+12]
	jne	.LBB366_17
# %bb.16:
	mov	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT], 0
	xor	eax, eax
	xchg	dword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+8], eax
	cmp	eax, 2
	je	.LBB366_74
.LBB366_17:
	mov	rbx, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp13MAIN_ALTSTACK.0]
	test	rbx, rbx
	je	.LBB366_19
# %bb.18:
	mov	edi, 51
	call	qword ptr [rip + getauxval@GOTPCREL]
	cmp	rax, 8193
	mov	r14d, 8192
	cmovae	r14, rax
	mov	r15, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow3imp9PAGE_SIZE.0]
	mov	qword ptr [rsp + 48], 0
	mov	dword ptr [rsp + 56], 2
	mov	qword ptr [rsp + 64], r14
	lea	rdi, [rsp + 48]
	xor	esi, esi
	call	qword ptr [rip + sigaltstack@GOTPCREL]
	sub	rbx, r15
	add	r14, r15
	mov	rdi, rbx
	mov	rsi, r14
	call	qword ptr [rip + munmap@GOTPCREL]
.LBB366_19:
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	r14, rax
	mov	ecx, 1
	xor	eax, eax
	lock		cmpxchg	dword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK], ecx
	jne	.LBB366_63
# %bb.20:
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	jne	.LBB366_64
.LBB366_21:
	xor	ebx, ebx
.LBB366_22:
	movzx	ebp, byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK+4]
	lea	rax, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK]
	xor	ecx, ecx
	test	bpl, bpl
	setne	cl
	mov	qword ptr [rsp + 128], rax
	mov	byte ptr [rsp + 136], bl
	mov	qword ptr [rsp + 120], rcx
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], r14
	je	.LBB366_26
# %bb.23:
	mov	r15, qword ptr [rip + pause@GOTPCREL]
	.p2align	4
.LBB366_24:                             # =>This Inner Loop Header: Depth=1
	cmp	rax, r14
	je	.LBB366_58
# %bb.25:                               #   in Loop: Header=BB366_24 Depth=1
	call	r15
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], r14
	jne	.LBB366_24
.LBB366_26:
	mov	rsi, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0]
	test	rsi, rsi
	je	.LBB366_54
# %bb.27:
	mov	rax, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1]
	lea	edx, [rax + 7]
	xor	edi, edi
	mov	rcx, rax
.LBB366_28:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB366_29 Depth 2
	movzx	r9d, word ptr [rsi + 538]
	mov	r10d, r9d
	shl	r10d, 3
	mov	r8, -1
	.p2align	4
.LBB366_29:                             #   Parent Loop BB366_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	r10, r10
	je	.LBB366_32
# %bb.30:                               #   in Loop: Header=BB366_29 Depth=2
	cmp	r14, qword ptr [rsi + 8*r8 + 16]
	seta	r11b
	sbb	r11b, 0
	inc	r8
	add	r10, -8
	cmp	r11b, 1
	je	.LBB366_29
# %bb.31:                               #   in Loop: Header=BB366_28 Depth=1
	movzx	r9d, r11b
	test	r9d, r9d
	jne	.LBB366_33
	jmp	.LBB366_35
	.p2align	4
.LBB366_32:                             #   in Loop: Header=BB366_28 Depth=1
	mov	r8, r9
.LBB366_33:                             #   in Loop: Header=BB366_28 Depth=1
	sub	rcx, 1
	jb	.LBB366_54
# %bb.34:                               #   in Loop: Header=BB366_28 Depth=1
	mov	rsi, qword ptr [rsi + 8*r8 + 544]
	inc	rdi
	add	dl, 7
	jmp	.LBB366_28
.LBB366_35:
	mov	byte ptr [rsp + 15], 0
	test	rcx, rcx
	je	.LBB366_47
# %bb.36:
	mov	rsi, qword ptr [rsi + 8*r8 + 544]
	mov	r8, rcx
	dec	r8
	je	.LBB366_43
# %bb.37:
	sub	rax, rdi
	add	rax, -2
	test	r8b, 7
	je	.LBB366_41
# %bb.38:
	movzx	edx, dl
	and	edx, 7
	neg	rdx
	mov	edi, 1
	.p2align	4
.LBB366_39:                             # =>This Inner Loop Header: Depth=1
	movzx	r8d, word ptr [rsi + 538]
	mov	rsi, qword ptr [rsi + 8*r8 + 544]
	lea	r8, [rdx + rdi]
	inc	r8
	inc	rdi
	cmp	r8, 1
	jne	.LBB366_39
# %bb.40:
	sub	rcx, rdi
	mov	r8, rcx
.LBB366_41:
	cmp	rax, 7
	jb	.LBB366_43
	.p2align	4
.LBB366_42:                             # =>This Inner Loop Header: Depth=1
	movzx	eax, word ptr [rsi + 538]
	mov	rax, qword ptr [rsi + 8*rax + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rax, qword ptr [rax + 8*rcx + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rax, qword ptr [rax + 8*rcx + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rax, qword ptr [rax + 8*rcx + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rax, qword ptr [rax + 8*rcx + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rax, qword ptr [rax + 8*rcx + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rax, qword ptr [rax + 8*rcx + 544]
	movzx	ecx, word ptr [rax + 538]
	mov	rsi, qword ptr [rax + 8*rcx + 544]
	add	r8, -8
	jne	.LBB366_42
.LBB366_43:
	movzx	eax, word ptr [rsi + 538]
	dec	rax
	mov	qword ptr [rsp + 144], rsi
	mov	qword ptr [rsp + 152], 0
	mov	qword ptr [rsp + 160], rax
.Ltmp1224:
	lea	rdi, [rsp + 48]
	lea	rsi, [rsp + 144]
	lea	rdx, [rsp + 15]
	call	_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_
.Ltmp1225:
# %bb.44:
	mov	rdx, qword ptr [rsp + 48]
	mov	rax, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rsp + 64]
	movups	xmm0, xmmword ptr [rsp + 72]
	movaps	xmmword ptr [rsp + 16], xmm0
	mov	rsi, qword ptr [rsp + 88]
	mov	qword ptr [rsp + 32], rsi
	mov	rsi, qword ptr [rsp + 96]
	mov	rdi, qword ptr [rsp + 112]
	movzx	r8d, word ptr [rsi + 538]
	cmp	rdi, r8
	jb	.LBB366_46
	.p2align	4
.LBB366_45:                             # =>This Inner Loop Header: Depth=1
	movzx	edi, word ptr [rsi + 536]
	mov	rsi, qword ptr [rsi]
	cmp	di, word ptr [rsi + 538]
	jae	.LBB366_45
.LBB366_46:
	lea	r8, [rdi + 4*rdi]
	mov	qword ptr [rsi + 8*rdi + 8], rdx
	mov	r14, qword ptr [rsi + 8*r8 + 96]
	mov	r15, qword ptr [rsi + 8*r8 + 104]
	mov	qword ptr [rsi + 8*r8 + 96], rax
	mov	qword ptr [rsi + 8*r8 + 104], rcx
	movaps	xmm0, xmmword ptr [rsp + 16]
	movups	xmmword ptr [rsi + 8*r8 + 112], xmm0
	mov	rax, qword ptr [rsp + 32]
	mov	qword ptr [rsi + 8*r8 + 128], rax
	dec	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.2]
	cmp	byte ptr [rsp + 15], 1
	je	.LBB366_49
	jmp	.LBB366_52
.LBB366_47:
	mov	qword ptr [rsp + 16], rsi
	mov	qword ptr [rsp + 24], 0
	mov	qword ptr [rsp + 32], r8
.Ltmp1226:
	lea	rdi, [rsp + 48]
	lea	rsi, [rsp + 16]
	lea	rdx, [rsp + 15]
	call	_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_
.Ltmp1227:
# %bb.48:
	mov	r14, qword ptr [rsp + 56]
	mov	r15, qword ptr [rsp + 64]
	dec	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.2]
	cmp	byte ptr [rsp + 15], 1
	jne	.LBB366_52
.LBB366_49:
	mov	rdi, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0]
	test	rdi, rdi
	je	.LBB366_70
# %bb.50:
	mov	rax, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1]
	test	rax, rax
	je	.LBB366_72
# %bb.51:
	mov	rcx, qword ptr [rdi + 544]
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0], rcx
	dec	rax
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1], rax
	mov	qword ptr [rcx], 0
	call	qword ptr [rip + free@GOTPCREL]
.LBB366_52:
	test	r14, r14
	sete	al
	test	r15, r15
	sete	cl
	or	cl, al
	jne	.LBB366_54
# %bb.53:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB366_54:
	movabs	rax, 9223372036854775807
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], 0
	test	bpl, bpl
	test	bl, bl
	jne	.LBB366_56
# %bb.55:
	mov	rcx, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	test	rcx, rax
	jne	.LBB366_66
.LBB366_56:
	xor	eax, eax
	xchg	dword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK], eax
	cmp	eax, 2
	je	.LBB366_65
.LBB366_57:
	add	rsp, 168
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB366_58:
	.cfi_def_cfa_offset 208
.Ltmp1221:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.531]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.533]
	mov	esi, 171
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp1222:
# %bb.59:
.LBB366_60:
	call	_RNvNvMNtNtCs3bNtqN8jaZB_3std6thread2idNtB4_8ThreadId3new9exhausted
.LBB366_61:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.87]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.LBB366_62:
	lea	rdi, [rsp + 16]
	call	_RINvMNtNtCs3bNtqN8jaZB_3std4sync9once_lockINtB3_8OnceLockINtNtB5_14reentrant_lock13ReentrantLockINtNtCsfQL5qMWGko6_4core4cell7RefCellINtNtNtNtB7_2io8buffered10linewriter10LineWriterNtNtB2e_5stdio9StdoutRawEEEE10initializeNCINvB2_11get_or_initNCNvB2V_7cleanup0E0zEB7_
	cmp	byte ptr [rsp + 16], 0
	je	.LBB366_3
	jmp	.LBB366_17
.LBB366_63:
	lea	rdi, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	je	.LBB366_21
.LBB366_64:
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	mov	ebx, eax
	xor	bl, 1
	jmp	.LBB366_22
.LBB366_65:
	lea	rsi, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK]
	mov	edi, 202
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	jmp	.LBB366_57
.LBB366_66:
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	test	al, al
	jne	.LBB366_56
# %bb.67:
	mov	byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK+4], 1
	jmp	.LBB366_56
.LBB366_68:
.Ltmp1212:
	call	_RNvNtCsfQL5qMWGko6_4core4cell22panic_already_borrowed
.Ltmp1213:
# %bb.69:
.LBB366_70:
.Ltmp1231:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.332]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp1232:
# %bb.71:
.LBB366_72:
.Ltmp1229:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.39]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.40]
	mov	esi, 33
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp1230:
# %bb.73:
.LBB366_74:
	lea	rsi, [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+8]
	mov	edi, 202
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	jmp	.LBB366_17
.LBB366_75:
.Ltmp1220:
	mov	rbx, rax
	movups	xmm0, xmmword ptr [rsp + 48]
	movups	xmm1, xmmword ptr [rsp + 64]
	movups	xmmword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+40], xmm1
	movups	xmmword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+24], xmm0
	inc	qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std2io5stdio6STDOUT+16]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB366_76:
.Ltmp1228:
	mov	rbx, rax
	jmp	.LBB366_81
.LBB366_77:
.Ltmp1214:
	mov	rbx, rax
.Ltmp1215:
	lea	rdi, [rsp + 48]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtNtCs3bNtqN8jaZB_3std2io8buffered10linewriter10LineWriterNtNtBN_5stdio9StdoutRawEEBP_
.Ltmp1216:
# %bb.78:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtNtCs3bNtqN8jaZB_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtBN_2io8buffered10linewriter10LineWriterNtNtB2c_5stdio9StdoutRawEEEEBN_
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB366_79:
.Ltmp1217:
	call	_RNvNtCsfQL5qMWGko6_4core9panicking16panic_in_cleanup
.LBB366_80:
.Ltmp1233:
	mov	rbx, rax
	test	r14, r14
	sete	al
	test	r15, r15
	sete	cl
	or	cl, al
	jne	.LBB366_81
# %bb.82:
	mov	rdi, r14
	call	qword ptr [rip + free@GOTPCREL]
.LBB366_81:
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], 0
	lea	rdi, [rsp + 120]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB366_83:
.Ltmp1223:
	mov	rbx, rax
	lea	rdi, [rsp + 120]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end366:
	.size	_RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_, .Lfunc_end366-_RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_
	.cfi_endproc
	.section	.gcc_except_table._RNCINvMs0_NtNtCs3bNtqN8jaZB_3std4sync4onceNtB8_4Once9call_onceNCNvNtBc_2rt7cleanup0E0Bc_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table366:
.Lexception84:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end84-.Lcst_begin84
.Lcst_begin84:
	.uleb128 .Ltmp1218-.Lfunc_begin84       # >> Call Site 1 <<
	.uleb128 .Ltmp1219-.Ltmp1218            #   Call between .Ltmp1218 and .Ltmp1219
	.uleb128 .Ltmp1220-.Lfunc_begin84       #     jumps to .Ltmp1220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1219-.Lfunc_begin84       # >> Call Site 2 <<
	.uleb128 .Ltmp1224-.Ltmp1219            #   Call between .Ltmp1219 and .Ltmp1224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1224-.Lfunc_begin84       # >> Call Site 3 <<
	.uleb128 .Ltmp1227-.Ltmp1224            #   Call between .Ltmp1224 and .Ltmp1227
	.uleb128 .Ltmp1228-.Lfunc_begin84       #     jumps to .Ltmp1228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1221-.Lfunc_begin84       # >> Call Site 4 <<
	.uleb128 .Ltmp1222-.Ltmp1221            #   Call between .Ltmp1221 and .Ltmp1222
	.uleb128 .Ltmp1223-.Lfunc_begin84       #     jumps to .Ltmp1223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1222-.Lfunc_begin84       # >> Call Site 5 <<
	.uleb128 .Ltmp1212-.Ltmp1222            #   Call between .Ltmp1222 and .Ltmp1212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1212-.Lfunc_begin84       # >> Call Site 6 <<
	.uleb128 .Ltmp1213-.Ltmp1212            #   Call between .Ltmp1212 and .Ltmp1213
	.uleb128 .Ltmp1214-.Lfunc_begin84       #     jumps to .Ltmp1214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1231-.Lfunc_begin84       # >> Call Site 7 <<
	.uleb128 .Ltmp1230-.Ltmp1231            #   Call between .Ltmp1231 and .Ltmp1230
	.uleb128 .Ltmp1233-.Lfunc_begin84       #     jumps to .Ltmp1233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1230-.Lfunc_begin84       # >> Call Site 8 <<
	.uleb128 .Ltmp1215-.Ltmp1230            #   Call between .Ltmp1230 and .Ltmp1215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1215-.Lfunc_begin84       # >> Call Site 9 <<
	.uleb128 .Ltmp1216-.Ltmp1215            #   Call between .Ltmp1215 and .Ltmp1216
	.uleb128 .Ltmp1217-.Lfunc_begin84       #     jumps to .Ltmp1217
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1216-.Lfunc_begin84       # >> Call Site 10 <<
	.uleb128 .Lfunc_end366-.Ltmp1216        #   Call between .Ltmp1216 and .Lfunc_end366
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end84:
	.byte	127                             # >> Action Record 1 <<
                                        #   Filter TypeInfo -1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
.Lttbase26:
                                        # >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        # -- End function
