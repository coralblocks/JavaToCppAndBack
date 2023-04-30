#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "libHelloWorld.h"

int main(int argc, char **argv) {

    int x = std::stoi(argv[1]);
    std::string str = argv[2];

    graal_isolate_t *isolate = NULL;
    graal_isolatethread_t *thread = NULL;

    if (graal_create_isolate(NULL, &isolate, &thread) != 0) {
        fprintf(stderr, "initialization error\n");
        return 1;
    }

    say_hello(thread, x, str.data());

    graal_tear_down_isolate(thread);

    return 0;
}
