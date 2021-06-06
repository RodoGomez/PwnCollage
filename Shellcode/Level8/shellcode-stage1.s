.global _start
_start:
.intel_syntax noprefix
    xor rax, rax
    xor rdi, rdi
    mov rdx, 1024
    lea rsi, [rip+stage2]
    syscall
stage2:
    nop

