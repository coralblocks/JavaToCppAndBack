#!/bin/bash

mkdir -p lib/ffm

clang++ -shared -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux src/main/c/com_coralblocks_javatocppandback_ffm_HelloWorld.cpp -o lib/jna/libHelloWorld.so

