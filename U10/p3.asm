SECTION .text

global _inc_arr
global _sort_arr

_inc_arr:
    PUSH RDX

    ;RDI = arr address
    ;RSI = size arr


    MOV RDX, 0                      ;i = 0
    .for:
        CMP RDX, RSI
        JG .end_for                 ;end for if i >= size

        INC DWORD [RDI + 4*RDX]     ;arr[i] += 1

        INC RDX                     ;i++
        JMP .for
    .end_for:

    POP RDX

    RET
; end_inc_arr:




_sort_arr:
    PUSH RCX
    PUSH RDX
    PUSH RAX
    PUSH RBX

    XOR RAX, RAX
    XOR RBX, RBX

    ;RDI = arr address
    ;RSI = size arr

    DEC RSI                             ;stop = size -1
    MOV RCX, 0                          ;done = False

    .while:
        CMP RCX, 0
        JNE .end_while                  ;end while if done == True

        MOV RCX, 1                      ;done = True

        MOV RDX, 0                      ;i = 0
        .for:
            CMP RDX, RSI
            JGE .end_for                ;end for if i >= size

            .if:
                MOV EAX, [RDI+4*RDX]    ;a = arr[i]
                MOV EBX, [RDI+4*RDX+4]  ;b = arr[i+1]
                CMP EAX, EBX
                JLE .end_if             ;don't swap if ordered

                MOV RCX, 0
                MOV [RDI+4*RDX], EBX
                MOV [RDI+4*RDX+4], EAX  ;swap arr[i] arr[i+1]
            .end_if:

            INC RDX                     ;i++
            JMP .for
        .end_for:

        DEC RSI                         ;stop--

        JMP .while
    .end_while:

    POP RBX
    POP RAX
    POP RDX
    POP RCX

    RET
; end_sort_arr:
