#!/bin/bash

mkdir -p lib/jni

clang++ -std=c++20 -shared -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux src/main/c/com_coralblocks_javatocppandback_jni_HelloWorld.cpp -o lib/jni/libHelloWorld.so

