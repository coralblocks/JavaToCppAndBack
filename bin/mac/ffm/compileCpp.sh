#!/bin/bash

mkdir -p lib/ffm

clang++ -shared -fPIC src/main/c/com_coralblocks_javatocppandback_ffm_HelloWorld.cpp -o lib/ffm/libHelloWorld.dylib

