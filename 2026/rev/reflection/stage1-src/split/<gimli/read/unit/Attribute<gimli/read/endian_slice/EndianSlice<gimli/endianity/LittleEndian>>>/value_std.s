	.section	.text._RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std,"ax",@progbits
	.p2align	4                               # -- Begin function _RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	.type	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std,@function
_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std: # @_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	movzx	eax, word ptr [rsi + 24]
	cmp	eax, 8496
	jg	.LBB210_9
# %bb.1:
	add	eax, -2
	cmp	eax, 138
	ja	.LBB210_79
# %bb.2:
	lea	rcx, [rip + .LJTI210_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB210_3:
	mov	rax, qword ptr [rsi]
	cmp	rax, 1
	je	.LBB210_82
# %bb.4:
	cmp	eax, 8
	je	.LBB210_82
	jmp	.LBB210_80
.LBB210_5:
	mov	rax, qword ptr [rsi]
	cmp	rax, 1
	je	.LBB210_82
# %bb.6:
	cmp	eax, 8
	je	.LBB210_82
# %bb.7:
	cmp	eax, 10
	jne	.LBB210_80
.LBB210_8:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 17
	jmp	.LBB210_176
.LBB210_9:
	cmp	eax, 8497
	je	.LBB210_86
# %bb.10:
	cmp	eax, 8498
	je	.LBB210_17
# %bb.11:
	cmp	eax, 8499
	jne	.LBB210_79
.LBB210_12:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_85
.LBB210_13:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 1]
	cmp	rcx, 7
	ja	.LBB210_80
# %bb.14:
	lea	rax, [rip + .LJTI210_13]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_16:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_83
.LBB210_17:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_84
.LBB210_18:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.19:
	lea	rax, [rip + .LJTI210_6]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_21:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.22:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 40
	jmp	.LBB210_176
.LBB210_23:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_89
.LBB210_24:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.25:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 41
	jmp	.LBB210_176
.LBB210_26:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.27:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 34
	jmp	.LBB210_176
.LBB210_28:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_91
.LBB210_29:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.30:
	lea	rax, [rip + .LJTI210_7]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_32:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.33:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 32
	jmp	.LBB210_176
.LBB210_34:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 1]
	cmp	rcx, 7
	ja	.LBB210_80
# %bb.35:
	lea	rax, [rip + .LJTI210_11]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_37:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE9u16_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.38:
	mov	word ptr [rdi + 8], dx
	mov	eax, 38
	jmp	.LBB210_176
.LBB210_39:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.40:
	lea	rax, [rip + .LJTI210_8]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_42:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.43:
	lea	rax, [rip + .LJTI210_2]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_45:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_90
.LBB210_46:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 1]
	cmp	rcx, 7
	ja	.LBB210_80
# %bb.47:
	lea	rax, [rip + .LJTI210_5]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_49:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.50:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 43
	jmp	.LBB210_176
.LBB210_51:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.52:
	lea	rax, [rip + .LJTI210_3]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_148:
	movzx	eax, byte ptr [rsi + 8]
	jmp	.LBB210_149
.LBB210_54:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_92
.LBB210_55:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 1]
	cmp	rcx, 9
	ja	.LBB210_80
# %bb.56:
	lea	rdx, [rip + .LJTI210_9]
	movsxd	rcx, dword ptr [rdx + 4*rcx]
	add	rcx, rdx
	jmp	rcx
.LBB210_58:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.59:
	lea	rax, [rip + .LJTI210_12]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_61:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.62:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 35
	jmp	.LBB210_176
.LBB210_63:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.64:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 36
	jmp	.LBB210_176
.LBB210_65:
	mov	rax, qword ptr [rsi]
	cmp	rax, 10
	jne	.LBB210_80
	jmp	.LBB210_93
.LBB210_66:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.67:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 42
	jmp	.LBB210_176
.LBB210_68:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.69:
	lea	rax, [rip + .LJTI210_4]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_131:
	movzx	eax, byte ptr [rsi + 8]
	jmp	.LBB210_175
.LBB210_174:
	movzx	eax, word ptr [rsi + 8]
	jmp	.LBB210_175
.LBB210_130:
	mov	eax, dword ptr [rsi + 8]
	jmp	.LBB210_175
.LBB210_71:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	jns	.LBB210_175
	jmp	.LBB210_119
.LBB210_72:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.73:
	lea	rax, [rip + .LJTI210_10]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_158:
	movzx	eax, byte ptr [rsi + 8]
	jmp	.LBB210_160
.LBB210_75:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.76:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 33
	jmp	.LBB210_176
.LBB210_77:
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r14, rsi
	call	_RNvMsc_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEjE8u8_valueCs3bNtqN8jaZB_3std
	mov	rsi, r14
	mov	rdi, rbx
	test	al, 1
	je	.LBB210_79
# %bb.78:
	mov	byte ptr [rdi + 8], dl
	mov	eax, 37
	jmp	.LBB210_176
.LBB210_79:
	mov	rax, qword ptr [rsi]
.LBB210_80:
	lea	rcx, [rip + .LJTI210_14]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB210_81:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	xor	eax, eax
	jmp	.LBB210_176
.LBB210_82:
	movups	xmm0, xmmword ptr [rsi + 8]
	movups	xmmword ptr [rdi + 8], xmm0
	mov	eax, 8
	jmp	.LBB210_176
.LBB210_112:
	mov	rax, qword ptr [rsi + 8]
.LBB210_175:
	mov	qword ptr [rdi + 8], rax
	mov	eax, 7
	jmp	.LBB210_176
.LBB210_83:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 22
	jmp	.LBB210_176
.LBB210_84:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 23
	jmp	.LBB210_176
.LBB210_85:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 11
	jmp	.LBB210_176
.LBB210_100:
	mov	rax, qword ptr [rsi + 8]
	jmp	.LBB210_149
.LBB210_86:
	mov	rax, qword ptr [rsi]
	lea	rcx, [rax - 2]
	cmp	rcx, 5
	ja	.LBB210_80
# %bb.87:
	lea	rax, [rip + .LJTI210_1]
	movsxd	rcx, dword ptr [rax + 4*rcx]
	add	rcx, rax
	jmp	rcx
.LBB210_123:
	mov	rax, qword ptr [rsi + 8]
.LBB210_165:
	mov	qword ptr [rdi + 8], rax
	mov	eax, 45
	jmp	.LBB210_176
.LBB210_89:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 21
	jmp	.LBB210_176
.LBB210_90:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 16
	jmp	.LBB210_176
.LBB210_91:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 28
	jmp	.LBB210_176
.LBB210_92:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 20
	jmp	.LBB210_176
.LBB210_93:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 18
	jmp	.LBB210_176
.LBB210_124:
	mov	rax, qword ptr [rsi + 8]
.LBB210_160:
	mov	qword ptr [rdi + 8], rax
	mov	eax, 39
	jmp	.LBB210_176
.LBB210_94:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 43
	jmp	.LBB210_176
.LBB210_95:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 37
	jmp	.LBB210_176
.LBB210_96:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 35
	jmp	.LBB210_176
.LBB210_97:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 36
	jmp	.LBB210_176
.LBB210_98:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 27
	jmp	.LBB210_176
.LBB210_99:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 34
	jmp	.LBB210_176
.LBB210_101:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 14
	jmp	.LBB210_176
.LBB210_102:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 33
	jmp	.LBB210_176
.LBB210_103:
	mov	eax, dword ptr [rsi + 8]
	mov	dword ptr [rdi + 8], eax
	mov	eax, 4
	jmp	.LBB210_176
.LBB210_104:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 40
	jmp	.LBB210_176
.LBB210_105:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 12
	jmp	.LBB210_176
.LBB210_106:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 9
	jmp	.LBB210_176
.LBB210_107:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 25
	jmp	.LBB210_176
.LBB210_108:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 24
	jmp	.LBB210_176
.LBB210_109:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 2
	jmp	.LBB210_176
.LBB210_110:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 15
	jmp	.LBB210_176
.LBB210_111:
	movzx	eax, word ptr [rsi + 8]
	mov	word ptr [rdi + 8], ax
	mov	eax, 3
	jmp	.LBB210_176
.LBB210_113:
	movups	xmm0, xmmword ptr [rsi + 8]
	movups	xmmword ptr [rdi + 8], xmm0
	mov	eax, 1
	jmp	.LBB210_176
.LBB210_114:
	movups	xmm0, xmmword ptr [rsi + 8]
	movups	xmmword ptr [rdi + 8], xmm0
	mov	eax, 31
	jmp	.LBB210_176
.LBB210_115:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 41
	jmp	.LBB210_176
.LBB210_116:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 5
	jmp	.LBB210_176
.LBB210_117:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 13
	jmp	.LBB210_176
.LBB210_118:
	mov	rax, qword ptr [rsi + 8]
.LBB210_119:
	mov	qword ptr [rdi + 8], rax
	mov	eax, 6
	jmp	.LBB210_176
.LBB210_120:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 10
	jmp	.LBB210_176
.LBB210_121:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 30
	jmp	.LBB210_176
.LBB210_122:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 32
	jmp	.LBB210_176
.LBB210_125:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 19
	jmp	.LBB210_176
.LBB210_126:
	movzx	eax, byte ptr [rsi + 8]
	mov	byte ptr [rdi + 8], al
	mov	eax, 42
	jmp	.LBB210_176
.LBB210_127:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 29
	jmp	.LBB210_176
.LBB210_128:
	movzx	eax, word ptr [rsi + 8]
	mov	word ptr [rdi + 8], ax
	mov	eax, 38
	jmp	.LBB210_176
.LBB210_129:
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi + 8], rax
	mov	eax, 26
	jmp	.LBB210_176
.LBB210_137:
	mov	eax, dword ptr [rsi + 8]
	jmp	.LBB210_149
.LBB210_139:
	movzx	eax, word ptr [rsi + 8]
	jmp	.LBB210_149
.LBB210_133:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	js	.LBB210_119
.LBB210_149:
	mov	qword ptr [rdi + 8], rax
	mov	eax, 44
.LBB210_176:
	mov	qword ptr [rdi], rax
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.LBB210_154:
	.cfi_def_cfa_offset 32
	mov	eax, dword ptr [rsi + 8]
	jmp	.LBB210_160
.LBB210_156:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	jns	.LBB210_160
	jmp	.LBB210_119
.LBB210_159:
	movzx	eax, word ptr [rsi + 8]
	jmp	.LBB210_160
.LBB210_161:
	mov	eax, dword ptr [rsi + 8]
	jmp	.LBB210_165
.LBB210_162:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	jns	.LBB210_165
	jmp	.LBB210_119
.LBB210_163:
	movzx	eax, byte ptr [rsi + 8]
	jmp	.LBB210_165
.LBB210_164:
	movzx	eax, word ptr [rsi + 8]
	jmp	.LBB210_165
.Lfunc_end210:
	.size	_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std, .Lfunc_end210-_RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std
	.cfi_endproc
	.section	.rodata._RNvMsb_NtNtCsktQxXQGZjIy_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity12LittleEndianEE5valueCs3bNtqN8jaZB_3std,"a",@progbits
	.p2align	2, 0x0
.LJTI210_0:
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_49-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_13-.LJTI210_0
	.long	.LBB210_13-.LJTI210_0
	.long	.LBB210_13-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_45-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_58-.LJTI210_0
	.long	.LBB210_37-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_63-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_66-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_16-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_34-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_61-.LJTI210_0
	.long	.LBB210_72-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_24-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_55-.LJTI210_0
	.long	.LBB210_39-.LJTI210_0
	.long	.LBB210_29-.LJTI210_0
	.long	.LBB210_18-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_32-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_21-.LJTI210_0
	.long	.LBB210_54-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_77-.LJTI210_0
	.long	.LBB210_5-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_46-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_16-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_68-.LJTI210_0
	.long	.LBB210_51-.LJTI210_0
	.long	.LBB210_42-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_75-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_26-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_28-.LJTI210_0
	.long	.LBB210_12-.LJTI210_0
	.long	.LBB210_17-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_23-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_3-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_79-.LJTI210_0
	.long	.LBB210_65-.LJTI210_0
.LJTI210_1:
	.long	.LBB210_163-.LJTI210_1
	.long	.LBB210_164-.LJTI210_1
	.long	.LBB210_161-.LJTI210_1
	.long	.LBB210_123-.LJTI210_1
	.long	.LBB210_162-.LJTI210_1
	.long	.LBB210_123-.LJTI210_1
.LJTI210_2:
	.long	.LBB210_131-.LJTI210_2
	.long	.LBB210_174-.LJTI210_2
	.long	.LBB210_130-.LJTI210_2
	.long	.LBB210_112-.LJTI210_2
	.long	.LBB210_71-.LJTI210_2
	.long	.LBB210_112-.LJTI210_2
.LJTI210_3:
	.long	.LBB210_148-.LJTI210_3
	.long	.LBB210_139-.LJTI210_3
	.long	.LBB210_137-.LJTI210_3
	.long	.LBB210_100-.LJTI210_3
	.long	.LBB210_133-.LJTI210_3
	.long	.LBB210_100-.LJTI210_3
.LJTI210_4:
	.long	.LBB210_131-.LJTI210_4
	.long	.LBB210_174-.LJTI210_4
	.long	.LBB210_130-.LJTI210_4
	.long	.LBB210_112-.LJTI210_4
	.long	.LBB210_71-.LJTI210_4
	.long	.LBB210_112-.LJTI210_4
.LJTI210_5:
	.long	.LBB210_82-.LJTI210_5
	.long	.LBB210_131-.LJTI210_5
	.long	.LBB210_174-.LJTI210_5
	.long	.LBB210_130-.LJTI210_5
	.long	.LBB210_112-.LJTI210_5
	.long	.LBB210_71-.LJTI210_5
	.long	.LBB210_112-.LJTI210_5
	.long	.LBB210_82-.LJTI210_5
.LJTI210_6:
	.long	.LBB210_131-.LJTI210_6
	.long	.LBB210_174-.LJTI210_6
	.long	.LBB210_130-.LJTI210_6
	.long	.LBB210_112-.LJTI210_6
	.long	.LBB210_71-.LJTI210_6
	.long	.LBB210_112-.LJTI210_6
.LJTI210_7:
	.long	.LBB210_148-.LJTI210_7
	.long	.LBB210_139-.LJTI210_7
	.long	.LBB210_137-.LJTI210_7
	.long	.LBB210_100-.LJTI210_7
	.long	.LBB210_133-.LJTI210_7
	.long	.LBB210_100-.LJTI210_7
.LJTI210_8:
	.long	.LBB210_131-.LJTI210_8
	.long	.LBB210_174-.LJTI210_8
	.long	.LBB210_130-.LJTI210_8
	.long	.LBB210_112-.LJTI210_8
	.long	.LBB210_71-.LJTI210_8
	.long	.LBB210_112-.LJTI210_8
.LJTI210_9:
	.long	.LBB210_82-.LJTI210_9
	.long	.LBB210_131-.LJTI210_9
	.long	.LBB210_174-.LJTI210_9
	.long	.LBB210_130-.LJTI210_9
	.long	.LBB210_112-.LJTI210_9
	.long	.LBB210_71-.LJTI210_9
	.long	.LBB210_112-.LJTI210_9
	.long	.LBB210_82-.LJTI210_9
	.long	.LBB210_80-.LJTI210_9
	.long	.LBB210_8-.LJTI210_9
.LJTI210_10:
	.long	.LBB210_158-.LJTI210_10
	.long	.LBB210_159-.LJTI210_10
	.long	.LBB210_154-.LJTI210_10
	.long	.LBB210_124-.LJTI210_10
	.long	.LBB210_156-.LJTI210_10
	.long	.LBB210_124-.LJTI210_10
.LJTI210_11:
	.long	.LBB210_82-.LJTI210_11
	.long	.LBB210_131-.LJTI210_11
	.long	.LBB210_174-.LJTI210_11
	.long	.LBB210_130-.LJTI210_11
	.long	.LBB210_112-.LJTI210_11
	.long	.LBB210_71-.LJTI210_11
	.long	.LBB210_112-.LJTI210_11
	.long	.LBB210_82-.LJTI210_11
.LJTI210_12:
	.long	.LBB210_131-.LJTI210_12
	.long	.LBB210_174-.LJTI210_12
	.long	.LBB210_130-.LJTI210_12
	.long	.LBB210_112-.LJTI210_12
	.long	.LBB210_71-.LJTI210_12
	.long	.LBB210_112-.LJTI210_12
.LJTI210_13:
	.long	.LBB210_82-.LJTI210_13
	.long	.LBB210_131-.LJTI210_13
	.long	.LBB210_174-.LJTI210_13
	.long	.LBB210_130-.LJTI210_13
	.long	.LBB210_112-.LJTI210_13
	.long	.LBB210_71-.LJTI210_13
	.long	.LBB210_112-.LJTI210_13
	.long	.LBB210_82-.LJTI210_13
.LJTI210_14:
	.long	.LBB210_81-.LJTI210_14
	.long	.LBB210_113-.LJTI210_14
	.long	.LBB210_109-.LJTI210_14
	.long	.LBB210_111-.LJTI210_14
	.long	.LBB210_103-.LJTI210_14
	.long	.LBB210_116-.LJTI210_14
	.long	.LBB210_118-.LJTI210_14
	.long	.LBB210_112-.LJTI210_14
	.long	.LBB210_82-.LJTI210_14
	.long	.LBB210_106-.LJTI210_14
	.long	.LBB210_120-.LJTI210_14
	.long	.LBB210_85-.LJTI210_14
	.long	.LBB210_105-.LJTI210_14
	.long	.LBB210_117-.LJTI210_14
	.long	.LBB210_101-.LJTI210_14
	.long	.LBB210_110-.LJTI210_14
	.long	.LBB210_90-.LJTI210_14
	.long	.LBB210_8-.LJTI210_14
	.long	.LBB210_93-.LJTI210_14
	.long	.LBB210_125-.LJTI210_14
	.long	.LBB210_92-.LJTI210_14
	.long	.LBB210_89-.LJTI210_14
	.long	.LBB210_83-.LJTI210_14
	.long	.LBB210_84-.LJTI210_14
	.long	.LBB210_108-.LJTI210_14
	.long	.LBB210_107-.LJTI210_14
	.long	.LBB210_129-.LJTI210_14
	.long	.LBB210_98-.LJTI210_14
	.long	.LBB210_91-.LJTI210_14
	.long	.LBB210_127-.LJTI210_14
	.long	.LBB210_121-.LJTI210_14
	.long	.LBB210_114-.LJTI210_14
	.long	.LBB210_122-.LJTI210_14
	.long	.LBB210_102-.LJTI210_14
	.long	.LBB210_99-.LJTI210_14
	.long	.LBB210_96-.LJTI210_14
	.long	.LBB210_97-.LJTI210_14
	.long	.LBB210_95-.LJTI210_14
	.long	.LBB210_128-.LJTI210_14
	.long	.LBB210_124-.LJTI210_14
	.long	.LBB210_104-.LJTI210_14
	.long	.LBB210_115-.LJTI210_14
	.long	.LBB210_126-.LJTI210_14
	.long	.LBB210_94-.LJTI210_14
	.long	.LBB210_100-.LJTI210_14
	.long	.LBB210_123-.LJTI210_14
                                        # -- End function
