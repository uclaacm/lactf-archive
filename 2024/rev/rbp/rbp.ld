SECTIONS {
    .text 0x71000 : {
        *(.text)
    }

    .p 0x68000 : {
        *(.p)
    }

    .b 0x69000 : {
        *(.b)
    }

    .r 0x70000 : {
        *(.r)
    }
}
