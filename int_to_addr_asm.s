section .text
	global int_to_addr_asm
int_to_addr_asm:
	mov byte [r8], dil ; fourth octet
	shr edi, 8
	mov byte [rcx], dil ; third octet
	shr edi, 8
	mov byte [rdx], dil ; second octet
	shr edi, 8
	mov byte [rsi], dil ; first octet
	ret	
