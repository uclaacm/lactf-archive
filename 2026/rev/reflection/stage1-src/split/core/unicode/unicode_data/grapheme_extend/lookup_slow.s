	.section	.text._RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow
	.type	_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow,@function
_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow: # @_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow
	.cfi_startproc
# %bb.0:
	xor	edx, edx
	cmp	edi, 69291
	setae	dl
	mov	eax, edi
	shl	eax, 11
	shl	edx, 4
	lea	rsi, [rdx + 8]
	lea	rcx, [rip + _RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS]
	mov	r8d, dword ptr [rcx + 4*rdx + 32]
	shl	r8d, 11
	cmp	r8d, eax
	cmova	rsi, rdx
	lea	rdx, [rsi + 4]
	mov	r8d, dword ptr [rcx + 4*rsi + 16]
	shl	r8d, 11
	cmp	r8d, eax
	cmova	rdx, rsi
	lea	rsi, [rdx + 2]
	mov	r8d, dword ptr [rcx + 4*rdx + 8]
	shl	r8d, 11
	cmp	r8d, eax
	cmova	rsi, rdx
	lea	rdx, [rsi + 1]
	mov	r8d, dword ptr [rcx + 4*rsi + 4]
	shl	r8d, 11
	cmp	r8d, eax
	cmova	rdx, rsi
	lea	r8, [rdx + 1]
	mov	esi, dword ptr [rcx + 4*rdx + 4]
	shl	esi, 11
	cmp	esi, eax
	cmova	r8, rdx
	mov	edx, dword ptr [rcx + 4*r8]
	shl	edx, 11
	xor	esi, esi
	cmp	edx, eax
	sete	sil
	adc	rsi, r8
	mov	eax, dword ptr [rcx + 4*rsi]
	shr	eax, 21
	mov	edx, 767
	cmp	rsi, 31
	ja	.LBB82_3
# %bb.1:
	mov	edx, dword ptr [rcx + 4*rsi + 4]
	shr	edx, 21
	test	rsi, rsi
	je	.LBB82_2
.LBB82_3:
	mov	r8d, 2097151
	and	r8d, dword ptr [rcx + 4*rsi - 4]
	mov	rcx, rax
	not	rcx
	add	rcx, rdx
	je	.LBB82_8
.LBB82_5:
	sub	edi, r8d
	dec	rdx
	xor	esi, esi
	lea	rcx, [rip + _RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend7OFFSETS]
	.p2align	4
.LBB82_6:                               # =>This Inner Loop Header: Depth=1
	mov	r8d, esi
	movzx	esi, byte ptr [rax + rcx]
	add	esi, r8d
	cmp	esi, edi
	ja	.LBB82_8
# %bb.7:                                #   in Loop: Header=BB82_6 Depth=1
	inc	rax
	cmp	rdx, rax
	jne	.LBB82_6
.LBB82_8:
	and	al, 1
                                        # kill: def $al killed $al killed $rax
	ret
.LBB82_2:
	xor	r8d, r8d
	mov	rcx, rax
	not	rcx
	add	rcx, rdx
	jne	.LBB82_5
	jmp	.LBB82_8
.Lfunc_end82:
	.size	_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow, .Lfunc_end82-_RNvNtNtNtCsfQL5qMWGko6_4core7unicode12unicode_data15grapheme_extend11lookup_slow
	.cfi_endproc
                                        # -- End function
