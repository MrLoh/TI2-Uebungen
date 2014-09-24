SECTION .text

MOV RCX, 1
for:
    CMP RCX, n
    JG end

    CMP p, 1
    JNE else ;if p do block
        if:
        ...
        JMP end_if_else

        else:
        ...

    end_if_else:

    INC RCX
    JMP for
end:
