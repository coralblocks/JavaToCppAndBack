#!/bin/bash

clang++ -std=c++20 -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" -o HelloWorld src/main/c/com_coralblocks_javatocppandback_jni_jvm_HelloWorld.cpp -L"$JAVA_HOME/lib/server" -ljvm -Wno-write-strings

