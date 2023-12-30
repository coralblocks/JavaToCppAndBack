#!/bin/bash

./bin/mac/ffm/clean.sh
./bin/mac/ffm/compileJava.sh
./bin/mac/ffm/compileCpp.sh
./bin/mac/ffm/runJava.sh "$1" "$2" "$3"
./bin/mac/ffm/clean.sh
