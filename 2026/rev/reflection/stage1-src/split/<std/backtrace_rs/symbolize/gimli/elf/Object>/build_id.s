	.section	.text._RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id
	.type	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id,@function
_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id: # @_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id
	.cfi_startproc
# %bb.0:
	mov	rcx, qword ptr [rdi + 48]
	test	rcx, rcx
	je	.LBB142_1
# %bb.3:
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
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rsi, qword ptr [rdi + 40]
	shl	rcx, 6
	add	rcx, rsi
	mov	rax, qword ptr [rdi + 24]
	mov	qword ptr [rsp - 16], rax       # 8-byte Spill
	mov	rax, qword ptr [rdi + 32]
	mov	qword ptr [rsp - 8], rax        # 8-byte Spill
	mov	r10d, 1
	jmp	.LBB142_4
	.p2align	4
.LBB142_24:                             #   in Loop: Header=BB142_4 Depth=1
	add	rsi, 64
	cmp	rsi, rcx
	je	.LBB142_25
.LBB142_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB142_13 Depth 2
                                        #       Child Loop BB142_17 Depth 3
	cmp	dword ptr [rsi + 4], 7
	jne	.LBB142_24
# %bb.5:                                #   in Loop: Header=BB142_4 Depth=1
	mov	r11, qword ptr [rsi + 32]
	test	r11, r11
	je	.LBB142_6
# %bb.7:                                #   in Loop: Header=BB142_4 Depth=1
	mov	rax, qword ptr [rsi + 24]
	mov	rdx, qword ptr [rsp - 8]        # 8-byte Reload
	sub	rdx, rax
	setb	dil
	cmp	r11, rdx
	seta	dl
	or	dl, dil
	jne	.LBB142_24
# %bb.8:                                #   in Loop: Header=BB142_4 Depth=1
	add	rax, qword ptr [rsp - 16]       # 8-byte Folded Reload
	mov	rdx, qword ptr [rsi + 48]
	mov	ebx, 4
	cmp	rdx, 5
	jae	.LBB142_10
	jmp	.LBB142_11
.LBB142_6:                              #   in Loop: Header=BB142_4 Depth=1
	mov	eax, 1
	mov	rdx, qword ptr [rsi + 48]
	mov	ebx, 4
	cmp	rdx, 5
	jb	.LBB142_11
.LBB142_10:                             #   in Loop: Header=BB142_4 Depth=1
	mov	ebx, 8
	cmp	rdx, 8
	jne	.LBB142_24
.LBB142_11:                             #   in Loop: Header=BB142_4 Depth=1
	cmp	r11, 12
	jb	.LBB142_24
# %bb.12:                               #   in Loop: Header=BB142_4 Depth=1
	lea	r14, [rbx + 11]
	mov	r15, rbx
	neg	r15
	dec	rbx
	.p2align	4
.LBB142_13:                             #   Parent Loop BB142_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB142_17 Depth 3
	mov	r9d, dword ptr [rax]
	lea	rdx, [r11 - 12]
	cmp	rdx, r9
	jb	.LBB142_24
# %bb.14:                               #   in Loop: Header=BB142_13 Depth=2
	lea	r12, [r14 + r9]
	and	r12, r15
	mov	rdi, r11
	sub	rdi, r12
	jb	.LBB142_24
# %bb.15:                               #   in Loop: Header=BB142_13 Depth=2
	mov	edx, dword ptr [rax + 4]
	cmp	rdi, rdx
	jb	.LBB142_24
# %bb.16:                               #   in Loop: Header=BB142_13 Depth=2
	lea	rbp, [rbx + r12]
	add	rbp, rdx
	and	rbp, r15
	lea	r8, [rax + rbp]
	mov	r13, r11
	sub	r13, rbp
	mov	edi, 0
	cmovb	r13, rdi
	cmovb	r8, r10
	.p2align	4
.LBB142_17:                             #   Parent Loop BB142_4 Depth=1
                                        #     Parent Loop BB142_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	rdi, r9
	sub	r9, 1
	jb	.LBB142_22
# %bb.18:                               #   in Loop: Header=BB142_17 Depth=3
	cmp	byte ptr [rax + rdi + 11], 0
	je	.LBB142_17
# %bb.19:                               #   in Loop: Header=BB142_13 Depth=2
	cmp	rdi, 3
	jne	.LBB142_22
# %bb.20:                               #   in Loop: Header=BB142_13 Depth=2
	movzx	edi, word ptr [rax + 12]
	xor	edi, 20039
	movzx	r9d, byte ptr [rax + 14]
	xor	r9d, 85
	or	r9w, di
	jne	.LBB142_22
# %bb.21:                               #   in Loop: Header=BB142_13 Depth=2
	cmp	dword ptr [rax + 8], 3
	je	.LBB142_26
	.p2align	4
.LBB142_22:                             #   in Loop: Header=BB142_13 Depth=2
	cmp	r11, rbp
	jb	.LBB142_24
# %bb.23:                               #   in Loop: Header=BB142_13 Depth=2
	mov	rax, r8
	mov	r11, r13
	cmp	r13, 12
	jae	.LBB142_13
	jmp	.LBB142_24
.LBB142_25:
                                        # implicit-def: $rdx
	xor	eax, eax
.LBB142_27:
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
	.cfi_restore rbx
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
	.cfi_restore rbp
	ret
.LBB142_1:
	xor	eax, eax
                                        # implicit-def: $rdx
	ret
.LBB142_26:
	.cfi_def_cfa_offset 56
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	add	rax, r12
	jmp	.LBB142_27
.Lfunc_end142:
	.size	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id, .Lfunc_end142-_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object8build_id
	.cfi_endproc
                                        # -- End function
