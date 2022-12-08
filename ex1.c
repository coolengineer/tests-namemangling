#include <stdio.h>

extern void test1(int x);

int main() {
    puts("Hello world?");
    test1(0x5678);
    puts("Are you there?");
    test1(0x4321);
    return 0;
}
