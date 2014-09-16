SECTION .data
SECTION .bss
SECTION .text

global math

math:
	MOV RAX, 3
	MOV RBX, 4

	ADD RAX, RBX ;3+4
	; Return value is always in RAX
