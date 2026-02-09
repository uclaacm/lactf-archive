	.section	.text._RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	.type	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back,@function
_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back: # @_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	cmp	byte ptr [rsi + 56], 2
	jae	.LBB296_4
# %bb.1:
	cmp	byte ptr [rsi + 58], 0
	je	.LBB296_16
# %bb.2:
	mov	rdx, qword ptr [rsi + 8]
	mov	eax, 1
	test	rdx, rdx
	jne	.LBB296_6
# %bb.3:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.341]
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.LBB296_4:
	mov	rdx, qword ptr [rsi + 8]
.LBB296_5:
	xor	eax, eax
.LBB296_6:
	mov	r8, qword ptr [rsi]
	lea	rcx, [r8 + rax]
	mov	r11, rdx
	sub	r11, rax
	lea	r9, [rdx + r8]
	dec	r9
	xor	esi, esi
	.p2align	4
.LBB296_7:                              # =>This Inner Loop Header: Depth=1
	test	r11, r11
	je	.LBB296_11
# %bb.8:                                #   in Loop: Header=BB296_7 Depth=1
	mov	r10, r11
	dec	r11
	cmp	byte ptr [r9], 47
	lea	r9, [r9 - 1]
	jne	.LBB296_7
# %bb.9:
	add	rax, r10
	cmp	rax, rdx
	ja	.LBB296_29
# %bb.10:
	lea	rcx, [r8 + rax]
	mov	esi, 1
.LBB296_11:
	mov	r9b, 10
	sub	rdx, rax
	je	.LBB296_22
# %bb.12:
	cmp	rdx, 1
	je	.LBB296_20
# %bb.13:
	cmp	rdx, 2
	jne	.LBB296_21
# %bb.14:
	cmp	byte ptr [r8 + rax], 46
	jne	.LBB296_21
# %bb.15:
	mov	r9b, 8
	cmp	byte ptr [rcx + 1], 46
	je	.LBB296_22
	jmp	.LBB296_21
.LBB296_16:
	mov	rdx, qword ptr [rsi + 8]
	test	rdx, rdx
	je	.LBB296_23
# %bb.17:
	mov	rax, qword ptr [rsi]
	cmp	rdx, 1
	jne	.LBB296_24
# %bb.18:
	mov	edx, 1
	cmp	byte ptr [rax], 46
	jne	.LBB296_5
	jmp	.LBB296_26
.LBB296_20:
	cmp	byte ptr [r8 + rax], 46
	je	.LBB296_22
.LBB296_21:
	mov	r9b, 9
.LBB296_22:
	add	rsi, rdx
	mov	qword ptr [rdi], rsi
	mov	byte ptr [rdi + 8], r9b
	mov	qword ptr [rdi + 16], rcx
	mov	qword ptr [rdi + 24], rdx
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.LBB296_23:
	.cfi_def_cfa_offset 16
	mov	rax, rdx
	jmp	.LBB296_6
.LBB296_24:
	cmp	byte ptr [rax], 46
	jne	.LBB296_5
# %bb.25:
	cmp	byte ptr [rax + 1], 47
	jne	.LBB296_5
.LBB296_26:
	mov	eax, 1
	jmp	.LBB296_6
.LBB296_29:
	lea	rcx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.340]
	mov	rdi, rax
	mov	rsi, rdx
	call	_RNvNtNtCsfQL5qMWGko6_4core5slice5index16slice_index_fail
.Lfunc_end296:
	.size	_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back, .Lfunc_end296-_RNvMs8_NtCs3bNtqN8jaZB_3std4pathNtB5_10Components25parse_next_component_back
	.cfi_endproc
                                        # -- End function
