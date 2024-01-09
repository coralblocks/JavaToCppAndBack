#!/bin/bash

./bin/linux/ffm_jextract/clean.sh
./bin/linux/ffm_jextract/compileCpp.sh
./bin/linux/ffm_jextract/generateJava.sh
./bin/linux/ffm_jextract/compileJava.sh
./bin/linux/ffm_jextract/runJava.sh "$1" "$2"
./bin/linux/ffm_jextract/clean.sh

