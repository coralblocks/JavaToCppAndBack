#!/bin/bash

./bin/mac/jna/clean.sh
./bin/mac/jna/compileJava.sh
./bin/mac/jna/compileCpp.sh
./bin/mac/jna/runJava.sh $1 $2

