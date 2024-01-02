#include <iostream>
#include "com.coralblocks_javatocppandback_ffm_jextract.h"

extern "C" void sayHello(int count, const char* cmsg) {

    for(int i = 0; i < count; i++) {
        std::cout << "Hello CoralBlocks from FFM! => " << cmsg << std::endl;
    }
}
