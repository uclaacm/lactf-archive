	.section	.text._RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	.type	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std,@function
_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std: # @_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	mov	rax, qword ptr [rdi]
	add	rax, -2
	cmp	rax, 5
	ja	.LBB214_6
# %bb.1:
	lea	rcx, [rip + .LJTI214_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB214_2:
	mov	rdx, qword ptr [rdi + 8]
.LBB214_3:
	cmp	rdx, 256
	setb	al
                                        # kill: def $al killed $al killed $eax
                                        # kill: def $dl killed $dl killed $rdx
	ret
.LBB214_4:
	mov	edx, dword ptr [rdi + 8]
	cmp	rdx, 256
	setb	al
                                        # kill: def $al killed $al killed $eax
                                        # kill: def $dl killed $dl killed $rdx
	ret
.LBB214_5:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jns	.LBB214_3
.LBB214_6:
	xor	eax, eax
                                        # implicit-def: $dl
                                        # kill: def $al killed $al killed $eax
                                        # kill: def $dl killed $dl killed $rdx
	ret
.LBB214_7:
	movzx	edx, byte ptr [rdi + 8]
	cmp	rdx, 256
	setb	al
                                        # kill: def $al killed $al killed $eax
                                        # kill: def $dl killed $dl killed $rdx
	ret
.LBB214_8:
	movzx	edx, word ptr [rdi + 8]
	cmp	rdx, 256
	setb	al
                                        # kill: def $al killed $al killed $eax
                                        # kill: def $dl killed $dl killed $rdx
	ret
.Lfunc_end214:
	.size	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std, .Lfunc_end214-_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI214_0:
	.long	.LBB214_7-.LJTI214_0
	.long	.LBB214_8-.LJTI214_0
	.long	.LBB214_4-.LJTI214_0
	.long	.LBB214_2-.LJTI214_0
	.long	.LBB214_5-.LJTI214_0
	.long	.LBB214_2-.LJTI214_0
                                        # -- End function
