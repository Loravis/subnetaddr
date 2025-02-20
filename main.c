// A wrapper for the assembly functions. 
// Defines variables and provides user output.

#include <stdio.h>
#include "header.h"

int main(void) {
	unsigned char ip_addr_arr[] = {192, 168, 10, 55};
	unsigned char subnetmask_arr[] = {255, 255, 255, 0};

	unsigned int ip_addr = addr_to_int_asm(ip_addr_arr[0], ip_addr_arr[1], ip_addr_arr[2], ip_addr_arr[3]);
	unsigned int subnetmask = addr_to_int_asm(subnetmask_arr[0], subnetmask_arr[1], subnetmask_arr[2], subnetmask_arr[3]); 

	unsigned int subnetaddr = calc_subnetaddr_asm(ip_addr, subnetmask);
	
	unsigned char first_octet = 0;
	unsigned char second_octet = 0;
	unsigned char third_octet = 0;
	unsigned char fourth_octet = 0;
	unsigned char* first_ptr = &first_octet;
	unsigned char* second_ptr = &second_octet;
	unsigned char* third_ptr = &third_octet;
	unsigned char* fourth_ptr = &fourth_octet;
	int_to_addr_asm(subnetaddr, first_ptr, second_ptr, third_ptr, fourth_ptr);
	
	printf("%d.%d.%d.%d\n", *first_ptr, *second_ptr, *third_ptr, *fourth_ptr);
	
	return 0;
}
