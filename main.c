// A wrapper for the assembly functions. 
// Defines variables and provides user output.

#include <stdio.h>
#include "header.h"

int main(void) {
	unsigned char a = 0;
	unsigned char b = 0;
	unsigned char c = 0;
	unsigned char d = 0;
	
	// TODO: Proper error handling
	unsigned int result = 0;
	printf("IP Address: ");
	result = ip_input(&a, &b, &c, &d);
	if (result != 0) {
		printf("Error code %d\n", result);
		return 1;
	}
	unsigned char ip_addr_arr[] = {a, b, c, d};
	printf("Subnetmask: ");
	result = ip_input(&a, &b, &c, &d);
	if (result != 0) {
		printf("Error code %d\n", result);
		return 1;
	}
	unsigned char subnetmask_arr[] = {a, b, c, d};

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
