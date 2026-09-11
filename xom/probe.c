#include <stdint.h>
#include <stdio.h>
#include <string.h>

__attribute__((noinline))
static int add(int a, int b)
{
    return a + b;
}

int main(int argc, char **argv)
{
    printf("execution result = %d\n", add(1, 2));

    if (argc > 1 && strcmp(argv[1], "read") == 0) {
        volatile unsigned char first_byte =
            *(volatile unsigned char *)(uintptr_t)&add;

        printf("first code byte = 0x%02x\n",
               first_byte);
    }

    return 0;
}