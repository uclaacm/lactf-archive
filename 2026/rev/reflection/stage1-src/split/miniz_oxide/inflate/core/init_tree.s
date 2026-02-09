	.section	.text._RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree,"ax",@progbits
	.p2align	4
	.type	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree,@function
_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree: # @_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree
	.cfi_startproc
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
	sub	rsp, 152
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 72], rsi       # 8-byte Spill
	mov	r14, rdi
	lea	rax, [rdi + 10481]
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	lea	rax, [rdi + 6912]
	mov	qword ptr [rsp + 136], rax      # 8-byte Spill
	lea	rax, [rdi + 10400]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	lea	rax, [rdi + 10112]
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	lea	rbx, [rdi + 512]
	movzx	eax, byte ptr [rdi + 10479]
	movzx	r13d, al
	test	r13b, r13b
	je	.LBB252_2
.LBB252_3:
	cmp	r13d, 2
	je	.LBB252_7
# %bb.4:
	cmp	r13d, 1
	jne	.LBB252_28
# %bb.5:
	mov	ebp, 32
	mov	r15, qword ptr [rsp + 128]      # 8-byte Reload
	jmp	.LBB252_6
	.p2align	4
.LBB252_7:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 96], xmm0
	movdqa	xmmword ptr [rsp + 80], xmm0
	movdqa	xmmword ptr [rsp + 48], xmm0
	movdqa	xmmword ptr [rsp + 32], xmm0
	movdqa	xmmword ptr [rsp + 16], xmm0
	movdqa	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 64], 0
	movdqa	xmm0, xmmword ptr [rip + .LCPI252_0] # xmm0 = [798,798,798,798,798,798,798,798]
	movdqu	xmmword ptr [r14 + 6912], xmm0
	movdqu	xmmword ptr [r14 + 6928], xmm0
	movdqu	xmmword ptr [r14 + 6944], xmm0
	movdqu	xmmword ptr [r14 + 6960], xmm0
	movdqu	xmmword ptr [r14 + 6976], xmm0
	movdqu	xmmword ptr [r14 + 6992], xmm0
	movdqu	xmmword ptr [r14 + 7008], xmm0
	movdqu	xmmword ptr [r14 + 7024], xmm0
	movdqu	xmmword ptr [r14 + 7040], xmm0
	movdqu	xmmword ptr [r14 + 7056], xmm0
	movdqu	xmmword ptr [r14 + 7072], xmm0
	movdqu	xmmword ptr [r14 + 7088], xmm0
	movdqu	xmmword ptr [r14 + 7104], xmm0
	movdqu	xmmword ptr [r14 + 7120], xmm0
	movdqu	xmmword ptr [r14 + 7136], xmm0
	movdqu	xmmword ptr [r14 + 7152], xmm0
	movdqu	xmmword ptr [r14 + 7168], xmm0
	movdqu	xmmword ptr [r14 + 7184], xmm0
	movdqu	xmmword ptr [r14 + 7200], xmm0
	movdqu	xmmword ptr [r14 + 7216], xmm0
	movdqu	xmmword ptr [r14 + 7232], xmm0
	movdqu	xmmword ptr [r14 + 7248], xmm0
	movdqu	xmmword ptr [r14 + 7264], xmm0
	movdqu	xmmword ptr [r14 + 7280], xmm0
	movdqu	xmmword ptr [r14 + 7296], xmm0
	movdqu	xmmword ptr [r14 + 7312], xmm0
	movdqu	xmmword ptr [r14 + 7328], xmm0
	movdqu	xmmword ptr [r14 + 7344], xmm0
	movdqu	xmmword ptr [r14 + 7360], xmm0
	movdqu	xmmword ptr [r14 + 7376], xmm0
	movdqu	xmmword ptr [r14 + 7392], xmm0
	movdqu	xmmword ptr [r14 + 7408], xmm0
	movdqu	xmmword ptr [r14 + 7424], xmm0
	movdqu	xmmword ptr [r14 + 7440], xmm0
	movdqu	xmmword ptr [r14 + 7456], xmm0
	movdqu	xmmword ptr [r14 + 7472], xmm0
	movdqu	xmmword ptr [r14 + 7488], xmm0
	movdqu	xmmword ptr [r14 + 7504], xmm0
	movdqu	xmmword ptr [r14 + 7520], xmm0
	movdqu	xmmword ptr [r14 + 7536], xmm0
	movdqu	xmmword ptr [r14 + 7552], xmm0
	movdqu	xmmword ptr [r14 + 7568], xmm0
	movdqu	xmmword ptr [r14 + 7584], xmm0
	movdqu	xmmword ptr [r14 + 7600], xmm0
	movdqu	xmmword ptr [r14 + 7616], xmm0
	movdqu	xmmword ptr [r14 + 7632], xmm0
	movdqu	xmmword ptr [r14 + 7648], xmm0
	movdqu	xmmword ptr [r14 + 7664], xmm0
	movdqu	xmmword ptr [r14 + 7680], xmm0
	movdqu	xmmword ptr [r14 + 7696], xmm0
	movdqu	xmmword ptr [r14 + 7712], xmm0
	movdqu	xmmword ptr [r14 + 7728], xmm0
	movdqu	xmmword ptr [r14 + 7744], xmm0
	movdqu	xmmword ptr [r14 + 7760], xmm0
	movdqu	xmmword ptr [r14 + 7776], xmm0
	movdqu	xmmword ptr [r14 + 7792], xmm0
	movdqu	xmmword ptr [r14 + 7808], xmm0
	movdqu	xmmword ptr [r14 + 7824], xmm0
	movdqu	xmmword ptr [r14 + 7840], xmm0
	movdqu	xmmword ptr [r14 + 7856], xmm0
	movdqu	xmmword ptr [r14 + 7872], xmm0
	movdqu	xmmword ptr [r14 + 7888], xmm0
	movdqu	xmmword ptr [r14 + 7904], xmm0
	movdqu	xmmword ptr [r14 + 7920], xmm0
	movdqu	xmmword ptr [r14 + 7936], xmm0
	movdqu	xmmword ptr [r14 + 7952], xmm0
	movdqu	xmmword ptr [r14 + 7968], xmm0
	movdqu	xmmword ptr [r14 + 7984], xmm0
	movdqu	xmmword ptr [r14 + 8000], xmm0
	movdqu	xmmword ptr [r14 + 8016], xmm0
	movdqu	xmmword ptr [r14 + 8032], xmm0
	movdqu	xmmword ptr [r14 + 8048], xmm0
	movdqu	xmmword ptr [r14 + 8064], xmm0
	movdqu	xmmword ptr [r14 + 8080], xmm0
	movdqu	xmmword ptr [r14 + 8096], xmm0
	movdqu	xmmword ptr [r14 + 8112], xmm0
	movdqu	xmmword ptr [r14 + 8128], xmm0
	movdqu	xmmword ptr [r14 + 8144], xmm0
	movdqu	xmmword ptr [r14 + 8160], xmm0
	movdqu	xmmword ptr [r14 + 8176], xmm0
	movdqu	xmmword ptr [r14 + 8192], xmm0
	movdqu	xmmword ptr [r14 + 8208], xmm0
	movdqu	xmmword ptr [r14 + 8224], xmm0
	movdqu	xmmword ptr [r14 + 8240], xmm0
	movdqu	xmmword ptr [r14 + 8256], xmm0
	movdqu	xmmword ptr [r14 + 8272], xmm0
	movdqu	xmmword ptr [r14 + 8288], xmm0
	movdqu	xmmword ptr [r14 + 8304], xmm0
	movdqu	xmmword ptr [r14 + 8320], xmm0
	movdqu	xmmword ptr [r14 + 8336], xmm0
	movdqu	xmmword ptr [r14 + 8352], xmm0
	movdqu	xmmword ptr [r14 + 8368], xmm0
	movdqu	xmmword ptr [r14 + 8384], xmm0
	movdqu	xmmword ptr [r14 + 8400], xmm0
	movdqu	xmmword ptr [r14 + 8416], xmm0
	movdqu	xmmword ptr [r14 + 8432], xmm0
	movdqu	xmmword ptr [r14 + 8448], xmm0
	movdqu	xmmword ptr [r14 + 8464], xmm0
	movdqu	xmmword ptr [r14 + 8480], xmm0
	movdqu	xmmword ptr [r14 + 8496], xmm0
	movdqu	xmmword ptr [r14 + 8512], xmm0
	movdqu	xmmword ptr [r14 + 8528], xmm0
	movdqu	xmmword ptr [r14 + 8544], xmm0
	movdqu	xmmword ptr [r14 + 8560], xmm0
	movdqu	xmmword ptr [r14 + 8576], xmm0
	movdqu	xmmword ptr [r14 + 8592], xmm0
	movdqu	xmmword ptr [r14 + 8608], xmm0
	movdqu	xmmword ptr [r14 + 8624], xmm0
	movdqu	xmmword ptr [r14 + 8640], xmm0
	movdqu	xmmword ptr [r14 + 8656], xmm0
	movdqu	xmmword ptr [r14 + 8672], xmm0
	movdqu	xmmword ptr [r14 + 8688], xmm0
	movdqu	xmmword ptr [r14 + 8704], xmm0
	movdqu	xmmword ptr [r14 + 8720], xmm0
	movdqu	xmmword ptr [r14 + 8736], xmm0
	movdqu	xmmword ptr [r14 + 8752], xmm0
	movdqu	xmmword ptr [r14 + 8768], xmm0
	movdqu	xmmword ptr [r14 + 8784], xmm0
	movdqu	xmmword ptr [r14 + 8800], xmm0
	movdqu	xmmword ptr [r14 + 8816], xmm0
	movdqu	xmmword ptr [r14 + 8832], xmm0
	movdqu	xmmword ptr [r14 + 8848], xmm0
	movdqu	xmmword ptr [r14 + 8864], xmm0
	movdqu	xmmword ptr [r14 + 8880], xmm0
	movdqu	xmmword ptr [r14 + 8896], xmm0
	movdqu	xmmword ptr [r14 + 8912], xmm0
	movdqu	xmmword ptr [r14 + 8928], xmm0
	movdqu	xmmword ptr [r14 + 8944], xmm0
	mov	ebp, 19
	mov	r15, qword ptr [rsp + 144]      # 8-byte Reload
	mov	r12, qword ptr [rsp + 136]      # 8-byte Reload
	jmp	.LBB252_8
	.p2align	4
.LBB252_2:
	mov	ebp, 288
	mov	r15, qword ptr [rsp + 120]      # 8-byte Reload
.LBB252_6:
	imul	rax, r13, 3200
	lea	r12, [rbx + rax]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	movaps	xmmword ptr [rsp + 80], xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	movaps	xmmword ptr [rsp + 32], xmm0
	movaps	xmmword ptr [rsp + 16], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 64], 0
	movdqa	xmm0, xmmword ptr [rip + .LCPI252_0] # xmm0 = [798,798,798,798,798,798,798,798]
	movdqu	xmmword ptr [rbx + rax], xmm0
	movdqu	xmmword ptr [rbx + rax + 16], xmm0
	movdqu	xmmword ptr [rbx + rax + 32], xmm0
	movdqu	xmmword ptr [rbx + rax + 48], xmm0
	movdqu	xmmword ptr [rbx + rax + 64], xmm0
	movdqu	xmmword ptr [rbx + rax + 80], xmm0
	movdqu	xmmword ptr [rbx + rax + 96], xmm0
	movdqu	xmmword ptr [rbx + rax + 112], xmm0
	movdqu	xmmword ptr [rbx + rax + 128], xmm0
	movdqu	xmmword ptr [rbx + rax + 144], xmm0
	movdqu	xmmword ptr [rbx + rax + 160], xmm0
	movdqu	xmmword ptr [rbx + rax + 176], xmm0
	movdqu	xmmword ptr [rbx + rax + 192], xmm0
	movdqu	xmmword ptr [rbx + rax + 208], xmm0
	movdqu	xmmword ptr [rbx + rax + 224], xmm0
	movdqu	xmmword ptr [rbx + rax + 240], xmm0
	movdqu	xmmword ptr [rbx + rax + 256], xmm0
	movdqu	xmmword ptr [rbx + rax + 272], xmm0
	movdqu	xmmword ptr [rbx + rax + 288], xmm0
	movdqu	xmmword ptr [rbx + rax + 304], xmm0
	movdqu	xmmword ptr [rbx + rax + 320], xmm0
	movdqu	xmmword ptr [rbx + rax + 336], xmm0
	movdqu	xmmword ptr [rbx + rax + 352], xmm0
	movdqu	xmmword ptr [rbx + rax + 368], xmm0
	movdqu	xmmword ptr [rbx + rax + 384], xmm0
	movdqu	xmmword ptr [rbx + rax + 400], xmm0
	movdqu	xmmword ptr [rbx + rax + 416], xmm0
	movdqu	xmmword ptr [rbx + rax + 432], xmm0
	movdqu	xmmword ptr [rbx + rax + 448], xmm0
	movdqu	xmmword ptr [rbx + rax + 464], xmm0
	movdqu	xmmword ptr [rbx + rax + 480], xmm0
	movdqu	xmmword ptr [rbx + rax + 496], xmm0
	movdqu	xmmword ptr [rbx + rax + 512], xmm0
	movdqu	xmmword ptr [rbx + rax + 528], xmm0
	movdqu	xmmword ptr [rbx + rax + 544], xmm0
	movdqu	xmmword ptr [rbx + rax + 560], xmm0
	movdqu	xmmword ptr [rbx + rax + 576], xmm0
	movdqu	xmmword ptr [rbx + rax + 592], xmm0
	movdqu	xmmword ptr [rbx + rax + 608], xmm0
	movdqu	xmmword ptr [rbx + rax + 624], xmm0
	movdqu	xmmword ptr [rbx + rax + 640], xmm0
	movdqu	xmmword ptr [rbx + rax + 656], xmm0
	movdqu	xmmword ptr [rbx + rax + 672], xmm0
	movdqu	xmmword ptr [rbx + rax + 688], xmm0
	movdqu	xmmword ptr [rbx + rax + 704], xmm0
	movdqu	xmmword ptr [rbx + rax + 720], xmm0
	movdqu	xmmword ptr [rbx + rax + 736], xmm0
	movdqu	xmmword ptr [rbx + rax + 752], xmm0
	movdqu	xmmword ptr [rbx + rax + 768], xmm0
	movdqu	xmmword ptr [rbx + rax + 784], xmm0
	movdqu	xmmword ptr [rbx + rax + 800], xmm0
	movdqu	xmmword ptr [rbx + rax + 816], xmm0
	movdqu	xmmword ptr [rbx + rax + 832], xmm0
	movdqu	xmmword ptr [rbx + rax + 848], xmm0
	movdqu	xmmword ptr [rbx + rax + 864], xmm0
	movdqu	xmmword ptr [rbx + rax + 880], xmm0
	movdqu	xmmword ptr [rbx + rax + 896], xmm0
	movdqu	xmmword ptr [rbx + rax + 912], xmm0
	movdqu	xmmword ptr [rbx + rax + 928], xmm0
	movdqu	xmmword ptr [rbx + rax + 944], xmm0
	movdqu	xmmword ptr [rbx + rax + 960], xmm0
	movdqu	xmmword ptr [rbx + rax + 976], xmm0
	movdqu	xmmword ptr [rbx + rax + 992], xmm0
	movdqu	xmmword ptr [rbx + rax + 1008], xmm0
	movdqu	xmmword ptr [rbx + rax + 1024], xmm0
	movdqu	xmmword ptr [rbx + rax + 1040], xmm0
	movdqu	xmmword ptr [rbx + rax + 1056], xmm0
	movdqu	xmmword ptr [rbx + rax + 1072], xmm0
	movdqu	xmmword ptr [rbx + rax + 1088], xmm0
	movdqu	xmmword ptr [rbx + rax + 1104], xmm0
	movdqu	xmmword ptr [rbx + rax + 1120], xmm0
	movdqu	xmmword ptr [rbx + rax + 1136], xmm0
	movdqu	xmmword ptr [rbx + rax + 1152], xmm0
	movdqu	xmmword ptr [rbx + rax + 1168], xmm0
	movdqu	xmmword ptr [rbx + rax + 1184], xmm0
	movdqu	xmmword ptr [rbx + rax + 1200], xmm0
	movdqu	xmmword ptr [rbx + rax + 1216], xmm0
	movdqu	xmmword ptr [rbx + rax + 1232], xmm0
	movdqu	xmmword ptr [rbx + rax + 1248], xmm0
	movdqu	xmmword ptr [rbx + rax + 1264], xmm0
	movdqu	xmmword ptr [rbx + rax + 1280], xmm0
	movdqu	xmmword ptr [rbx + rax + 1296], xmm0
	movdqu	xmmword ptr [rbx + rax + 1312], xmm0
	movdqu	xmmword ptr [rbx + rax + 1328], xmm0
	movdqu	xmmword ptr [rbx + rax + 1344], xmm0
	movdqu	xmmword ptr [rbx + rax + 1360], xmm0
	movdqu	xmmword ptr [rbx + rax + 1376], xmm0
	movdqu	xmmword ptr [rbx + rax + 1392], xmm0
	movdqu	xmmword ptr [rbx + rax + 1408], xmm0
	movdqu	xmmword ptr [rbx + rax + 1424], xmm0
	movdqu	xmmword ptr [rbx + rax + 1440], xmm0
	movdqu	xmmword ptr [rbx + rax + 1456], xmm0
	movdqu	xmmword ptr [rbx + rax + 1472], xmm0
	movdqu	xmmword ptr [rbx + rax + 1488], xmm0
	movdqu	xmmword ptr [rbx + rax + 1504], xmm0
	movdqu	xmmword ptr [rbx + rax + 1520], xmm0
	movdqu	xmmword ptr [rbx + rax + 1536], xmm0
	movdqu	xmmword ptr [rbx + rax + 1552], xmm0
	movdqu	xmmword ptr [rbx + rax + 1568], xmm0
	movdqu	xmmword ptr [rbx + rax + 1584], xmm0
	movdqu	xmmword ptr [rbx + rax + 1600], xmm0
	movdqu	xmmword ptr [rbx + rax + 1616], xmm0
	movdqu	xmmword ptr [rbx + rax + 1632], xmm0
	movdqu	xmmword ptr [rbx + rax + 1648], xmm0
	movdqu	xmmword ptr [rbx + rax + 1664], xmm0
	movdqu	xmmword ptr [rbx + rax + 1680], xmm0
	movdqu	xmmword ptr [rbx + rax + 1696], xmm0
	movdqu	xmmword ptr [rbx + rax + 1712], xmm0
	movdqu	xmmword ptr [rbx + rax + 1728], xmm0
	movdqu	xmmword ptr [rbx + rax + 1744], xmm0
	movdqu	xmmword ptr [rbx + rax + 1760], xmm0
	movdqu	xmmword ptr [rbx + rax + 1776], xmm0
	movdqu	xmmword ptr [rbx + rax + 1792], xmm0
	movdqu	xmmword ptr [rbx + rax + 1808], xmm0
	movdqu	xmmword ptr [rbx + rax + 1824], xmm0
	movdqu	xmmword ptr [rbx + rax + 1840], xmm0
	movdqu	xmmword ptr [rbx + rax + 1856], xmm0
	movdqu	xmmword ptr [rbx + rax + 1872], xmm0
	movdqu	xmmword ptr [rbx + rax + 1888], xmm0
	movdqu	xmmword ptr [rbx + rax + 1904], xmm0
	movdqu	xmmword ptr [rbx + rax + 1920], xmm0
	movdqu	xmmword ptr [rbx + rax + 1936], xmm0
	movdqu	xmmword ptr [rbx + rax + 1952], xmm0
	movdqu	xmmword ptr [rbx + rax + 1968], xmm0
	movdqu	xmmword ptr [rbx + rax + 1984], xmm0
	movdqu	xmmword ptr [rbx + rax + 2000], xmm0
	movdqu	xmmword ptr [rbx + rax + 2016], xmm0
	movdqu	xmmword ptr [rbx + rax + 2032], xmm0
	lea	rdi, [rbx + rax]
	add	rdi, 2048
	mov	edx, 1152
	xor	esi, esi
	call	qword ptr [rip + memset@GOTPCREL]
.LBB252_8:
	movzx	esi, word ptr [r14 + 2*r13 + 10472]
	mov	al, 3
	mov	dl, 28
	cmp	ebp, esi
	jb	.LBB252_30
# %bb.9:
	test	rsi, rsi
	je	.LBB252_10
# %bb.11:
	xor	ecx, ecx
	.p2align	4
.LBB252_12:                             # =>This Inner Loop Header: Depth=1
	movzx	edi, byte ptr [r15 + rcx]
	cmp	rdi, 15
	ja	.LBB252_29
# %bb.13:                               #   in Loop: Header=BB252_12 Depth=1
	inc	word ptr [rsp + 2*rdi + 80]
	inc	rcx
	cmp	rsi, rcx
	jne	.LBB252_12
# %bb.14:
	movzx	ecx, word ptr [rsp + 82]
	jmp	.LBB252_15
	.p2align	4
.LBB252_10:
	xor	ecx, ecx
.LBB252_15:
	movzx	eax, cx
	lea	edi, [rax + rax]
	mov	dword ptr [rsp + 8], edi
	movdqu	xmm0, xmmword ptr [rsp + 84]
	pextrw	edi, xmm0, 0
	lea	eax, [rdi + 2*rax]
	lea	edi, [rax + rax]
	pextrw	r8d, xmm0, 1
	mov	dword ptr [rsp + 12], edi
	lea	eax, [r8 + 2*rax]
	lea	edi, [rax + rax]
	mov	dword ptr [rsp + 16], edi
	pextrw	edi, xmm0, 2
	lea	eax, [rdi + 2*rax]
	lea	edi, [rax + rax]
	mov	dword ptr [rsp + 20], edi
	pextrw	edi, xmm0, 3
	lea	eax, [rdi + 2*rax]
	lea	edi, [rax + rax]
	mov	dword ptr [rsp + 24], edi
	pextrw	edi, xmm0, 4
	lea	eax, [rdi + 2*rax]
	lea	edi, [rax + rax]
	pextrw	r8d, xmm0, 5
	mov	dword ptr [rsp + 28], edi
	lea	eax, [r8 + 2*rax]
	lea	edi, [rax + rax]
	mov	dword ptr [rsp + 32], edi
	pextrw	edi, xmm0, 6
	lea	eax, [rdi + 2*rax]
	lea	edi, [rax + rax]
	mov	dword ptr [rsp + 36], edi
	pextrw	edi, xmm0, 7
	lea	r8d, [rdi + 2*rax]
	lea	eax, [r8 + r8]
	mov	dword ptr [rsp + 40], eax
	mov	rdi, qword ptr [rsp + 100]
	mov	rax, rdi
	shr	rax, 48
	mov	r9, rdi
	shr	r9, 32
	mov	r10d, edi
	shr	r10d, 16
	movzx	r11d, di
	lea	r8d, [r11 + 2*r8]
	lea	r11d, [r8 + r8]
	mov	dword ptr [rsp + 44], r11d
	lea	r8d, [r10 + 2*r8]
	lea	r10d, [r8 + r8]
	mov	dword ptr [rsp + 48], r10d
	movzx	r9d, r9w
	lea	r8d, [r9 + 2*r8]
	lea	r9d, [r8 + r8]
	mov	dword ptr [rsp + 52], r9d
	lea	eax, [rax + 2*r8]
	lea	r8d, [rax + rax]
	mov	dword ptr [rsp + 56], r8d
	movzx	r8d, word ptr [rsp + 108]
	lea	eax, [r8 + 2*rax]
	lea	r9d, [rax + rax]
	mov	dword ptr [rsp + 60], r9d
	movzx	r9d, word ptr [rsp + 110]
	lea	eax, [r9 + 2*rax]
	lea	r10d, [rax + rax]
	mov	dword ptr [rsp + 64], r10d
	cmp	eax, 32768
	je	.LBB252_18
# %bb.16:
	mov	al, 1
	cmp	r13d, 2
	je	.LBB252_30
# %bb.17:
	movq	xmm1, rdi
	paddw	xmm1, xmm0
	shufps	xmm1, xmm0, 228                 # xmm1 = xmm1[0,1],xmm0[2,3]
	pshufd	xmm0, xmm0, 238                 # xmm0 = xmm0[2,3,2,3]
	paddw	xmm0, xmm1
	pshufd	xmm1, xmm0, 85                  # xmm1 = xmm0[1,1,1,1]
	paddw	xmm1, xmm0
	movdqa	xmm0, xmm1
	psrld	xmm0, 16
	paddw	xmm0, xmm1
	movd	edi, xmm0
	add	r9d, ecx
	add	r9d, r8d
	add	r9d, edi
	cmp	r9w, 1
	ja	.LBB252_30
.LBB252_18:
	mov	ax, -1
	xor	edx, edx
	cmp	rdx, rsi
	jae	.LBB252_23
.LBB252_20:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB252_21 Depth 2
                                        #       Child Loop BB252_34 Depth 3
                                        #     Child Loop BB252_38 Depth 2
	lea	rcx, [rdx + 1]
	jmp	.LBB252_21
	.p2align	4
.LBB252_22:                             #   in Loop: Header=BB252_21 Depth=2
	cmp	rdx, rsi
	mov	rcx, rdx
	adc	rcx, 0
	cmp	rdx, rsi
	jae	.LBB252_23
.LBB252_21:                             #   Parent Loop BB252_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB252_34 Depth 3
	mov	rdi, rdx
	mov	rdx, rcx
	movzx	r9d, byte ptr [r15 + rdi]
	and	r9d, 15
	je	.LBB252_22
# %bb.31:                               #   in Loop: Header=BB252_21 Depth=2
	mov	r10d, dword ptr [rsp + 4*r9]
	lea	r8d, [r10 + 1]
	mov	ecx, r9d
	neg	cl
	shl	r10d, cl
	shr	r10d, cl
	rol	r10w, 8
	mov	ecx, r10d
	and	ecx, 3855
	shl	ecx, 4
	shr	r10d, 4
	and	r10d, 3855
	or	r10d, ecx
	mov	ecx, r10d
	and	ecx, 13107
	shr	r10d, 2
	and	r10d, 13107
	lea	ecx, [r10 + 4*rcx]
	mov	r10d, ecx
	and	r10d, 21845
	shr	ecx
	and	ecx, 21845
	lea	r10d, [rcx + 2*r10]
	mov	cl, 16
	sub	cl, r9b
	shr	r10d, cl
	mov	dword ptr [rsp + 4*r9], r8d
	movzx	r8d, r10w
	cmp	r9b, 10
	ja	.LBB252_35
# %bb.32:                               #   in Loop: Header=BB252_21 Depth=2
	cmp	r8d, 1023
	ja	.LBB252_22
# %bb.33:                               #   in Loop: Header=BB252_21 Depth=2
	movzx	ecx, r9b
	mov	r9d, ecx
	shl	r9d, 9
	or	edi, r9d
	mov	r9d, 1
                                        # kill: def $cl killed $cl killed $ecx
	shl	r9d, cl
	.p2align	4
.LBB252_34:                             #   Parent Loop BB252_20 Depth=1
                                        #     Parent Loop BB252_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	word ptr [r12 + 2*r8], di
	add	r8, r9
	cmp	r8, 1024
	jb	.LBB252_34
	jmp	.LBB252_22
	.p2align	4
.LBB252_35:                             #   in Loop: Header=BB252_20 Depth=1
	and	r10d, 1023
	movzx	ecx, word ptr [r12 + 2*r10]
	cmp	ecx, 798
	jne	.LBB252_36
# %bb.45:                               #   in Loop: Header=BB252_20 Depth=1
	mov	word ptr [r12 + 2*r10], ax
	mov	ecx, eax
	add	eax, -2
                                        # kill: def $ax killed $ax killed $eax def $rax
.LBB252_36:                             #   in Loop: Header=BB252_20 Depth=1
	shr	r8d, 9
	cmp	r9b, 11
	jne	.LBB252_37
.LBB252_40:                             #   in Loop: Header=BB252_20 Depth=1
	not	ecx
	bt	r8d, 1
	adc	cx, 0
	movzx	ecx, cx
	cmp	ecx, 575
	ja	.LBB252_39
# %bb.41:                               #   in Loop: Header=BB252_20 Depth=1
	mov	word ptr [r12 + 2*rcx + 2048], di
	cmp	rdx, rsi
	jb	.LBB252_20
	jmp	.LBB252_23
.LBB252_37:                             #   in Loop: Header=BB252_20 Depth=1
	add	r9d, -11
	jmp	.LBB252_38
	.p2align	4
.LBB252_44:                             #   in Loop: Header=BB252_38 Depth=2
	movzx	r8d, r8w
	shr	r8d
	dec	r9b
	je	.LBB252_40
.LBB252_38:                             #   Parent Loop BB252_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	not	ecx
	bt	r8d, 1
	adc	cx, 0
	movzx	r10d, cx
	cmp	r10d, 575
	ja	.LBB252_39
# %bb.42:                               #   in Loop: Header=BB252_38 Depth=2
	movzx	ecx, word ptr [r12 + 2*r10 + 2048]
	test	cx, cx
	jne	.LBB252_44
# %bb.43:                               #   in Loop: Header=BB252_38 Depth=2
	mov	word ptr [r12 + 2*r10 + 2048], ax
	mov	ecx, eax
	add	eax, -2
                                        # kill: def $ax killed $ax killed $eax def $rax
	jmp	.LBB252_44
	.p2align	4
.LBB252_23:
	movzx	eax, byte ptr [r14 + 10479]
	test	eax, eax
	je	.LBB252_26
# %bb.24:
	cmp	eax, 2
	je	.LBB252_25
# %bb.27:
	dec	al
	mov	byte ptr [r14 + 10479], al
	movzx	r13d, al
	test	r13b, r13b
	jne	.LBB252_3
	jmp	.LBB252_2
.LBB252_39:
	mov	dl, 10
	mov	al, 3
	jmp	.LBB252_30
.LBB252_26:
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	mov	dword ptr [rax + 16], 0
	mov	al, 1
	mov	dl, 12
	jmp	.LBB252_30
.LBB252_25:
	mov	rax, qword ptr [rsp + 72]       # 8-byte Reload
	mov	dword ptr [rax + 16], 0
	mov	al, 1
	mov	dl, 10
	jmp	.LBB252_30
.LBB252_28:
	mov	al, 3
.LBB252_29:
                                        # implicit-def: $dl
.LBB252_30:
	add	rsp, 152
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
.Lfunc_end252:
	.size	_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree, .Lfunc_end252-_RNvNtNtCs65H79aCg9yw_11miniz_oxide7inflate4core9init_tree
	.cfi_endproc
                                        # -- End function
