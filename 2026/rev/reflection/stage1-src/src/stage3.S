	.section	.text.Lstage3,"axR",@progbits
	.p2align	4
.Lstage3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception_stage3_start
	.cfi_def_cfa_offset 0
	.cfi_register rip, rax
.Lstage3_func_start:
	nop
.Lstage3_func_end:
	.size	.Lstage3, .Lstage3_func_end-.Lstage3_func_start
	.cfi_endproc
.Lstage3_lpad:
	sub rsp, 24
	mov r11, 0x3e0c4800ed863ff3
	xor r12, r11
	mov qword ptr [rsp+8], r12
	xor r13, r11
	mov qword ptr [rsp], r13
	mov rsi, rsp
	lea rdi, [rsp+16]
	mov edx, (15 << 1) | 0b1
	call _RNvYNtNtNtNtCs3bNtqN8jaZB_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtBa_
	xor edi, edi
	call	qword ptr [rip + exit@GOTPCREL]

	.section	.gcc_except_table.stage3,"aR",@progbits
	.p2align	2, 0x0
.Lexception_stage3_start:
	.byte	255                                         # @LPStart Encoding = omit
	.byte	155                                         # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase_stage3_end-.Lttbaseref_stage3_start
.Lttbaseref_stage3_start:
	.byte	1                                           # Call site Encoding = uleb128
	.uleb128 .Lcst_stage3_end-.Lcst_stage3_begin
.Lcst_stage3_begin:
	.uleb128 .Lstage3_func_start-.Lstage3_func_start  # >> Call Site 1 <<
	.uleb128 .Lstage3_func_end-.Lstage3_func_start    #   Call between .Lstage3_func_start and .Lstage3_func_end
	.uleb128 .Lstage3_lpad-.Lstage3_func_start        #     jumps to .Lstage3_lpad
	.byte	3                                           #   On action: 2
.Lcst_stage3_end:
	.byte	0                                           # >> Action Record 1 <<
                                                    #   Cleanup
	.byte	0                                           #   No further actions
	.byte	1                                           # >> Action Record 2 <<
                                                    #   Catch TypeInfo 1
	.byte	125                                         #   Continue to action 1
	.p2align	2, 0x0
                                                    # >> Catch TypeInfos <<
	.long	0                                           # TypeInfo 1
.Lttbase_stage3_end:
	.p2align	2, 0x0
                                                    # -- End function
