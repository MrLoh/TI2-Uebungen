SECTION .text

MOV R11, X
MOV R12, Y

schlf:
    CMP R11, R12
    JLE end         ;test while cond
    S
    JMP schlf       ;loop

end:
    RET
