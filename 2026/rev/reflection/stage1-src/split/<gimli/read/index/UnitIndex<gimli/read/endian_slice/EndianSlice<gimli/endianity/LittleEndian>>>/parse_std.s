	.section	.text._RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std
	.type	_RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std,@function
_RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std: # @_RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	test	rdx, rdx
	je	.LBB280_6
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
	cmp	rdx, 3
	jbe	.LBB280_12
# %bb.2:
	mov	ecx, dword ptr [rsi]
	mov	ax, 2
	cmp	rcx, 2
	je	.LBB280_4
# %bb.3:
	movzx	r8d, cx
	mov	ax, 5
	cmp	r8, 5
	jne	.LBB280_9
.LBB280_4:
	mov	r8, rdx
	and	r8, -4
	cmp	r8, 4
	jne	.LBB280_7
# %bb.5:
	add	rsi, 4
	jmp	.LBB280_12
.LBB280_6:
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore rbp
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
	mov	qword ptr [rdi], 0
	mov	qword ptr [rdi + 8], rsi
	mov	qword ptr [rdi + 16], 0
	mov	qword ptr [rdi + 24], rsi
	mov	qword ptr [rdi + 32], 0
	mov	qword ptr [rdi + 40], rsi
	mov	qword ptr [rdi + 48], 0
	mov	qword ptr [rdi + 56], rsi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 64], xmm0
	mov	qword ptr [rdi + 78], 0
	ret
.LBB280_7:
	.cfi_def_cfa_offset 56
	.cfi_offset rbx, -56
	.cfi_offset rbp, -16
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	cmp	r8, 8
	jne	.LBB280_10
# %bb.8:
	add	rsi, 8
	jmp	.LBB280_12
.LBB280_9:
	mov	byte ptr [rdi + 8], 17
	mov	qword ptr [rdi + 16], r8
	jmp	.LBB280_14
.LBB280_10:
	cmp	r8, 12
	jne	.LBB280_16
# %bb.11:
	add	rsi, 12
.LBB280_12:
	mov	dword ptr [rsp - 56], 0
	mov	byte ptr [rsp - 50], 0
	mov	word ptr [rsp - 52], 0
	movzx	eax, byte ptr [rsp - 54]
	mov	byte ptr [rdi + 11], al
	mov	word ptr [rdi + 9], 0
	mov	eax, dword ptr [rsp - 53]
	mov	byte ptr [rdi + 8], 19
	mov	dword ptr [rdi + 12], eax
.LBB280_13:
	mov	qword ptr [rdi + 16], rsi
.LBB280_14:
	mov	byte ptr [rdi], 10
.LBB280_15:
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
.LBB280_16:
	.cfi_def_cfa_offset 56
	mov	r8d, dword ptr [rsi + 4]
	mov	r9d, dword ptr [rsi + 8]
	mov	r10d, dword ptr [rsi + 12]
	test	r10, r10
	je	.LBB280_19
# %bb.17:
	cmp	r10d, r9d
	jbe	.LBB280_23
# %bb.18:
	lea	r11d, [r10 - 1]
	and	r11d, r10d
	jne	.LBB280_23
.LBB280_19:
	add	rdx, -16
	add	rsi, 16
	lea	r11, [8*r10]
	sub	rdx, r11
	jae	.LBB280_21
# %bb.20:
	mov	qword ptr [rdi + 8], 19
	jmp	.LBB280_13
.LBB280_21:
	lea	rbx, [rsi + r11]
	mov	r14, r10
	shl	r14, 2
	sub	rdx, r14
	jae	.LBB280_24
# %bb.22:
	mov	qword ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], rbx
	jmp	.LBB280_14
.LBB280_23:
	mov	byte ptr [rdi + 8], 75
	jmp	.LBB280_14
.LBB280_24:
	cmp	r8d, 8
	jbe	.LBB280_26
# %bb.25:
	mov	byte ptr [rdi + 8], 74
	jmp	.LBB280_14
.LBB280_26:
	lea	r15, [rbx + r14]
	test	r8d, r8d
	je	.LBB280_52
# %bb.27:
	cmp	ecx, 2
	jne	.LBB280_55
# %bb.28:
	cmp	rdx, 4
	jb	.LBB280_59
# %bb.29:
	mov	r12d, dword ptr [r15]
	lea	ecx, [r12 - 1]
	mov	bpl, 78
	cmp	ecx, 7
	ja	.LBB280_95
# %bb.30:
	mov	r12, r15
	lea	r15, [rdx - 4]
	mov	qword ptr [rsp - 64], r12       # 8-byte Spill
	add	r12, 4
	mov	ecx, ecx
	lea	rbp, [rip + .Lswitch.table._RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std]
	movzx	ebp, byte ptr [rbp + 8*rcx]
	cmp	r8d, 1
	je	.LBB280_58
# %bb.31:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.32:
	mov	qword ptr [rsp - 40], rbp       # 8-byte Spill
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 4]
	lea	ecx, [r12 - 1]
	cmp	ecx, 7
	ja	.LBB280_69
# %bb.33:
	lea	r15, [rdx - 8]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 8
	movabs	r13, 433761748122601729
	shl	ecx, 3
	mov	qword ptr [rsp - 48], r13       # 8-byte Spill
                                        # kill: def $cl killed $cl killed $ecx
	shr	r13, cl
	cmp	r8d, 2
	je	.LBB280_67
# %bb.34:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.35:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 8]
	lea	ecx, [r12 - 1]
	cmp	ecx, 7
	ja	.LBB280_69
# %bb.36:
	lea	r15, [rdx - 12]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 12
	shl	ecx, 3
	movabs	rbp, 433761748122601729
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 8], rbp        # 8-byte Spill
	cmp	r8d, 3
	je	.LBB280_73
# %bb.37:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.38:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 12]
	lea	ecx, [r12 - 1]
	cmp	ecx, 7
	ja	.LBB280_69
# %bb.39:
	lea	r15, [rdx - 16]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 16
	shl	ecx, 3
	movabs	rbp, 433761748122601729
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 16], rbp       # 8-byte Spill
	cmp	r8d, 4
	je	.LBB280_78
# %bb.40:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.41:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 16]
	lea	ecx, [r12 - 1]
	cmp	ecx, 7
	ja	.LBB280_69
# %bb.42:
	lea	r15, [rdx - 20]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 20
	shl	ecx, 3
	movabs	rbp, 433761748122601729
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 24], rbp       # 8-byte Spill
	cmp	r8d, 5
	je	.LBB280_83
# %bb.43:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.44:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 20]
	lea	ecx, [r12 - 1]
	cmp	ecx, 7
	ja	.LBB280_69
# %bb.45:
	lea	r15, [rdx - 24]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 24
	shl	ecx, 3
	movabs	rbp, 433761748122601729
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 32], rbp       # 8-byte Spill
	cmp	r8d, 6
	je	.LBB280_88
# %bb.46:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.47:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 24]
	lea	ecx, [r12 - 1]
	cmp	ecx, 7
	ja	.LBB280_69
# %bb.48:
	lea	r15, [rdx - 28]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 28
	shl	ecx, 3
                                        # kill: def $cl killed $cl killed $ecx
	shr	qword ptr [rsp - 48], cl        # 8-byte Folded Spill
	cmp	r8d, 7
	je	.LBB280_93
# %bb.49:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.50:
	mov	r12d, dword ptr [r12]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	mov	bpl, 78
	jae	.LBB280_95
# %bb.51:
	lea	r15, [rip + .Lswitch.table._RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std.135]
	jmp	.LBB280_100
.LBB280_52:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 32], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 8], 0          # 8-byte Folded Spill
	xor	r13d, r13d
	xor	ebp, ebp
.LBB280_53:
	mov	r12, r9
	imul	r12, r8
	shl	r12, 2
	sub	rdx, r12
	jae	.LBB280_61
# %bb.54:
	mov	qword ptr [rdi + 8], 19
	mov	qword ptr [rdi + 16], r15
	jmp	.LBB280_14
.LBB280_55:
	cmp	rdx, 3
	jbe	.LBB280_59
# %bb.56:
	mov	r12d, dword ptr [r15]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r13, r15
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	mov	bpl, 77
	cmp	r15b, 1
	jne	.LBB280_95
# %bb.57:
	lea	r15, [rdx - 4]
	mov	qword ptr [rsp - 64], r13       # 8-byte Spill
	lea	r12, [r13 + 4]
	mov	ecx, ecx
	lea	rbp, [rip + .Lswitch.table._RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std.136]
	movzx	ebp, byte ptr [rbp + 8*rcx]
	cmp	r8d, 1
	jne	.LBB280_64
.LBB280_58:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 32], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 8], 0          # 8-byte Folded Spill
	xor	r13d, r13d
	mov	rdx, r15
	mov	r15, r12
	jmp	.LBB280_53
.LBB280_59:
	mov	r12, r15
.LBB280_60:
	mov	dword ptr [rsp - 56], 0
	mov	byte ptr [rsp - 50], 0
	mov	word ptr [rsp - 52], 0
	movzx	eax, byte ptr [rsp - 54]
	mov	byte ptr [rdi + 11], al
	mov	word ptr [rdi + 9], 0
	mov	eax, dword ptr [rsp - 53]
	mov	byte ptr [rdi + 8], 19
	mov	dword ptr [rdi + 12], eax
	mov	qword ptr [rdi + 16], r12
	jmp	.LBB280_14
.LBB280_61:
	mov	qword ptr [rsp - 40], rbp       # 8-byte Spill
	mov	rbp, rcx
	lea	rcx, [r15 + r12]
	mov	qword ptr [rsp - 64], rcx       # 8-byte Spill
	cmp	rdx, r12
	jae	.LBB280_63
# %bb.62:
	mov	qword ptr [rdi + 8], 19
	mov	rax, qword ptr [rsp - 64]       # 8-byte Reload
	mov	qword ptr [rdi + 16], rax
	jmp	.LBB280_14
.LBB280_63:
	movzx	edx, byte ptr [rsp - 48]        # 1-byte Folded Reload
	shl	rdx, 48
	mov	rcx, rbp
	or	rcx, rdx
	movzx	edx, byte ptr [rsp - 32]        # 1-byte Folded Reload
	shl	rdx, 40
	movzx	ebp, byte ptr [rsp - 24]        # 1-byte Folded Reload
	shl	rbp, 32
	or	rbp, rdx
	or	rbp, rcx
	mov	rdx, qword ptr [rsp - 16]       # 8-byte Reload
	shl	edx, 24
	movzx	ecx, byte ptr [rsp - 8]         # 1-byte Folded Reload
	shl	ecx, 16
	or	rcx, rdx
	shl	r13d, 8
	movzx	edx, r13w
	or	rdx, rcx
	or	rdx, rbp
	or	rdx, qword ptr [rsp - 40]       # 8-byte Folded Reload
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rdi + 8], rsi
	mov	qword ptr [rdi + 16], r11
	mov	qword ptr [rdi + 24], rbx
	mov	qword ptr [rdi + 32], r14
	mov	qword ptr [rdi + 40], r15
	mov	qword ptr [rdi + 48], r12
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	qword ptr [rdi + 56], rcx
	mov	qword ptr [rdi + 64], r12
	mov	dword ptr [rdi + 72], r8d
	mov	dword ptr [rdi + 76], r9d
	mov	dword ptr [rdi + 80], r10d
	mov	word ptr [rdi + 84], ax
	jmp	.LBB280_15
.LBB280_64:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.65:
	mov	qword ptr [rsp - 40], rbp       # 8-byte Spill
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 4]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	cmp	r15b, 1
	jne	.LBB280_94
# %bb.66:
	lea	r15, [rdx - 8]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 8
	movabs	r13, 506100821432205313
	shl	ecx, 3
	mov	qword ptr [rsp - 48], r13       # 8-byte Spill
                                        # kill: def $cl killed $cl killed $ecx
	shr	r13, cl
	cmp	r8d, 2
	jne	.LBB280_70
.LBB280_67:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 32], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 16], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 8], 0          # 8-byte Folded Spill
.LBB280_68:
	mov	rdx, r15
	mov	r15, r12
	mov	rbp, qword ptr [rsp - 40]       # 8-byte Reload
	jmp	.LBB280_53
.LBB280_69:
	mov	bpl, 78
	jmp	.LBB280_95
.LBB280_70:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.71:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 8]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	cmp	r15b, 1
	jne	.LBB280_94
# %bb.72:
	lea	r15, [rdx - 12]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 12
	shl	ecx, 3
	movabs	rbp, 506100821432205313
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 8], rbp        # 8-byte Spill
	cmp	r8d, 3
	jne	.LBB280_75
.LBB280_73:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 32], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 24], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 16], 0         # 8-byte Folded Spill
	jmp	.LBB280_68
.LBB280_75:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.76:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 12]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	cmp	r15b, 1
	jne	.LBB280_94
# %bb.77:
	lea	r15, [rdx - 16]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 16
	shl	ecx, 3
	movabs	rbp, 506100821432205313
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 16], rbp       # 8-byte Spill
	cmp	r8d, 4
	jne	.LBB280_80
.LBB280_78:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 32], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 24], 0         # 8-byte Folded Spill
	jmp	.LBB280_68
.LBB280_80:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.81:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 16]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	cmp	r15b, 1
	jne	.LBB280_94
# %bb.82:
	lea	r15, [rdx - 20]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 20
	shl	ecx, 3
	movabs	rbp, 506100821432205313
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 24], rbp       # 8-byte Spill
	cmp	r8d, 5
	jne	.LBB280_85
.LBB280_83:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	mov	qword ptr [rsp - 32], 0         # 8-byte Folded Spill
	jmp	.LBB280_68
.LBB280_85:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.86:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 20]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	cmp	r15b, 1
	jne	.LBB280_94
# %bb.87:
	lea	r15, [rdx - 24]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 24
	shl	ecx, 3
	movabs	rbp, 506100821432205313
                                        # kill: def $cl killed $cl killed $ecx
	shr	rbp, cl
	mov	qword ptr [rsp - 32], rbp       # 8-byte Spill
	cmp	r8d, 6
	jne	.LBB280_90
.LBB280_88:
	xor	ecx, ecx
	mov	qword ptr [rsp - 48], 0         # 8-byte Folded Spill
	jmp	.LBB280_68
.LBB280_90:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.91:
	mov	rcx, qword ptr [rsp - 64]       # 8-byte Reload
	mov	r12d, dword ptr [rcx + 24]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	and	r15b, bpl
	cmp	r15b, 1
	jne	.LBB280_94
# %bb.92:
	lea	r15, [rdx - 28]
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 28
	shl	ecx, 3
                                        # kill: def $cl killed $cl killed $ecx
	shr	qword ptr [rsp - 48], cl        # 8-byte Folded Spill
	cmp	r8d, 7
	jne	.LBB280_97
.LBB280_93:
	xor	ecx, ecx
	jmp	.LBB280_68
.LBB280_94:
	mov	bpl, 77
.LBB280_95:
	mov	byte ptr [rdi + 8], bpl
	mov	dword ptr [rdi + 12], r12d
	jmp	.LBB280_14
.LBB280_97:
	cmp	r15, 4
	jb	.LBB280_60
# %bb.98:
	mov	r12d, dword ptr [r12]
	lea	ecx, [r12 - 1]
	cmp	ecx, 8
	setb	bpl
	mov	r15b, -3
	shr	r15b, cl
	test	bpl, r15b
	mov	bpl, 77
	je	.LBB280_95
# %bb.99:
	lea	r15, [rip + .Lswitch.table._RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std.137]
.LBB280_100:
	mov	r12, qword ptr [rsp - 64]       # 8-byte Reload
	add	r12, 32
	add	rdx, -32
	mov	ecx, ecx
	movzx	ecx, byte ptr [r15 + 8*rcx + 7]
	mov	r15, r12
	shl	rcx, 56
	mov	rbp, qword ptr [rsp - 40]       # 8-byte Reload
	jmp	.LBB280_53
.Lfunc_end280:
	.size	_RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std, .Lfunc_end280-_RNvMs8_NtNtCsktQxXQGZjIy_5gimli4read5indexINtB5_9UnitIndexINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5parseCs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
