#!/bin/bash

./bin/mac/jni_jvm/clean.sh
./bin/mac/jni_jvm/compileJava.sh
./bin/mac/jni_jvm/compileCpp.sh
./bin/mac/jni_jvm/runCpp.sh $1 $2
./bin/mac/jni_jvm/clean.sh
