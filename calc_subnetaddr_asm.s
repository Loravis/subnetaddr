section .text
	global calc_subnetaddr_asm

calc_subnetaddr_asm:
	and rdi, rsi
	mov rax, rdi
	ret
