#include <stdio.h>

extern "C" void test1(int x);

int main() {
    puts("Hello world?");
    test1(0x1234);
    return 0;
}
