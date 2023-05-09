#!/bin/bash

./bin/linux/jnr/clean.sh
./bin/linux/jnr/compileJava.sh
./bin/linux/jnr/compileCpp.sh
./bin/linux/jnr/runJava.sh "$1" "$2"
./bin/linux/jnr/clean.sh

