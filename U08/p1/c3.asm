SECTION .text

MOV RCX, 1
for:
    CMP RCX, n
    JG end

    CMP p, 1
    JNE not_p ;if p do block

        ...

    not_p:

    INC RCX ;i++
    JMP for
end:
