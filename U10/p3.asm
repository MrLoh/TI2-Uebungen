SECTION .text

global _inc_arr

_inc_arr:
    ;RDI = arr address
    ;RSI = len arr
    ;int is 4 byte = 1 double word
    PUSH RDX
    MOV RDX,0

    .for:
        CMP RDX, RSI
        JG .end

        INC DWORD [RDI + 4*RDX]
        ;alternativ:
        ;MOV EAX, [RDI + 4*RDX]
        ;INC EAX
        ;MOV [RDI + 4*RDX], EAX

        INC RDX
        JMP .for
    .end:
    POP RDX
    RET

