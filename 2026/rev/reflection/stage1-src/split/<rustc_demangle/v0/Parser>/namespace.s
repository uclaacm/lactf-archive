	.section	.text._RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace
	.type	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace,@function
_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace: # @_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi + 16]
	cmp	rax, qword ptr [rdi + 8]
	jae	.LBB89_1
# %bb.3:
	mov	rcx, qword ptr [rdi]
	movzx	ecx, byte ptr [rcx + rax]
	inc	rax
	mov	qword ptr [rdi + 16], rax
	lea	eax, [rcx - 65]
	cmp	al, 26
	jae	.LBB89_4
# %bb.5:
	shl	rcx, 32
	xor	eax, eax
	or	rax, rcx
	ret
.LBB89_1:
	mov	eax, 1
	xor	ecx, ecx
	or	rax, rcx
	ret
.LBB89_4:
	add	cl, -123
	xor	edx, edx
	xor	eax, eax
	cmp	cl, -26
	setb	al
	movabs	rcx, 4785074604081152
	cmovb	rcx, rdx
	or	rax, rcx
	ret
.Lfunc_end89:
	.size	_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace, .Lfunc_end89-_RNvMs2_NtCsbho2wNjk0G0_14rustc_demangle2v0NtB5_6Parser9namespace
	.cfi_endproc
                                        # -- End function
