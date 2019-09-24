BITS 64

SECTION .text

GLOBAL memcpy

memcpy:
    PUSH rbp
    MOV rbp, rsp

    XOR rcx, rcx

loop:
    cmp rcx, rdx
    je  end
    mov rax, [rsi + rcx]
    mov	[rdi + rcx], rax
    inc rcx
    jmp loop

end:
    mov rax, rdi
    leave
    ret
