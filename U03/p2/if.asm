SECTION .text

MOV RAX, A
MOV RBX, B

MOV R11, X
MOV R12, Y
MOV R13, Z

CMP RAX, RBX
JNE else            ;test if cond

if:
    INC R11
    MOV R12, R13
    JMP end         ;neglect else code

else:
    MOV RAX, RBX

end:
    RET
