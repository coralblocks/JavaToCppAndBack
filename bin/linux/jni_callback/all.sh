#!/bin/bash

./bin/linux/jni_callback/clean.sh
./bin/linux/jni_callback/compileJava.sh
./bin/linux/jni_callback/compileCpp.sh
./bin/linux/jni_callback/runCpp.sh "$1"
./bin/linux/jni_callback/clean.sh

