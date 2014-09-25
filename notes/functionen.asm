SECTION .text

global _inc_arr

_inc_arr:
    PUSH    RBP         ;save base pointer
    PUSH    RDX         ;save rdx

    MOV     RBP, RSP    ;zero base pointer

    ;RDI has arr address
    ;RSI has len arr
    ;int is 4 byte = 1 double word

    MOV     RDX, RSI
    .for_loop:
        INC DWORD [RDI + 4*RDX]
        DEC RDX
        JNZ .for_loop

    ;alternativ:
    ; MOV EAX, [RDI + 4*RDX]
    ; INC EAX
    ; MOV [RDI + 4*RDX], EAX


    POP     RBP         ;reset base pointer
    POP     RDX         ;reset rdx
    RET
