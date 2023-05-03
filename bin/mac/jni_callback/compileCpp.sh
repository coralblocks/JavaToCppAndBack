#!/bin/bash

g++ -std=c++20 -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin" -o CallbackFromJava src/main/c/com_coralblocks_javatocppandback_jni_callback_CallbackFromJava.cpp -L"$JAVA_HOME/lib/server" -ljvm -Wno-write-strings

