SECTION .text

MOV RCX, 1
for:
    CMP RCX, n
    JG end

        ...

    INC RCX ;i++
    JMP for
end:
