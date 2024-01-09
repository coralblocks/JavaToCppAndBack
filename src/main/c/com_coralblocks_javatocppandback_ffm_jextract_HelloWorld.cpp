#include <iostream>
#include "com_coralblocks_javatocppandback_ffm_jextract_HelloWorld.h"

extern "C" void sayHello(int count, const char* cmsg) {

    for(int i = 0; i < count; i++) {
        std::cout << "Hello CoralBlocks from JExtract! => " << cmsg << std::endl;
    }
}