	.section	.text._RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	.type	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std,@function
_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std: # @_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rsi, qword ptr [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	je	.LBB135_1
# %bb.3:
	lea	rax, [rsi + 1]
	mov	qword ptr [rdi], rax
	movzx	edx, byte ptr [rsi]
	test	dl, dl
	js	.LBB135_4
# %bb.6:
	mov	eax, 1
	ret
.LBB135_1:
	xor	eax, eax
                                        # implicit-def: $edx
	ret
.LBB135_4:
	mov	ecx, edx
	and	ecx, 31
	lea	rax, [rsi + 2]
	mov	qword ptr [rdi], rax
	movzx	r9d, byte ptr [rsi + 1]
	and	r9d, 63
	mov	eax, 1
	cmp	dl, -33
	jbe	.LBB135_5
# %bb.7:
	lea	r8, [rsi + 3]
	mov	qword ptr [rdi], r8
	movzx	r8d, byte ptr [rsi + 2]
	shl	r9d, 6
	and	r8d, 63
	or	r8d, r9d
	cmp	dl, -16
	jb	.LBB135_8
# %bb.9:
	lea	rdx, [rsi + 4]
	mov	qword ptr [rdi], rdx
	movzx	edx, byte ptr [rsi + 3]
	and	ecx, 7
	shl	ecx, 18
	shl	r8d, 6
	and	edx, 63
	or	edx, r8d
	or	edx, ecx
	ret
.LBB135_5:
	shl	ecx, 6
	or	ecx, r9d
	mov	edx, ecx
	ret
.LBB135_8:
	shl	ecx, 12
	or	r8d, ecx
	mov	edx, r8d
	ret
.Lfunc_end135:
	.size	_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std, .Lfunc_end135-_RINvNtNtCsfQL5qMWGko6_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
