; nasm -f macho64 hw.asm
; ld -macosx_version_min 10.7.0 -lSystem -o hw hw.o
; ./hw

global _main

SECTION .text

_main:
    MOV     RAX, 0x2000004 ; write
    MOV     RDI, 1 ; stdout
    MOV     RSI, msg
    MOV     RDX, msg.len
    SYSCALL

    MOV     RAX, 0x2000001 ; exit
    MOV     RDI, 0
    SYSCALL

SECTION .data

msg:    db      "Hello, world!", 10
.len:   equ     $ - msg
