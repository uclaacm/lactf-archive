# DWARF constants and macros
#
# This file was modified from the following sources:
# - https://github.com/gimli-rs/gimli/blob/dea7178b4e63dbc0606f2c651decb3f8f2b219fc/src/constants.rs
# - https://github.com/gimli-rs/gimli/blob/dea7178b4e63dbc0606f2c651decb3f8f2b219fc/src/arch.rs
# distributed under either MIT or Apache 2.0 licenses.
#
# Copyright 2016 The rust-dwarf Developers
# Copyright 2026 ACM Cyber at UCLA
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     https://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# AMD64 architecture specific definitions.
#
# See section 3.6.2 of the [x86-64 psABI](https://gitlab.com/x86-psABIs/x86-64-ABI).
#define DW_REG_RAX 0
#define DW_REG_RDX 1
#define DW_REG_RCX 2
#define DW_REG_RBX 3
#define DW_REG_RSI 4
#define DW_REG_RDI 5
#define DW_REG_RBP 6
#define DW_REG_RSP 7
#define DW_REG_R8 8
#define DW_REG_R9 9
#define DW_REG_R10 10
#define DW_REG_R11 11
#define DW_REG_R12 12
#define DW_REG_R13 13
#define DW_REG_R14 14
#define DW_REG_R15 15
#define DW_REG_RA 16
#define DW_REG_XMM0 17
#define DW_REG_XMM1 18
#define DW_REG_XMM2 19
#define DW_REG_XMM3 20
#define DW_REG_XMM4 21
#define DW_REG_XMM5 22
#define DW_REG_XMM6 23
#define DW_REG_XMM7 24
#define DW_REG_XMM8 25
#define DW_REG_XMM9 26
#define DW_REG_XMM10 27
#define DW_REG_XMM11 28
#define DW_REG_XMM12 29
#define DW_REG_XMM13 30
#define DW_REG_XMM14 31
#define DW_REG_XMM15 32
#define DW_REG_ST0 33
#define DW_REG_ST1 34
#define DW_REG_ST2 35
#define DW_REG_ST3 36
#define DW_REG_ST4 37
#define DW_REG_ST5 38
#define DW_REG_ST6 39
#define DW_REG_ST7 40
#define DW_REG_MM0 41
#define DW_REG_MM1 42
#define DW_REG_MM2 43
#define DW_REG_MM3 44
#define DW_REG_MM4 45
#define DW_REG_MM5 46
#define DW_REG_MM6 47
#define DW_REG_MM7 48
#define DW_REG_RFLAGS 49
#define DW_REG_ES 50
#define DW_REG_CS 51
#define DW_REG_SS 52
#define DW_REG_DS 53
#define DW_REG_FS 54
#define DW_REG_GS 55
#define DW_REG_FS_BASE 58
#define DW_REG_GS_BASE 59
#define DW_REG_TR 62
#define DW_REG_LDTR 63
#define DW_REG_MXCSR 64
#define DW_REG_FCW 65
#define DW_REG_FSW 66
#define DW_REG_XMM16 67
#define DW_REG_XMM17 68
#define DW_REG_XMM18 69
#define DW_REG_XMM19 70
#define DW_REG_XMM20 71
#define DW_REG_XMM21 72
#define DW_REG_XMM22 73
#define DW_REG_XMM23 74
#define DW_REG_XMM24 75
#define DW_REG_XMM25 76
#define DW_REG_XMM26 77
#define DW_REG_XMM27 78
#define DW_REG_XMM28 79
#define DW_REG_XMM29 80
#define DW_REG_XMM30 81
#define DW_REG_XMM31 82
#define DW_REG_K0 118
#define DW_REG_K1 119
#define DW_REG_K2 120
#define DW_REG_K3 121
#define DW_REG_K4 122
#define DW_REG_K5 123
#define DW_REG_K6 124
#define DW_REG_K7 125
#define DW_REG_R16 130
#define DW_REG_R17 131
#define DW_REG_R18 132
#define DW_REG_R19 133
#define DW_REG_R20 134
#define DW_REG_R21 135
#define DW_REG_R22 136
#define DW_REG_R23 137
#define DW_REG_R24 138
#define DW_REG_R25 139
#define DW_REG_R26 140
#define DW_REG_R27 141
#define DW_REG_R28 142
#define DW_REG_R29 143
#define DW_REG_R30 144
#define DW_REG_R31 145
#define DW_REG_TMM0 146
#define DW_REG_TMM1 147
#define DW_REG_TMM2 148
#define DW_REG_TMM3 149
#define DW_REG_TMM4 150
#define DW_REG_TMM5 151
#define DW_REG_TMM6 152
#define DW_REG_TMM7 153
#define DW_REG_TILECFG 154

# The opcode for a call frame instruction.
# 
# Section 7.24:
# > Call frame instructions are encoded in one or more bytes. The primary
# > opcode is encoded in the high order two bits of the first byte (that is,
# > opcode = byte >> 6). An operand or extended opcode may be encoded in the
# > low order 6 bits. Additional operands are encoded in subsequent bytes.
#define DW_CFA_expression 0x10
#define DW_CFA_val_expression 0x16

# The encodings for DWARF expression operations.
#
# See Section 7.7.1, Table 7.9.
#define DW_OP_addr 0x03
#define DW_OP_deref 0x06
#define DW_OP_const1u 0x08
#define DW_OP_const1s 0x09
#define DW_OP_const2u 0x0a
#define DW_OP_const2s 0x0b
#define DW_OP_const4u 0x0c
#define DW_OP_const4s 0x0d
#define DW_OP_const8u 0x0e
#define DW_OP_const8s 0x0f
#define DW_OP_constu 0x10
#define DW_OP_consts 0x11
#define DW_OP_dup 0x12
#define DW_OP_drop 0x13
#define DW_OP_over 0x14
#define DW_OP_pick 0x15
#define DW_OP_swap 0x16
#define DW_OP_rot 0x17
#define DW_OP_xderef 0x18
#define DW_OP_abs 0x19
#define DW_OP_and 0x1a
#define DW_OP_div 0x1b
#define DW_OP_minus 0x1c
#define DW_OP_mod 0x1d
#define DW_OP_mul 0x1e
#define DW_OP_neg 0x1f
#define DW_OP_not 0x20
#define DW_OP_or 0x21
#define DW_OP_plus 0x22
#define DW_OP_plus_uconst 0x23
#define DW_OP_shl 0x24
#define DW_OP_shr 0x25
#define DW_OP_shra 0x26
#define DW_OP_xor 0x27
#define DW_OP_bra 0x28
#define DW_OP_eq 0x29
#define DW_OP_ge 0x2a
#define DW_OP_gt 0x2b
#define DW_OP_le 0x2c
#define DW_OP_lt 0x2d
#define DW_OP_ne 0x2e
#define DW_OP_skip 0x2f
#define DW_OP_lit0 0x30
#define DW_OP_lit1 0x31
#define DW_OP_lit2 0x32
#define DW_OP_lit3 0x33
#define DW_OP_lit4 0x34
#define DW_OP_lit5 0x35
#define DW_OP_lit6 0x36
#define DW_OP_lit7 0x37
#define DW_OP_lit8 0x38
#define DW_OP_lit9 0x39
#define DW_OP_lit10 0x3a
#define DW_OP_lit11 0x3b
#define DW_OP_lit12 0x3c
#define DW_OP_lit13 0x3d
#define DW_OP_lit14 0x3e
#define DW_OP_lit15 0x3f
#define DW_OP_lit16 0x40
#define DW_OP_lit17 0x41
#define DW_OP_lit18 0x42
#define DW_OP_lit19 0x43
#define DW_OP_lit20 0x44
#define DW_OP_lit21 0x45
#define DW_OP_lit22 0x46
#define DW_OP_lit23 0x47
#define DW_OP_lit24 0x48
#define DW_OP_lit25 0x49
#define DW_OP_lit26 0x4a
#define DW_OP_lit27 0x4b
#define DW_OP_lit28 0x4c
#define DW_OP_lit29 0x4d
#define DW_OP_lit30 0x4e
#define DW_OP_lit31 0x4f
#define DW_OP_reg0 0x50
#define DW_OP_reg1 0x51
#define DW_OP_reg2 0x52
#define DW_OP_reg3 0x53
#define DW_OP_reg4 0x54
#define DW_OP_reg5 0x55
#define DW_OP_reg6 0x56
#define DW_OP_reg7 0x57
#define DW_OP_reg8 0x58
#define DW_OP_reg9 0x59
#define DW_OP_reg10 0x5a
#define DW_OP_reg11 0x5b
#define DW_OP_reg12 0x5c
#define DW_OP_reg13 0x5d
#define DW_OP_reg14 0x5e
#define DW_OP_reg15 0x5f
#define DW_OP_reg16 0x60
#define DW_OP_reg17 0x61
#define DW_OP_reg18 0x62
#define DW_OP_reg19 0x63
#define DW_OP_reg20 0x64
#define DW_OP_reg21 0x65
#define DW_OP_reg22 0x66
#define DW_OP_reg23 0x67
#define DW_OP_reg24 0x68
#define DW_OP_reg25 0x69
#define DW_OP_reg26 0x6a
#define DW_OP_reg27 0x6b
#define DW_OP_reg28 0x6c
#define DW_OP_reg29 0x6d
#define DW_OP_reg30 0x6e
#define DW_OP_reg31 0x6f
#define DW_OP_breg0 0x70
#define DW_OP_breg1 0x71
#define DW_OP_breg2 0x72
#define DW_OP_breg3 0x73
#define DW_OP_breg4 0x74
#define DW_OP_breg5 0x75
#define DW_OP_breg6 0x76
#define DW_OP_breg7 0x77
#define DW_OP_breg8 0x78
#define DW_OP_breg9 0x79
#define DW_OP_breg10 0x7a
#define DW_OP_breg11 0x7b
#define DW_OP_breg12 0x7c
#define DW_OP_breg13 0x7d
#define DW_OP_breg14 0x7e
#define DW_OP_breg15 0x7f
#define DW_OP_breg16 0x80
#define DW_OP_breg17 0x81
#define DW_OP_breg18 0x82
#define DW_OP_breg19 0x83
#define DW_OP_breg20 0x84
#define DW_OP_breg21 0x85
#define DW_OP_breg22 0x86
#define DW_OP_breg23 0x87
#define DW_OP_breg24 0x88
#define DW_OP_breg25 0x89
#define DW_OP_breg26 0x8a
#define DW_OP_breg27 0x8b
#define DW_OP_breg28 0x8c
#define DW_OP_breg29 0x8d
#define DW_OP_breg30 0x8e
#define DW_OP_breg31 0x8f
#define DW_OP_regx 0x90
#define DW_OP_fbreg 0x91
#define DW_OP_bregx 0x92
#define DW_OP_piece 0x93
#define DW_OP_deref_size 0x94
#define DW_OP_xderef_size 0x95
#define DW_OP_nop 0x96
#define DW_OP_push_object_address 0x97
#define DW_OP_call2 0x98
#define DW_OP_call4 0x99
#define DW_OP_call_ref 0x9a
#define DW_OP_form_tls_address 0x9b
#define DW_OP_call_frame_cfa 0x9c
#define DW_OP_bit_piece 0x9d
#define DW_OP_implicit_value 0x9e
#define DW_OP_stack_value 0x9f
#define DW_OP_implicit_pointer 0xa0
#define DW_OP_addrx 0xa1
#define DW_OP_constx 0xa2
#define DW_OP_entry_value 0xa3
#define DW_OP_const_type 0xa4
#define DW_OP_regval_type 0xa5
#define DW_OP_deref_type 0xa6
#define DW_OP_xderef_type 0xa7
#define DW_OP_convert 0xa8
#define DW_OP_reinterpret 0xa9
# GNU extensions
#define DW_OP_GNU_push_tls_address 0xe0
#define DW_OP_GNU_uninit 0xf0
#define DW_OP_GNU_encoded_addr 0xf1
#define DW_OP_GNU_implicit_pointer 0xf2
#define DW_OP_GNU_entry_value 0xf3
#define DW_OP_GNU_const_type 0xf4
#define DW_OP_GNU_regval_type 0xf5
#define DW_OP_GNU_deref_type 0xf6
#define DW_OP_GNU_convert 0xf7
#define DW_OP_GNU_reinterpret 0xf9
#define DW_OP_GNU_parameter_ref 0xfa
#define DW_OP_GNU_addr_index 0xfb
#define DW_OP_GNU_const_index 0xfc
#define DW_OP_GNU_variable_value 0xfd

.section .eh_frame,"aw",@progbits

# Pointer encoding used by `.eh_frame`.
#
# The four lower bits describe the
# format of the pointer, the upper four bits describe how the encoding should
# be applied.
#
# Defined in `<https://refspecs.linuxfoundation.org/LSB_4.0.0/LSB-Core-generic/LSB-Core-generic/dwarfext.html>`
#
# Format of pointer encoding.
#
# "Unsigned value is encoded using the Little Endian Base 128"
#define DW_EH_PE_uleb128 0x1
# "A 2 bytes unsigned value."
#define DW_EH_PE_udata2 0x2
# "A 4 bytes unsigned value."
#define DW_EH_PE_udata4 0x3
# "An 8 bytes unsigned value."
#define DW_EH_PE_udata8 0x4
# "Signed value is encoded using the Little Endian Base 128"
#define DW_EH_PE_sleb128 0x9
# "A 2 bytes signed value."
#define DW_EH_PE_sdata2 0x0a
# "A 4 bytes signed value."
#define DW_EH_PE_sdata4 0x0b
# "An 8 bytes signed value."
#define DW_EH_PE_sdata8 0x0c
#
# How the pointer encoding should be applied.
#
# `DW_EH_PE_pcrel` pointers are relative to their own location.
#define DW_EH_PE_pcrel 0x10
# "Value is relative to the beginning of the .text section."
#define DW_EH_PE_textrel 0x20
# "Value is relative to the beginning of the .got or .eh_frame_hdr section."
#define DW_EH_PE_datarel 0x30
# "Value is relative to the beginning of the function."
#define DW_EH_PE_funcrel 0x40
