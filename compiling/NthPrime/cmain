#include <stdio.h>
#include <stdlib.h>

#include "hNthPrime"

int main(int argc, char *argv[]) {
    int n, prime;

    if (argc != 2) {
        printf("usage: %s n, prints nth prime\n", argv[0]);
    } else {
        n = atoi(argv[1]);
        if (n <= 0) {
            printf("Invalid input. Please provide a positive integer.\n");
            return 1;
        }
        prime = nth_prime(n);
        printf("Prime %d = %d.\n", n, prime);
    }

    return 0;
}
