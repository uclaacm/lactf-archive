	.section	.text._RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std
	.type	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std,@function
_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std: # @_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std
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
	mov	rbx, rdi
	mov	r14, rsp
	.p2align	4
.LBB260_1:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, r14
	mov	rsi, rbx
	call	_RNvMsz_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCsfQL5qMWGko6_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs3bNtqN8jaZB_3std
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.LBB260_5
# %bb.2:                                #   in Loop: Header=BB260_1 Depth=1
	mov	rcx, qword ptr [rsp + 16]
	shl	rcx, 4
	cmp	byte ptr [rax + rcx], 82
	jne	.LBB260_1
# %bb.3:                                #   in Loop: Header=BB260_1 Depth=1
	add	rax, rcx
	mov	rcx, qword ptr [rax + 8]
	lock		dec	qword ptr [rcx]
	jne	.LBB260_1
# %bb.4:                                #   in Loop: Header=BB260_1 Depth=1
	#MEMBARRIER
	mov	rdi, qword ptr [rax + 8]
	call	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
	jmp	.LBB260_1
.LBB260_5:
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end260:
	.size	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std, .Lfunc_end260-_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs78A21jy8lRn_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardyINtNtB4_6result6ResultINtNtBV_4sync3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsENtB3f_5ErrorENtNtBV_5alloc6GlobalEECs3bNtqN8jaZB_3std
	.cfi_endproc
                                        # -- End function
