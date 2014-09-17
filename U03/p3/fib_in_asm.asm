global _fib
section .text


_fib:
    MOV RAX, 0
    CMP RDI, 0
    JE _fib.end         ;if n==0 then end else ...
    MOV RAX, 1          ;RAX: fiblast
    MOV RBX, 0          ;RBX: fibprelast
    MOV RCX, RDI
    .schlf:
        DEC RCX
        MOV R8, RBX     ;R8: temp=fibprelast
        MOV RBX, RAX    ;fibprelast = fiblast;
        ADD RAX, R8     ;fiblast += temp;
        CMP RCX, 1
        JG _fib.schlf
    .end:
        RET
