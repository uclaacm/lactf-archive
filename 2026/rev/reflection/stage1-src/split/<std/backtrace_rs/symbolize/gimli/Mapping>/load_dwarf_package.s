	.section	.text._RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package
	.type	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package,@function
_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package: # @_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception22
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 168
	.cfi_def_cfa_offset 224
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 96], rcx       # 8-byte Spill
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	rdx, rdx
	je	.LBB154_3
# %bb.1:
	mov	rdi, rbx
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB154_77
# %bb.2:
	mov	r15, rax
	mov	rdi, rax
	mov	rsi, r12
	mov	rdx, rbx
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 16], rbx
	cmp	byte ptr [r12], 47
	sete	al
	mov	r14, rbx
	jmp	.LBB154_4
.LBB154_3:
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 1
	mov	qword ptr [rsp + 16], 0
	mov	r15d, 1
	xor	r14d, r14d
	xor	eax, eax
.LBB154_4:
	mov	qword ptr [rsp + 32], r12
	mov	qword ptr [rsp + 40], rbx
	mov	byte ptr [rsp + 48], 6
	mov	byte ptr [rsp + 90], al
	mov	word ptr [rsp + 88], 513
.Ltmp465:
	lea	rdi, [rsp + 112]
	lea	rsi, [rsp + 32]
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp466:
# %bb.5:
	cmp	byte ptr [rsp + 112], 9
	mov	qword ptr [rsp + 104], rbp      # 8-byte Spill
	jne	.LBB154_17
# %bb.6:
	mov	r13, qword ptr [rsp + 128]
	mov	r12, qword ptr [rsp + 120]
	cmp	r13, 2
	jne	.LBB154_8
# %bb.7:
	cmp	word ptr [r12], 11822
	je	.LBB154_17
.LBB154_8:
	mov	rax, r13
	.p2align	4
.LBB154_9:                              # =>This Inner Loop Header: Depth=1
	test	rax, rax
	je	.LBB154_17
# %bb.10:                               #   in Loop: Header=BB154_9 Depth=1
	mov	rbx, rax
	dec	rax
	cmp	byte ptr [r12 + rbx - 1], 46
	jne	.LBB154_9
# %bb.11:
	test	rax, rax
	je	.LBB154_17
# %bb.12:
	mov	ebp, 1
	sub	r13, rbx
	je	.LBB154_15
# %bb.13:
	mov	rdi, r13
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB154_75
# %bb.14:
	mov	rbp, rax
.LBB154_15:
	add	r12, rbx
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r13
	call	qword ptr [rip + memcpy@GOTPCREL]
	mov	qword ptr [rsp + 32], r13
	mov	qword ptr [rsp + 40], rbp
	mov	qword ptr [rsp + 48], r13
.Ltmp467:
	lea	rdi, [rsp + 32]
	mov	edx, 4
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, r13
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp468:
# %bb.16:
	mov	r12, qword ptr [rsp + 40]
	mov	rbp, qword ptr [rsp + 48]
	mov	dword ptr [r12 + rbp], 1886872622
	add	rbp, 4
	cmp	qword ptr [rsp + 32], 0
	sete	al
	mov	dword ptr [rsp + 28], eax       # 4-byte Spill
	jmp	.LBB154_19
.LBB154_17:
	mov	r13d, 3
	mov	edi, 3
	call	qword ptr [rip + malloc@GOTPCREL]
	test	rax, rax
	je	.LBB154_75
# %bb.18:
	mov	r12, rax
	mov	byte ptr [rax + 2], 112
	mov	word ptr [rax], 30564
	mov	ebp, 3
	mov	dword ptr [rsp + 28], 0         # 4-byte Folded Spill
.LBB154_19:
	mov	qword ptr [rsp + 112], r12
	mov	qword ptr [rsp + 120], rbp
	xor	eax, eax
	.p2align	4
.LBB154_20:                             # =>This Inner Loop Header: Depth=1
	cmp	byte ptr [r12 + rax], 47
	je	.LBB154_67
# %bb.21:                               #   in Loop: Header=BB154_20 Depth=1
	inc	rax
	cmp	rbp, rax
	jne	.LBB154_20
# %bb.22:
	test	r14, r14
	je	.LBB154_24
# %bb.23:
	cmp	byte ptr [r15], 47
	sete	al
	jmp	.LBB154_25
.LBB154_24:
	xor	eax, eax
.LBB154_25:
	mov	qword ptr [rsp + 32], r15
	mov	qword ptr [rsp + 40], r14
	mov	byte ptr [rsp + 48], 6
	mov	byte ptr [rsp + 90], al
	mov	word ptr [rsp + 88], 513
.Ltmp470:
	lea	rdi, [rsp + 112]
	lea	rsi, [rsp + 32]
	call	_RNvXsj_NtCs3bNtqN8jaZB_3std4pathNtB5_10ComponentsNtNtNtNtCsfQL5qMWGko6_4core4iter6traits12double_ended19DoubleEndedIterator9next_back
.Ltmp471:
# %bb.26:
	xor	edx, edx
	cmp	byte ptr [rsp + 112], 9
	mov	rcx, qword ptr [rsp + 120]
	cmove	rdx, rcx
	jne	.LBB154_50
# %bb.27:
	mov	rax, qword ptr [rsp + 128]
	cmp	rax, 2
	jne	.LBB154_30
# %bb.28:
	cmp	word ptr [rcx], 11822
	jne	.LBB154_30
# %bb.29:
	mov	esi, 2
	xor	ebx, ebx
                                        # implicit-def: $rax
	test	rcx, rcx
	cmovne	rbx, rcx
	test	rbx, rbx
	jne	.LBB154_38
	jmp	.LBB154_50
.LBB154_30:
	mov	rsi, rax
	.p2align	4
.LBB154_31:                             # =>This Inner Loop Header: Depth=1
	mov	rbx, rsi
	add	rsi, rcx
	cmp	rsi, rdx
	je	.LBB154_35
# %bb.32:                               #   in Loop: Header=BB154_31 Depth=1
	lea	rsi, [rbx - 1]
	cmp	byte ptr [rcx + rbx - 1], 46
	jne	.LBB154_31
# %bb.33:
	test	rsi, rsi
	je	.LBB154_36
# %bb.34:
	sub	rax, rbx
	add	rbx, rdx
	jmp	.LBB154_37
.LBB154_35:
	mov	rbx, rdx
                                        # implicit-def: $rsi
	xor	ecx, ecx
	test	rcx, rcx
	cmovne	rbx, rcx
	test	rbx, rbx
	jne	.LBB154_38
	jmp	.LBB154_50
.LBB154_36:
	xor	ebx, ebx
	mov	rsi, rax
.LBB154_37:
	mov	rcx, rdx
	test	rcx, rcx
	cmovne	rbx, rcx
	test	rbx, rbx
	je	.LBB154_50
.LBB154_38:
	test	rcx, rcx
	cmove	rsi, rax
	add	rbx, rsi
	sub	rbx, r15
	sete	al
	cmp	rbx, r14
	sete	cl
	or	cl, al
	jne	.LBB154_43
# %bb.39:
	cmp	rbx, r14
	jae	.LBB154_42
# %bb.40:
	cmp	byte ptr [r15 + rbx - 1], 0
	jns	.LBB154_43
# %bb.41:
	cmp	byte ptr [r15 + rbx], 0
	jns	.LBB154_43
.LBB154_42:
.Ltmp472:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	_RNvNvMs7_NtNtNtCs3bNtqN8jaZB_3std3sys6os_str5bytesNtB7_5Slice21check_public_boundary9slow_path
.Ltmp473:
.LBB154_43:
	mov	r13, r14
	cmp	rbx, r14
	ja	.LBB154_45
# %bb.44:
	mov	qword ptr [rsp + 16], rbx
	mov	r13, rbx
.LBB154_45:
	mov	rax, r14
	sub	rax, r13
	cmp	rbp, rax
	jae	.LBB154_64
# %bb.46:
	cmp	r14, r13
	je	.LBB154_73
# %bb.47:
	mov	rbx, r14
.LBB154_48:
	mov	byte ptr [r15 + r13], 46
	inc	r13
	mov	qword ptr [rsp + 16], r13
	sub	rbx, r13
	cmp	rbp, rbx
	ja	.LBB154_71
.LBB154_49:
	mov	rdi, qword ptr [rsp + 8]
	add	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	call	qword ptr [rip + memcpy@GOTPCREL]
	add	r13, rbp
	mov	qword ptr [rsp + 16], r13
.LBB154_50:
	cmp	byte ptr [rsp + 28], 0          # 1-byte Folded Reload
	jne	.LBB154_52
# %bb.51:
	mov	rdi, r12
	call	qword ptr [rip + free@GOTPCREL]
.LBB154_52:
	mov	rbx, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 16]
.Ltmp480:
	lea	rdi, [rsp + 32]
	mov	rsi, rbx
	call	_RNvNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap
.Ltmp481:
	mov	rbp, qword ptr [rsp + 104]      # 8-byte Reload
# %bb.53:
	movabs	r12, -9223372036854775808
	cmp	dword ptr [rsp + 32], 1
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
	jne	.LBB154_61
# %bb.54:
	mov	r15, qword ptr [rsp + 40]
	mov	r14, qword ptr [rsp + 48]
	mov	r13, qword ptr [rdx + 40]
	cmp	r13, qword ptr [rdx + 24]
	jne	.LBB154_56
# %bb.55:
.Ltmp482:
	lea	rdi, [rdx + 24]
	call	_RNvMs0_NtCs78A21jy8lRn_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli4mmap4MmapE8grow_oneBW_
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
.Ltmp483:
.LBB154_56:
	mov	rax, qword ptr [rdx + 32]
	mov	rcx, r13
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	qword ptr [rax + rcx + 8], r14
	inc	r13
	mov	qword ptr [rdx + 40], r13
	je	.LBB154_69
# %bb.57:
	mov	rax, qword ptr [rdx + 32]
	shl	r13, 4
	mov	rsi, qword ptr [rax + r13 - 16]
	mov	rdx, qword ptr [rax + r13 - 8]
.Ltmp485:
	mov	rdi, rbp
	call	_RNvMs_NtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_6Object5parse
.Ltmp486:
# %bb.58:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rbp], r12
	je	.LBB154_62
# %bb.59:
	test	rax, rax
	je	.LBB154_63
.LBB154_60:
	mov	rdi, rbx
	add	rsp, 168
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	qword ptr [rip + free@GOTPCREL] # TAILCALL
.LBB154_61:
	.cfi_def_cfa_offset 224
	mov	rax, qword ptr [rsp]
.LBB154_62:
	mov	qword ptr [rbp], r12
	test	rax, rax
	jne	.LBB154_60
.LBB154_63:
	add	rsp, 168
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB154_64:
	.cfi_def_cfa_offset 224
	lea	rbx, [rbp + 1]
	add	rbx, r13
	jb	.LBB154_78
# %bb.65:
	lea	rdi, [rsp + 32]
	mov	r8d, 1
	mov	r9d, 1
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	call	_RNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3bNtqN8jaZB_3std
	cmp	dword ptr [rsp + 32], 1
	je	.LBB154_81
# %bb.66:
	mov	r15, qword ptr [rsp + 40]
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp], rbx
	jmp	.LBB154_48
.LBB154_67:
	lea	rax, [rsp + 112]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rip + _RNvXs1g_NtCsfQL5qMWGko6_4core3fmtRNtNtNtCs3bNtqN8jaZB_3std3ffi6os_str5OsStrNtB6_5Debug3fmtBC_]
	mov	qword ptr [rsp + 40], rax
.Ltmp489:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.389]
	lea	rdx, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.390]
	lea	rsi, [rsp + 32]
	call	_RNvNtCsfQL5qMWGko6_4core9panicking9panic_fmt
.Ltmp490:
# %bb.68:
.LBB154_69:
.Ltmp487:
	lea	rdi, [rip + .Lanon.28cb502c8ec02091c8e32b488a8e08d8.174]
	call	_RNvNtCsfQL5qMWGko6_4core6option13unwrap_failed
.Ltmp488:
# %bb.70:
.LBB154_71:
.Ltmp478:
	mov	rdi, rsp
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, r13
	mov	rdx, rbp
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp479:
# %bb.72:
	mov	r13, qword ptr [rsp + 16]
	jmp	.LBB154_49
.LBB154_73:
.Ltmp476:
	mov	rdi, rsp
	mov	edx, 1
	mov	ecx, 1
	mov	r8d, 1
	mov	rsi, r14
	call	_RINvNvMs2_NtCs78A21jy8lRn_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3bNtqN8jaZB_3std
.Ltmp477:
# %bb.74:
	mov	r13, qword ptr [rsp + 16]
	mov	rbx, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.LBB154_48
.LBB154_75:
.Ltmp492:
	mov	rdi, r13
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.Ltmp493:
# %bb.76:
.LBB154_77:
	mov	rdi, rbx
	call	_RNvNtCs78A21jy8lRn_5alloc5alloc18handle_alloc_error
.LBB154_78:
	xor	edi, edi
                                        # implicit-def: $rsi
.LBB154_79:
.Ltmp474:
	call	_RNvNtCs78A21jy8lRn_5alloc7raw_vec12handle_error
.Ltmp475:
# %bb.80:
.LBB154_81:
	mov	rdi, qword ptr [rsp + 40]
	mov	rsi, qword ptr [rsp + 48]
	jmp	.LBB154_79
.LBB154_82:
.Ltmp469:
	mov	rbx, rax
	cmp	qword ptr [rsp + 32], 0
	je	.LBB154_89
# %bb.83:
	mov	rdi, qword ptr [rsp + 40]
	jmp	.LBB154_88
.LBB154_84:
.Ltmp484:
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r14
	call	qword ptr [rip + munmap@GOTPCREL]
	jmp	.LBB154_89
.LBB154_85:
.Ltmp494:
	mov	rbx, rax
	jmp	.LBB154_89
.LBB154_86:
.Ltmp491:
	mov	rbx, rax
	cmp	byte ptr [rsp + 28], 0          # 1-byte Folded Reload
	jne	.LBB154_89
# %bb.87:
	mov	rdi, r12
.LBB154_88:
	call	qword ptr [rip + free@GOTPCREL]
.LBB154_89:
	cmp	qword ptr [rsp], 0
	je	.LBB154_91
# %bb.90:
	mov	rdi, qword ptr [rsp + 8]
	call	qword ptr [rip + free@GOTPCREL]
.LBB154_91:
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end154:
	.size	_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package, .Lfunc_end154-_RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package
	.cfi_endproc
	.section	.gcc_except_table._RNvMNtNtNtNtCs3bNtqN8jaZB_3std12backtrace_rs9symbolize5gimli3elfNtB4_7Mapping18load_dwarf_package,"a",@progbits
	.p2align	2, 0x0
GCC_except_table154:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp465-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp465
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp494-.Lfunc_begin22        #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin22        # >> Call Site 4 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin22        #     jumps to .Ltmp469
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin22        # >> Call Site 5 <<
	.uleb128 .Ltmp473-.Ltmp470              #   Call between .Ltmp470 and .Ltmp473
	.uleb128 .Ltmp491-.Lfunc_begin22        #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin22        # >> Call Site 6 <<
	.uleb128 .Ltmp480-.Ltmp473              #   Call between .Ltmp473 and .Ltmp480
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin22        # >> Call Site 7 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp494-.Lfunc_begin22        #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin22        # >> Call Site 8 <<
	.uleb128 .Ltmp483-.Ltmp482              #   Call between .Ltmp482 and .Ltmp483
	.uleb128 .Ltmp484-.Lfunc_begin22        #     jumps to .Ltmp484
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin22        # >> Call Site 9 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp494-.Lfunc_begin22        #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin22        # >> Call Site 10 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin22        #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin22        # >> Call Site 11 <<
	.uleb128 .Ltmp488-.Ltmp487              #   Call between .Ltmp487 and .Ltmp488
	.uleb128 .Ltmp494-.Lfunc_begin22        #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin22        # >> Call Site 12 <<
	.uleb128 .Ltmp477-.Ltmp478              #   Call between .Ltmp478 and .Ltmp477
	.uleb128 .Ltmp491-.Lfunc_begin22        #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin22        # >> Call Site 13 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp494-.Lfunc_begin22        #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp493-.Lfunc_begin22        # >> Call Site 14 <<
	.uleb128 .Ltmp474-.Ltmp493              #   Call between .Ltmp493 and .Ltmp474
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin22        # >> Call Site 15 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp491-.Lfunc_begin22        #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin22        # >> Call Site 16 <<
	.uleb128 .Lfunc_end154-.Ltmp475         #   Call between .Ltmp475 and .Lfunc_end154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
                                        # -- End function
