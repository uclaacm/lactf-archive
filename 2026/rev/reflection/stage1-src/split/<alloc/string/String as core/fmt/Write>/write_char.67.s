	.section	.text._RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67
	.type	_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67,@function
_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67: # @_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, qword ptr [rdi + 16]
	mov	r14d, 1
	cmp	esi, 128
	jb	.LBB20_3
# %bb.1:
	mov	r14d, 2
	cmp	esi, 2048
	jb	.LBB20_3
# %bb.2:
	cmp	esi, 65536
	mov	r14d, 4
	sbb	r14, 0
.LBB20_3:
	mov	rcx, qword ptr [rdi]
	sub	rcx, rbx
	mov	rax, rbx
	cmp	r14, rcx
	ja	.LBB20_4
# %bb.5:
	mov	rcx, qword ptr [rdi + 8]
	cmp	esi, 128
	jae	.LBB20_6
.LBB20_12:
	mov	byte ptr [rcx + rax], sil
	jmp	.LBB20_11
.LBB20_4:
	mov	ecx, 1
	mov	r8d, 1
	mov	r15, rdi
	mov	ebp, esi
	mov	rsi, rbx
	mov	rdx, r14
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
	mov	esi, ebp
	mov	rdi, r15
	mov	rax, qword ptr [r15 + 16]
	mov	rcx, qword ptr [rdi + 8]
	cmp	esi, 128
	jb	.LBB20_12
.LBB20_6:
	mov	edx, esi
	and	dl, 63
	or	dl, -128
	mov	r8d, esi
	shr	r8d, 6
	cmp	esi, 2048
	jae	.LBB20_8
# %bb.7:
	or	r8b, -64
	mov	byte ptr [rcx + rax], r8b
	mov	byte ptr [rcx + rax + 1], dl
	jmp	.LBB20_11
.LBB20_8:
	and	r8b, 63
	or	r8b, -128
	mov	r9d, esi
	shr	r9d, 12
	cmp	esi, 65535
	ja	.LBB20_10
# %bb.9:
	or	r9b, -32
	mov	byte ptr [rcx + rax], r9b
	mov	byte ptr [rcx + rax + 1], r8b
	mov	byte ptr [rcx + rax + 2], dl
	jmp	.LBB20_11
.LBB20_10:
	and	r9b, 63
	or	r9b, -128
	shr	esi, 18
	or	sil, -16
	mov	byte ptr [rcx + rax], sil
	mov	byte ptr [rcx + rax + 1], r9b
	mov	byte ptr [rcx + rax + 2], r8b
	mov	byte ptr [rcx + rax + 3], dl
.LBB20_11:
	add	r14, rbx
	mov	qword ptr [rdi + 16], r14
	xor	eax, eax
	add	rsp, 8
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
.Lfunc_end20:
	.size	_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67, .Lfunc_end20-_RNvXsW_NtCs78A21jy8lRn_5alloc6stringNtB5_6StringNtNtCsfQL5qMWGko6_4core3fmt5Write10write_char.67
	.cfi_endproc
                                        # -- End function
