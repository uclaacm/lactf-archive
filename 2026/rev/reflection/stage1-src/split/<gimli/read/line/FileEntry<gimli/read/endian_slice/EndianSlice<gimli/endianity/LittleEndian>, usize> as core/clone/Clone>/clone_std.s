	.section	.text._RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std
	.type	_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std,@function
_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std: # @_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	movabs	rdx, -4294967296
	mov	rax, qword ptr [rsi]
	lea	rcx, [rip + .LJTI179_0]
	movsxd	r8, dword ptr [rcx + 4*rax]
	add	r8, rcx
	jmp	r8
.LBB179_1:
	mov	rcx, qword ptr [rsi + 8]
	mov	r8d, ecx
	shr	r8d, 8
	mov	r9, rcx
	shr	r9, 16
	mov	r10, rcx
	and	r10, rdx
	jmp	.LBB179_5
.LBB179_2:
	movzx	ecx, byte ptr [rsi + 8]
	xor	r8d, r8d
.LBB179_3:
	xor	r9d, r9d
.LBB179_4:
	xor	r10d, r10d
.LBB179_5:
                                        # implicit-def: $r11
.LBB179_6:
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
	movups	xmm0, xmmword ptr [rsi + 48]
	mov	r14, qword ptr [rsi + 64]
	mov	rbx, qword ptr [rsi + 24]
                                        # implicit-def: $r15
                                        # implicit-def: $rbp
	cmp	rbx, 46
	je	.LBB179_14
# %bb.7:
	lea	r15, [rip + .LJTI179_1]
	movsxd	r12, dword ptr [r15 + 4*rbx]
	add	r12, r15
	jmp	r12
.LBB179_8:
	mov	r15, qword ptr [rsi + 32]
	mov	r12d, r15d
	shr	r12d, 8
	mov	r13, r15
	shr	r13, 16
	and	rdx, r15
	jmp	.LBB179_12
.LBB179_9:
	movzx	r15d, byte ptr [rsi + 32]
	xor	r12d, r12d
.LBB179_10:
	xor	r13d, r13d
.LBB179_11:
	xor	edx, edx
.LBB179_12:
                                        # implicit-def: $rbp
.LBB179_13:
	shl	r12d, 8
	movzx	r15d, r15b
	or	r15d, r12d
	shl	r13d, 16
	movzx	r15d, r15w
	or	r15d, r13d
	or	r15, rdx
.LBB179_14:
	mov	qword ptr [rdi], rax
	shl	r8d, 8
	movzx	eax, cl
	or	eax, r8d
	shl	r9d, 16
	movzx	eax, ax
	or	eax, r9d
	or	r10, rax
	mov	qword ptr [rdi + 8], r10
	mov	qword ptr [rdi + 16], r11
	movups	xmmword ptr [rdi + 48], xmm0
	mov	qword ptr [rdi + 64], r14
	movups	xmm0, xmmword ptr [rsi + 72]
	movups	xmmword ptr [rdi + 72], xmm0
	mov	qword ptr [rdi + 24], rbx
	mov	qword ptr [rdi + 32], r15
	mov	qword ptr [rdi + 40], rbp
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
.LBB179_15:
	.cfi_restore rbx
	.cfi_restore rbp
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
	mov	rcx, qword ptr [rsi + 8]
	mov	r11, qword ptr [rsi + 16]
	mov	r8d, ecx
	shr	r8d, 8
	mov	r9, rcx
	shr	r9, 16
	mov	r10, rcx
	and	r10, rdx
	jmp	.LBB179_6
.LBB179_16:
	movzx	ecx, word ptr [rsi + 8]
	mov	r8d, ecx
	shr	r8d, 8
	jmp	.LBB179_3
.LBB179_17:
	.cfi_def_cfa_offset 56
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r15, qword ptr [rsi + 32]
	mov	rbp, qword ptr [rsi + 40]
	mov	r12d, r15d
	shr	r12d, 8
	mov	r13, r15
	shr	r13, 16
	and	rdx, r15
	jmp	.LBB179_13
.LBB179_18:
	movzx	r15d, word ptr [rsi + 32]
	mov	r12d, r15d
	shr	r12d, 8
	jmp	.LBB179_10
.LBB179_19:
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore rbp
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
	mov	ecx, dword ptr [rsi + 8]
	mov	r8d, ecx
	shr	r8d, 8
	mov	r9d, ecx
	shr	r9d, 16
	jmp	.LBB179_4
.LBB179_20:
	.cfi_def_cfa_offset 56
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r15d, dword ptr [rsi + 32]
	mov	r12d, r15d
	shr	r12d, 8
	mov	r13d, r15d
	shr	r13d, 16
	jmp	.LBB179_11
.Lfunc_end179:
	.size	_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std, .Lfunc_end179-_RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvXs11_NtNtCsktQxXQGZjIy_5gimli4read4lineINtB6_9FileEntryINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity12LittleEndianEjENtNtCsfQL5qMWGko6_4core5clone5Clone5cloneCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI179_0:
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_15-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_16-.LJTI179_0
	.long	.LBB179_19-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_15-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_15-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_16-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_2-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
	.long	.LBB179_1-.LJTI179_0
.LJTI179_1:
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_17-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_18-.LJTI179_1
	.long	.LBB179_20-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_17-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_17-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_18-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_9-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
	.long	.LBB179_8-.LJTI179_1
                                        # -- End function
