#include <stdio.h>

extern void test3(int GOOD);
extern void test3(double JOB);

int main() {
    puts("Hello world?");
    test3(0x1234);
    test3(0x3456);
    test3(1.0);
    test3(2.0);
    test3(3.0);
    return 0;
}

