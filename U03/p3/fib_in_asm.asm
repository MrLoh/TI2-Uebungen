global _fib

SECTION .text

_fib:
    MOV RAX, 0          ;set return to 0
    CMP RDI, 0
    JE _fib.end         ;if n==0 then end else ...
    MOV RAX, 1          ;RAX: fiblast
    MOV RBX, 0          ;RBX: fibprelast
    MOV RCX, RDI
    .schlf:
        DEC RCX         ;--i
        MOV R8, RBX     ;R8: temp=fibprelast
        MOV RBX, RAX    ;fibprelast = fiblast;
        ADD RAX, R8     ;fiblast += temp;
        CMP RCX, 1
        JG _fib.schlf   ;while i>1: loop end: end
    .end:
        RET
