global _collatz
section .text

_collatz:
    MOV R8, 2
    XOR RDX, RDX
    MOV RCX, 0        ;i=0
    .schlf:
        CMP RDI, 1
        JLE .end        ;while k>1 continue else goto end
        INC RCX         ;i++
        MOV RAX, RDI
        DIV R8          ;k%2
        CMP RDX, 0
        JNE .else       ;if k%2==0 continue else goto else
        .if:
            SHR RDI, 1  ;k /= 2
            JMP .schlf  ;loop
        .else:
            IMUL RDI, 3 ;k = k*3
            INC RDI     ;k = k+1
            JMP .schlf  ;loop
    .end:
        MOV RAX, RCX    ;return i
        RET
