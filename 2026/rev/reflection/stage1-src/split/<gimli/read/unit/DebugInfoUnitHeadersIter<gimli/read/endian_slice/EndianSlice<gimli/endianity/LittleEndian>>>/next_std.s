	.section	.text._RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	.type	_RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std,@function
_RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std: # @_RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rdx, qword ptr [rsi + 8]
	test	rdx, rdx
	je	.LBB163_5
# %bb.1:
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
	mov	rcx, qword ptr [rsi]
	cmp	rdx, 3
	jbe	.LBB163_6
# %bb.2:
	mov	r8, qword ptr [rsi + 16]
	lea	r9, [rdx - 4]
	lea	rax, [rcx + 4]
	mov	ebp, dword ptr [rcx]
	mov	r10d, ebp
	shr	r10d, 4
	cmp	r10d, 268435455
	jb	.LBB163_8
# %bb.3:
	cmp	ebp, -1
	je	.LBB163_10
# %bb.4:
	mov	r13d, 16
                                        # implicit-def: $rax
	jmp	.LBB163_7
.LBB163_5:
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore rbp
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
	mov	qword ptr [rdi], 2
	ret
.LBB163_6:
	.cfi_def_cfa_offset 56
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	dword ptr [rsp - 24], 0
	mov	byte ptr [rsp - 18], 0
	mov	word ptr [rsp - 20], 0
	mov	r13d, dword ptr [rsp - 21]
	shl	r13, 32
	or	r13, 19
	mov	rax, rcx
.LBB163_7:
	mov	r12, rax
	shr	r12, 8
	mov	ecx, r13d
	shr	ecx, 8
	mov	rdx, r13
	shr	rdx, 16
	mov	r8, rdx
	and	r8, -65536
	jmp	.LBB163_20
.LBB163_8:
	mov	r11b, 4
	mov	r10, rbp
	sub	r9, r10
	jae	.LBB163_12
.LBB163_9:
	mov	r12, rax
	shr	r12, 8
	mov	r13d, 19
	xor	edx, edx
	jmp	.LBB163_18
.LBB163_10:
	cmp	r9, 7
	jbe	.LBB163_22
# %bb.11:
	lea	r9, [rdx - 12]
	lea	rax, [rcx + 12]
	movzx	r11d, byte ptr [rcx + 11]
	movzx	r10d, word ptr [rcx + 8]
	movzx	ebx, byte ptr [rcx + 10]
	shl	ebx, 16
	or	ebx, r10d
	mov	r10d, dword ptr [rcx + 4]
	shl	rbx, 40
	shl	r10, 8
	or	r10, rbx
	shrd	r10, r11, 8
	mov	r11b, 8
	sub	r9, r10
	jb	.LBB163_9
.LBB163_12:
	lea	rcx, [rax + r10]
	mov	qword ptr [rsi], rcx
	mov	qword ptr [rsi + 8], r9
	cmp	r10, 1
	jbe	.LBB163_17
# %bb.13:
	lea	rcx, [r10 - 2]
	lea	r14, [rax + 2]
	movzx	ebx, word ptr [rax]
	mov	r15d, ebx
	add	r15d, -2
	cmp	r15w, 3
	jae	.LBB163_23
# %bb.14:
	cmp	ebp, -16
	jb	.LBB163_27
# %bb.15:
	cmp	rcx, 7
	jbe	.LBB163_35
# %bb.16:
	lea	r14, [r10 - 10]
	lea	rbp, [rax + 10]
	movzx	ecx, byte ptr [rax + 9]
	movzx	r15d, word ptr [rax + 6]
	movzx	r12d, byte ptr [rax + 8]
	shl	r12d, 16
	or	r12d, r15d
	mov	r15d, dword ptr [rax + 2]
	shl	r12, 40
	shl	r15, 8
	or	r15, r12
	shrd	r15, rcx, 8
	jmp	.LBB163_29
.LBB163_17:
	mov	word ptr [rsp - 8], 0
	mov	dword ptr [rsp - 6], 0
	movzx	edx, word ptr [rsp - 7]
	mov	r12, rax
	shr	r12, 8
	mov	r13d, 19
.LBB163_18:
	xor	ecx, ecx
.LBB163_19:
	xor	r8d, r8d
.LBB163_20:
	movzx	edx, dx
	or	rdx, r8
	shl	rdx, 16
	movzx	ecx, cl
	shl	ecx, 8
	or	rcx, rdx
	movzx	edx, r13b
	or	rdx, rcx
	shl	r12, 8
	movzx	eax, al
	or	rax, r12
	mov	qword ptr [rsi], 1
	mov	qword ptr [rsi + 8], 0
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 16], rax
	mov	qword ptr [rdi], 3
.LBB163_21:
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
.LBB163_22:
	.cfi_def_cfa_offset 56
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r13d, 19
	jmp	.LBB163_7
.LBB163_23:
	cmp	bx, 5
	jne	.LBB163_36
# %bb.24:
	test	rcx, rcx
	je	.LBB163_35
# %bb.25:
	cmp	r10, 3
	jne	.LBB163_38
# %bb.26:
	add	rax, 3
	mov	r13d, 19
	xor	ecx, ecx
	jmp	.LBB163_44
.LBB163_27:
	cmp	rcx, 3
	jbe	.LBB163_35
# %bb.28:
	lea	r14, [r10 - 6]
	mov	r15d, dword ptr [rax + 2]
	add	rax, 6
	mov	rbp, rax
.LBB163_29:
	test	r14, r14
	je	.LBB163_37
# %bb.30:
	movzx	ecx, byte ptr [rbp]
	mov	r13d, 25
	cmp	ecx, 8
	ja	.LBB163_43
# %bb.31:
	mov	eax, 278
	bt	eax, ecx
	jae	.LBB163_43
# %bb.32:
	dec	r14
	inc	rbp
	xor	r12d, r12d
	mov	rax, rbp
                                        # implicit-def: $r13
.LBB163_33:
                                        # implicit-def: $rbp
.LBB163_34:
	add	rdx, r8
	sub	rdx, r9
	mov	qword ptr [rsi + 16], rdx
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], r8
	mov	qword ptr [rdi + 16], r12
	mov	qword ptr [rdi + 24], r13
	mov	qword ptr [rdi + 32], rbp
	mov	qword ptr [rdi + 40], rax
	mov	qword ptr [rdi + 48], r14
	mov	qword ptr [rdi + 56], r10
	mov	qword ptr [rdi + 64], r15
	mov	byte ptr [rdi + 72], cl
	mov	byte ptr [rdi + 73], r11b
	mov	word ptr [rdi + 74], bx
	jmp	.LBB163_21
.LBB163_35:
	mov	r12, r14
	shr	r12, 8
	mov	r13d, 19
	xor	edx, edx
	xor	ecx, ecx
	mov	rax, r14
	jmp	.LBB163_19
.LBB163_36:
	movzx	eax, bx
	mov	r12d, eax
	shr	r12d, 8
	mov	r13d, 17
	xor	r8d, r8d
                                        # implicit-def: $dx
                                        # implicit-def: $cl
	jmp	.LBB163_20
.LBB163_37:
	mov	r13d, 19
	xor	ecx, ecx
	mov	rax, rbp
	jmp	.LBB163_44
.LBB163_38:
	movzx	ecx, byte ptr [rax + 3]
	mov	r13d, 25
	cmp	ecx, 8
	ja	.LBB163_43
# %bb.39:
	mov	r14d, 278
	bt	r14d, ecx
	jae	.LBB163_43
# %bb.40:
	movzx	r13d, byte ptr [rax + 2]
	lea	r14, [r10 - 4]
	cmp	ebp, -16
	jb	.LBB163_45
# %bb.41:
	cmp	r14, 7
	jbe	.LBB163_53
# %bb.42:
	lea	r14, [r10 - 12]
	movzx	r15d, byte ptr [rax + 11]
	mov	qword ptr [rsp - 32], r15       # 8-byte Spill
	movzx	r12d, word ptr [rax + 8]
	mov	qword ptr [rsp - 40], r13       # 8-byte Spill
	movzx	r13d, byte ptr [rax + 10]
	mov	r15d, dword ptr [rax + 4]
	add	rax, 12
	shl	r13d, 16
	or	r13d, r12d
	shl	r13, 40
	shl	r15, 8
	or	r15, r13
	mov	r13, qword ptr [rsp - 40]       # 8-byte Reload
	mov	r12, qword ptr [rsp - 32]       # 8-byte Reload
	shrd	r15, r12, 8
	jmp	.LBB163_47
.LBB163_43:
                                        # implicit-def: $rax
.LBB163_44:
	mov	r12, rax
	shr	r12, 8
	xor	edx, edx
	jmp	.LBB163_19
.LBB163_45:
	cmp	r14, 3
	jbe	.LBB163_53
# %bb.46:
	lea	r14, [r10 - 8]
	mov	r15d, dword ptr [rax + 4]
	add	rax, 8
.LBB163_47:
	xor	r12d, r12d
	dec	r13d
	cmp	r13d, 5
	ja	.LBB163_64
# %bb.48:
	mov	qword ptr [rsp - 40], r14       # 8-byte Spill
	lea	r14, [rip + .LJTI163_0]
	movsxd	r13, dword ptr [r14 + 4*r13]
	lea	r14, [rip + .LJTI163_0]
	add	r13, r14
	jmp	r13
.LBB163_49:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	cmp	r14, 7
	jbe	.LBB163_9
# %bb.50:
	lea	r12, [r14 - 8]
	mov	qword ptr [rsp - 32], r12       # 8-byte Spill
	movzx	r12d, byte ptr [rax + 7]
	mov	qword ptr [rsp - 16], r12       # 8-byte Spill
	movzx	r13d, word ptr [rax + 4]
	movzx	r12d, byte ptr [rax + 6]
	shl	r12d, 16
	or	r12d, r13d
	mov	r13d, dword ptr [rax]
	shl	r12, 40
	shl	r13, 8
	or	r13, r12
	mov	r12, qword ptr [rsp - 16]       # 8-byte Reload
	shrd	r13, r12, 8
	cmp	ebp, -16
	jb	.LBB163_65
# %bb.51:
	cmp	qword ptr [rsp - 32], 7         # 8-byte Folded Reload
	jbe	.LBB163_70
# %bb.52:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	add	r14, -16
	movzx	r12d, byte ptr [rax + 15]
	mov	qword ptr [rsp - 40], r12       # 8-byte Spill
	movzx	ebp, word ptr [rax + 12]
	mov	dword ptr [rsp - 32], ebp       # 4-byte Spill
	movzx	r12d, byte ptr [rax + 14]
	mov	ebp, dword ptr [rax + 8]
	add	rax, 16
	shl	r12d, 16
	add	r12d, dword ptr [rsp - 32]      # 4-byte Folded Reload
	shl	r12, 40
	shl	rbp, 8
	or	rbp, r12
	mov	r12, qword ptr [rsp - 40]       # 8-byte Reload
	shrd	rbp, r12, 8
	mov	r12d, 1
	jmp	.LBB163_34
.LBB163_53:
	add	rax, 4
	jmp	.LBB163_9
.LBB163_54:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	cmp	r14, 7
	jbe	.LBB163_9
# %bb.55:
	add	r14, -8
	movzx	r12d, byte ptr [rax + 7]
	mov	qword ptr [rsp - 40], r12       # 8-byte Spill
	movzx	ebp, word ptr [rax + 4]
	movzx	r12d, byte ptr [rax + 6]
	mov	r13d, dword ptr [rax]
	add	rax, 8
	shl	r12d, 16
	or	r12d, ebp
	shl	r12, 40
	shl	r13, 8
	or	r13, r12
	mov	r12, qword ptr [rsp - 40]       # 8-byte Reload
	shrd	r13, r12, 8
	mov	r12d, 4
	jmp	.LBB163_33
.LBB163_56:
	mov	r12d, 2
.LBB163_57:
                                        # implicit-def: $r13
                                        # implicit-def: $rbp
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	jmp	.LBB163_34
.LBB163_58:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	cmp	r14, 7
	jbe	.LBB163_9
# %bb.59:
	add	r14, -8
	movzx	r12d, byte ptr [rax + 7]
	mov	qword ptr [rsp - 40], r12       # 8-byte Spill
	movzx	ebp, word ptr [rax + 4]
	movzx	r12d, byte ptr [rax + 6]
	mov	r13d, dword ptr [rax]
	add	rax, 8
	shl	r12d, 16
	or	r12d, ebp
	shl	r12, 40
	shl	r13, 8
	or	r13, r12
	mov	r12, qword ptr [rsp - 40]       # 8-byte Reload
	shrd	r13, r12, 8
	mov	r12d, 3
	jmp	.LBB163_33
.LBB163_60:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	cmp	r14, 7
	jbe	.LBB163_9
# %bb.61:
	lea	r12, [r14 - 8]
	mov	qword ptr [rsp - 32], r12       # 8-byte Spill
	movzx	r12d, byte ptr [rax + 7]
	mov	qword ptr [rsp - 16], r12       # 8-byte Spill
	movzx	r13d, word ptr [rax + 4]
	movzx	r12d, byte ptr [rax + 6]
	shl	r12d, 16
	or	r12d, r13d
	mov	r13d, dword ptr [rax]
	shl	r12, 40
	shl	r13, 8
	or	r13, r12
	mov	r12, qword ptr [rsp - 16]       # 8-byte Reload
	shrd	r13, r12, 8
	cmp	ebp, -16
	jb	.LBB163_67
# %bb.62:
	cmp	qword ptr [rsp - 32], 7         # 8-byte Folded Reload
	jbe	.LBB163_70
# %bb.63:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	add	r14, -16
	movzx	r12d, byte ptr [rax + 15]
	mov	qword ptr [rsp - 40], r12       # 8-byte Spill
	movzx	ebp, word ptr [rax + 12]
	mov	dword ptr [rsp - 32], ebp       # 4-byte Spill
	movzx	r12d, byte ptr [rax + 14]
	mov	ebp, dword ptr [rax + 8]
	add	rax, 16
	shl	r12d, 16
	add	r12d, dword ptr [rsp - 32]      # 4-byte Folded Reload
	shl	r12, 40
	shl	rbp, 8
	or	rbp, r12
	mov	r12, qword ptr [rsp - 40]       # 8-byte Reload
	shrd	rbp, r12, 8
	jmp	.LBB163_69
.LBB163_64:
	mov	r13d, 66
                                        # implicit-def: $dx
                                        # implicit-def: $cl
	xor	eax, eax
	jmp	.LBB163_19
.LBB163_65:
	cmp	qword ptr [rsp - 32], 3         # 8-byte Folded Reload
	jbe	.LBB163_70
# %bb.66:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	add	r14, -12
	mov	ebp, dword ptr [rax + 8]
	add	rax, 12
	mov	r12d, 1
	jmp	.LBB163_34
.LBB163_67:
	cmp	qword ptr [rsp - 32], 3         # 8-byte Folded Reload
	jbe	.LBB163_70
# %bb.68:
	mov	r14, qword ptr [rsp - 40]       # 8-byte Reload
	add	r14, -12
	mov	ebp, dword ptr [rax + 8]
	add	rax, 12
.LBB163_69:
	mov	r12d, 5
	jmp	.LBB163_34
.LBB163_70:
	add	rax, 8
	jmp	.LBB163_9
.Lfunc_end163:
	.size	_RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std, .Lfunc_end163-_RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMs6_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE4nextCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI163_0:
	.long	.LBB163_57-.LJTI163_0
	.long	.LBB163_49-.LJTI163_0
	.long	.LBB163_56-.LJTI163_0
	.long	.LBB163_58-.LJTI163_0
	.long	.LBB163_54-.LJTI163_0
	.long	.LBB163_60-.LJTI163_0
                                        # -- End function
