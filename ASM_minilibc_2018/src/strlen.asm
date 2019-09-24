BITS 64

SECTION .text

GLOBAL strlen

strlen:
    PUSH rbp
    MOV rbp, rsp

    XOR rdx, rdx

loop:
    cmp byte [rdi + rdx], 0
    je  end
    inc rdx
    jmp loop

end:
    mov rax, rdx
    leave
    ret
