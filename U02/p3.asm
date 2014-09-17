global _gauss
SECTION .text

; _gauss:
;     MOV RAX, 1      ;=1
;     MOV RBX, RDI    ;get first input int val
;     ADD RAX, RBX    ;=n+1
;     MUL RBX         ;=(n+1)*n
;     SHR RAX, 1       ;=((n+1)*n)/2
;     ; MOV RBX, 2
;     ; DIV RBX         ;=((n+1)*n)/2

;     RET

_gauss:
    XOR RAX, RAX            ;RAX=0
    XOR RCX, RCX            ;RAX=0
    .schlf:
        INC RCX             ;RCX++
        ADD RAX, RCX        ;RAX
        CMP RCX, RDI        ;
        JL _gauss.schlf     ;if RCX<RDI then: loop else: continue

        RET
