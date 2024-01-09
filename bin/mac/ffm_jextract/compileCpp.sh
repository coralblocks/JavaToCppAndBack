#!/bin/bash

mkdir -p lib/ffm_jextract

clang++ -shared -fPIC src/main/c/com_coralblocks_javatocppandback_ffm_jextract_HelloWorld.cpp -o lib/ffm_jextract/libHelloWorld.dylib

