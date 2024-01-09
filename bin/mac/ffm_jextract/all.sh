#!/bin/bash

./bin/mac/ffm_jextract/clean.sh
./bin/mac/ffm_jextract/compileCpp.sh
./bin/mac/ffm_jextract/generateJava.sh
./bin/mac/ffm_jextract/compileJava.sh
./bin/mac/ffm_jextract/runJava.sh "$1" "$2"
./bin/mac/ffm_jextract/clean.sh

