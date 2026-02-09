	.section	.text._RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info
	.type	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info,@function
_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info: # @_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info
.Lfunc_begin81:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception81
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
	sub	rsp, 232
	.cfi_def_cfa_offset 288
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rsi
	mov	rbx, rdi
	cmp	qword ptr [rip + gettid@GOTPCREL], 0
	je	.LBB357_2
# %bb.1:
	call	qword ptr [rip + gettid@GOTPCREL]
	mov	r15d, eax
	mov	rcx, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std6thread11main_thread4MAIN.0]
	xor	eax, eax
	test	rcx, rcx
	jne	.LBB357_3
	jmp	.LBB357_6
.LBB357_2:
	mov	edi, 186
	xor	eax, eax
	call	qword ptr [rip + syscall@GOTPCREL]
	mov	r15, rax
	mov	rcx, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std6thread11main_thread4MAIN.0]
	xor	eax, eax
	test	rcx, rcx
	je	.LBB357_6
.LBB357_3:
	cmp	qword ptr fs:[_RNvNtNtNtCs3bNtqN8jaZB_3std6thread7current2id2ID@TPOFF], rcx
	jne	.LBB357_6
# %bb.4:
	mov	edi, 4
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB357_123
# %bb.5:
	mov	dword ptr [rax], 1852399981
.LBB357_6:
	mov	qword ptr [rsp + 24], rax       # 8-byte Spill
	call	qword ptr [rip + __errno_location@GOTPCREL]
	mov	rbp, rax
	mov	ecx, 1
	xor	eax, eax
	lock		cmpxchg	dword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK], ecx
	jne	.LBB357_96
.LBB357_7:
	mov	rax, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	shl	rax
	test	rax, rax
	mov	qword ptr [rsp + 16], rbx       # 8-byte Spill
	jne	.LBB357_97
# %bb.8:
	xor	r13d, r13d
.LBB357_9:
	movzx	r12d, byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK+4]
	lea	rax, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK]
	xor	ecx, ecx
	test	r12b, r12b
	setne	cl
	mov	qword ptr [rsp + 192], rax
	mov	byte ptr [rsp + 200], r13b
	mov	qword ptr [rsp + 184], rcx
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], rbp
	je	.LBB357_13
# %bb.10:
	mov	rbx, qword ptr [rip + pause@GOTPCREL]
	.p2align	4
.LBB357_11:                             # =>This Inner Loop Header: Depth=1
	cmp	rax, rbp
	je	.LBB357_41
# %bb.12:                               #   in Loop: Header=BB357_11 Depth=1
	call	rbx
	xor	eax, eax
	lock		cmpxchg	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], rbp
	jne	.LBB357_11
.LBB357_13:
	mov	rbx, r14
	movsxd	rsi, r15d
	mov	r14, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0]
	test	r14, r14
	je	.LBB357_25
# %bb.14:
	mov	byte ptr [rsp + 15], r12b       # 1-byte Spill
	mov	dword ptr [rsp + 52], r13d      # 4-byte Spill
	mov	rax, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1]
.LBB357_15:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB357_16 Depth 2
	lea	r13, [r14 + 8]
	movzx	r15d, word ptr [r14 + 538]
	mov	ecx, r15d
	shl	ecx, 3
	mov	r12, -1
	.p2align	4
.LBB357_16:                             #   Parent Loop BB357_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	test	rcx, rcx
	je	.LBB357_19
# %bb.17:                               #   in Loop: Header=BB357_16 Depth=2
	cmp	rbp, qword ptr [r13 + 8*r12 + 8]
	seta	dl
	sbb	dl, 0
	inc	r12
	add	rcx, -8
	cmp	dl, 1
	je	.LBB357_16
# %bb.18:                               #   in Loop: Header=BB357_15 Depth=1
	movzx	ecx, dl
	test	ecx, ecx
	jne	.LBB357_20
	jmp	.LBB357_22
	.p2align	4
.LBB357_19:                             #   in Loop: Header=BB357_15 Depth=1
	mov	r12, r15
.LBB357_20:                             #   in Loop: Header=BB357_15 Depth=1
	sub	rax, 1
	jb	.LBB357_32
# %bb.21:                               #   in Loop: Header=BB357_15 Depth=1
	mov	r14, qword ptr [r14 + 8*r12 + 544]
	jmp	.LBB357_15
.LBB357_22:
	lea	rcx, [r12 + 4*r12]
	mov	rdi, qword ptr [r14 + 8*rcx + 96]
	mov	rax, qword ptr [r14 + 8*rcx + 104]
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [r14 + 8*rcx + 96], rdx
	mov	qword ptr [r14 + 8*rcx + 104], 4
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [r14 + 8*rcx + 112], rdx
	mov	qword ptr [r14 + 8*rcx + 120], rbx
	mov	qword ptr [r14 + 8*rcx + 128], rsi
	test	rdi, rdi
	mov	r13d, dword ptr [rsp + 52]      # 4-byte Reload
	movzx	r12d, byte ptr [rsp + 15]       # 1-byte Folded Reload
	je	.LBB357_28
# %bb.23:
	test	rax, rax
	je	.LBB357_28
# %bb.24:
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB357_28
.LBB357_25:
	mov	r14, rsi
	mov	edi, 544
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB357_101
# %bb.26:
	mov	qword ptr [rax], 0
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0], rax
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1], 0
	mov	word ptr [rax + 538], 1
	mov	qword ptr [rax + 8], rbp
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [rax + 96], rcx
	mov	qword ptr [rax + 104], 4
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rax + 112], rcx
	mov	qword ptr [rax + 120], rbx
	mov	qword ptr [rax + 128], r14
.LBB357_27:
	inc	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.2]
.LBB357_28:
	movabs	rax, 9223372036854775807
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], 0
	test	r12b, r12b
	test	r13b, r13b
	jne	.LBB357_30
# %bb.29:
	mov	rcx, qword ptr [rip + _RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count18GLOBAL_PANIC_COUNT]
	test	rcx, rax
	jne	.LBB357_99
.LBB357_30:
	xor	eax, eax
	xchg	dword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK], eax
	cmp	eax, 2
	je	.LBB357_98
# %bb.31:
	add	rsp, 232
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
.LBB357_32:
	.cfi_def_cfa_offset 288
	cmp	r15w, 10
	jbe	.LBB357_35
# %bb.33:
	cmp	r12, 5
	mov	qword ptr [rsp + 72], rsi       # 8-byte Spill
	jae	.LBB357_38
# %bb.34:
	mov	eax, 4
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	dword ptr [rsp + 32], 0         # 4-byte Folded Spill
	jmp	.LBB357_45
.LBB357_35:
	cmp	r15, r12
	jbe	.LBB357_37
# %bb.36:
	mov	qword ptr [rsp + 72], rsi       # 8-byte Spill
	lea	rsi, [8*r12]
	add	rsi, r13
	lea	rdi, [8*r12 + 8]
	add	rdi, r13
	mov	r13d, r15d
	sub	r13d, r12d
	shl	r13d, 3
	mov	rdx, r13
	call	qword ptr [rip + memmove@GOTPCREL]
	lea	rax, [r12 + 4*r12]
	lea	rsi, [r14 + 8*rax]
	add	rsi, 96
	lea	rdi, [r14 + 8*rax]
	add	rdi, 136
	lea	rdx, [4*r13]
	add	rdx, r13
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
.LBB357_37:
	mov	qword ptr [r14 + 8*r12 + 8], rbp
	lea	eax, [r15 + 1]
	lea	rcx, [r12 + 4*r12]
	mov	rdx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [r14 + 8*rcx + 96], rdx
	mov	qword ptr [r14 + 8*rcx + 104], 4
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [r14 + 8*rcx + 112], rdx
	mov	qword ptr [r14 + 8*rcx + 120], rbx
	mov	qword ptr [r14 + 8*rcx + 128], rsi
	mov	word ptr [r14 + 538], ax
	inc	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.2]
	mov	r13d, dword ptr [rsp + 52]      # 4-byte Reload
	movzx	r12d, byte ptr [rsp + 15]       # 1-byte Folded Reload
	jmp	.LBB357_28
.LBB357_38:
	je	.LBB357_43
# %bb.39:
	cmp	r12, 6
	jne	.LBB357_44
# %bb.40:
	mov	eax, 5
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	al, 1
	mov	dword ptr [rsp + 32], eax       # 4-byte Spill
	xor	r12d, r12d
	jmp	.LBB357_45
.LBB357_41:
.Ltmp1155:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.531]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.533]
	mov	esi, 171
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp1156:
# %bb.42:
.LBB357_43:
	mov	dword ptr [rsp + 32], 0         # 4-byte Folded Spill
	mov	qword ptr [rsp + 40], r12       # 8-byte Spill
	jmp	.LBB357_45
.LBB357_44:
	add	r12, -7
	mov	eax, 6
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	al, 1
	mov	dword ptr [rsp + 32], eax       # 4-byte Spill
.LBB357_45:
	mov	edi, 544
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB357_113
# %bb.46:
	mov	r15, rax
	mov	qword ptr [rax], 0
	movzx	eax, word ptr [r14 + 538]
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	r8, rdx
	not	r8
	add	r8, rax
	mov	word ptr [r15 + 538], r8w
	lea	rax, [rdx + 4*rdx]
	mov	rcx, qword ptr [r14 + 8*rax + 96]
	mov	qword ptr [rsp + 56], rcx       # 8-byte Spill
	mov	rcx, qword ptr [r14 + 8*rax + 104]
	mov	qword ptr [rsp + 80], rcx       # 8-byte Spill
	cmp	r8, 12
	jae	.LBB357_111
# %bb.47:
	lea	rcx, [r14 + 96]
	mov	qword ptr [rsp + 64], rcx       # 8-byte Spill
	lea	rax, [r14 + 8*rax]
	add	rax, 96
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	mov	rax, qword ptr [r14 + 8*rdx + 8]
	mov	qword ptr [rsp + 176], rax      # 8-byte Spill
	lea	rsi, [8*rdx + 8]
	add	rsi, r13
	lea	rdi, [r15 + 8]
	shl	r8, 3
	mov	qword ptr [rsp + 168], r8       # 8-byte Spill
	mov	r13, rdx
	mov	rdx, r8
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	rax, [4*r13 + 5]
	add	rax, r13
	mov	rcx, qword ptr [rsp + 64]       # 8-byte Reload
	lea	rsi, [rcx + 8*rax]
	lea	rdi, [r15 + 96]
	mov	rax, qword ptr [rsp + 168]      # 8-byte Reload
	lea	rdx, [rax + 4*rax]
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	word ptr [r14 + 538], r13w
	mov	rcx, qword ptr [rsp + 88]       # 8-byte Reload
	mov	rax, qword ptr [rcx + 32]
	mov	qword ptr [rsp + 144], rax
	movups	xmm0, xmmword ptr [rcx + 16]
	movaps	xmmword ptr [rsp + 128], xmm0
	cmp	byte ptr [rsp + 32], 0          # 1-byte Folded Reload
	mov	r13, r15
	cmove	r13, r14
	movzx	r8d, word ptr [r13 + 538]
	cmp	r8, r12
	jbe	.LBB357_49
# %bb.48:
	lea	rax, [r13 + 8]
	lea	rsi, [8*r12 + 8]
	add	rsi, r13
	lea	rdi, [rax + 8*r12]
	add	rdi, 8
	mov	edx, r8d
	sub	edx, r12d
	shl	edx, 3
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 40], r8        # 8-byte Spill
	call	qword ptr [rip + memmove@GOTPCREL]
	lea	rax, [r12 + 4*r12]
	lea	rsi, [8*rax + 96]
	add	rsi, r13
	lea	rdi, [8*rax + 136]
	add	rdi, r13
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rdx, [rax + 4*rax]
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r8, qword ptr [rsp + 40]        # 8-byte Reload
.LBB357_49:
	mov	qword ptr [r13 + 8*r12 + 8], rbp
	inc	r8d
	lea	rax, [r12 + 4*r12]
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	qword ptr [r13 + 8*rax + 96], rcx
	mov	qword ptr [r13 + 8*rax + 104], 4
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [r13 + 8*rax + 112], rcx
	mov	qword ptr [r13 + 8*rax + 120], rbx
	mov	rcx, qword ptr [rsp + 72]       # 8-byte Reload
	mov	qword ptr [r13 + 8*rax + 128], rcx
	mov	word ptr [r13 + 538], r8w
	mov	rax, qword ptr [rsp + 144]
	mov	qword ptr [rsp + 112], rax
	movaps	xmm0, xmmword ptr [rsp + 128]
	movaps	xmmword ptr [rsp + 96], xmm0
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.LBB357_77
# %bb.50:
	mov	qword ptr [rsp + 160], 0        # 8-byte Folded Spill
	mov	rbp, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r13d, dword ptr [rsp + 52]      # 4-byte Reload
	movzx	r12d, byte ptr [rsp + 15]       # 1-byte Folded Reload
	jmp	.LBB357_52
.LBB357_51:                             #   in Loop: Header=BB357_52 Depth=1
	mov	rax, qword ptr [rsp + 224]
	mov	qword ptr [rsp + 112], rax
	movaps	xmm0, xmmword ptr [rsp + 208]
	movaps	xmmword ptr [rsp + 96], xmm0
	mov	rax, qword ptr [r14]
	test	rax, rax
	mov	r13d, dword ptr [rsp + 52]      # 4-byte Reload
	movzx	r12d, byte ptr [rsp + 15]       # 1-byte Folded Reload
	je	.LBB357_78
.LBB357_52:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB357_65 Depth 2
                                        #     Child Loop BB357_73 Depth 2
                                        #     Child Loop BB357_76 Depth 2
	mov	rcx, qword ptr [rsp + 80]       # 8-byte Reload
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 176]      # 8-byte Reload
	movzx	ebp, word ptr [r14 + 536]
	mov	r14, rax
	movzx	r9d, word ptr [rax + 538]
	cmp	r9, 11
	mov	qword ptr [rsp + 56], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 40], rdx       # 8-byte Spill
	mov	qword ptr [rsp + 72], r15       # 8-byte Spill
	mov	qword ptr [rsp + 88], rdi       # 8-byte Spill
	mov	qword ptr [rsp + 32], r9        # 8-byte Spill
	jb	.LBB357_83
# %bb.53:                               #   in Loop: Header=BB357_52 Depth=1
	cmp	bp, 5
	jae	.LBB357_55
# %bb.54:                               #   in Loop: Header=BB357_52 Depth=1
	mov	qword ptr [rsp + 16], rbp       # 8-byte Spill
	mov	ebp, 4
	mov	dword ptr [rsp + 64], 0         # 4-byte Folded Spill
	jmp	.LBB357_60
.LBB357_55:                             #   in Loop: Header=BB357_52 Depth=1
	cmp	rbp, 5
	je	.LBB357_58
# %bb.56:                               #   in Loop: Header=BB357_52 Depth=1
	cmp	ebp, 6
	jne	.LBB357_59
# %bb.57:                               #   in Loop: Header=BB357_52 Depth=1
	mov	al, 1
	mov	dword ptr [rsp + 64], eax       # 4-byte Spill
	mov	ebp, 5
	mov	qword ptr [rsp + 16], 0         # 8-byte Folded Spill
	jmp	.LBB357_60
.LBB357_58:                             #   in Loop: Header=BB357_52 Depth=1
	mov	dword ptr [rsp + 64], 0         # 4-byte Folded Spill
	mov	qword ptr [rsp + 16], rbp       # 8-byte Spill
	jmp	.LBB357_60
.LBB357_59:                             #   in Loop: Header=BB357_52 Depth=1
	add	rbp, -7
	mov	qword ptr [rsp + 16], rbp       # 8-byte Spill
	mov	al, 1
	mov	dword ptr [rsp + 64], eax       # 4-byte Spill
	mov	ebp, 6
.LBB357_60:                             #   in Loop: Header=BB357_52 Depth=1
	mov	edi, 640
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB357_107
# %bb.61:                               #   in Loop: Header=BB357_52 Depth=1
	mov	r12, rax
	mov	r15, rax
	mov	qword ptr [r12], 0
	movzx	eax, word ptr [r14 + 538]
	mov	rbx, rbp
	not	rbx
	add	rbx, rax
	mov	word ptr [r12 + 538], bx
	lea	rax, [4*rbp]
	add	rax, rbp
	mov	rcx, qword ptr [r14 + 8*rax + 96]
	mov	qword ptr [rsp + 24], rcx       # 8-byte Spill
	mov	r13, qword ptr [r14 + 8*rax + 104]
	cmp	rbx, 12
	jae	.LBB357_103
# %bb.62:                               #   in Loop: Header=BB357_52 Depth=1
	mov	qword ptr [rsp + 80], r13       # 8-byte Spill
	lea	rcx, [r14 + 96]
	mov	qword ptr [rsp + 168], rcx      # 8-byte Spill
	lea	r13, [r14 + 8*rax]
	add	r13, 96
	mov	rax, qword ptr [r14 + 8*rbp + 8]
	mov	qword ptr [rsp + 176], rax      # 8-byte Spill
	lea	rsi, [r14 + 8*rbp]
	add	rsi, 16
	lea	rdi, [r12 + 8]
	shl	rbx, 3
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	rax, [4*rbp + 5]
	add	rax, rbp
	mov	rcx, qword ptr [rsp + 168]      # 8-byte Reload
	lea	rsi, [rcx + 8*rax]
	lea	rdi, [r12 + 96]
	lea	rdx, [rbx + 4*rbx]
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	word ptr [r14 + 538], bp
	mov	rax, qword ptr [r13 + 32]
	mov	qword ptr [rsp + 144], rax
	movups	xmm0, xmmword ptr [r13 + 16]
	movaps	xmmword ptr [rsp + 128], xmm0
	movzx	ebx, word ptr [r15 + 538]
	lea	rdx, [rbx + 1]
	cmp	rbx, 12
	jae	.LBB357_105
# %bb.63:                               #   in Loop: Header=BB357_52 Depth=1
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	sub	eax, ebp
	cmp	eax, edx
	jne	.LBB357_109
# %bb.64:                               #   in Loop: Header=BB357_52 Depth=1
	inc	qword ptr [rsp + 160]           # 8-byte Folded Spill
	lea	rdi, [r12 + 544]
	lea	rsi, [r14 + 8*rbp]
	add	rsi, 552
	shl	edx, 3
	call	qword ptr [rip + memcpy@GOTPCREL]
	xor	eax, eax
	.p2align	4
.LBB357_65:                             #   Parent Loop BB357_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, rax
	cmp	rax, rbx
	adc	rax, 0
	mov	rdx, qword ptr [r15 + 8*rcx + 544]
	mov	qword ptr [rdx], r15
	mov	word ptr [rdx + 536], cx
	cmp	rcx, rbx
	jae	.LBB357_67
# %bb.66:                               #   in Loop: Header=BB357_65 Depth=2
	cmp	rax, rbx
	jbe	.LBB357_65
.LBB357_67:                             #   in Loop: Header=BB357_52 Depth=1
	mov	rax, qword ptr [rsp + 144]
	mov	qword ptr [rsp + 224], rax
	movaps	xmm0, xmmword ptr [rsp + 128]
	movaps	xmmword ptr [rsp + 208], xmm0
	cmp	byte ptr [rsp + 64], 0          # 1-byte Folded Reload
	cmove	r12, r14
	movzx	ebx, word ptr [r12 + 538]
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
	lea	r13, [r9 + 1]
	mov	r8, rbx
	sub	r8, r9
	jbe	.LBB357_69
# %bb.68:                               #   in Loop: Header=BB357_52 Depth=1
	lea	rax, [r12 + 8]
	lea	rsi, [r12 + 8*r9]
	add	rsi, 8
	lea	rdi, [rax + 8*r13]
	mov	edx, ebx
	sub	edx, r9d
	shl	edx, 3
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	mov	rax, qword ptr [rip + memmove@GOTPCREL]
	mov	qword ptr [rsp + 64], r8        # 8-byte Spill
	call	rax
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rbp, [rax + 4*rax]
	lea	rsi, [r12 + 8*rbp]
	add	rsi, 96
	lea	rax, [r13 + 4*r13]
	lea	rdi, [r12 + 8*rax]
	add	rdi, 96
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rdx, [rax + 4*rax]
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [r12 + 8*rbp + 96], rax
	mov	rax, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [r12 + 8*rbp + 104], rax
	movaps	xmm0, xmmword ptr [rsp + 96]
	movups	xmmword ptr [r12 + 8*rbp + 112], xmm0
	mov	rax, qword ptr [rsp + 112]
	mov	qword ptr [r12 + 8*rbp + 128], rax
	lea	rsi, [r12 + 8*r13 + 544]
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	lea	rdi, [r12 + 8*rax]
	add	rdi, 560
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r8, qword ptr [rsp + 64]        # 8-byte Reload
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
	jmp	.LBB357_70
.LBB357_69:                             #   in Loop: Header=BB357_52 Depth=1
	lea	rax, [r9 + 4*r9]
	mov	rcx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	qword ptr [r12 + 8*rax + 96], rcx
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	mov	qword ptr [r12 + 8*rax + 104], rcx
	movaps	xmm0, xmmword ptr [rsp + 96]
	movups	xmmword ptr [r12 + 8*rax + 112], xmm0
	mov	rcx, qword ptr [rsp + 112]
	mov	qword ptr [r12 + 8*rax + 128], rcx
.LBB357_70:                             #   in Loop: Header=BB357_52 Depth=1
	mov	rbp, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	lea	ecx, [rbx + 1]
	mov	qword ptr [r12 + 8*r9 + 8], rax
	lea	rax, [rbx + 2]
	mov	qword ptr [r12 + 8*r9 + 552], rsi
	mov	word ptr [r12 + 538], cx
	cmp	r13, rax
	jae	.LBB357_51
# %bb.71:                               #   in Loop: Header=BB357_52 Depth=1
	sub	ebx, r9d
	inc	ebx
	and	ebx, 3
	je	.LBB357_75
# %bb.72:                               #   in Loop: Header=BB357_52 Depth=1
	lea	rdx, [r12 + 8*r9]
	add	rdx, 552
	xor	ecx, ecx
	.p2align	4
.LBB357_73:                             #   Parent Loop BB357_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rsi, qword ptr [rdx + 8*rcx]
	mov	qword ptr [rsi], r12
	lea	edi, [rcx + r13]
	mov	word ptr [rsi + 536], di
	inc	rcx
	cmp	rbx, rcx
	jne	.LBB357_73
# %bb.74:                               #   in Loop: Header=BB357_52 Depth=1
	add	r13, rcx
.LBB357_75:                             #   in Loop: Header=BB357_52 Depth=1
	cmp	r8, 3
	jb	.LBB357_51
	.p2align	4
.LBB357_76:                             #   Parent Loop BB357_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [r12 + 8*r13 + 544]
	mov	qword ptr [rcx], r12
	mov	word ptr [rcx + 536], r13w
	mov	rcx, qword ptr [r12 + 8*r13 + 552]
	mov	qword ptr [rcx], r12
	lea	edx, [r13 + 1]
	mov	word ptr [rcx + 536], dx
	mov	rcx, qword ptr [r12 + 8*r13 + 560]
	mov	qword ptr [rcx], r12
	lea	edx, [r13 + 2]
	mov	word ptr [rcx + 536], dx
	mov	rcx, qword ptr [r12 + 8*r13 + 568]
	mov	qword ptr [rcx], r12
	lea	edx, [r13 + 3]
	mov	word ptr [rcx + 536], dx
	add	r13, 4
	cmp	r13, rax
	jne	.LBB357_76
	jmp	.LBB357_51
.LBB357_77:
	mov	qword ptr [rsp + 160], 0        # 8-byte Folded Spill
	mov	rbp, qword ptr [rsp + 56]       # 8-byte Reload
	mov	r13d, dword ptr [rsp + 52]      # 4-byte Reload
.LBB357_78:
	mov	rbx, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0]
	test	rbx, rbx
	je	.LBB357_115
# %bb.79:
	mov	r14, qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1]
	mov	edi, 640
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB357_117
# %bb.80:
	mov	r12, rax
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 538], 0
	mov	qword ptr [rax + 544], rbx
	mov	rax, r14
	inc	rax
	je	.LBB357_119
# %bb.81:
	mov	qword ptr [rbx], r12
	mov	word ptr [rbx + 536], 0
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.0], r12
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.1], rax
	cmp	qword ptr [rsp + 160], r14      # 8-byte Folded Reload
	jne	.LBB357_121
# %bb.82:
	mov	word ptr [r12 + 538], 1
	mov	rax, qword ptr [rsp + 176]      # 8-byte Reload
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 96], rbp
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	mov	qword ptr [r12 + 104], rax
	movaps	xmm0, xmmword ptr [rsp + 96]
	movups	xmmword ptr [r12 + 112], xmm0
	mov	rax, qword ptr [rsp + 112]
	mov	qword ptr [r12 + 128], rax
	mov	qword ptr [r12 + 552], r15
	mov	qword ptr [r15], r12
	mov	word ptr [r15 + 536], 1
	inc	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info11THREAD_INFO.2]
	movzx	r12d, byte ptr [rsp + 15]       # 1-byte Folded Reload
	jmp	.LBB357_28
.LBB357_83:
	mov	rsi, r15
	lea	eax, [r9 + 1]
	mov	dword ptr [rsp + 24], eax       # 4-byte Spill
	lea	r15, [rbp + 1]
	cmp	bp, r9w
	jae	.LBB357_85
# %bb.84:
	lea	rax, [r14 + 8]
	lea	rsi, [r14 + 8*rbp]
	add	rsi, 8
	lea	rdi, [rax + 8*r15]
	mov	rbx, r9
	sub	rbx, rbp
	shl	rbx, 3
	mov	rdx, rbx
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	rax, qword ptr [rsp + 112]
	mov	qword ptr [rsp + 144], rax
	movaps	xmm0, xmmword ptr [rsp + 96]
	movaps	xmmword ptr [rsp + 128], xmm0
	lea	rax, [rbp + 4*rbp]
	lea	rsi, [r14 + 8*rax + 96]
	lea	rax, [r15 + 4*r15]
	lea	rdi, [r14 + 8*rax]
	add	rdi, 96
	lea	rdx, [rbx + 4*rbx]
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r9, qword ptr [rsp + 32]        # 8-byte Reload
	mov	rdi, qword ptr [rsp + 88]       # 8-byte Reload
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
	jmp	.LBB357_86
.LBB357_85:
	mov	rax, qword ptr [rsp + 112]
	mov	qword ptr [rsp + 144], rax
	movaps	xmm0, xmmword ptr [rsp + 96]
	movaps	xmmword ptr [rsp + 128], xmm0
.LBB357_86:
	lea	rbx, [r9 + 2]
	mov	qword ptr [r14 + 8*rbp + 8], rdi
	lea	rax, [4*rbp]
	add	rax, rbp
	mov	qword ptr [r14 + 8*rax + 96], rdx
	mov	qword ptr [r14 + 8*rax + 104], rcx
	movaps	xmm0, xmmword ptr [rsp + 128]
	movups	xmmword ptr [r14 + 8*rax + 112], xmm0
	mov	rcx, qword ptr [rsp + 144]
	mov	qword ptr [r14 + 8*rax + 128], rcx
	cmp	bp, r9w
	jae	.LBB357_88
# %bb.87:
	lea	rax, [r14 + 544]
	lea	rsi, [rax + 8*r15]
	lea	rdi, [rax + 8*rbp]
	add	rdi, 16
	mov	rdx, r9
	sub	rdx, rbp
	shl	rdx, 3
	mov	qword ptr [rsp + 16], rbp       # 8-byte Spill
	mov	rbp, r9
	call	qword ptr [rip + memmove@GOTPCREL]
	mov	r9, rbp
	mov	rsi, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rbp, qword ptr [rsp + 16]       # 8-byte Reload
.LBB357_88:
	mov	qword ptr [r14 + 8*rbp + 552], rsi
	mov	eax, dword ptr [rsp + 24]       # 4-byte Reload
	mov	word ptr [r14 + 538], ax
	cmp	r15d, ebx
	jae	.LBB357_27
# %bb.89:
	mov	eax, r9d
	sub	eax, ebp
	inc	eax
	sub	r9, rbp
	and	eax, 3
	je	.LBB357_93
# %bb.90:
	lea	rdx, [r14 + 8*rbp]
	add	rdx, 552
	xor	ecx, ecx
.LBB357_91:                             # =>This Inner Loop Header: Depth=1
	mov	rsi, qword ptr [rdx + 8*rcx]
	mov	qword ptr [rsi], r14
	lea	edi, [r15 + rcx]
	mov	word ptr [rsi + 536], di
	inc	rcx
	cmp	rax, rcx
	jne	.LBB357_91
# %bb.92:
	add	r15, rcx
.LBB357_93:
	cmp	r9, 3
	jb	.LBB357_27
.LBB357_94:                             # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [r14 + 8*r15 + 544]
	mov	qword ptr [rax], r14
	mov	word ptr [rax + 536], r15w
	mov	rax, qword ptr [r14 + 8*r15 + 552]
	mov	qword ptr [rax], r14
	lea	ecx, [r15 + 1]
	mov	word ptr [rax + 536], cx
	mov	rax, qword ptr [r14 + 8*r15 + 560]
	mov	qword ptr [rax], r14
	lea	ecx, [r15 + 2]
	mov	word ptr [rax + 536], cx
	mov	rax, qword ptr [r14 + 8*r15 + 568]
	mov	qword ptr [rax], r14
	lea	ecx, [r15 + 3]
	mov	word ptr [rax + 536], cx
	add	r15, 4
	cmp	r15, rbx
	jne	.LBB357_94
	jmp	.LBB357_27
.LBB357_96:
	lea	rdi, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK]
	call	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended
	jmp	.LBB357_7
.LBB357_97:
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	mov	r13d, eax
	xor	r13b, 1
	jmp	.LBB357_9
.LBB357_98:
	lea	rsi, [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK]
	mov	edi, 202
	mov	edx, 129
	mov	ecx, 1
	xor	eax, eax
	add	rsp, 232
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
	jmp	qword ptr [rip + syscall@GOTPCREL] # TAILCALL
.LBB357_99:
	.cfi_def_cfa_offset 288
	call	_RNvNtNtCs3bNtqN8jaZB_3std9panicking11panic_count17is_zero_slow_path
	test	al, al
	jne	.LBB357_30
# %bb.100:
	mov	byte ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info4LOCK+4], 1
	jmp	.LBB357_30
.LBB357_101:
.Ltmp1187:
	mov	edi, 544
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1188:
# %bb.102:
.LBB357_103:
.Ltmp1161:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.347]
	mov	edx, 11
	xor	edi, edi
	mov	rsi, rbx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp1162:
# %bb.104:
.LBB357_105:
.Ltmp1164:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.34]
	mov	rsi, rdx
	mov	edx, 12
	xor	edi, edi
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp1165:
# %bb.106:
.LBB357_107:
.Ltmp1169:
	mov	edi, 640
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1170:
# %bb.108:
.LBB357_109:
.Ltmp1166:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.74]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.75]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp1167:
# %bb.110:
.LBB357_111:
.Ltmp1158:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.347]
	mov	edx, 11
	xor	edi, edi
	mov	rsi, r8
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Ltmp1159:
# %bb.112:
.LBB357_113:
.Ltmp1184:
	mov	edi, 544
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1185:
# %bb.114:
.LBB357_115:
.Ltmp1181:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.107]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp1182:
# %bb.116:
.LBB357_117:
.Ltmp1178:
	mov	edi, 640
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp1179:
# %bb.118:
.LBB357_119:
.Ltmp1175:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.33]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp1176:
# %bb.120:
.LBB357_121:
.Ltmp1172:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.379]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.380]
	mov	esi, 48
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp1173:
# %bb.122:
.LBB357_123:
	mov	edi, 4
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB357_124:
.Ltmp1174:
	jmp	.LBB357_128
.LBB357_125:
.Ltmp1177:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	ud2
.LBB357_126:
.Ltmp1180:
	ud2
.LBB357_127:
.Ltmp1183:
.LBB357_128:
	mov	rbx, rax
	test	rbp, rbp
	je	.LBB357_146
# %bb.129:
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
	mov	rdi, rbp
	jne	.LBB357_145
	jmp	.LBB357_146
.LBB357_130:
.Ltmp1186:
	jmp	.LBB357_137
.LBB357_131:
.Ltmp1160:
	mov	rbx, rax
	cmp	qword ptr [rsp + 56], 0         # 8-byte Folded Reload
	sete	al
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
	sete	cl
	or	cl, al
	jne	.LBB357_133
# %bb.132:
	mov	rdi, qword ptr [rsp + 56]       # 8-byte Reload
	call	qword ptr [rip + free@GOTPCREL]
.LBB357_133:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
	jmp	.LBB357_138
.LBB357_134:
.Ltmp1171:
	mov	rbx, rax
	jmp	.LBB357_143
.LBB357_135:
.Ltmp1163:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	test	rdi, rdi
	sete	al
	test	r13, r13
	jmp	.LBB357_140
.LBB357_136:
.Ltmp1189:
.LBB357_137:
	mov	rbx, rax
.LBB357_138:
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	test	rdi, rdi
	jne	.LBB357_145
	jmp	.LBB357_146
.LBB357_139:
.Ltmp1168:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	test	rdi, rdi
	sete	al
	cmp	qword ptr [rsp + 80], 0         # 8-byte Folded Reload
.LBB357_140:
	sete	cl
	or	cl, al
	jne	.LBB357_142
# %bb.141:
	call	qword ptr [rip + free@GOTPCREL]
.LBB357_142:
	mov	rdi, r15
	call	qword ptr [rip + free@GOTPCREL]
.LBB357_143:
	mov	rdi, qword ptr [rsp + 40]       # 8-byte Reload
	test	rdi, rdi
	je	.LBB357_146
# %bb.144:
	cmp	qword ptr [rsp + 56], 0         # 8-byte Folded Reload
	je	.LBB357_146
.LBB357_145:
	call	qword ptr [rip + free@GOTPCREL]
.LBB357_146:
	mov	qword ptr [rip + _RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info9SPIN_LOCK], 0
	lea	rdi, [rsp + 184]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB357_147:
.Ltmp1157:
	mov	rbx, rax
	lea	rdi, [rsp + 184]
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCs3bNtqN8jaZB_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEEB1b_
	mov	rdi, qword ptr [rsp + 24]       # 8-byte Reload
	test	rdi, rdi
	je	.LBB357_149
# %bb.148:
	call	qword ptr [rip + free@GOTPCREL]
.LBB357_149:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end357:
	.size	_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info, .Lfunc_end357-_RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info
	.cfi_endproc
	.section	.gcc_except_table._RNvNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info16set_current_info,"a",@progbits
	.p2align	2, 0x0
GCC_except_table357:
.Lexception81:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end81-.Lcst_begin81
.Lcst_begin81:
	.uleb128 .Lfunc_begin81-.Lfunc_begin81  # >> Call Site 1 <<
	.uleb128 .Ltmp1155-.Lfunc_begin81       #   Call between .Lfunc_begin81 and .Ltmp1155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1155-.Lfunc_begin81       # >> Call Site 2 <<
	.uleb128 .Ltmp1156-.Ltmp1155            #   Call between .Ltmp1155 and .Ltmp1156
	.uleb128 .Ltmp1157-.Lfunc_begin81       #     jumps to .Ltmp1157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1156-.Lfunc_begin81       # >> Call Site 3 <<
	.uleb128 .Ltmp1187-.Ltmp1156            #   Call between .Ltmp1156 and .Ltmp1187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1187-.Lfunc_begin81       # >> Call Site 4 <<
	.uleb128 .Ltmp1188-.Ltmp1187            #   Call between .Ltmp1187 and .Ltmp1188
	.uleb128 .Ltmp1189-.Lfunc_begin81       #     jumps to .Ltmp1189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1161-.Lfunc_begin81       # >> Call Site 5 <<
	.uleb128 .Ltmp1162-.Ltmp1161            #   Call between .Ltmp1161 and .Ltmp1162
	.uleb128 .Ltmp1163-.Lfunc_begin81       #     jumps to .Ltmp1163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1164-.Lfunc_begin81       # >> Call Site 6 <<
	.uleb128 .Ltmp1165-.Ltmp1164            #   Call between .Ltmp1164 and .Ltmp1165
	.uleb128 .Ltmp1168-.Lfunc_begin81       #     jumps to .Ltmp1168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1169-.Lfunc_begin81       # >> Call Site 7 <<
	.uleb128 .Ltmp1170-.Ltmp1169            #   Call between .Ltmp1169 and .Ltmp1170
	.uleb128 .Ltmp1171-.Lfunc_begin81       #     jumps to .Ltmp1171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1166-.Lfunc_begin81       # >> Call Site 8 <<
	.uleb128 .Ltmp1167-.Ltmp1166            #   Call between .Ltmp1166 and .Ltmp1167
	.uleb128 .Ltmp1168-.Lfunc_begin81       #     jumps to .Ltmp1168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1158-.Lfunc_begin81       # >> Call Site 9 <<
	.uleb128 .Ltmp1159-.Ltmp1158            #   Call between .Ltmp1158 and .Ltmp1159
	.uleb128 .Ltmp1160-.Lfunc_begin81       #     jumps to .Ltmp1160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1184-.Lfunc_begin81       # >> Call Site 10 <<
	.uleb128 .Ltmp1185-.Ltmp1184            #   Call between .Ltmp1184 and .Ltmp1185
	.uleb128 .Ltmp1186-.Lfunc_begin81       #     jumps to .Ltmp1186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1181-.Lfunc_begin81       # >> Call Site 11 <<
	.uleb128 .Ltmp1182-.Ltmp1181            #   Call between .Ltmp1181 and .Ltmp1182
	.uleb128 .Ltmp1183-.Lfunc_begin81       #     jumps to .Ltmp1183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1178-.Lfunc_begin81       # >> Call Site 12 <<
	.uleb128 .Ltmp1179-.Ltmp1178            #   Call between .Ltmp1178 and .Ltmp1179
	.uleb128 .Ltmp1180-.Lfunc_begin81       #     jumps to .Ltmp1180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1175-.Lfunc_begin81       # >> Call Site 13 <<
	.uleb128 .Ltmp1176-.Ltmp1175            #   Call between .Ltmp1175 and .Ltmp1176
	.uleb128 .Ltmp1177-.Lfunc_begin81       #     jumps to .Ltmp1177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1172-.Lfunc_begin81       # >> Call Site 14 <<
	.uleb128 .Ltmp1173-.Ltmp1172            #   Call between .Ltmp1172 and .Ltmp1173
	.uleb128 .Ltmp1174-.Lfunc_begin81       #     jumps to .Ltmp1174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1173-.Lfunc_begin81       # >> Call Site 15 <<
	.uleb128 .Lfunc_end357-.Ltmp1173        #   Call between .Ltmp1173 and .Lfunc_end357
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end81:
	.p2align	2, 0x0
                                        # -- End function
