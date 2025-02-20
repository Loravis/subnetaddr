section .text
	global addr_to_int_asm

addr_to_int_asm:
	shl edi, 24 ; first octet 
	shl esi, 16 ; second octet
	shl edx, 8  ; third octet
	or edi, esi
	or edi, edx
	or edi, ecx
	mov eax, edi
	ret
