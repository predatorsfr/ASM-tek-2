BITS 64

SECTION .text

GLOBAL strncmp

strncmp:
    PUSH rbp
    MOV rbp, rsp

    XOR rcx, rcx

loop:
    mov 	rax, [rsi + rcx]
    mov 	r9, [rdi + rcx]

    cmp	rax, 0
    je	end

    cmp	r9, 0
    je	end

    cmp	rax, r9
    jne	end

    inc	rcx
    cmp	rcx, rdx
    je	end
    jmp	loop

end:
    sub	r9, rax
    mov	rax, r9
    leave
    ret
