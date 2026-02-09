	.section	.text._RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext
	.type	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext,@function
_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext: # @_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	ebx, esi
	cmp	esi, 39
	ja	.LBB80_1
# %bb.20:
	mov	eax, ebx
	lea	rcx, [rip + .LJTI80_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB80_5:
	mov	word ptr [rdi], 12380
	jmp	.LBB80_6
.LBB80_1:
	cmp	ebx, 92
	jne	.LBB80_2
# %bb.10:
	mov	word ptr [rdi], 23644
	jmp	.LBB80_6
.LBB80_2:
	cmp	ebx, 768
	setae	al
	test	dl, al
	je	.LBB80_15
# %bb.3:
	mov	r14, rdi
	mov	edi, ebx
	call	_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow
	mov	rdi, r14
	test	al, al
	je	.LBB80_15
# %bb.4:
	mov	eax, ebx
	or	eax, 1
	bsr	ecx, eax
	xor	ecx, 28
	shr	ecx, 2
	lea	rax, [rcx - 2]
	mov	byte ptr [rsp + 6], 0
	mov	word ptr [rsp + 4], 0
	mov	esi, ebx
	shr	esi, 20
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 7], sil
	mov	esi, ebx
	shr	esi, 16
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 8], sil
	mov	esi, ebx
	shr	esi, 12
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 9], sil
	mov	esi, ebx
	shr	esi, 8
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 10], sil
	mov	esi, ebx
	shr	esi, 4
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 11], sil
	and	ebx, 15
	movzx	edx, byte ptr [rbx + rdx]
	mov	byte ptr [rsp + 12], dl
	mov	byte ptr [rsp + 13], 125
	mov	word ptr [rsp + rcx + 2], 30044
	mov	byte ptr [rsp + rcx + 4], 123
	movzx	ecx, word ptr [rsp + 12]
	mov	word ptr [rdi + 8], cx
	mov	rcx, qword ptr [rsp + 4]
	mov	qword ptr [rdi], rcx
	jmp	.LBB80_17
.LBB80_9:
	mov	word ptr [rdi], 28252
	jmp	.LBB80_6
.LBB80_12:
	test	edx, 256
	je	.LBB80_15
# %bb.13:
	mov	word ptr [rdi], 10076
	jmp	.LBB80_6
.LBB80_8:
	mov	word ptr [rdi], 29276
	jmp	.LBB80_6
.LBB80_7:
	mov	word ptr [rdi], 29788
	jmp	.LBB80_6
.LBB80_14:
	and	edx, 16777215
	cmp	edx, 65536
	jae	.LBB80_11
.LBB80_15:
	mov	r14, rdi
	mov	edi, ebx
	call	_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable
	test	al, al
	je	.LBB80_16
# %bb.19:
	mov	rdi, r14
	mov	dword ptr [r14], ebx
	mov	cl, -127
	mov	al, -128
	jmp	.LBB80_18
.LBB80_16:
	mov	eax, ebx
	or	eax, 1
	bsr	ecx, eax
	xor	ecx, 28
	shr	ecx, 2
	lea	rax, [rcx - 2]
	mov	byte ptr [rsp + 16], 0
	mov	word ptr [rsp + 14], 0
	mov	esi, ebx
	shr	esi, 20
	lea	rdx, [rip + .Lanon.21307fd90ecd30149cef64ece95db940.14]
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 17], sil
	mov	esi, ebx
	shr	esi, 16
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 18], sil
	mov	esi, ebx
	shr	esi, 12
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 19], sil
	mov	esi, ebx
	shr	esi, 8
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 20], sil
	mov	esi, ebx
	shr	esi, 4
	and	esi, 15
	movzx	esi, byte ptr [rsi + rdx]
	mov	byte ptr [rsp + 21], sil
	and	ebx, 15
	movzx	edx, byte ptr [rbx + rdx]
	mov	byte ptr [rsp + 22], dl
	mov	byte ptr [rsp + 23], 125
	mov	word ptr [rsp + rcx + 12], 30044
	mov	byte ptr [rsp + rcx + 14], 123
	movzx	ecx, word ptr [rsp + 22]
	mov	rdi, r14
	mov	word ptr [r14 + 8], cx
	mov	rcx, qword ptr [rsp + 14]
	mov	qword ptr [r14], rcx
.LBB80_17:
	mov	cl, 10
	jmp	.LBB80_18
.LBB80_11:
	mov	word ptr [rdi], 8796
.LBB80_6:
	mov	qword ptr [rdi + 2], 0
	mov	cl, 2
	xor	eax, eax
.LBB80_18:
	mov	byte ptr [rdi + 12], al
	mov	byte ptr [rdi + 13], cl
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end80:
	.size	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext, .Lfunc_end80-_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext
	.cfi_endproc
	.section	.rodata._RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext,"a",@progbits
	.p2align	2, 0x0
.LJTI80_0:
	.long	.LBB80_5-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_7-.LJTI80_0
	.long	.LBB80_9-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_8-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_14-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_2-.LJTI80_0
	.long	.LBB80_12-.LJTI80_0
                                        # -- End function
