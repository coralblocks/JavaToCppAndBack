#!/bin/bash

mkdir -p lib/jna

clang++ -std=c++20 -shared -fPIC src/main/c/com_coralblocks_javatocppandback_jna_HelloWorld.cpp -o lib/jna/libHelloWorld.dylib

