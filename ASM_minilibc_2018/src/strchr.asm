BITS 64

SECTION .text

GLOBAL strchr

strchr:
    PUSH rbp
    MOV rbp, rsp

    XOR rcx, rcx

loop:

    cmp byte [rdi], 0
    je end
    cmp byte [rdi + rcx], sil
    je end
    inc rcx
    jmp loop

end:
    add rcx, rdi
    mov rax, rcx

    leave
    ret
