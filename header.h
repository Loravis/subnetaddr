#pragma once

extern unsigned int addr_to_int_asm(unsigned char a, unsigned char b, unsigned char c, unsigned char d);

extern unsigned int int_to_addr_asm(unsigned int number, unsigned char* a, unsigned char* b, unsigned char* c, unsigned char* d);

extern unsigned int calc_subnetaddr_asm(unsigned int subnetmask, unsigned int ip_addr);

extern unsigned int ptr_asm(unsigned int* number);
