SECTION .text

MOV RCX, LAST       ;set counter (J)

schlf:
    CMP RCX, FIRST
    JE end          ;test for condition
    DEC RCX         ;j--
    S
    JMP schlf      ;loop

end:
    RET
