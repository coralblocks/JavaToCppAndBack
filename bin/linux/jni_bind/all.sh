#!/bin/bash

./bin/linux/jni_bind/clean.sh
./bin/linux/jni_bind/compileJava.sh
./bin/linux/jni_bind/compileCpp.sh
./bin/linux/jni_bind/runJava.sh "$1" "$2"
./bin/linux/jni_bind/clean.sh

