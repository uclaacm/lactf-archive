package tf.lac._2026.rev.reflection.stage2

import java.util.Random

const val R8_STAGE1: ULong = 0x0f10478b4808578bu

// evil randomization functions

val randomizer = Random(0xe5447245167ffd1du.toLong())

fun Assembler.plusUconstRand(lhs: Unit, offset: ULong) {
    if (randomizer.nextBoolean()) {
        plusUConst(lhs, offset)
    } else {
        plus(lhs, lit(offset))
    }
}

fun Assembler.plusUconstRand(offset: ULong) {
    plusUconstRand(Unit, offset)
}

fun Assembler.pickRand(offset: UByte) {
    if (offset == 1u.toUByte() && randomizer.nextInt(3) != 0) {
        over()
    } else {
        pick(offset)
    }
}

fun Assembler.pick2Rand(offset1: UByte, offset2: UByte, swap: Boolean = true) {
    if (randomizer.nextBoolean()) {
        pickRand(offset1)
        pickRand(offset2)
    } else {
        pickRand((offset2 - 1u).toUByte())
        pickRand((offset1 + 1u).toUByte())
        if (swap) swap()
    }
}

// randomize the order of two expressions that each produce 1 stack entry
fun Assembler.randomizeOrder(
    block1: Assembler.((UByte) -> UByte) -> Unit,
    block2: Assembler.((UByte) -> UByte) -> Unit,
    advanced: Boolean = false,
) {
    when (randomizer.nextInt(if (advanced) 6 else 4)) {
        0, 1 -> {
            block1 { o -> o }
            block2 { o -> o }
        }
        2, 3 -> {
            block2 { o -> (o - 1u).toUByte() }
            block1 { o -> (o + 1u).toUByte() }
        }
        4 -> {
            val block1Assembler = Assembler().apply { block1 { o -> o } }
            val block2Assembler = Assembler().apply { block2 { o -> o } }
            skip((block2Assembler.length + 3u).toShort())
            include(block2Assembler)
            skip((block1Assembler.length + 3u).toShort())
            include(block1Assembler)
            skip((-(3u + block1Assembler.length + 3u + block2Assembler.length).toShort()).toShort())
        }
        5 -> {
            val block2Assembler = Assembler().apply { block2 { o -> (o - 1u).toUByte() } }
            val block1Assembler = Assembler().apply { block1 { o -> (o + 1u).toUByte() } }
            skip((block1Assembler.length + 3u).toShort())
            include(block1Assembler)
            skip((block2Assembler.length + 3u).toShort())
            include(block2Assembler)
            skip((-(3u + block2Assembler.length + 3u + block1Assembler.length).toShort()).toShort())
        }
    }
}

enum class ConstraintType {
    Row,
    Col,
}

fun main() {
    assemble("../stage1-src/src/stage1-cfi-ra.S", Reg.RA) {
        val cfa = Unit
        val argc2: Unit
        val argc = run {
            minus(
                and(deref(funcrel(6u)), lit(0xff)),
                lit(13),
            )
            val trollReadelf = lit(0x0a05)
            swap()
            reg(Reg.RCX)
            swap()
            minus()
            swap()
            drop(trollReadelf)
            argc2 = dup()
            deref()
        }
        // if argc == 2
        ifNot(
            ne(argc, lit(2)),
            {
                // calculate strlen(argv[1])
                val argv2 = deref(plusUConst(deref(plusUConst(argc2, 8u)), 8u))
                val argv = dup()
                val argvStrlen = lit(0)
                swap()
                whileNot({
                    eq(and(deref(dup(argv)), lit(0xff)), lit(0))
                }, {
                    plusUConst(argv, 1u)
                    swap()
                    plusUConst(argvStrlen, 1u)
                    swap()
                })
                rot()

                // if strlen(argv[1]) ^ 0x4b == 0x64
                //  && (argv[1] + ((0-1) >>> 16)) ^ (0xccc879da78d66dc << 3) == 0x0f10478b4808578b
                //  && argv[1][-1] == '}'
                val notLen47 = ne(xor(argvStrlen, lit(0x4b)), lit(0x64))
                swap()
                val notLactf = ne(
                    xor(
                        plus(
                            deref(argv2),
                            shr(minus(lit(0), lit(1)), lit(16)),
                        ),
                        shl(lit(0xccc879da78d66dc), lit(3)),
                    ),
                    reg(Reg.R8),
                )
                val notLactfOrLen47 = or(notLen47, notLactf)
                swap()
                val notEndWithCurly = ne(
                    and(deref(minus(argv, lit(0x1))), lit(0xff)),
                    lit(0x7d),
                )
                ifNot(
                    or(notLactfOrLen47, notEndWithCurly),
                    {
                        // const8u(".Lstage2+0x1")
                        funcrel((0x43cc21 - 0x403040).toULong())
                    },
                    {
                        deref(minus(cfa, lit(8)))
                    },
                )
            },
            {
                drop(argc2)
                deref(minus(cfa, lit(8)))
            },
        )
    }

    assemble("../stage1-src/src/stage2-cfi-ra.S", Reg.RA) {
        val rows = listOf(
            listOf(3, 2),
            listOf(2, 1, 1),
            listOf(2, 1, 2),
            listOf(2, 1, 1),
            listOf(1, 5),
            listOf(3, 1),
            listOf(2, 1),
            listOf(2, 1, 1),
            listOf(3, 2),
            listOf(1, 5),
            listOf(2, 1, 1),
            listOf(3, 2),
            listOf(1, 5),
            listOf(2, 1),
            listOf(2, 2),
            listOf(3, 1),
            listOf(3, 1, 1),
            listOf(2, 1),
            listOf(2, 2),
            listOf(2, 2),
            listOf(4, 1),
            listOf(1, 5),
            listOf(2, 1),
            listOf(1, 5),
            listOf(3),
            listOf(3, 1, 1),
            listOf(2, 2, 1),
            listOf(2, 1),
            listOf(2, 1, 1),
            listOf(3, 1),
            listOf(1, 5),
            listOf(3, 1),
            listOf(2, 1, 1),
            listOf(2, 2),
            listOf(2, 1, 1),
            listOf(3, 1),
            listOf(2, 1, 1),
            listOf(2, 3),
            listOf(2, 2),
            listOf(2, 1, 1),
        )
        val cols = listOf(
            listOf(0),
            listOf(40),
            listOf(4, 4, 2, 8, 1, 6, 9),
            listOf(1, 2, 2, 2, 2, 2, 3, 3, 1),
            listOf(2, 1, 2, 2, 1, 4, 1, 1, 1, 1),
            listOf(3, 1, 1, 2, 2, 1, 1, 2, 1, 1, 3, 2, 1),
            listOf(1, 1, 1, 2, 2, 1, 1, 1, 1, 3, 1, 1, 2),
            listOf(5, 8, 2, 4, 2, 1, 1, 1, 1, 1, 2),
        )

        datarel(8u)
        val argvPtr = breg(Reg.RCX, -81)
        deref(plus(deref(argvPtr), null)) // [flagBase]

        // troll readelf + initialize validity accumulator
        and(lit(0x1501), lit(0xff)) // [flagBase, allValid]

        // Validate rows 3 through 40 and all 8 columns
        val constraints =
            (
                (
                    rows
                        .withIndex()
                        .drop(2)
                        .map { ConstraintType.Row to it }
                ) + (
                    cols
                        .withIndex()
                        .map { ConstraintType.Col to it }
                )
            ).shuffled(randomizer)
        for ((type, constraint) in constraints) {
            when (type) {
                ConstraintType.Row -> {
                    validateRow(constraint.index, constraint.value) // [flagBase, allValid, rowValid]
                }
                ConstraintType.Col -> {
                    validateColumn(constraint.index, constraint.value) // [flagBase, allValid, rowValid]
                }
            }
            and() // [flagBase, allValid]
        }

        swap() // [allValid, flagBase]
        drop() // Stack: [allValid]

        ifNot({
            breg(Reg.RAX, -1)
        }, {
            // const8u(".Lstage3+0x1")
            funcrel((0x4402d0 - 0x43cc20).toULong())
        })
    }
}

fun Assembler.encryptedConst1u(expectedRun: Int) {
    assert(expectedRun.toUInt() < UByte.MAX_VALUE)
    val offset = randomizer.nextInt(16)
    xor(
        lit((expectedRun.toULong() xor ((R8_STAGE1 shr offset) and 0xffu))),
        and(
            shr(
                if (randomizer.nextInt(8) == 0) {
                    reg(Reg.R8)
                } else {
                    regx(8u)
                },
                lit(offset.toULong()),
            ),
            lit(0xffu),
        ),
    )
}

/**
 * Validates a single row (8-bit byte) against a nonogram constraint.
 * Input stack: [flagBase, allValid]
 * Output stack: [flagBase, allValid, rowValid]
 */
fun Assembler.validateRow(rowIdx: Int, constraint: List<Int>) {
    // Load flag[6 + rowIdx] & 0xFF
    pickRand(1u) // [fB, aV, fB]
    encryptedConst1u(6 + rowIdx)
    plus()
    deref()
    and(null, lit(0xFF)) // [fB, aV, byte]

    // Initialize: bitPos = 6, rowValid = 1
    lit(6) // [fB, aV, byte, bitPos]
    lit(1) // [fB, aV, byte, bitPos, rowValid]

    for (expectedRun in constraint) {
        // === Skip zeros ===
        // Continue while: bitPos >= 0 AND bit == 0
        // Stop when: bitPos < 0 OR bit == 1
        whileNot({
            randomizeOrder(
                { o ->
                    // Stack: [fB, aV, byte, bitPos, rowV]
                    pickRand(o(1u)) // [fB, aV, byte, bitPos, rowV, bitPos]
                    lt(null, lit(0)) // [fB, aV, byte, bitPos, rowV, bitPos<0]
                },
                { o ->
                    pick2Rand(o(3u), o(3u)) // [fB, aV, byte, bitPos, rowV, bitPos<0, byte, bitPos]
                    shr() // [fB, aV, byte, bitPos, rowV, bitPos<0, byte>>bitPos]
                    and(null, lit(1)) // [fB, aV, byte, bitPos, rowV, bitPos<0, bit]
                },
            )
            or() // [fB, aV, byte, bitPos, rowV, stop]
        }, {
            // Stack: [fB, aV, byte, bitPos, rowV]
            swap() // [fB, aV, byte, rowV, bitPos]
            minus(null, lit(1)) // bitPos--
            swap() // [fB, aV, byte, bitPos, rowV]
        })

        // === Count ones ===
        lit(0) // [fB, aV, byte, bitPos, rowV, count]

        // Continue while: bitPos >= 0 AND bit == 1
        // Stop when: bitPos < 0 OR bit == 0
        whileNot({
            randomizeOrder(
                { o ->
                    // Stack: [fB, aV, byte, bitPos, rowV, count]
                    pickRand(o(2u)) // [fB, aV, byte, bitPos, rowV, count, bitPos]
                    lt(null, lit(0)) // [fB, aV, byte, bitPos, rowV, count, bitPos<0]
                },
                { o ->
                    pick2Rand(o(4u), o(4u)) // [fB, aV, byte, bitPos, rowV, count, bitPos<0, byte, bitPos]
                    shr()
                    and(null, lit(1)) // [fB, aV, byte, bitPos, rowV, count, bitPos<0, bit]
                    eq(null, lit(0)) // [fB, aV, byte, bitPos, rowV, count, bitPos<0, bit==0]
                },
                true,
            )
            or() // [fB, aV, byte, bitPos, rowV, count, stop]
        }, {
            // Stack: [fB, aV, byte, bitPos, rowV, count]
            randomizeOrder(
                {
                    plusUconstRand(1u) // count++
                },
                {
                    // Now decrement bitPos which is at position 2
                    rot() // [fB, aV, byte, count, bitPos, rowV]
                    rot() // [fB, aV, byte, rowV, count, bitPos]
                    minus(null, lit(1)) // bitPos--
                    rot() // [fB, aV, byte, bitPos, rowV, count]
                },
            )
        })

        // === Verify count == expectedRun ===
        // Stack: [fB, aV, byte, bitPos, rowV, count]
        encryptedConst1u(expectedRun)
        eq() // [fB, aV, byte, bitPos, rowV, countOK]
        and() // [fB, aV, byte, bitPos, rowV']
    }

    // === Verify trailing zeros ===
    // Stack: [fB, aV, byte, bitPos, rowV]
    // Continue while: bitPos >= 0
    // Stop when: bitPos < 0
    whileNot({
        pickRand(1u) // [fB, aV, byte, bitPos, rowV, bitPos]
        lt(null, lit(0)) // stop when bitPos < 0
    }, {
        // Check current bit == 0
        pick2Rand(2u, 2u) // [fB, aV, byte, bitPos, rowV, byte, bitPos]
        shr()
        and(null, lit(1)) // [fB, aV, byte, bitPos, rowV, bit]
        eq(null, lit(0)) // [fB, aV, byte, bitPos, rowV, bit==0]
        and() // rowV &= (bit == 0)

        swap() // [fB, aV, byte, rowV, bitPos]
        minus(null, lit(1)) // bitPos--
        swap() // [fB, aV, byte, bitPos, rowV]
    })

    // === Cleanup stack ===
    // Stack: [fB, aV, byte, bitPos, rowV]
    rot() // [fB, aV, rowV, byte, bitPos]
    drop() // [fB, aV, rowV, byte]
    drop() // [fB, aV, rowV]
}

/**
 * Validates a single column (40 bits across 40 bytes) against a nonogram constraint.
 * Input stack: [flagBase, allValid]
 * Output stack: [flagBase, allValid, colValid]
 */
fun Assembler.validateColumn(colIdx: Int, constraint: List<Int>) {
    val bitShift = 7 - colIdx

    // Initialize: rowIdx = 0, colValid = 1
    lit(0) // [fB, aV, rowIdx]
    lit(1) // [fB, aV, rowIdx, colValid]

    for (expectedRun in constraint) {
        // === Skip zeros ===
        // Continue while: rowIdx < 40 AND bit == 0
        // Stop when: rowIdx >= 40 OR bit == 1
        whileNot({
            randomizeOrder(
                { o ->
                    // Stack: [fB, aV, rowIdx, colV]
                    pickRand(o(1u)) // [fB, aV, rowIdx, colV, rowIdx]
                    ge(null, lit(40)) // [fB, aV, rowIdx, colV, rowIdx>=40]
                },
                { o ->
                    // Get bit at flag[6 + rowIdx]
                    pick2Rand(o(4u), o(3u), false) // [fB, aV, rowIdx, colV, rowIdx>=40, fB, rowIdx]
                    randomizeOrder(
                        { plus() },
                        { plusUconstRand(6u) },
                    )
                    deref() // [fB, aV, rowIdx, colV, rowIdx>=40, byte]
                    shr(null, lit(bitShift.toLong()))
                    and(null, lit(1)) // [fB, aV, rowIdx, colV, rowIdx>=40, bit]
                },
                true,
            )
            or() // [fB, aV, rowIdx, colV, stop]
        }, {
            // Stack: [fB, aV, rowIdx, colV]
            swap() // [fB, aV, colV, rowIdx]
            plusUconstRand(1u) // rowIdx++
            swap() // [fB, aV, rowIdx, colV]
        })

        // === Count ones ===
        lit(0) // [fB, aV, rowIdx, colV, count]

        // Continue while: rowIdx < 40 AND bit == 1
        // Stop when: rowIdx >= 40 OR bit == 0
        whileNot({
            randomizeOrder(
                { o ->
                    // Stack: [fB, aV, rowIdx, colV, count]
                    pickRand(o(2u)) // [fB, aV, rowIdx, colV, count, rowIdx]
                    ge(null, lit(40)) // [fB, aV, rowIdx, colV, count, rowIdx>=40]
                },
                { o ->
                    pick2Rand(o(5u), o(4u), false) // [fB, aV, rowIdx, colV, count, rowIdx>=40, fB, rowIdx]
                    randomizeOrder(
                        { plus() },
                        { plusUconstRand(6u) },
                    )
                    deref() // [fB, aV, rowIdx, colV, count, rowIdx>=40, byte]
                    shr(null, lit(bitShift.toLong()))
                    and(null, lit(1)) // [fB, aV, rowIdx, colV, count, rowIdx>=40, bit]
                    eq(null, lit(0)) // [fB, aV, rowIdx, colV, count, rowIdx>=40, bit==0]
                },
                true,
            )
            or() // [fB, aV, rowIdx, colV, count, stop]
        }, {
            // Stack: [fB, aV, rowIdx, colV, count]
            randomizeOrder(
                {
                    plusUconstRand(1u) // count++
                },
                {
                    rot() // [fB, aV, count, rowIdx, colV]
                    rot() // [fB, aV, colV, count, rowIdx]
                    plusUconstRand(1u) // rowIdx++
                    rot() // [fB, aV, rowIdx, colV, count]
                },
            )
        })

        // === Verify count == expectedRun ===
        // Stack: [fB, aV, rowIdx, colV, count]
        encryptedConst1u(expectedRun)
        eq() // [fB, aV, rowIdx, colV, countOK]
        swap() // [fB, aV, rowIdx, countOK, colV]
        and() // [fB, aV, rowIdx, colV']
    }

    // === Verify trailing zeros ===
    // Continue while: rowIdx < 40
    // Stop when: rowIdx >= 40
    whileNot({
        // Stack: [fB, aV, rowIdx, colV]
        pickRand(1u) // [fB, aV, rowIdx, colV, rowIdx]
        ge(null, lit(40)) // stop when rowIdx >= 40
    }, {
        // Check bit == 0
        pick2Rand(3u, 2u, false) // [fB, aV, rowIdx, colV, fB, rowIdx]
        randomizeOrder(
            { plus() },
            { plusUconstRand(6u) },
        )
        deref() // [fB, aV, rowIdx, colV, byte]
        shr(null, lit(bitShift.toLong()))
        and(null, lit(1)) // [fB, aV, rowIdx, colV, bit]
        eq(null, lit(0)) // [fB, aV, rowIdx, colV, bit==0]
        and() // colV &= (bit == 0)

        swap() // [fB, aV, colV, rowIdx]
        plusUconstRand(1u) // rowIdx++
        swap() // [fB, aV, rowIdx, colV]
    })

    // === Cleanup stack ===
    // Stack: [fB, aV, rowIdx, colV]
    swap() // [fB, aV, colV, rowIdx]
    drop() // [fB, aV, colV]
}
