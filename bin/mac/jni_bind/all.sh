#!/bin/bash

./bin/mac/jni_bind/clean.sh
./bin/mac/jni_bind/compileJava.sh
./bin/mac/jni_bind/compileCpp.sh
./bin/mac/jni_bind/runJava.sh $1 $2
./bin/mac/jni_bind/clean.sh
