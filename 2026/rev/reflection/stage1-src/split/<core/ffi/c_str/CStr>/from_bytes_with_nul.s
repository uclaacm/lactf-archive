	.section	.text._RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
	.type	_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul,@function
_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul: # @_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	cmp	rdx, 15
	ja	.LBB129_4
# %bb.1:
	xor	ecx, ecx
	.p2align	4
.LBB129_2:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsi + rcx], 0
	je	.LBB129_18
# %bb.3:                                #   in Loop: Header=BB129_2 Depth=1
	inc	rcx
	cmp	rdx, rcx
	jne	.LBB129_2
	jmp	.LBB129_15
.LBB129_4:
	lea	rax, [rsi + 7]
	and	rax, -8
	sub	rax, rsi
	jne	.LBB129_5
# %bb.23:
	lea	rcx, [rdx - 16]
	xor	eax, eax
.LBB129_9:
	movabs	r8, -9187201950435737472
	movabs	r9, 72340172838076672
	.p2align	4
.LBB129_10:                             # =>This Inner Loop Header: Depth=1
	mov	r10, qword ptr [rsi + rax]
	mov	r11, qword ptr [rsi + rax + 8]
	mov	rbx, r9
	sub	rbx, r10
	or	rbx, r10
	mov	r10, r9
	sub	r10, r11
	or	r10, r11
	and	rbx, r8
	and	rbx, r10
	cmp	rbx, r8
	jne	.LBB129_11
# %bb.22:                               #   in Loop: Header=BB129_10 Depth=1
	add	rax, 16
	cmp	rax, rcx
	jbe	.LBB129_10
	jmp	.LBB129_11
.LBB129_5:
	xor	ecx, ecx
	.p2align	4
.LBB129_6:                              # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [rsi + rcx], 0
	je	.LBB129_18
# %bb.7:                                #   in Loop: Header=BB129_6 Depth=1
	inc	rcx
	cmp	rax, rcx
	jne	.LBB129_6
# %bb.8:
	lea	rcx, [rdx - 16]
	cmp	rax, rcx
	jbe	.LBB129_9
.LBB129_11:
	mov	r8, rdx
	sub	r8, rax
	je	.LBB129_15
# %bb.12:
	lea	r9, [rsi + rax]
	xor	ecx, ecx
	.p2align	4
.LBB129_13:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [r9 + rcx], 0
	je	.LBB129_17
# %bb.14:                               #   in Loop: Header=BB129_13 Depth=1
	inc	rcx
	cmp	r8, rcx
	jne	.LBB129_13
.LBB129_15:
	mov	qword ptr [rdi + 8], 1
	mov	eax, 1
	mov	qword ptr [rdi], rax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB129_17:
	.cfi_def_cfa_offset 16
	add	rcx, rax
.LBB129_18:
	lea	rax, [rcx + 1]
	cmp	rax, rdx
	jne	.LBB129_19
# %bb.20:
	mov	qword ptr [rdi + 8], rsi
	mov	qword ptr [rdi + 16], rdx
	xor	eax, eax
	mov	qword ptr [rdi], rax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.LBB129_19:
	.cfi_def_cfa_offset 16
	mov	qword ptr [rdi + 8], 0
	mov	qword ptr [rdi + 16], rcx
	mov	eax, 1
	mov	qword ptr [rdi], rax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end129:
	.size	_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul, .Lfunc_end129-_RNvMs3_NtNtCsfQL5qMWGko6_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul
	.cfi_endproc
                                        # -- End function
