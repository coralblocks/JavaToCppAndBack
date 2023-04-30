#!/bin/bash

./bin/linux/jni/clean.sh
./bin/linux/jni/compileJava.sh
./bin/linux/jni/compileCpp.sh
./bin/linux/jni/runJava.sh $1 $2

