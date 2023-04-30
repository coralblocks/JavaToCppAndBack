#!/bin/bash

g++ -std=c++20 -shared -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin/" -I./src/main/c src/main/c/com_coralblocks_javatocppandback_jni_HelloWorld.cpp -o lib/jni/libHelloWorld.dylib

