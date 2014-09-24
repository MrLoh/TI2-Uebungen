SECTION .text

MOV RCX, 1 ;i=1
for1:
    CMP RCX, n
    JG end1 ;end if i>n

    MOV RDX, 1 ;j=1
    for2:
        CMP RDX, n
        JG end2 ;end if j>n

            ...

        INC RDX ;j++
        JMP for2
    end2:

    INC RCX ;i++
    JMP for1
end1:
