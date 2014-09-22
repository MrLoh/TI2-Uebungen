global _sqrt_abs
section .text

_sqrt_abs:
    MOV RBX, RDI
    MOV RAX, 0
    .schlf:
        MOV R8, RAX
        SUB R8, RBX
        CMP R8, 0
        JGE .abspositiv
        NEG R8
        .abspositiv:
        CMP R8, 1
        JLE .end        ;end loop if |a-b| ≤ 1

        ADD RBX, RAX
        SHR RBX, 1      ;b = (a+b)//2

        MOV RAX, RDI
        XOR RDX, RDX
        DIV RBX         ;a = n//b

        JMP .schlf
    .end:
        CMP RAX, RBX
        JLE .minfirst
        MOV RAX, RBX
        .minfirst:
        RET
