	.section	.text._RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std
	.type	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std,@function
_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std: # @_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi]
	add	rax, -2
	cmp	rax, 5
	ja	.LBB215_6
# %bb.1:
	lea	rcx, [rip + .LJTI215_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB215_2:
	mov	rdx, qword ptr [rdi + 8]
.LBB215_3:
	xor	eax, eax
	cmp	rdx, 65536
	setb	al
                                        # kill: def $ax killed $ax killed $eax
                                        # kill: def $dx killed $dx killed $rdx
	ret
.LBB215_4:
	mov	edx, dword ptr [rdi + 8]
	xor	eax, eax
	cmp	rdx, 65536
	setb	al
                                        # kill: def $ax killed $ax killed $eax
                                        # kill: def $dx killed $dx killed $rdx
	ret
.LBB215_5:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jns	.LBB215_3
.LBB215_6:
	xor	eax, eax
                                        # implicit-def: $dx
                                        # kill: def $ax killed $ax killed $eax
                                        # kill: def $dx killed $dx killed $rdx
	ret
.LBB215_7:
	movzx	edx, byte ptr [rdi + 8]
	xor	eax, eax
	cmp	rdx, 65536
	setb	al
                                        # kill: def $ax killed $ax killed $eax
                                        # kill: def $dx killed $dx killed $rdx
	ret
.LBB215_8:
	movzx	edx, word ptr [rdi + 8]
	xor	eax, eax
	cmp	rdx, 65536
	setb	al
                                        # kill: def $ax killed $ax killed $eax
                                        # kill: def $dx killed $dx killed $rdx
	ret
.Lfunc_end215:
	.size	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std, .Lfunc_end215-_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI215_0:
	.long	.LBB215_7-.LJTI215_0
	.long	.LBB215_8-.LJTI215_0
	.long	.LBB215_4-.LJTI215_0
	.long	.LBB215_2-.LJTI215_0
	.long	.LBB215_5-.LJTI215_0
	.long	.LBB215_2-.LJTI215_0
                                        # -- End function
