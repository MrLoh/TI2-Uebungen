_main:
    push    %rbp
    mov     %rsp, %rbp
    sub     $0x20, %rsp
    lea     0x4b(%rip), %rax
    mov     $0x0, -0x4(%rbp)
    mov     %edi, -0x8(%rbp)
    mov     %rsi, -0x10(%rbp)
    mov     %rax, %rdi
    mov     $0x0, %al
    call    0x100000f68
    mov     $0x0, %ecx
    mov     %eax, -0x14(%rbp)
    mov     %ecx, %eax
    add     $0x20, %rsp
    pop     %rbp
    ret
