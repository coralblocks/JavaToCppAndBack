#include <iostream>

extern "C" void sayHello(int count, const char* cmsg) {

    for(int i = 0; i < count; i++) {
        std::cout << "Hello CoralBlocks from Foreign Function and Memory (FFM) API! => " << cmsg << std::endl;
    }
}
