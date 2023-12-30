#!/bin/bash

./bin/linux/ffm/clean.sh
./bin/linux/ffm/compileJava.sh
./bin/linux/ffm/compileCpp.sh
./bin/linux/ffm/runJava.sh "$1" "$2" "$3"
./bin/linux/ffm/clean.sh
