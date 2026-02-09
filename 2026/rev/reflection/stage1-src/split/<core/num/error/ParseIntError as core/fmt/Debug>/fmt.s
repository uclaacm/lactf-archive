	.section	.text._RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt
	.type	_RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt,@function
_RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt: # @_RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt
	.cfi_startproc
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
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	r12, qword ptr [rsi + 8]
	mov	rax, qword ptr [r12 + 24]
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.154]
	mov	edx, 13
	mov	rdi, rbx
	mov	r13, rax
	call	rax
	mov	bpl, 1
	test	al, al
	je	.LBB75_1
.LBB75_13:
	mov	eax, ebp
	add	rsp, 40
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
.LBB75_1:
	.cfi_def_cfa_offset 96
	test	byte ptr [r15 + 18], -128
	jne	.LBB75_7
# %bb.2:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.74]
	mov	edx, 3
	mov	rdi, rbx
	mov	r15, r13
	call	r13
	test	al, al
	jne	.LBB75_13
# %bb.3:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.155]
	mov	edx, 4
	mov	rdi, rbx
	call	r15
	test	al, al
	jne	.LBB75_13
# %bb.4:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.31]
	mov	edx, 2
	mov	rdi, rbx
	call	r15
	test	al, al
	jne	.LBB75_13
# %bb.5:
	movzx	eax, byte ptr [r14]
	lea	rcx, [rip + .Lswitch.table._RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt.133]
	mov	rdx, qword ptr [rcx + 8*rax]
	lea	rcx, [rip + .Lswitch.table._RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt.132.rel]
	movsxd	rsi, dword ptr [rcx + 4*rax]
	add	rsi, rcx
	mov	rdi, rbx
	call	r15
	test	al, al
	jne	.LBB75_13
# %bb.6:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.75]
	mov	edx, 2
	mov	rdi, rbx
	mov	rax, r15
	add	rsp, 40
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
	jmp	rax                             # TAILCALL
.LBB75_7:
	.cfi_def_cfa_offset 96
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.41]
	mov	edx, 3
	mov	rdi, rbx
	call	r13
	test	al, al
	jne	.LBB75_13
# %bb.8:
	mov	byte ptr [rsp + 15], 1
	mov	qword ptr [rsp + 16], rbx
	mov	qword ptr [rsp + 24], r12
	lea	rax, [rsp + 15]
	mov	qword ptr [rsp + 32], rax
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.155]
	lea	rdi, [rsp + 16]
	mov	edx, 4
	call	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	test	al, al
	jne	.LBB75_13
# %bb.9:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.31]
	lea	rdi, [rsp + 16]
	mov	edx, 2
	call	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	test	al, al
	jne	.LBB75_13
# %bb.10:
	movzx	eax, byte ptr [r14]
	lea	rcx, [rip + .Lswitch.table._RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt.133]
	mov	rdx, qword ptr [rcx + 8*rax]
	lea	rcx, [rip + .Lswitch.table._RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt.134.rel]
	movsxd	rsi, dword ptr [rcx + 4*rax]
	add	rsi, rcx
	lea	rdi, [rsp + 16]
	call	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	test	al, al
	jne	.LBB75_13
# %bb.11:
	lea	rsi, [rip + .Lanon.d5d3fb2753c9188cafcf94e7b22ba015.42]
	lea	rdi, [rsp + 16]
	mov	edx, 2
	call	_RNvXs0_NtNtCsfQL5qMWGko6_4core3fmt8buildersNtB5_10PadAdapterNtB7_5Write9write_str
	test	al, al
	jne	.LBB75_13
# %bb.12:
	lea	rsi, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.33]
	mov	edx, 1
	mov	rdi, rbx
	call	r13
	mov	ebp, eax
	jmp	.LBB75_13
.Lfunc_end75:
	.size	_RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt, .Lfunc_end75-_RNvXsc_NtNtCsfQL5qMWGko6_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt
	.cfi_endproc
                                        # -- End function
