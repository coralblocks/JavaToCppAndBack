#!/bin/bash

mkdir -p lib/jnr

clang++ -shared -fPIC src/main/c/com_coralblocks_javatocppandback_jnr_HelloWorld.cpp -o lib/jnr/libHelloWorld.dylib

