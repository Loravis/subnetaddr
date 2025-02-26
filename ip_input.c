#include "header.h"
#include <stdio.h>

int ip_input(unsigned char* first, unsigned char* second, unsigned char* third, unsigned char* fourth) {
    unsigned short a = 0;
    unsigned short b = 0;
    unsigned short c = 0;
    unsigned short d = 0;

    unsigned const char lim = 0b11111111;

    scanf("%hu.%hu.%hu.%hu", &a, &b, &c, &d);

    if (a == 0 && b == 0 && c == 0 && d == 0) {
        printf("Invalid input");
        return 1;
    }

    if (a > lim || b > lim || c > lim || d > lim) {
        printf("Invalid input; cannot process values greater than %d.\n", lim);
        return 1;
    }

	*first = (unsigned char) a;
	*second = (unsigned char) b;
	*third = (unsigned char) c;
	*fourth = (unsigned char) d;

    return 0;
}
