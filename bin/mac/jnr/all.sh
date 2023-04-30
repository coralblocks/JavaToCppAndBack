#!/bin/bash

./bin/mac/jnr/clean.sh
./bin/mac/jnr/compileJava.sh
./bin/mac/jnr/compileCpp.sh
./bin/mac/jnr/runJava.sh $1 $2

