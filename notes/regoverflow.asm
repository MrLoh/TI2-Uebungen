SECTION .data
SECTION .bss
SECTION .text

global _start
_start:
	XOR RAX, RAX
	XOR RDX, RDX

	MOV RAX, 1
	SHL RAX, 62 ;shift left to make 0

	MOV RBX, 8

	MUL RBX
	NOP
	NOP

