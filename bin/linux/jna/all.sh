#!/bin/bash

./bin/linux/jna/clean.sh
./bin/linux/jna/compileJava.sh
./bin/linux/jna/compileCpp.sh
./bin/linux/jna/runJava.sh "$1" "$2"
./bin/linux/jna/clean.sh

