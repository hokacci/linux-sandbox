.intel_syntax noprefix
.globl main

main:
	// getppid
	mov eax, 0x6e
	syscall

	// return 0
	mov rax, 0
	ret
