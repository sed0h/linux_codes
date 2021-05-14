#include <iostream>
#include "file1.h"

int main(int, char**) {
    int ret = GetValue();

    std::cout << "get value is: " << ret << "\n";
    std::cout << "Hello, world!\n";
}
