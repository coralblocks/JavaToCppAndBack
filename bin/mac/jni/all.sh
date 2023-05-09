#!/bin/bash

./bin/mac/jni/clean.sh
./bin/mac/jni/compileJava.sh
./bin/mac/jni/compileCpp.sh
./bin/mac/jni/runJava.sh "$1" "$2"
./bin/mac/jni/clean.sh

