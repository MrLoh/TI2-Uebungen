SECTION .text

MOV RAX, A
MOV RBX, B

function:          ;params are RAX and RBX
	IMUL RAX, 2
	ADD RAX, 7
	IMUL RBX, 30
	ADD RAX, RBX
	RET            ;return in RAX
