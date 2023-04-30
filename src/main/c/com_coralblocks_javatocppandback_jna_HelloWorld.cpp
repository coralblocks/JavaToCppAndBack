#include <iostream>

using namespace std;

extern "C" void sayHello(int count, const char* cmsg) {
    for(int i = 0; i < count; i++) {
        cout << "Hello CoralBlocks from JNA! => " << cmsg << endl;
    }
}