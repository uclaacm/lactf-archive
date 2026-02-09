	.section	.text._RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62
	.type	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62,@function
_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62: # @_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62
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
	ja	.LBB107_1
# %bb.3:
	mov	eax, ebx
	lea	rcx, [rip + .LJTI107_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB107_4:
	mov	word ptr [rdi], 12380
	jmp	.LBB107_8
.LBB107_1:
	cmp	ebx, 92
	jne	.LBB107_12
# %bb.2:
	mov	word ptr [rdi], 23644
	jmp	.LBB107_8
.LBB107_12:
	mov	r14, rdi
	cmp	ebx, 767
	jbe	.LBB107_13
# %bb.15:
	mov	edi, ebx
	call	_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow
	test	al, al
	je	.LBB107_13
# %bb.16:
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
	mov	rdi, r14
	mov	word ptr [r14 + 8], cx
	mov	rcx, qword ptr [rsp + 4]
	jmp	.LBB107_17
.LBB107_7:
	mov	word ptr [rdi], 28252
	jmp	.LBB107_8
.LBB107_11:
	mov	word ptr [rdi], 10076
	jmp	.LBB107_8
.LBB107_6:
	mov	word ptr [rdi], 29276
	jmp	.LBB107_8
.LBB107_5:
	mov	word ptr [rdi], 29788
	jmp	.LBB107_8
.LBB107_10:
	mov	word ptr [rdi], 8796
.LBB107_8:
	mov	qword ptr [rdi + 2], 0
	mov	cl, 2
	xor	eax, eax
.LBB107_9:
	mov	byte ptr [rdi + 12], al
	mov	byte ptr [rdi + 13], cl
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB107_13:
	.cfi_def_cfa_offset 48
	mov	edi, ebx
	call	_RNvNtNtCsfQL5qMWGko6_4core7unicode9printable12is_printable
	test	al, al
	je	.LBB107_14
# %bb.18:
	mov	rdi, r14
	mov	dword ptr [r14], ebx
	mov	cl, -127
	mov	al, -128
	jmp	.LBB107_9
.LBB107_14:
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
.LBB107_17:
	mov	qword ptr [r14], rcx
	mov	cl, 10
	jmp	.LBB107_9
.Lfunc_end107:
	.size	_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62, .Lfunc_end107-_RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62
	.cfi_endproc
	.section	.rodata._RNvMNtNtCsfQL5qMWGko6_4core4char7methodsc16escape_debug_ext.62,"a",@progbits
	.p2align	2, 0x0
.LJTI107_0:
	.long	.LBB107_4-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_5-.LJTI107_0
	.long	.LBB107_7-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_6-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_10-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_12-.LJTI107_0
	.long	.LBB107_11-.LJTI107_0
                                        # -- End function
