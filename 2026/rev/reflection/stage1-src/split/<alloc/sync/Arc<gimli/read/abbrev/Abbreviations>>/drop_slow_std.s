	.section	.text._RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
	.type	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std,@function
_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std: # @_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception30
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	add	rdi, 16
.Ltmp798:
	call	_RINvNtCsfQL5qMWGko6_4core3ptr13drop_in_placeNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsECs3bNtqN8jaZB_3std
.Ltmp799:
# %bb.1:
	cmp	rbx, -1
	je	.LBB166_8
# %bb.2:
	lock		dec	qword ptr [rbx + 8]
	jne	.LBB166_8
# %bb.3:
	#MEMBARRIER
	mov	rdi, rbx
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB166_8:
	.cfi_def_cfa_offset 32
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB166_4:
	.cfi_def_cfa_offset 32
.Ltmp800:
	mov	r14, rax
	cmp	rbx, -1
	je	.LBB166_7
# %bb.5:
	lock		dec	qword ptr [rbx + 8]
	jne	.LBB166_7
# %bb.6:
	#MEMBARRIER
	mov	rdi, rbx
	call	qword ptr [rip + free@GOTPCREL]
.LBB166_7:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end166:
	.size	_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std, .Lfunc_end166-_RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.gcc_except_table._RNvMsn_NtCs78A21jy8lRn_5alloc4syncINtB5_3ArcNtNtNtCsktQxXQGZjIy_5gimli4read6abbrev13AbbreviationsE9drop_slowCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
GCC_except_table166:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp798-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin30        #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp799-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Lfunc_end166-.Ltmp799         #   Call between .Ltmp799 and .Lfunc_end166
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.p2align	2, 0x0
                                        # -- End function
