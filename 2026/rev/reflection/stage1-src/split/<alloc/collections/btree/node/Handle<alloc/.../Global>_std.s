	.section	.text._RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_
	.type	_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_,@function
_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_: # @_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_
.Lfunc_begin86:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception86
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
	sub	rsp, 424
	.cfi_def_cfa_offset 480
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 104], rdx      # 8-byte Spill
	mov	rbx, rsi
	mov	qword ptr [rsp + 24], rdi       # 8-byte Spill
	mov	r13, qword ptr [rsi]
	mov	r15, qword ptr [rsi + 16]
	movzx	r14d, word ptr [r13 + 538]
	lea	rdi, [r13 + 8*r15 + 8]
	mov	rax, qword ptr [r13 + 8*r15 + 8]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	lea	rsi, [8*r15 + 16]
	add	rsi, r13
	mov	r12, r15
	not	r12
	add	r12, r14
	shl	r12, 3
	mov	rbp, qword ptr [rip + memmove@GOTPCREL]
	mov	rdx, r12
	call	rbp
	lea	rax, [r15 + 4*r15]
	lea	rdi, [8*rax + 96]
	add	rdi, r13
	mov	rcx, qword ptr [r13 + 8*rax + 96]
	mov	qword ptr [rsp + 80], rcx       # 8-byte Spill
	mov	rcx, qword ptr [r13 + 8*rax + 104]
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	mov	rcx, qword ptr [r13 + 8*rax + 128]
	mov	qword ptr [rsp + 144], rcx
	movups	xmm0, xmmword ptr [r13 + 8*rax + 112]
	movaps	xmmword ptr [rsp + 128], xmm0
	lea	rsi, [8*rax + 136]
	add	rsi, r13
	lea	rdx, [r12 + 4*r12]
	call	rbp
	lea	eax, [r14 - 1]
	mov	word ptr [r13 + 538], ax
	mov	r8, qword ptr [rbx + 8]
	cmp	ax, 4
	ja	.LBB372_1
# %bb.2:
	mov	rcx, qword ptr [r13]
	test	rcx, rcx
	je	.LBB372_1
# %bb.3:
	lea	rdx, [r8 + 1]
	movzx	esi, word ptr [r13 + 536]
	test	rsi, rsi
	je	.LBB372_4
# %bb.10:
	mov	rdi, qword ptr [rcx + 8*rsi + 536]
	dec	rsi
	mov	qword ptr [rsp + 160], rcx
	mov	qword ptr [rsp + 168], rdx
	mov	qword ptr [rsp + 176], rsi
	mov	qword ptr [rsp + 184], rdi
	mov	qword ptr [rsp + 192], r8
	mov	qword ptr [rsp + 200], r13
	mov	qword ptr [rsp + 208], r8
	movzx	ebx, word ptr [rdi + 538]
	movzx	eax, ax
	lea	ecx, [rbx + rax]
	inc	ecx
	cmp	ecx, 12
	jae	.LBB372_11
# %bb.13:
	cmp	r15, rax
	ja	.LBB372_32
# %bb.14:
.Ltmp1248:
	lea	rdi, [rsp + 160]
	call	_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
.Ltmp1249:
# %bb.15:
	mov	r13, rax
	add	r15, rbx
	inc	r15
	jmp	.LBB372_16
.LBB372_1:
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB372_54
.LBB372_4:
	mov	qword ptr [rsp + 8], r8         # 8-byte Spill
	cmp	word ptr [rcx + 538], 0
	je	.LBB372_22
# %bb.5:
	mov	rsi, qword ptr [rcx + 552]
	mov	qword ptr [rsp + 216], rcx
	mov	qword ptr [rsp + 224], rdx
	mov	qword ptr [rsp + 232], 0
	mov	qword ptr [rsp + 240], r13
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rsp + 248], rcx
	mov	qword ptr [rsp + 256], rsi
	mov	qword ptr [rsp + 264], rcx
	movzx	eax, ax
	movzx	ecx, word ptr [rsi + 538]
	add	ecx, eax
	inc	ecx
	cmp	ecx, 12
	jae	.LBB372_6
# %bb.23:
	cmp	r15, rax
	ja	.LBB372_32
# %bb.24:
.Ltmp1252:
	lea	rdi, [rsp + 216]
	call	_RINvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB7_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutjB1k_NtB3W_14LeafOrInternalEB3k_EB1w_
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
.Ltmp1253:
# %bb.25:
	mov	r13, rax
	jmp	.LBB372_16
.LBB372_11:
.Ltmp1246:
	mov	qword ptr [rsp + 8], r8         # 8-byte Spill
	lea	rdi, [rsp + 160]
	mov	esi, 1
	call	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_
.Ltmp1247:
# %bb.12:
	inc	r15
	jmp	.LBB372_16
.LBB372_6:
.Ltmp1250:
	lea	rdi, [rsp + 216]
	mov	esi, 1
	call	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_
.Ltmp1251:
.LBB372_16:
	mov	r14, qword ptr [r13]
	test	r14, r14
	je	.LBB372_53
# %bb.17:
	movzx	eax, word ptr [r14 + 538]
	cmp	ax, 4
	jbe	.LBB372_18
.LBB372_53:
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	mov	r8, qword ptr [rsp + 8]         # 8-byte Reload
.LBB372_54:
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 80]       # 8-byte Reload
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	mov	qword ptr [rcx + 16], rax
	movaps	xmm0, xmmword ptr [rsp + 128]
	movups	xmmword ptr [rcx + 24], xmm0
	mov	rax, qword ptr [rsp + 144]
	mov	qword ptr [rcx + 40], rax
	mov	qword ptr [rcx + 48], r13
	mov	qword ptr [rcx + 56], r8
	mov	qword ptr [rcx + 64], r15
	add	rsp, 424
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
.LBB372_18:
	.cfi_def_cfa_offset 480
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	lea	rbx, [rcx + 1]
	mov	qword ptr [rsp + 120], r15      # 8-byte Spill
	mov	qword ptr [rsp + 112], r13      # 8-byte Spill
	jmp	.LBB372_19
	.p2align	4
.LBB372_50:                             #   in Loop: Header=BB372_19 Depth=1
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
	movzx	eax, word ptr [r14 + 538]
	cmp	ax, 4
	ja	.LBB372_53
.LBB372_19:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB372_38 Depth 2
                                        #     Child Loop BB372_40 Depth 2
                                        #     Child Loop BB372_47 Depth 2
                                        #     Child Loop BB372_49 Depth 2
	mov	rcx, r14
	movzx	eax, ax
	mov	r14, qword ptr [r14]
	test	r14, r14
	je	.LBB372_51
# %bb.20:                               #   in Loop: Header=BB372_19 Depth=1
	mov	rsi, rbx
	lea	rdi, [rbx + 1]
	movzx	r12d, word ptr [rcx + 536]
	test	r12, r12
	mov	qword ptr [rsp + 96], rdi       # 8-byte Spill
	je	.LBB372_21
# %bb.29:                               #   in Loop: Header=BB372_19 Depth=1
	mov	rbp, qword ptr [r14 + 8*r12 + 536]
	dec	r12
	mov	qword ptr [rsp + 312], r14
	mov	qword ptr [rsp + 320], rdi
	mov	qword ptr [rsp + 328], r12
	mov	qword ptr [rsp + 336], rbp
	mov	qword ptr [rsp + 344], rsi
	mov	qword ptr [rsp + 352], rcx
	mov	qword ptr [rsp + 360], rsi
	movzx	esi, word ptr [rbp + 538]
	lea	edx, [rax + rsi]
	inc	edx
	cmp	edx, 12
	jae	.LBB372_30
# %bb.34:                               #   in Loop: Header=BB372_19 Depth=1
	movzx	edx, word ptr [r14 + 538]
	lea	rdi, [rsi + 1]
	mov	qword ptr [rsp + 32], rdi       # 8-byte Spill
	mov	qword ptr [rsp + 56], rsi       # 8-byte Spill
	add	rsi, rax
	inc	rsi
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	jmp	.LBB372_35
	.p2align	4
.LBB372_21:                             #   in Loop: Header=BB372_19 Depth=1
	movzx	edx, word ptr [r14 + 538]
	test	dx, dx
	je	.LBB372_22
# %bb.27:                               #   in Loop: Header=BB372_19 Depth=1
	mov	r8, qword ptr [r14 + 552]
	mov	qword ptr [rsp + 368], r14
	mov	qword ptr [rsp + 376], rdi
	mov	qword ptr [rsp + 384], 0
	mov	qword ptr [rsp + 392], rcx
	mov	qword ptr [rsp + 400], rsi
	mov	qword ptr [rsp + 408], r8
	mov	qword ptr [rsp + 416], rsi
	movzx	r9d, word ptr [r8 + 538]
	lea	rsi, [rax + r9]
	inc	rsi
	cmp	rsi, 12
	jae	.LBB372_31
# %bb.28:                               #   in Loop: Header=BB372_19 Depth=1
	lea	rdi, [rax + 1]
	mov	qword ptr [rsp + 32], rdi       # 8-byte Spill
	mov	rbp, rcx
	mov	qword ptr [rsp + 40], r8        # 8-byte Spill
	xor	r12d, r12d
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	mov	qword ptr [rsp + 64], r9        # 8-byte Spill
.LBB372_35:                             #   in Loop: Header=BB372_19 Depth=1
	movzx	r15d, dx
	mov	qword ptr [rsp + 88], rsi       # 8-byte Spill
	mov	word ptr [rbp + 538], si
	lea	rdi, [r14 + 8*r12]
	add	rdi, 8
	mov	rax, qword ptr [r14 + 8*r12 + 8]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	lea	rsi, [r14 + 8*r12]
	add	rsi, 16
	mov	rbx, r12
	not	rbx
	add	rbx, r15
	shl	rbx, 3
	mov	rdx, rbx
	mov	rax, qword ptr [rip + memmove@GOTPCREL]
	call	rax
	mov	r13, qword ptr [rsp + 56]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	mov	qword ptr [rbp + 8*r13 + 8], rax
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	lea	rsi, [rax + 8]
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rdi, [rbp + 8*rax + 8]
	mov	rax, qword ptr [rsp + 64]       # 8-byte Reload
	lea	edx, [8*rax]
	mov	qword ptr [rsp + 48], rdx       # 8-byte Spill
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	rax, [r12 + 4*r12]
	lea	rdi, [r14 + 8*rax]
	add	rdi, 96
	mov	rcx, qword ptr [r14 + 8*rax + 128]
	mov	qword ptr [rsp + 304], rcx
	movups	xmm0, xmmword ptr [r14 + 8*rax + 96]
	movups	xmm1, xmmword ptr [r14 + 8*rax + 112]
	movaps	xmmword ptr [rsp + 288], xmm1
	movaps	xmmword ptr [rsp + 272], xmm0
	lea	rsi, [r14 + 8*rax]
	add	rsi, 136
	lea	rdx, [rbx + 4*rbx]
	call	qword ptr [rip + memmove@GOTPCREL]
	lea	rax, [4*r13]
	add	rax, r13
	movaps	xmm0, xmmword ptr [rsp + 272]
	movaps	xmm1, xmmword ptr [rsp + 288]
	movups	xmmword ptr [rbp + 8*rax + 96], xmm0
	movups	xmmword ptr [rbp + 8*rax + 112], xmm1
	mov	rcx, qword ptr [rsp + 304]
	mov	qword ptr [rbp + 8*rax + 128], rcx
	mov	rax, qword ptr [rsp + 40]       # 8-byte Reload
	lea	rsi, [rax + 96]
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rax, [rax + 4*rax]
	lea	rdi, [8*rax + 96]
	add	rdi, rbp
	mov	rax, qword ptr [rsp + 48]       # 8-byte Reload
	lea	rdx, [rax + 4*rax]
	call	qword ptr [rip + memcpy@GOTPCREL]
	lea	r13, [r12 + 1]
	lea	rdi, [r14 + 8*r12]
	add	rdi, 552
	lea	rsi, [r14 + 8*r12]
	add	rsi, 560
	mov	rdx, rbx
	call	qword ptr [rip + memmove@GOTPCREL]
	cmp	r15, r13
	mov	rbx, qword ptr [rsp + 96]       # 8-byte Reload
	jbe	.LBB372_41
# %bb.36:                               #   in Loop: Header=BB372_19 Depth=1
	mov	ecx, r15d
	sub	ecx, r13d
	and	ecx, 3
	je	.LBB372_37
	.p2align	4
.LBB372_38:                             #   Parent Loop BB372_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rax, [r13 + 1]
	mov	rdx, qword ptr [r14 + 8*r13 + 544]
	mov	qword ptr [rdx], r14
	mov	word ptr [rdx + 536], r13w
	mov	r13, rax
	dec	rcx
	jne	.LBB372_38
# %bb.39:                               #   in Loop: Header=BB372_19 Depth=1
	neg	r12
	lea	rcx, [r15 + r12]
	add	rcx, -2
	cmp	rcx, 3
	jb	.LBB372_41
	.p2align	4
.LBB372_40:                             #   Parent Loop BB372_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [r14 + 8*rax + 544]
	mov	qword ptr [rcx], r14
	mov	word ptr [rcx + 536], ax
	mov	rcx, qword ptr [r14 + 8*rax + 552]
	mov	qword ptr [rcx], r14
	lea	edx, [rax + 1]
	mov	word ptr [rcx + 536], dx
	mov	rcx, qword ptr [r14 + 8*rax + 560]
	mov	qword ptr [rcx], r14
	lea	edx, [rax + 2]
	mov	word ptr [rcx + 536], dx
	mov	rcx, qword ptr [r14 + 8*rax + 568]
	mov	qword ptr [rcx], r14
	lea	edx, [rax + 3]
	mov	word ptr [rcx + 536], dx
	add	rax, 4
	cmp	rax, r15
	jne	.LBB372_40
.LBB372_41:                             #   in Loop: Header=BB372_19 Depth=1
	dec	word ptr [r14 + 538]
	cmp	rbx, 2
	mov	r15, qword ptr [rsp + 120]      # 8-byte Reload
	mov	r13, qword ptr [rsp + 112]      # 8-byte Reload
	mov	r12, qword ptr [rsp + 40]       # 8-byte Reload
	mov	rax, qword ptr [rsp + 88]       # 8-byte Reload
	jb	.LBB372_50
# %bb.42:                               #   in Loop: Header=BB372_19 Depth=1
	mov	rdx, qword ptr [rsp + 64]       # 8-byte Reload
	inc	rdx
	sub	rax, qword ptr [rsp + 56]       # 8-byte Folded Reload
	cmp	rdx, rax
	jne	.LBB372_43
# %bb.45:                               #   in Loop: Header=BB372_19 Depth=1
	lea	rax, [rbp + 544]
	mov	rbx, qword ptr [rsp + 32]       # 8-byte Reload
	lea	rdi, [rax + 8*rbx]
	lea	rsi, [r12 + 544]
	shl	edx, 3
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	rdi, qword ptr [rsp + 88]       # 8-byte Reload
	mov	ecx, edi
	sub	ecx, ebx
	inc	ecx
	mov	rax, rbx
	and	ecx, 3
	je	.LBB372_48
# %bb.46:                               #   in Loop: Header=BB372_19 Depth=1
	mov	rdx, rbx
	.p2align	4
.LBB372_47:                             #   Parent Loop BB372_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lea	rax, [rdx + 1]
	mov	rsi, qword ptr [rbp + 8*rdx + 544]
	mov	qword ptr [rsi], rbp
	mov	word ptr [rsi + 536], dx
	mov	rdx, rax
	dec	rcx
	jne	.LBB372_47
.LBB372_48:                             #   in Loop: Header=BB372_19 Depth=1
	mov	rcx, rdi
	sub	rcx, rbx
	cmp	rcx, 3
	mov	rbx, qword ptr [rsp + 96]       # 8-byte Reload
	jb	.LBB372_50
	.p2align	4
.LBB372_49:                             #   Parent Loop BB372_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [rbp + 8*rax + 544]
	mov	qword ptr [rcx], rbp
	mov	word ptr [rcx + 536], ax
	mov	rcx, qword ptr [rbp + 8*rax + 552]
	mov	qword ptr [rcx], rbp
	lea	edx, [rax + 1]
	mov	word ptr [rcx + 536], dx
	mov	rcx, qword ptr [rbp + 8*rax + 560]
	mov	qword ptr [rcx], rbp
	lea	edx, [rax + 2]
	mov	word ptr [rcx + 536], dx
	mov	rcx, qword ptr [rbp + 8*rax + 568]
	mov	qword ptr [rcx], rbp
	lea	rdx, [rax + 3]
	mov	word ptr [rcx + 536], dx
	add	rax, 4
	cmp	rdx, rdi
	jne	.LBB372_49
	jmp	.LBB372_50
.LBB372_37:                             #   in Loop: Header=BB372_19 Depth=1
	mov	rax, r13
	neg	r12
	lea	rcx, [r15 + r12]
	add	rcx, -2
	cmp	rcx, 3
	jae	.LBB372_40
	jmp	.LBB372_41
.LBB372_51:
	test	rax, rax
	jne	.LBB372_53
# %bb.52:
	mov	rax, qword ptr [rsp + 104]      # 8-byte Reload
	mov	byte ptr [rax], 1
	jmp	.LBB372_53
.LBB372_30:
	mov	esi, 5
	sub	rsi, rax
.Ltmp1254:
	lea	rdi, [rsp + 312]
	call	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE15bulk_steal_leftB1v_
.Ltmp1255:
	jmp	.LBB372_53
.LBB372_31:
	mov	esi, 5
	sub	rsi, rax
.Ltmp1256:
	lea	rdi, [rsp + 368]
	call	_RNvMs10_NtNtNtCs78A21jy8lRn_5alloc11collections5btree4nodeINtB6_16BalancingContextjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoE16bulk_steal_rightB1v_
.Ltmp1257:
	jmp	.LBB372_53
.LBB372_22:
.Ltmp1262:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.352]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.353]
	mov	esi, 123
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp1263:
# %bb.26:
.LBB372_43:
.Ltmp1258:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.74]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.75]
	mov	esi, 40
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp1259:
# %bb.44:
.LBB372_32:
.Ltmp1260:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.11]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.13]
	mov	esi, 142
	call	_RNvNtCsfQL5qMWGko6_4core9panicking5panic
.Ltmp1261:
# %bb.33:
.LBB372_7:
.Ltmp1264:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 80]       # 8-byte Reload
	test	rdi, rdi
	sete	al
	cmp	qword ptr [rsp + 72], 0         # 8-byte Folded Reload
	sete	cl
	or	cl, al
	jne	.LBB372_9
# %bb.8:
	call	qword ptr [rip + free@GOTPCREL]
.LBB372_9:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end372:
	.size	_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_, .Lfunc_end372-_RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_
	.cfi_endproc
	.section	.gcc_except_table._RINvMs_NtNtNtCs78A21jy8lRn_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtNtNtNtCs3bNtqN8jaZB_3std3sys3pal4unix14stack_overflow11thread_info10ThreadInfoNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3S_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalEB1Y_,"a",@progbits
	.p2align	2, 0x0
GCC_except_table372:
.Lexception86:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end86-.Lcst_begin86
.Lcst_begin86:
	.uleb128 .Lfunc_begin86-.Lfunc_begin86  # >> Call Site 1 <<
	.uleb128 .Ltmp1248-.Lfunc_begin86       #   Call between .Lfunc_begin86 and .Ltmp1248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1248-.Lfunc_begin86       # >> Call Site 2 <<
	.uleb128 .Ltmp1251-.Ltmp1248            #   Call between .Ltmp1248 and .Ltmp1251
	.uleb128 .Ltmp1264-.Lfunc_begin86       #     jumps to .Ltmp1264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1251-.Lfunc_begin86       # >> Call Site 3 <<
	.uleb128 .Ltmp1254-.Ltmp1251            #   Call between .Ltmp1251 and .Ltmp1254
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1254-.Lfunc_begin86       # >> Call Site 4 <<
	.uleb128 .Ltmp1261-.Ltmp1254            #   Call between .Ltmp1254 and .Ltmp1261
	.uleb128 .Ltmp1264-.Lfunc_begin86       #     jumps to .Ltmp1264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1261-.Lfunc_begin86       # >> Call Site 5 <<
	.uleb128 .Lfunc_end372-.Ltmp1261        #   Call between .Ltmp1261 and .Lfunc_end372
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end86:
	.p2align	2, 0x0
                                        # -- End function
