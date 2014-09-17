global _asmadd
SECTION .text

_asmadd:
    MOV RAX, RDI    ;take first val from RDI
    MOV RBX, RSI    ;take second val from RSI
    ADD RAX, RBX    ;RAX+RBX
    RET             ;return val in RAX
