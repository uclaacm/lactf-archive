	.section	.text._RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match
	.type	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match,@function
_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match: # @_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	r9, rdx
	sub	rdx, rcx
	cmp	r8, 3
	jne	.LBB254_7
# %bb.1:
	cmp	r9, -3
	setae	al
	lea	rcx, [r9 + 3]
	cmp	rcx, rsi
	seta	cl
	or	cl, al
	jne	.LBB254_6
# %bb.2:
	lea	rax, [rdx + 2]
	cmp	rax, rsi
	jae	.LBB254_6
# %bb.3:
	cmp	rsi, rdx
	jbe	.LBB254_6
# %bb.4:
	lea	rax, [rdx + 1]
	cmp	rax, rsi
	jae	.LBB254_6
# %bb.5:
	movzx	eax, byte ptr [rdi + rdx]
	mov	byte ptr [rdi + r9], al
	movzx	eax, byte ptr [rdi + rdx + 1]
	mov	byte ptr [rdi + r9 + 1], al
	movzx	eax, byte ptr [rdi + rdx + 2]
	mov	byte ptr [rdi + r9 + 2], al
.LBB254_6:
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.LBB254_7:
	.cfi_def_cfa_offset 16
	cmp	rdx, r9
	setae	al
	mov	r10, rcx
	neg	r10
	cmp	r8, r10
	seta	r10b
	test	al, r10b
	jne	.LBB254_27
# %bb.8:
	cmp	r8, rcx
	ja	.LBB254_27
# %bb.9:
	lea	rax, [rdx + r8]
	cmp	rax, rsi
	jae	.LBB254_27
# %bb.10:
	cmp	rdx, r9
	jae	.LBB254_11
# %bb.17:
	sub	rsi, r9
	jb	.LBB254_29
# %bb.18:
	cmp	r8, rsi
	ja	.LBB254_25
# %bb.19:
	cmp	rax, rdx
	jb	.LBB254_26
# %bb.20:
	cmp	rax, r9
	ja	.LBB254_26
# %bb.21:
	add	r9, rdi
	add	rdx, rdi
	jmp	.LBB254_16
.LBB254_27:
	mov	rcx, r9
	pop	rax
	.cfi_def_cfa_offset 8
	jmp	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core8transfer # TAILCALL
.LBB254_11:
	.cfi_def_cfa_offset 16
	sub	rsi, rdx
	jb	.LBB254_28
# %bb.12:
	mov	rax, r8
	add	rax, r9
	jb	.LBB254_22
# %bb.13:
	cmp	rax, rdx
	ja	.LBB254_22
# %bb.14:
	cmp	r8, rsi
	ja	.LBB254_23
# %bb.15:
	add	rdx, rdi
	add	r9, rdi
.LBB254_16:
	mov	rdi, r9
	mov	rsi, rdx
	mov	rdx, r8
	pop	rax
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + memcpy@GOTPCREL] # TAILCALL
.LBB254_25:
	.cfi_def_cfa_offset 16
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.26]
	xor	edi, edi
	mov	rdx, rsi
	mov	rsi, r8
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB254_22:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.23]
	mov	rdi, r9
	mov	rsi, rax
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB254_23:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.22]
	xor	edi, edi
	mov	rdx, rsi
	mov	rsi, r8
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB254_26:
	lea	rcx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.25]
	mov	rdi, rdx
	mov	rsi, rax
	mov	rdx, r9
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB254_29:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.24]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.LBB254_28:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.155]
	lea	rdx, [rip + .Lanon.64234960c9e71dcb933c0e7906746136.21]
	mov	esi, 19
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Lfunc_end254:
	.size	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match, .Lfunc_end254-_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core11apply_match
	.cfi_endproc
                                        # -- End function
