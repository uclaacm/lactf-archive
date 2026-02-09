package tf.lac._2026.rev.reflection.stage2

import java.io.File

@Suppress("unused")
class Assembler {
    var length: ULong = 0u
        private set
    private val builder: MutableList<String> = mutableListOf()

    private fun add(data: String, length: ULong = 1u) {
        this.builder.add(data)
        this.length += length
    }

    private fun data1(data: String) {
        add(data)
    }

    private fun data2(data: String) {
        add("data2($data)", 2u)
    }

    private fun data4(data: String) {
        add("data4($data)", 4u)
    }

    private fun data8(data: String) {
        add("data8($data)", 8u)
    }

    private fun uleb128(data: ULong) {
        var value = data
        var dataLength = 0uL
        do {
            value = value shr 7
            dataLength += 1u
        } while (value != 0uL)
        add("uleb128($data)", dataLength)
    }

    private fun sleb128(data: Long) {
        var value = data
        var more = true
        var dataLength = 0uL
        while (more) {
            val byte = value.toUByte()
            value = value shr 7
            val signBit = (byte and 0x40u) != 0.toUByte()
            if ((value == 0L && !signBit) || (value == -1L && signBit)) {
                more = false
            }
            dataLength++
        }
        add("sleb128($data)", dataLength)
    }

    fun nop() {
        add("DW_OP_nop")
    }

    fun lit(data: ULong) {
        when {
            data in 0uL..31uL -> {
                add("DW_OP_lit$data")
            }
            data <= UByte.MAX_VALUE -> {
                add("DW_OP_const1u")
                data1(data.toString())
            }
            data <= UShort.MAX_VALUE -> {
                add("DW_OP_const2u")
                data2(data.toString())
            }
            data <= UInt.MAX_VALUE -> {
                add("DW_OP_const4u")
                data4(data.toString())
            }
            else -> {
                const8u(data.toString())
            }
        }
    }

    fun lit(data: Long) = lit(data.toULong())

    fun const8u(data: String) {
        add("DW_OP_const8u")
        data8(data)
    }

    fun breg(reg: Reg, offset: Long) {
        add("DW_OP_breg${reg.dwOffset}")
        sleb128(offset)
    }

    fun reg(reg: Reg) {
        add("DW_OP_reg${reg.dwOffset}")
    }

    fun regx(reg: ULong) {
        add("DW_OP_regx")
        uleb128(reg)
    }

    fun dup(x: Unit? = null) {
        add("DW_OP_dup")
    }

    fun drop(x: Unit? = null) {
        add("DW_OP_drop")
    }

    fun over() {
        add("DW_OP_over")
    }

    fun pick(offset: UByte) {
        add("DW_OP_pick")
        data1(offset.toString())
    }

    fun swap() {
        add("DW_OP_swap")
    }

    fun rot() {
        add("DW_OP_rot")
    }

    fun deref(x: Unit? = null) {
        add("DW_OP_deref")
    }

    fun callFrameCFA() {
        add("DW_OP_call_frame_cfa")
    }

    fun abs(x: Unit? = null) {
        add("DW_OP_abs")
    }

    fun and(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_and")
    }

    fun div(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_div")
    }

    fun minus(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_minus")
    }

    fun mod(x: Unit? = null) {
        add("DW_OP_mod")
    }

    fun mul(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_mul")
    }

    fun neg(x: Unit? = null) {
        add("DW_OP_neg")
    }

    fun not(x: Unit? = null) {
        add("DW_OP_not")
    }

    fun or(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_or")
    }

    fun plus(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_plus")
    }

    fun plusUConst(lhs: Unit, offset: ULong) {
        plusUConst(offset)
    }

    fun plusUConst(offset: ULong) {
        add("DW_OP_plus_uconst")
        uleb128(offset)
    }

    fun shl(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_shl")
    }

    fun shr(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_shr")
    }

    fun shra(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_shra")
    }

    fun xor(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_xor")
    }

    fun le(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_le")
    }

    fun ge(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_ge")
    }

    fun eq(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_eq")
    }

    fun lt(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_lt")
    }

    fun gt(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_gt")
    }

    fun ne(lhs: Unit? = null, rhs: Unit? = null) {
        add("DW_OP_ne")
    }

    fun skip(offset: Short) {
        add("DW_OP_skip")
        data2(offset.toUShort().toString())
    }

    fun bra(offset: Short) {
        add("DW_OP_bra")
        data2(offset.toUShort().toString())
    }

    fun funcrel(offset: ULong) {
        add("DW_OP_GNU_encoded_addr")
        add("DW_EH_PE_funcrel | DW_EH_PE_uleb128")
        uleb128(offset)
    }

    fun datarel(offset: ULong) {
        add("DW_OP_GNU_encoded_addr")
        add("DW_EH_PE_datarel | DW_EH_PE_uleb128")
        uleb128(offset)
    }

    fun include(subAssembler: Assembler) {
        builder.addAll(subAssembler.builder)
        length += subAssembler.length
    }

    fun ifNot(then: Assembler.() -> Unit, `else`: (Assembler.() -> Unit)? = null) {
        val thenAssembler = Assembler().apply { then() }

        if (`else` != null) {
            assert(thenAssembler.length <= Short.MAX_VALUE.toUInt() - 3u)

            val elseAssembler = Assembler().apply { `else`() }
            assert(elseAssembler.length <= Short.MAX_VALUE.toUInt())

            bra((thenAssembler.length + 3u).toShort())
            include(thenAssembler)
            skip(elseAssembler.length.toShort())

            include(elseAssembler)
        } else {
            assert(thenAssembler.length <= Short.MAX_VALUE.toUInt())

            bra(thenAssembler.length.toShort())
            include(thenAssembler)
        }
    }

    fun ifNot(cond: Unit, then: Assembler.() -> Unit, `else`: (Assembler.() -> Unit)? = null) {
        ifNot(then, `else`)
    }

    fun whileNot(cond: Assembler.() -> Unit, block: Assembler.() -> Unit) {
        val conditionAssembler = Assembler().apply { cond() }
        val blockAssembler = Assembler().apply { block() }

        include(conditionAssembler)

        bra((blockAssembler.length + 3u).toShort())
        include(blockAssembler)

        val backOffset = 3u + blockAssembler.length + 3u + conditionAssembler.length
        assert(backOffset <= Short.MAX_VALUE.toULong() + 1u)
        skip((-backOffset.toLong()).toShort())
    }

    fun toValExpression(reg: Reg) = "\t.cfi_escape DW_CFA_val_expression, ${reg.dwName}, uleb128($length), ${builder.joinToString(", ")}\n"
}

fun assemble(filename: String, reg: Reg, code: Assembler.() -> Unit) {
    with(Assembler()) {
        code()
        File(filename).writeText(toValExpression(reg))
    }
}
