BITS 64

SECTION .text

GLOBAL memmove

memmove:
  push rbp
  mov rbp, rsp
  xor rcx, rcx

  cmp rdx, 0
  je end

check_stack:
  cmp rcx, rdx
  je del_stack
  movsx rbx, BYTE [rsi + rcx]
  push rbx
  inc rcx
  jmp check_stack

del_stack:
  dec rcx
  pop rbx
  mov BYTE [rdi + rcx], bl
  cmp rcx, 0
  je end
  jmp del_stack

end:
  mov rax, rdi
  leave
  ret
