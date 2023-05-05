#!/bin/bash

./bin/mac/jni_callback/clean.sh
./bin/mac/jni_callback/compileJava.sh
./bin/mac/jni_callback/compileCpp.sh
./bin/mac/jni_callback/runCpp.sh $1
./bin/mac/jni_callback/clean.sh
