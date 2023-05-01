#!/bin/bash

./bin/linux/jni_jvm/clean.sh
./bin/linux/jni_jvm/compileJava.sh
./bin/linux/jni_jvm/compileCpp.sh
./bin/linux/jni_jvm/runCpp.sh $1 $2

