	.section	.text.Lstage2,"axR",@progbits
	.p2align	4
.Lstage2:
	.cfi_startproc
	.cfi_signal_frame        # this is needed to distinguish this frame from main
	.cfi_def_cfa_offset 0    # since this frame contains no stack entries or personality
	.cfi_escape DW_CFA_val_expression, DW_REG_R12, uleb128(9), DW_OP_const8u, data8(0x3e06666e84f11f86)
#include "stage2-cfi-ra.S"
	.cfi_escape DW_CFA_val_expression, DW_REG_R13, uleb128(9), DW_OP_const8u, data8(0x5155422e88e856b5)
.Lstage2_func_start:
	nop
.Lstage2_func_end:
	.size	.Lstage2, .Lstage2_func_end-.Lstage2_func_start
	.cfi_endproc
