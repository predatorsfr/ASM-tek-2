BITS 64

SECTION .text

GLOBAL memset

memset:
    PUSH rbp
    MOV rbp, rsp

    XOR rcx, rcx

loop:
    cmp rcx, rdx
    je  end
    mov byte [rdi + rcx], sil
    inc rcx
    jmp loop

end:
    mov rax, rdi
    leave
    ret
